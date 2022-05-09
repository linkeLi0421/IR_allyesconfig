; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/scan.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/scan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.mwifiex_bssdescriptor = type <{ [6 x i8], %struct.cfg80211_ssid, i8, i32, i32, i32, i32, i16, i8, i8, i32, [14 x i8], [14 x i8], i16, [2 x i8], i64, i64, %union.ieee_types_phy_param_set, %union.ieee_types_ss_param_set, i8, i16, %struct.ieee_types_wmm_parameter, i8, [3 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, i8, i8, ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i32, i8, i8, i8, [5 x i8] }>
%union.ieee_types_phy_param_set = type { %struct.ieee_types_fh_param_set }
%struct.ieee_types_fh_param_set = type <{ i8, i8, i16, i8, i8, i8 }>
%union.ieee_types_ss_param_set = type { %struct.ieee_types_cf_param_set }
%struct.ieee_types_cf_param_set = type { i8, i8, i8, i8, i16, i16 }
%struct.ieee_types_wmm_parameter = type { %struct.ieee_types_vendor_header, i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.148 }
%struct.anon.148 = type { [3 x i8], i8 }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
%struct.ieee_types_ds_param_set = type { i8, i8, i8 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mwifiex_802_11d_domain_reg = type { [3 x i8], i8, [83 x %struct.ieee80211_country_ie_triplet] }
%struct.ieee80211_country_ie_triplet = type { %union.anon.151 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i8, i8, i8 }
%struct.mwifiex_sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.mwifiex_sleep_period = type { i16, i16 }
%struct.mwifiex_hs_config_param = type <{ i32, i8, i8 }>
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mwifiex_private = type <{ ptr, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i32, i8, [3 x i8], ptr, %struct.net_device_stats, i32, i32, i32, i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, [18 x i16], [2 x i8], i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i8], ptr, %struct.cfg80211_ssid, [6 x i8], i8, %struct.mwifiex_current_bss_params, i16, i8, i8, i16, i16, i8, i8, i8, i8, %struct.mwifiex_802_11_security, [4 x %struct.mwifiex_wep_key], i16, [256 x i8], i16, i8, %struct.host_cmd_ds_802_11_key_material, %struct.host_cmd_ds_802_11_key_material_v2, [256 x i8], i8, i16, ptr, i16, i8, i8, i8, [3 x i8], %struct.mwifiex_wmm_desc, [4 x %struct.atomic_t], %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, [8 x %struct.mwifiex_tx_aggr], %struct.mwifiex_add_ba_param, [8 x i16], [8 x i8], %struct.list_head, %struct.spinlock, [500 x i8], i32, [256 x i8], i8, i8, [8 x %struct.mwifiex_vendor_spec_cfg_ie], [256 x i8], i8, i8, ptr, i32, %struct.spinlock, %struct.wireless_dev, %struct.mwifiex_chan_freq_power, i32, [128 x i8], ptr, i16, [2 x i8], %struct.mutex, ptr, [6 x i8], %struct.wps, i8, i32, i32, i8, i8, %struct.mwifiex_ds_misc_subsc_evt, [16 x %struct.mwifiex_ie], i16, i16, i16, i16, i8, i8, i32, [4 x i8], %struct.mwifiex_roc_cfg, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.mwifiex_uap_bss_param, %struct.cfg80211_chan_def, ptr, %struct.sk_buff_head, i8, [3 x i8], %struct.timer_list, i8, [3 x i8], %struct.idr, %struct.spinlock, ptr, %struct.cfg80211_chan_def, ptr, %struct.delayed_work, %struct.timer_list, ptr, %struct.delayed_work, %struct.cfg80211_beacon_data, %struct.mwifiex_11h_intf_state, [2 x i8], %struct.mwifiex_ds_mem_rw, %struct.sk_buff_head, [50 x %struct.mwifiex_user_scan_chan], i8, i8, [2 x i8] }>
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_current_bss_params = type { %struct.mwifiex_bssdescriptor, i8, i8, i8, i32, [14 x i8] }
%struct.mwifiex_802_11_security = type { i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.mwifiex_wep_key = type { i32, i32, i32, [16 x i8] }
%struct.host_cmd_ds_802_11_key_material = type { i16, %struct.mwifiex_ie_type_key_param_set }
%struct.mwifiex_ie_type_key_param_set = type { i16, i16, i16, i16, i16, [50 x i8] }
%struct.host_cmd_ds_802_11_key_material_v2 = type { i16, %struct.mwifiex_ie_type_key_param_set_v2 }
%struct.mwifiex_ie_type_key_param_set_v2 = type { i16, i16, [6 x i8], i8, i8, i16, %union.anon.149 }
%union.anon.149 = type { %struct.mwifiex_wapi_param }
%struct.mwifiex_wapi_param = type { [16 x i8], i16, [32 x i8] }
%struct.mwifiex_wmm_desc = type { [8 x %struct.mwifiex_tid_tbl], [8 x i32], [8 x i32], %struct.spinlock, [4 x %struct.mwifiex_wmm_ac_status], [4 x i8], i32, [4 x i8], [8 x i32], %struct.atomic_t, %struct.atomic_t }
%struct.mwifiex_tid_tbl = type { %struct.list_head }
%struct.mwifiex_wmm_ac_status = type { i8, i8, i8 }
%struct.mwifiex_tx_aggr = type { i8, i8, i8 }
%struct.mwifiex_add_ba_param = type { i32, i32, i32, i8, i8 }
%struct.mwifiex_vendor_spec_cfg_ie = type { i16, i16, [256 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.145, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.145 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.146 }
%union.anon.146 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mwifiex_chan_freq_power = type { i16, i32, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wps = type { i8 }
%struct.mwifiex_ds_misc_subsc_evt = type { i16, i16, %struct.subsc_evt_cfg, %struct.subsc_evt_cfg }
%struct.subsc_evt_cfg = type { i8, i8 }
%struct.mwifiex_ie = type { i16, i16, i16, [256 x i8] }
%struct.mwifiex_roc_cfg = type { i64, %struct.ieee80211_channel }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_uap_bss_param = type <{ i8, i8, i16, i16, i8, i8, %struct.mwifiex_802_11_ssid, i8, i8, i8, i8, i16, i16, i16, i16, i16, [2 x i8], %struct.wpa_param, [4 x %struct.wep_key], %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, [14 x i8], i32, i32, i8, i8, %struct.mwifiex_types_wmm_info, [2 x i8] }>
%struct.mwifiex_802_11_ssid = type { i32, [32 x i8] }
%struct.wpa_param = type { i8, i8, i8, i32, [64 x i8] }
%struct.wep_key = type { i8, i8, i16, [13 x i8] }
%struct.mwifiex_types_wmm_info = type { [4 x i8], i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
%struct.mwifiex_scan_cmd_config = type <{ i8, [6 x i8], i32, [1 x i8] }>
%struct.mwifiex_user_scan_cfg = type <{ i8, i8, i8, [6 x i8], ptr, i8, [50 x %struct.mwifiex_user_scan_chan], i16, [6 x i8] }>
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ie_types_wildcard_ssid_params = type { %struct.mwifiex_ie_types_header, i8, [1 x i8] }
%struct.mwifiex_ie_types_scan_chan_gap = type { %struct.mwifiex_ie_types_header, i16 }
%struct.mwifiex_ie_types_random_mac = type { %struct.mwifiex_ie_types_header, [6 x i8] }
%struct.mwifiex_ie_types_bss_mode = type <{ %struct.mwifiex_ie_types_header, i8 }>
%struct.mwifiex_ie_types_num_probes = type { %struct.mwifiex_ie_types_header, i16 }
%struct.mwifiex_ie_types_htcap = type { %struct.mwifiex_ie_types_header, %struct.ieee80211_ht_cap }
%struct.mwifiex_ie_types_vendor_param_set = type { %struct.mwifiex_ie_types_header, [256 x i8] }
%struct.mwifiex_chan_scan_param_set = type <{ i8, i8, i8, i16, i16 }>
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.144, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.possible_net_t = type { ptr }
%struct.anon.144 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mwifiex_ie_types_chan_list_param_set = type <{ %struct.mwifiex_ie_types_header, [1 x %struct.mwifiex_chan_scan_param_set] }>
%struct.mwifiex_ie_types_rates_param_set = type <{ %struct.mwifiex_ie_types_header, [1 x i8] }>
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.159 }
%union.anon.159 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.host_cmd_ds_802_11_scan = type { i8, [6 x i8], [1 x i8] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.host_cmd_ds_802_11_scan_rsp = type { i16, i8, [1 x i8] }
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.mwifiex_ie_types_tsf_timestamp = type <{ %struct.mwifiex_ie_types_header, [1 x i8] }>
%struct.mwifiex_ie_types_chan_band_list_param_set = type { %struct.mwifiex_ie_types_header, [1 x %struct.chan_band_param_set] }
%struct.chan_band_param_set = type { i8, i8 }
%struct.cfg80211_wowlan_nd_info = type { i32, [0 x ptr] }
%struct.cfg80211_wowlan_nd_match = type { %struct.cfg80211_ssid, i32, [0 x i32] }
%struct.mwifiex_ie_types_data = type <{ %struct.mwifiex_ie_types_header, [1 x i8] }>
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.mwifiex_fixed_bcn_param = type <{ i64, i16, i16 }>
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.mwifiex_bg_scan_cfg = type <{ i16, i8, i8, i8, i32, i32, i8, i8, i8, i16, i16, ptr, i8, [38 x %struct.mwifiex_user_scan_chan], i16 }>
%struct.host_cmd_ds_802_11_bg_scan_config = type <{ i16, i8, i8, i8, i8, i16, i32, i32, i32, i16, [0 x i8] }>
%struct.mwifiex_ie_types_repeat_count = type { %struct.mwifiex_ie_types_header, i16 }
%struct.mwifiex_ie_types_min_rssi_threshold = type { %struct.mwifiex_ie_types_header, i16 }
%struct.cfg80211_match_set = type { %struct.cfg80211_ssid, [6 x i8], i32, [6 x i32] }
%struct.mwifiex_ie_types_bgscan_start_later = type { %struct.mwifiex_ie_types_header, i16 }
%struct.mwifiex_fw_chan_stats = type { i8, i8, i8, i8, i16, i16, i16 }
%struct.mwifiex_chan_stats = type { i8, i8, i8, i8, i16, i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.mwifiex_event_scan_result = type <{ i16, i8, i8, i8, [3 x i8], i16, i8 }>
%struct.mwifiex_ie_types_bss_scan_info = type <{ %struct.mwifiex_ie_types_header, i16, i16, i8, i8, i8, i8, i64 }>
%struct.ieee_types_vendor_specific = type { %struct.ieee_types_vendor_header, [250 x i8] }
%struct.ie_body = type { [4 x i8], [2 x i8], [4 x i8] }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee_types_header = type { i8, i8 }

@__const.mwifiex_update_bss_desc_with_ie.wpa_oui = private unnamed_addr constant [4 x i8] c"\00P\F2\01", align 1
@__const.mwifiex_update_bss_desc_with_ie.wmm_oui = private unnamed_addr constant [4 x i8] c"\00P\F2\02", align 1
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"err: InterpretIE: in processing\09IE, bytes left < IE length\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"info: InterpretIE: ssid: %-32s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cmd: Scan already in process...\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cmd: Scan is blocked during association...\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Ignore scan. Card removed or firmware in bad state\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wait internal scan\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Incompatible network settings\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"info: aborting scan\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SCAN_RESP: too many AP returned (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"info: SCAN_RESP: bss_descript_size %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"info: SCAN_RESP: returned %d APs before parsing\0A\00", [47 x i8] zeroinitializer }, align 32
@mwifiex_cmd_802_11_bg_scan_config.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 2, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mwifiex\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mwifiex_cmd_802_11_bg_scan_config\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/marvell/mwifiex/scan.c\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"info: bgscan: Using supplied channel list\0A\00", [53 x i8] zeroinitializer }, align 32
@mwifiex_cmd_802_11_bg_scan_config.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, i8 2, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"info: bgscan: Creating full region channel list\0A\00", [47 x i8] zeroinitializer }, align 32
@mwifiex_stop_bg_scan.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.16, ptr @.str.13, ptr @.str.17, i8 2, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mwifiex_stop_bg_scan\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bgscan already stopped!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"info: EXT scan returns successfully\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error processing scan response TLVs\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Scan pending in command pending list\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"EXT_SCAN: Invalid number of AP returned (%d)!!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"EXT_SCAN: size %d, returned %d APs...\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EXT_SCAN buffer:\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"EXT_SCAN: Error bytes left < TLV length\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"EXT_SCAN: Error in processing TLV,\09bytes left < TLV length\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"info: InterpretIE: RSSI=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: acquire semaphore fail\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.mwifiex_request_scan = private unnamed_addr constant [21 x i8] c"mwifiex_request_scan\00", align 1
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid param length!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"info: current beacon saved %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DIRECT-\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"info: scan: ssid[%d]: %s, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"info: scan: channel gap = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"info: scan: num_probes = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"info: Scan: Using supplied channel list\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"info: Scan: Scanning current channel only\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"info: Scan: Creating full region channel list\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"info: Scan: Null detect: %p, %p, %p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"info: Scan: Chan(%3d), Radio(%d),\09Mode(%d, %d), Dur(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"total scan time %dms\09is over limit (%dms), scan skipped\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"info: SCAN_CMD: Rates size = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"info: return success directly in WPS period\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Don't connect to AP with WLAN_EID_CHANNEL_SWITCH\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"info: return success for WAPI AP\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"info: Disable 11n in WEP mode.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"info: Disable 11n if AES\09is not supported by AP\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@__func__.mwifiex_is_network_compatible = private unnamed_addr constant [30 x i8] c"mwifiex_is_network_compatible\00", align 1
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WPA\00", [28 x i8] zeroinitializer }, align 32
@__func__.mwifiex_is_bss_wpa = private unnamed_addr constant [19 x i8] c"mwifiex_is_bss_wpa\00", align 1
@mwifiex_wpa_oui = internal global { [2 x [4 x i8]], [24 x i8] } { [2 x [4 x i8]] [[4 x i8] c"\00P\F2\02", [4 x i8] c"\00P\F2\04"], [24 x i8] zeroinitializer }, align 32
@mwifiex_search_oui_in_ie.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.49, ptr @.str.13, ptr @.str.50, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mwifiex_search_oui_in_ie\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"info: %s: OUI is not found in PTK\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mwifiex: info: %s: OUI is not found in PTK\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WAP2\00", [27 x i8] zeroinitializer }, align 32
@__func__.mwifiex_is_bss_wpa2 = private unnamed_addr constant [20 x i8] c"mwifiex_is_bss_wpa2\00", align 1
@mwifiex_rsn_oui = internal global { [2 x [4 x i8]], [24 x i8] } { [2 x [4 x i8]] [[4 x i8] c"\00\0F\AC\02", [4 x i8] c"\00\0F\AC\04"], [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dynamic\00", [24 x i8] zeroinitializer }, align 32
@__func__.mwifiex_is_bss_dynamic_wep = private unnamed_addr constant [27 x i8] c"mwifiex_is_bss_dynamic_wep\00", align 1
@.str.54 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"info: %s: %s:\09wpa_ie=%#x wpa2_ie=%#x WEP=%s WPA=%s WPA2=%s\09EncMode=%#x privacy=%#x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"e\00", [30 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"d\00", [30 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"info: SCAN_RESP: tlv_buf_size = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SCAN_RESP: TLV buffer corrupt\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"info: SCAN_RESP: TSF\09timestamp TLV, len = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"info: SCAN_RESP: channel\09band list TLV, len = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SCAN_RESP: unhandled TLV = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"InterpretIE: not enough bytes left\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"info: InterpretIE: capabilities=0x%X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"info: InterpretIE: IELength for this AP = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: bytes left < IE length\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.mwifiex_parse_single_response_buf = private unnamed_addr constant [34 x i8] c"mwifiex_parse_single_response_buf\00", align 1
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Dropping entry on csa closed channel\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"radar or passive channel %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"missing BSS channel IE\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"found hidden SSID\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"info: notifying scan done\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"info: scan already aborted\0A\00", [36 x i8] zeroinitializer }, align 32
@__const.mwifiex_check_next_scan_command.info = private unnamed_addr constant { i64, [6 x i8], i8, [1 x i8] } { i64 0, [6 x i8] zeroinitializer, i8 1, [1 x i8] zeroinitializer }, align 8
@.str.72 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"No BSS with hidden SSID found on DFS channels\0A\00", [49 x i8] zeroinitializer }, align 32
@mwifiex_active_scan_req_for_passive_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.13, i32 1984, ptr @.str.75, ptr @.str.76 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"scan failed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mwifiex_active_scan_req_for_passive_chan\00", [55 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mwifiex_active_scan_req_for_passive_chan._entry_ptr = internal global ptr @mwifiex_active_scan_req_for_passive_chan._entry, section ".printk_index", align 4
@.str.77 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"FW reported too many channel results (max %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"chan=%d, noise=%d, total_network=%d scan_duration=%d, busy_duration=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"complete internal scan\0A\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [25 x i64] [i64 23, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 32, i64 33, i64 35, i64 37, i64 40, i64 42, i64 45, i64 48, i64 50, i64 61, i64 68, i64 72, i64 127, i64 191, i64 192, i64 199, i64 221]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 24]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 6, i64 11]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 6, i64 11]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 16, i64 275, i64 298]
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1243, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1255, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1507, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1513, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1520, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1566, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1641, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2084, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2143, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2154, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2160, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2392, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2436, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2477, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2558, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2571, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2598, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2637, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2645, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2648, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2658, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2685, i32 5 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2727, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2837, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2888, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2936, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 930, i32 9 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 939, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 964, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1024, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1067, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1118, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1122, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 634, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 679, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 753, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 595, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 365, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 371, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 377, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 388, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 402, i32 6 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 439, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 268, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [16 x i8] c"mwifiex_wpa_oui\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 70, i32 11 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 139, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 289, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [16 x i8] c"mwifiex_rsn_oui\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 74, i32 11 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 326, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 85, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 91, i32 37 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 91, i32 43 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1155, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1165, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1173, i32 5 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1180, i32 5 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1187, i32 5 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1803, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1831, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1838, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1849, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1870, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1905, i32 6 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1916, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1685, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2013, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2020, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1955, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1984, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2517, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 2531, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.331 = private constant [47 x i8] c"../drivers/net/wireless/marvell/mwifiex/scan.c\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 1930, i32 4 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @mwifiex_active_scan_req_for_passive_chan._entry, ptr @mwifiex_active_scan_req_for_passive_chan._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @mwifiex_wpa_oui, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @mwifiex_rsn_oui, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_wpa_oui to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_rsn_oui to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_active_scan_req_for_passive_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_ssid_cmp(ptr noundef readonly %ssid1, ptr noundef readonly %ssid2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ssid1, null
  %tobool1.not = icmp eq ptr %ssid2, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %lor.lhs.false2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false2:                                   ; preds = %entry
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %ssid1, i32 0, i32 1
  %0 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ssid_len, align 1
  %ssid_len3 = getelementptr inbounds %struct.cfg80211_ssid, ptr %ssid2, i32 0, i32 1
  %2 = ptrtoint ptr %ssid_len3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ssid_len3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %if.end, label %lor.lhs.false2.return_crit_edge

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %1 to i32
  %call = tail call i32 @memcmp(ptr noundef nonnull %ssid1, ptr noundef nonnull %ssid2, i32 noundef %conv) #16
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %lor.lhs.false2.return_crit_edge ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_update_bss_desc_with_ie(ptr noundef %adapter, ptr noundef %bss_entry) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %beacon_buf = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 55
  %beacon_buf_size = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 56
  %0 = ptrtoint ptr %beacon_buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %beacon_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp330 = icmp ugt i32 %1, 1
  br i1 %cmp330, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %2 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %beacon_buf, align 8
  %oper_mode = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 42
  %oper_mode_offset = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 43
  %bcn_ext_cap = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 33
  %ext_cap_offset = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 34
  %bcn_bss_co_2040 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 30
  %bss_co_2040_offset = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 31
  %bcn_vht_oper = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 39
  %vht_info_offset = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 40
  %disable_11ac = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 44
  %bcn_vht_cap = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 36
  %vht_cap_offset = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 37
  %bcn_ht_oper = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 27
  %ht_info_offset = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 28
  %bcn_ht_cap = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 24
  %ht_cap_offset = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 25
  %bcn_wapi_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 52
  %wapi_offset = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 53
  %bcn_rsn_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 49
  %rsn_offset = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 50
  %wmm_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 21
  %bcn_wpa_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 46
  %wpa_offset = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 47
  %data_rates81 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 12
  %supported_rates87 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 11
  %chan_sw_ie_present = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 59
  %sensed_11h68 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 57
  %local_constraint = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 58
  %erp_flags = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 8
  %ss_param_set56 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 18
  %channel = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 5
  %phy_param_set43 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 17
  %ssid = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 1
  %ssid_len = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_entry, i32 0, i32 1, i32 1
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %bytes_left.0335 = phi i32 [ %1, %while.body.lr.ph ], [ %sub194, %sw.epilog.while.body_crit_edge ]
  %found_data_rate_ie.0334 = phi i8 [ 0, %while.body.lr.ph ], [ %found_data_rate_ie.1, %sw.epilog.while.body_crit_edge ]
  %rate_size.0333 = phi i8 [ 0, %while.body.lr.ph ], [ %rate_size.1, %sw.epilog.while.body_crit_edge ]
  %current_ptr.0331 = phi ptr [ %3, %while.body.lr.ph ], [ %add.ptr192, %sw.epilog.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %current_ptr.0331, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %5 to i32
  %conv1 = add nuw nsw i32 %conv, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes_left.0335, i32 %conv1)
  %cmp3 = icmp ult i32 %bytes_left.0335, %conv1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %while.body
  %6 = ptrtoint ptr %current_ptr.0331 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %current_ptr.0331, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.end.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb18
    i8 2, label %sw.bb30
    i8 3, label %sw.bb36
    i8 4, label %sw.bb44
    i8 6, label %sw.bb50
    i8 42, label %sw.bb57
    i8 32, label %sw.bb61
    i8 37, label %sw.bb66
    i8 33, label %if.end.sw.bb67_crit_edge
    i8 35, label %if.end.sw.bb67_crit_edge345
    i8 40, label %if.end.sw.bb67_crit_edge346
    i8 50, label %sw.bb69
    i8 -35, label %sw.bb94
    i8 48, label %sw.bb128
    i8 68, label %sw.bb134
    i8 45, label %sw.bb140
    i8 61, label %sw.bb148
    i8 -65, label %sw.bb156
    i8 -64, label %sw.bb164
    i8 72, label %sw.bb172
    i8 127, label %sw.bb178
    i8 -57, label %sw.bb184
  ]

if.end.sw.bb67_crit_edge346:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb67

if.end.sw.bb67_crit_edge345:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb67

if.end.sw.bb67_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb67

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp7 = icmp ugt i8 %5, 32
  br i1 %cmp7, label %sw.bb.cleanup_crit_edge, label %if.end10

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %5, ptr %ssid_len, align 2
  %add.ptr13 = getelementptr i8, ptr %current_ptr.0331, i32 2
  %10 = call ptr @memcpy(ptr %ssid, ptr %add.ptr13, i32 %conv)
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.1, ptr noundef %ssid) #13
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %5)
  %cmp20 = icmp ugt i8 %5, 14
  br i1 %cmp20, label %sw.bb18.cleanup_crit_edge, label %if.end23

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr25 = getelementptr i8, ptr %current_ptr.0331, i32 2
  %11 = call ptr @memcpy(ptr %data_rates81, ptr %add.ptr25, i32 %conv)
  %12 = call ptr @memcpy(ptr %supported_rates87, ptr %add.ptr25, i32 %conv)
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp32 = icmp ult i8 %5, 5
  br i1 %cmp32, label %sw.bb30.cleanup_crit_edge, label %if.end35

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #15
  %13 = call ptr @memcpy(ptr %phy_param_set43, ptr %current_ptr.0331, i32 7)
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp38 = icmp eq i8 %5, 0
  br i1 %cmp38, label %sw.bb36.cleanup_crit_edge, label %if.end41

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end41:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #15
  %current_chan = getelementptr inbounds %struct.ieee_types_ds_param_set, ptr %current_ptr.0331, i32 0, i32 2
  %14 = ptrtoint ptr %current_chan to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %current_chan, align 1
  %conv42 = zext i8 %15 to i32
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv42, ptr %channel, align 8
  %17 = call ptr @memcpy(ptr %phy_param_set43, ptr %current_ptr.0331, i32 3)
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %cmp46 = icmp ult i8 %5, 6
  br i1 %cmp46, label %sw.bb44.cleanup_crit_edge, label %if.end49

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end49:                                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %current_ptr.0331 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %current_ptr.0331, align 1
  %20 = ptrtoint ptr %ss_param_set56 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %ss_param_set56, align 1
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp52 = icmp ult i8 %5, 2
  br i1 %cmp52, label %sw.bb50.cleanup_crit_edge, label %if.end55

sw.bb50.cleanup_crit_edge:                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end55:                                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %current_ptr.0331 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %current_ptr.0331, align 1
  %23 = ptrtoint ptr %ss_param_set56 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %ss_param_set56, align 1
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %sw.bb57.cleanup_crit_edge, label %if.end59

sw.bb57.cleanup_crit_edge:                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end59:                                         ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr60 = getelementptr i8, ptr %current_ptr.0331, i32 2
  %24 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr60, align 1
  %26 = ptrtoint ptr %erp_flags to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %erp_flags, align 2
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool62.not = icmp eq i8 %5, 0
  br i1 %tobool62.not, label %sw.bb61.cleanup_crit_edge, label %if.end64

sw.bb61.cleanup_crit_edge:                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end64:                                         ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr65 = getelementptr i8, ptr %current_ptr.0331, i32 2
  %27 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr65, align 1
  %29 = ptrtoint ptr %local_constraint to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %local_constraint, align 1
  %30 = ptrtoint ptr %sensed_11h68 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %sensed_11h68, align 8
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %chan_sw_ie_present to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %chan_sw_ie_present, align 2
  br label %sw.bb67

sw.bb67:                                          ; preds = %sw.bb66, %if.end.sw.bb67_crit_edge, %if.end.sw.bb67_crit_edge345, %if.end.sw.bb67_crit_edge346
  %32 = ptrtoint ptr %sensed_11h68 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %sensed_11h68, align 8
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %found_data_rate_ie.0334)
  %tobool70.not = icmp eq i8 %found_data_rate_ie.0334, 0
  br i1 %tobool70.not, label %sw.bb69.sw.epilog_crit_edge, label %if.then71

sw.bb69.sw.epilog_crit_edge:                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then71:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #15
  %conv73 = zext i8 %rate_size.0333 to i32
  %add74 = add nuw nsw i32 %conv, %conv73
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %add74)
  %cmp75 = icmp ugt i32 %add74, 14
  %sub = sub i8 14, %rate_size.0333
  %bytes_to_copy.0 = select i1 %cmp75, i8 %sub, i8 %5
  %add.ptr84 = getelementptr i8, ptr %data_rates81, i32 %conv73
  %add.ptr85 = getelementptr i8, ptr %current_ptr.0331, i32 2
  %conv86 = zext i8 %bytes_to_copy.0 to i32
  %33 = call ptr @memcpy(ptr %add.ptr84, ptr %add.ptr85, i32 %conv86)
  %add.ptr90 = getelementptr i8, ptr %supported_rates87, i32 %conv73
  %34 = call ptr @memcpy(ptr %add.ptr90, ptr %add.ptr85, i32 %conv86)
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp96 = icmp ult i8 %5, 3
  br i1 %cmp96, label %sw.bb94.cleanup_crit_edge, label %if.end99

sw.bb94.cleanup_crit_edge:                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end99:                                         ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp101 = icmp eq i8 %5, 3
  br i1 %cmp101, label %if.end99.sw.epilog_crit_edge, label %if.end104

if.end99.sw.epilog_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end104:                                        ; preds = %if.end99
  %oui = getelementptr inbounds %struct.ieee_types_vendor_header, ptr %current_ptr.0331, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %oui, ptr noundef nonnull dereferenceable(4) @__const.mwifiex_update_bss_desc_with_ie.wpa_oui, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool106.not = icmp eq i32 %bcmp, 0
  br i1 %tobool106.not, label %if.then107, label %if.else110

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %bcn_wpa_ie to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %current_ptr.0331, ptr %bcn_wpa_ie, align 8
  %36 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %beacon_buf, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %current_ptr.0331 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %37 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv109 = trunc i32 %sub.ptr.sub to i16
  %38 = ptrtoint ptr %wpa_offset to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv109, ptr %wpa_offset, align 4
  br label %sw.epilog

if.else110:                                       ; preds = %if.end104
  %bcmp329 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %oui, ptr noundef nonnull dereferenceable(4) @__const.mwifiex_update_bss_desc_with_ie.wmm_oui, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp329)
  %tobool115.not = icmp eq i32 %bcmp329, 0
  br i1 %tobool115.not, label %if.then116, label %if.else110.sw.epilog_crit_edge

if.else110.sw.epilog_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then116:                                       ; preds = %if.else110
  %39 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %5, label %if.then116.sw.epilog_crit_edge [
    i8 24, label %if.then116.if.then123_crit_edge
    i8 7, label %if.then116.if.then123_crit_edge347
  ]

if.then116.if.then123_crit_edge347:               ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then123

if.then116.if.then123_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then123

if.then116.sw.epilog_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then123:                                       ; preds = %if.then116.if.then123_crit_edge, %if.then116.if.then123_crit_edge347
  %40 = call ptr @memcpy(ptr %wmm_ie, ptr %current_ptr.0331, i32 %conv1)
  br label %sw.epilog

sw.bb128:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %bcn_rsn_ie to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %current_ptr.0331, ptr %bcn_rsn_ie, align 8
  %42 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %beacon_buf, align 8
  %sub.ptr.lhs.cast130 = ptrtoint ptr %current_ptr.0331 to i32
  %sub.ptr.rhs.cast131 = ptrtoint ptr %43 to i32
  %sub.ptr.sub132 = sub i32 %sub.ptr.lhs.cast130, %sub.ptr.rhs.cast131
  %conv133 = trunc i32 %sub.ptr.sub132 to i16
  %44 = ptrtoint ptr %rsn_offset to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv133, ptr %rsn_offset, align 4
  br label %sw.epilog

sw.bb134:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %bcn_wapi_ie to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %current_ptr.0331, ptr %bcn_wapi_ie, align 8
  %46 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %beacon_buf, align 8
  %sub.ptr.lhs.cast136 = ptrtoint ptr %current_ptr.0331 to i32
  %sub.ptr.rhs.cast137 = ptrtoint ptr %47 to i32
  %sub.ptr.sub138 = sub i32 %sub.ptr.lhs.cast136, %sub.ptr.rhs.cast137
  %conv139 = trunc i32 %sub.ptr.sub138 to i16
  %48 = ptrtoint ptr %wapi_offset to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv139, ptr %wapi_offset, align 4
  br label %sw.epilog

sw.bb140:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr141 = getelementptr i8, ptr %current_ptr.0331, i32 2
  %49 = ptrtoint ptr %bcn_ht_cap to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr141, ptr %bcn_ht_cap, align 8
  %50 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %beacon_buf, align 8
  %sub.ptr.lhs.cast144 = ptrtoint ptr %add.ptr141 to i32
  %sub.ptr.rhs.cast145 = ptrtoint ptr %51 to i32
  %sub.ptr.sub146 = sub i32 %sub.ptr.lhs.cast144, %sub.ptr.rhs.cast145
  %conv147 = trunc i32 %sub.ptr.sub146 to i16
  %52 = ptrtoint ptr %ht_cap_offset to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv147, ptr %ht_cap_offset, align 4
  br label %sw.epilog

sw.bb148:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr149 = getelementptr i8, ptr %current_ptr.0331, i32 2
  %53 = ptrtoint ptr %bcn_ht_oper to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr149, ptr %bcn_ht_oper, align 8
  %54 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %beacon_buf, align 8
  %sub.ptr.lhs.cast152 = ptrtoint ptr %add.ptr149 to i32
  %sub.ptr.rhs.cast153 = ptrtoint ptr %55 to i32
  %sub.ptr.sub154 = sub i32 %sub.ptr.lhs.cast152, %sub.ptr.rhs.cast153
  %conv155 = trunc i32 %sub.ptr.sub154 to i16
  %56 = ptrtoint ptr %ht_info_offset to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv155, ptr %ht_info_offset, align 4
  br label %sw.epilog

sw.bb156:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %disable_11ac to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %disable_11ac, align 2
  %add.ptr157 = getelementptr i8, ptr %current_ptr.0331, i32 2
  %58 = ptrtoint ptr %bcn_vht_cap to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr157, ptr %bcn_vht_cap, align 8
  %59 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %beacon_buf, align 8
  %sub.ptr.lhs.cast160 = ptrtoint ptr %add.ptr157 to i32
  %sub.ptr.rhs.cast161 = ptrtoint ptr %60 to i32
  %sub.ptr.sub162 = sub i32 %sub.ptr.lhs.cast160, %sub.ptr.rhs.cast161
  %conv163 = trunc i32 %sub.ptr.sub162 to i16
  %61 = ptrtoint ptr %vht_cap_offset to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv163, ptr %vht_cap_offset, align 4
  br label %sw.epilog

sw.bb164:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr165 = getelementptr i8, ptr %current_ptr.0331, i32 2
  %62 = ptrtoint ptr %bcn_vht_oper to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr165, ptr %bcn_vht_oper, align 8
  %63 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %beacon_buf, align 8
  %sub.ptr.lhs.cast168 = ptrtoint ptr %add.ptr165 to i32
  %sub.ptr.rhs.cast169 = ptrtoint ptr %64 to i32
  %sub.ptr.sub170 = sub i32 %sub.ptr.lhs.cast168, %sub.ptr.rhs.cast169
  %conv171 = trunc i32 %sub.ptr.sub170 to i16
  %65 = ptrtoint ptr %vht_info_offset to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv171, ptr %vht_info_offset, align 4
  br label %sw.epilog

sw.bb172:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %bcn_bss_co_2040 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %current_ptr.0331, ptr %bcn_bss_co_2040, align 8
  %67 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %beacon_buf, align 8
  %sub.ptr.lhs.cast174 = ptrtoint ptr %current_ptr.0331 to i32
  %sub.ptr.rhs.cast175 = ptrtoint ptr %68 to i32
  %sub.ptr.sub176 = sub i32 %sub.ptr.lhs.cast174, %sub.ptr.rhs.cast175
  %conv177 = trunc i32 %sub.ptr.sub176 to i16
  %69 = ptrtoint ptr %bss_co_2040_offset to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv177, ptr %bss_co_2040_offset, align 4
  br label %sw.epilog

sw.bb178:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %bcn_ext_cap to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %current_ptr.0331, ptr %bcn_ext_cap, align 8
  %71 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %beacon_buf, align 8
  %sub.ptr.lhs.cast180 = ptrtoint ptr %current_ptr.0331 to i32
  %sub.ptr.rhs.cast181 = ptrtoint ptr %72 to i32
  %sub.ptr.sub182 = sub i32 %sub.ptr.lhs.cast180, %sub.ptr.rhs.cast181
  %conv183 = trunc i32 %sub.ptr.sub182 to i16
  %73 = ptrtoint ptr %ext_cap_offset to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv183, ptr %ext_cap_offset, align 4
  br label %sw.epilog

sw.bb184:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %oper_mode to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %current_ptr.0331, ptr %oper_mode, align 8
  %75 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %beacon_buf, align 8
  %sub.ptr.lhs.cast187 = ptrtoint ptr %current_ptr.0331 to i32
  %sub.ptr.rhs.cast188 = ptrtoint ptr %76 to i32
  %sub.ptr.sub189 = sub i32 %sub.ptr.lhs.cast187, %sub.ptr.rhs.cast188
  %conv190 = trunc i32 %sub.ptr.sub189 to i16
  %77 = ptrtoint ptr %oper_mode_offset to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv190, ptr %oper_mode_offset, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb184, %sw.bb178, %sw.bb172, %sw.bb164, %sw.bb156, %sw.bb148, %sw.bb140, %sw.bb134, %sw.bb128, %if.then123, %if.then116.sw.epilog_crit_edge, %if.else110.sw.epilog_crit_edge, %if.then107, %if.end99.sw.epilog_crit_edge, %if.then71, %sw.bb69.sw.epilog_crit_edge, %sw.bb67, %if.end64, %if.end59, %if.end55, %if.end49, %if.end41, %if.end35, %if.end23, %if.end10, %if.end.sw.epilog_crit_edge
  %rate_size.1 = phi i8 [ %rate_size.0333, %if.end.sw.epilog_crit_edge ], [ %rate_size.0333, %sw.bb184 ], [ %rate_size.0333, %sw.bb178 ], [ %rate_size.0333, %sw.bb172 ], [ %rate_size.0333, %sw.bb164 ], [ %rate_size.0333, %sw.bb156 ], [ %rate_size.0333, %sw.bb148 ], [ %rate_size.0333, %sw.bb140 ], [ %rate_size.0333, %sw.bb134 ], [ %rate_size.0333, %sw.bb128 ], [ %rate_size.0333, %if.end99.sw.epilog_crit_edge ], [ %rate_size.0333, %if.else110.sw.epilog_crit_edge ], [ %rate_size.0333, %if.then123 ], [ %rate_size.0333, %if.then107 ], [ %rate_size.0333, %if.then71 ], [ %rate_size.0333, %sw.bb69.sw.epilog_crit_edge ], [ %rate_size.0333, %sw.bb67 ], [ %rate_size.0333, %if.end64 ], [ %rate_size.0333, %if.end59 ], [ %rate_size.0333, %if.end55 ], [ %rate_size.0333, %if.end49 ], [ %rate_size.0333, %if.end41 ], [ %rate_size.0333, %if.end35 ], [ %5, %if.end23 ], [ %rate_size.0333, %if.end10 ], [ %rate_size.0333, %if.then116.sw.epilog_crit_edge ]
  %found_data_rate_ie.1 = phi i8 [ %found_data_rate_ie.0334, %if.end.sw.epilog_crit_edge ], [ %found_data_rate_ie.0334, %sw.bb184 ], [ %found_data_rate_ie.0334, %sw.bb178 ], [ %found_data_rate_ie.0334, %sw.bb172 ], [ %found_data_rate_ie.0334, %sw.bb164 ], [ %found_data_rate_ie.0334, %sw.bb156 ], [ %found_data_rate_ie.0334, %sw.bb148 ], [ %found_data_rate_ie.0334, %sw.bb140 ], [ %found_data_rate_ie.0334, %sw.bb134 ], [ %found_data_rate_ie.0334, %sw.bb128 ], [ %found_data_rate_ie.0334, %if.end99.sw.epilog_crit_edge ], [ %found_data_rate_ie.0334, %if.else110.sw.epilog_crit_edge ], [ %found_data_rate_ie.0334, %if.then123 ], [ %found_data_rate_ie.0334, %if.then107 ], [ 1, %if.then71 ], [ 0, %sw.bb69.sw.epilog_crit_edge ], [ %found_data_rate_ie.0334, %sw.bb67 ], [ %found_data_rate_ie.0334, %if.end64 ], [ %found_data_rate_ie.0334, %if.end59 ], [ %found_data_rate_ie.0334, %if.end55 ], [ %found_data_rate_ie.0334, %if.end49 ], [ %found_data_rate_ie.0334, %if.end41 ], [ %found_data_rate_ie.0334, %if.end35 ], [ 1, %if.end23 ], [ %found_data_rate_ie.0334, %if.end10 ], [ %found_data_rate_ie.0334, %if.then116.sw.epilog_crit_edge ]
  %add.ptr192 = getelementptr i8, ptr %current_ptr.0331, i32 %conv1
  %sub194 = sub i32 %bytes_left.0335, %conv1
  %cmp = icmp ugt i32 %sub194, 1
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %sw.bb94.cleanup_crit_edge, %sw.bb61.cleanup_crit_edge, %sw.bb57.cleanup_crit_edge, %sw.bb50.cleanup_crit_edge, %sw.bb44.cleanup_crit_edge, %sw.bb36.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb18.cleanup_crit_edge ], [ -22, %sw.bb30.cleanup_crit_edge ], [ -22, %sw.bb36.cleanup_crit_edge ], [ -22, %sw.bb44.cleanup_crit_edge ], [ -22, %sw.bb50.cleanup_crit_edge ], [ -22, %sw.bb57.cleanup_crit_edge ], [ -22, %sw.bb61.cleanup_crit_edge ], [ -22, %sw.bb94.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_scan_networks(ptr noundef %priv, ptr noundef %user_scan_in) local_unnamed_addr #2 align 64 {
entry:
  %chan_list_out = alloca ptr, align 4
  %filtered_scan = alloca i8, align 1
  %scan_current_chan_only = alloca i8, align 1
  %max_chan_per_scan = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan_list_out) #13
  %2 = ptrtoint ptr %chan_list_out to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %chan_list_out, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %filtered_scan) #13
  %3 = ptrtoint ptr %filtered_scan to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %filtered_scan, align 1, !annotation !175
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan_current_chan_only) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %max_chan_per_scan) #13
  %4 = ptrtoint ptr %max_chan_per_scan to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %max_chan_per_scan, align 1, !annotation !175
  %scan_processing = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 73
  %5 = ptrtoint ptr %scan_processing to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scan_processing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 536870912, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %scan_block = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 114
  %7 = ptrtoint ptr %scan_block to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scan_block, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 536870912, ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %work_flags, align 4
  %and1.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end4.if.then9_crit_edge

if.end4.if.then9_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end4
  %11 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %work_flags, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %if.end10, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end4.if.then9_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %mwifiex_cmd_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %mwifiex_cmd_lock) #13
  %14 = ptrtoint ptr %scan_processing to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %scan_processing, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 549) #17
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end10.if.then38_crit_edge, label %if.end16

if.end10.if.then38_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

if.end16:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 350) #17
  %tobool18.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool18.not, label %if.end16.if.then38.sink.split_crit_edge, label %if.end20

if.end16.if.then38.sink.split_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38.sink.split

if.end20:                                         ; preds = %if.end16
  call fastcc void @mwifiex_config_scan(ptr noundef %priv, ptr noundef %user_scan_in, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %chan_list_out, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %max_chan_per_scan, ptr noundef nonnull %filtered_scan, ptr noundef nonnull %scan_current_chan_only)
  %17 = ptrtoint ptr %max_chan_per_scan to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_chan_per_scan, align 1
  %conv = zext i8 %18 to i32
  %19 = ptrtoint ptr %filtered_scan to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %filtered_scan, align 1
  %21 = ptrtoint ptr %chan_list_out to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chan_list_out, align 4
  %call21 = tail call fastcc i32 @mwifiex_scan_channel_list(ptr noundef %priv, i32 noundef %conv, i8 noundef zeroext %20, ptr noundef nonnull %call7.i.i, ptr noundef %22, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.then38.critedge

if.then23:                                        ; preds = %if.end20
  %scan_pending_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %scan_pending_q_lock) #13
  %scan_pending_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 68
  %23 = ptrtoint ptr %scan_pending_q to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %scan_pending_q, align 4
  %cmp.i.not = icmp eq ptr %24, %scan_pending_q
  br i1 %cmp.i.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then23
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then26.list_del.exit_crit_edge

if.then26.list_del.exit_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then26.list_del.exit_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %scan_pending_q_lock) #13
  tail call void @mwifiex_insert_cmd_to_pending_q(ptr noundef %1, ptr noundef %24) #13
  %workqueue = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 24
  %33 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %workqueue, align 4
  %main_work = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 25
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %main_work) #13
  %scan_request = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 111
  %35 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %scan_request, align 8
  %tobool30.not = icmp eq ptr %36, null
  br i1 %tobool30.not, label %if.then31, label %cleanup.critedge

if.then31:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.5) #13
  %call32 = tail call i32 @mwifiex_wait_queue_complete(ptr noundef %1, ptr noundef %24) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %scan_pending_q_lock) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup

if.then38.critedge:                               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %if.then38.sink.split

if.then38.sink.split:                             ; preds = %if.then38.critedge, %if.end16.if.then38.sink.split_crit_edge
  %call7.i.i.i.sink = phi ptr [ %call7.i.i.i, %if.then38.critedge ], [ %call7.i.i, %if.end16.if.then38.sink.split_crit_edge ]
  %ret.090.ph = phi i32 [ %call21, %if.then38.critedge ], [ -12, %if.end16.if.then38.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.sink) #13
  br label %if.then38

if.then38:                                        ; preds = %if.then38.sink.split, %if.end10.if.then38_crit_edge
  %ret.090 = phi i32 [ -12, %if.end10.if.then38_crit_edge ], [ %ret.090.ph, %if.then38.sink.split ]
  tail call void @_raw_spin_lock_bh(ptr noundef %mwifiex_cmd_lock) #13
  %37 = ptrtoint ptr %scan_processing to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %scan_processing, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock) #13
  br label %cleanup

cleanup.critedge:                                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.then38, %if.else, %if.then31, %if.then9, %if.then3, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ -16, %if.then3 ], [ -14, %if.then9 ], [ %ret.090, %if.then38 ], [ 0, %cleanup.critedge ], [ 0, %if.then31 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %max_chan_per_scan) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan_current_chan_only) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %filtered_scan) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan_list_out) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_config_scan(ptr noundef %priv, ptr noundef readonly %user_scan_in, ptr noundef %scan_cfg_out, ptr nocapture noundef writeonly %chan_list_out, ptr nocapture noundef %scan_chan_list, ptr nocapture noundef writeonly %max_chan_per_scan, ptr nocapture noundef %filtered_scan, ptr nocapture noundef writeonly %scan_current_only) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tlv_buf_len = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %scan_cfg_out, i32 0, i32 2
  %2 = ptrtoint ptr %tlv_buf_len to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %tlv_buf_len, align 1
  %tlv_buf = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %scan_cfg_out, i32 0, i32 3
  %3 = ptrtoint ptr %filtered_scan to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %filtered_scan, align 1
  %4 = ptrtoint ptr %scan_current_only to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %scan_current_only, align 1
  %tobool.not = icmp eq ptr %user_scan_in, null
  br i1 %tobool.not, label %if.else106, label %if.then

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %user_scan_in to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %user_scan_in, align 1
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %cond.false, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %scan_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 77
  %7 = ptrtoint ptr %scan_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scan_mode, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.false ], [ %conv, %if.then.cond.end_crit_edge ]
  %conv4 = trunc i32 %cond to i8
  %9 = ptrtoint ptr %scan_cfg_out to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4, ptr %scan_cfg_out, align 1
  %num_probes6 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %user_scan_in, i32 0, i32 1
  %10 = ptrtoint ptr %num_probes6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_probes6, align 1
  %conv7 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %cond.false10, label %cond.end.cond.end12_crit_edge

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end12

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %scan_probes = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 76
  %12 = ptrtoint ptr %scan_probes to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %scan_probes, align 4
  %conv11 = zext i16 %13 to i32
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false10, %cond.end.cond.end12_crit_edge
  %cond13 = phi i32 [ %conv11, %cond.false10 ], [ %conv7, %cond.end.cond.end12_crit_edge ]
  %specific_bssid = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %scan_cfg_out, i32 0, i32 1
  %specific_bssid15 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %user_scan_in, i32 0, i32 3
  %14 = call ptr @memcpy(ptr %specific_bssid, ptr %specific_bssid15, i32 6)
  %tmpaddr.sroa.10.0.specific_bssid.sroa_idx = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %scan_cfg_out, i32 0, i32 1, i32 4
  %ext_scan = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 137
  %15 = ptrtoint ptr %ext_scan to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ext_scan, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool20.not = icmp eq i8 %16, 0
  br i1 %tobool20.not, label %cond.end12.if.end_crit_edge, label %land.lhs.true

cond.end12.if.end_crit_edge:                      ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end12
  %17 = ptrtoint ptr %tmpaddr.sroa.10.0.specific_bssid.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %tmpaddr.sroa.10.0.copyload = load i16, ptr %tmpaddr.sroa.10.0.specific_bssid.sroa_idx, align 1
  %18 = ptrtoint ptr %specific_bssid to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %tmpaddr.sroa.0.0.copyload = load i32, ptr %specific_bssid, align 1
  %conv.i = zext i16 %tmpaddr.sroa.10.0.copyload to i32
  %or.i = or i32 %tmpaddr.sroa.0.0.copyload, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then23

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %tlv_buf to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 8961, ptr %tlv_buf, align 1
  %len = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %scan_cfg_out, i32 1, i32 1
  %20 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 1536, ptr %len, align 1
  %bssid = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %scan_cfg_out, i32 1, i32 1, i32 2
  %21 = call ptr @memcpy(ptr %bssid, ptr %specific_bssid15, i32 6)
  %add.ptr = getelementptr i8, ptr %tlv_buf, i32 10
  br label %if.end

if.end:                                           ; preds = %if.then23, %land.lhs.true.if.end_crit_edge, %cond.end12.if.end_crit_edge
  %tlv_pos.0 = phi ptr [ %tlv_buf, %cond.end12.if.end_crit_edge ], [ %tlv_buf, %land.lhs.true.if.end_crit_edge ], [ %add.ptr, %if.then23 ]
  %num_ssids = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %user_scan_in, i32 0, i32 5
  %22 = ptrtoint ptr %num_ssids to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_ssids, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp450.not = icmp eq i8 %23, 0
  br i1 %cmp450.not, label %if.end.lor.lhs.false_crit_edge, label %for.body.lr.ph

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

for.body.lr.ph:                                   ; preds = %if.end
  %ssid_list = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %user_scan_in, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ssid_filter.0453 = phi i8 [ 1, %for.body.lr.ph ], [ %ssid_filter.1, %for.inc.for.body_crit_edge ]
  %i.0452 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %tlv_pos.1451 = phi ptr [ %tlv_pos.0, %for.body.lr.ph ], [ %add.ptr59, %for.inc.for.body_crit_edge ]
  %24 = ptrtoint ptr %ssid_list to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load ptr, ptr %ssid_list, align 1
  %ssid_len30 = getelementptr %struct.cfg80211_ssid, ptr %25, i32 %i.0452, i32 1
  %26 = ptrtoint ptr %ssid_len30 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ssid_len30, align 1
  %conv31 = zext i8 %27 to i32
  %28 = ptrtoint ptr %tlv_pos.1451 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 4609, ptr %tlv_pos.1451, align 1
  %29 = zext i8 %27 to i16
  %conv34 = add nuw nsw i16 %29, 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv34)
  %len36 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.1451, i32 0, i32 1
  %31 = ptrtoint ptr %len36 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %len36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool37.not = icmp eq i8 %27, 0
  %spec.select470 = select i1 %tobool37.not, i8 32, i8 0
  %32 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, ptr %tlv_pos.1451, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %spec.select470, ptr %32, align 1
  %34 = ptrtoint ptr %ssid_list to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load ptr, ptr %ssid_list, align 1
  %arrayidx42 = getelementptr %struct.cfg80211_ssid, ptr %35, i32 %i.0452
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(7) %arrayidx42, ptr noundef nonnull dereferenceable(7) @.str.31, i32 7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool45.not = icmp eq i32 %bcmp, 0
  %spec.store.select = select i1 %tobool45.not, i8 -2, i8 %spec.select470
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %spec.store.select, ptr %32, align 1
  %ssid49 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, ptr %tlv_pos.1451, i32 0, i32 2
  %37 = ptrtoint ptr %ssid_list to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load ptr, ptr %ssid_list, align 1
  %arrayidx52 = getelementptr %struct.cfg80211_ssid, ptr %38, i32 %i.0452
  %39 = call ptr @memcpy(ptr %ssid49, ptr %arrayidx52, i32 %conv31)
  %40 = ptrtoint ptr %len36 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %len36, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %conv57 = zext i16 %42 to i32
  %add58 = add nuw nsw i32 %conv57, 4
  %add.ptr59 = getelementptr i8, ptr %tlv_pos.1451, i32 %add58
  %43 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %32, align 1
  %conv63 = zext i8 %44 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.32, i32 noundef %i.0452, ptr noundef %ssid49, i32 noundef %conv63) #13
  br i1 %tobool37.not, label %land.lhs.true65, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true65:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool68.not = icmp eq i8 %46, 0
  %spec.select = select i1 %tobool68.not, i8 %ssid_filter.0453, i8 0
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true65, %for.body.for.inc_crit_edge
  %ssid_filter.1 = phi i8 [ %ssid_filter.0453, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true65 ]
  %inc = add nuw nsw i32 %i.0452, 1
  %47 = ptrtoint ptr %num_ssids to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num_ssids, align 1
  %conv28 = zext i8 %48 to i32
  %cmp = icmp ult i32 %inc, %conv28
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ssid_filter.1)
  %tobool77.not = icmp eq i8 %ssid_filter.1, 0
  %or.cond = select i1 %cmp450.not, i1 true, i1 %tobool77.not
  br i1 %or.cond, label %for.end.lor.lhs.false_crit_edge, label %for.end.if.then80_crit_edge

for.end.if.then80_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80

for.end.lor.lhs.false_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %tlv_pos.1.lcssa467 = phi ptr [ %add.ptr59, %for.end.lor.lhs.false_crit_edge ], [ %tlv_pos.0, %if.end.lor.lhs.false_crit_edge ]
  %49 = ptrtoint ptr %tmpaddr.sroa.10.0.specific_bssid.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %tmpaddr.sroa.10.0.copyload404 = load i16, ptr %tmpaddr.sroa.10.0.specific_bssid.sroa_idx, align 1
  %50 = ptrtoint ptr %specific_bssid to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %tmpaddr.sroa.0.0.copyload402 = load i32, ptr %specific_bssid, align 1
  %conv.i386 = zext i16 %tmpaddr.sroa.10.0.copyload404 to i32
  %or.i387 = or i32 %tmpaddr.sroa.0.0.copyload402, %conv.i386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i387)
  %cmp.i388 = icmp eq i32 %or.i387, 0
  br i1 %cmp.i388, label %lor.lhs.false.if.end81_crit_edge, label %lor.lhs.false.if.then80_crit_edge

lor.lhs.false.if.then80_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80

lor.lhs.false.if.end81_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then80:                                        ; preds = %lor.lhs.false.if.then80_crit_edge, %for.end.if.then80_crit_edge
  %tlv_pos.1.lcssa465 = phi ptr [ %add.ptr59, %for.end.if.then80_crit_edge ], [ %tlv_pos.1.lcssa467, %lor.lhs.false.if.then80_crit_edge ]
  %51 = ptrtoint ptr %filtered_scan to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %filtered_scan, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %lor.lhs.false.if.end81_crit_edge
  %tlv_pos.1.lcssa466 = phi ptr [ %tlv_pos.1.lcssa465, %if.then80 ], [ %tlv_pos.1.lcssa467, %lor.lhs.false.if.end81_crit_edge ]
  %scan_chan_gap = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %user_scan_in, i32 0, i32 7
  %52 = ptrtoint ptr %scan_chan_gap to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %scan_chan_gap, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool82.not = icmp eq i16 %53, 0
  br i1 %tobool82.not, label %if.end81.if.end92_crit_edge, label %if.then83

if.end81.if.end92_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %conv85 = zext i16 %53 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.33, i32 noundef %conv85) #13
  %54 = ptrtoint ptr %max_chan_per_scan to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 14, ptr %max_chan_per_scan, align 1
  %55 = ptrtoint ptr %tlv_pos.1.lcssa466 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 -15103, ptr %tlv_pos.1.lcssa466, align 1
  %len89 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.1.lcssa466, i32 0, i32 1
  %56 = ptrtoint ptr %len89 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 512, ptr %len89, align 1
  %57 = ptrtoint ptr %scan_chan_gap to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %scan_chan_gap, align 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %58)
  %chan_gap = getelementptr inbounds %struct.mwifiex_ie_types_scan_chan_gap, ptr %tlv_pos.1.lcssa466, i32 0, i32 1
  %60 = ptrtoint ptr %chan_gap to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %59, ptr %chan_gap, align 1
  %add.ptr91 = getelementptr i8, ptr %tlv_pos.1.lcssa466, i32 6
  br label %if.end92

if.end92:                                         ; preds = %if.then83, %if.end81.if.end92_crit_edge
  %tlv_pos.2 = phi ptr [ %tlv_pos.1.lcssa466, %if.end81.if.end92_crit_edge ], [ %add.ptr91, %if.then83 ]
  %random_mac = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %user_scan_in, i32 0, i32 8
  %61 = ptrtoint ptr %random_mac to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %random_mac, align 4
  %add.ptr.i389 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %user_scan_in, i32 0, i32 8, i32 4
  %63 = ptrtoint ptr %add.ptr.i389 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %add.ptr.i389, align 2
  %xor3.i = zext i16 %64 to i32
  %or.i390 = or i32 %62, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i390)
  %cmp.i391 = icmp eq i32 %or.i390, 0
  br i1 %cmp.i391, label %if.end92.if.end112_crit_edge, label %if.then96

if.end92.if.end112_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %tlv_pos.2 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 -5119, ptr %tlv_pos.2, align 1
  %len100 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.2, i32 0, i32 1
  %66 = ptrtoint ptr %len100 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 1536, ptr %len100, align 1
  %mac = getelementptr inbounds %struct.mwifiex_ie_types_random_mac, ptr %tlv_pos.2, i32 0, i32 1
  %67 = ptrtoint ptr %random_mac to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %random_mac, align 4
  %69 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %mac, align 4
  %70 = ptrtoint ptr %add.ptr.i389 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr.i389, align 2
  %add.ptr1.i393 = getelementptr %struct.mwifiex_ie_types_random_mac, ptr %tlv_pos.2, i32 0, i32 1, i32 4
  %72 = ptrtoint ptr %add.ptr1.i393 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %add.ptr1.i393, align 2
  %add.ptr104 = getelementptr i8, ptr %tlv_pos.2, i32 10
  br label %if.end112

if.else106:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %scan_mode107 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 77
  %73 = ptrtoint ptr %scan_mode107 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %scan_mode107, align 4
  %conv108 = trunc i32 %74 to i8
  %75 = ptrtoint ptr %scan_cfg_out to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv108, ptr %scan_cfg_out, align 1
  %scan_probes110 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 76
  %76 = ptrtoint ptr %scan_probes110 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %scan_probes110, align 4
  %conv111 = zext i16 %77 to i32
  br label %if.end112

if.end112:                                        ; preds = %if.else106, %if.then96, %if.end92.if.end112_crit_edge
  %tlv_pos.4 = phi ptr [ %tlv_buf, %if.else106 ], [ %tlv_pos.2, %if.end92.if.end112_crit_edge ], [ %add.ptr104, %if.then96 ]
  %num_probes.0 = phi i32 [ %conv111, %if.else106 ], [ %cond13, %if.end92.if.end112_crit_edge ], [ %cond13, %if.then96 ]
  %78 = ptrtoint ptr %filtered_scan to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %filtered_scan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool113.not = icmp eq i8 %79, 0
  br i1 %tobool113.not, label %if.else115, label %if.end112.if.end120_crit_edge

if.end112.if.end120_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

if.else115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %80 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool116.not = icmp eq i8 %81, 0
  %. = select i1 %tobool116.not, i8 4, i8 2
  br label %if.end120

if.end120:                                        ; preds = %if.else115, %if.end112.if.end120_crit_edge
  %.sink = phi i8 [ 14, %if.end112.if.end120_crit_edge ], [ %., %if.else115 ]
  %82 = ptrtoint ptr %max_chan_per_scan to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %.sink, ptr %max_chan_per_scan, align 1
  %ext_scan121 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 137
  %83 = ptrtoint ptr %ext_scan121 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ext_scan121, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool122.not = icmp eq i8 %84, 0
  br i1 %tobool122.not, label %if.end120.if.end135_crit_edge, label %if.then123

if.end120.if.end135_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %tlv_pos.4 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 -12799, ptr %tlv_pos.4, align 1
  %len127 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.4, i32 0, i32 1
  %86 = ptrtoint ptr %len127 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 256, ptr %len127, align 1
  %87 = ptrtoint ptr %scan_cfg_out to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %scan_cfg_out, align 1
  %bss_mode129 = getelementptr inbounds %struct.mwifiex_ie_types_bss_mode, ptr %tlv_pos.4, i32 0, i32 1
  %89 = ptrtoint ptr %bss_mode129 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %bss_mode129, align 1
  %add.ptr134 = getelementptr i8, ptr %tlv_pos.4, i32 5
  br label %if.end135

if.end135:                                        ; preds = %if.then123, %if.end120.if.end135_crit_edge
  %tlv_pos.5 = phi ptr [ %tlv_pos.4, %if.end120.if.end135_crit_edge ], [ %add.ptr134, %if.then123 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_probes.0)
  %tobool136.not = icmp eq i32 %num_probes.0, 0
  br i1 %tobool136.not, label %if.end135.if.end149_crit_edge, label %if.then137

if.end135.if.end149_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end149

if.then137:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.34, i32 noundef %num_probes.0) #13
  %90 = ptrtoint ptr %tlv_pos.5 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 513, ptr %tlv_pos.5, align 1
  %len141 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.5, i32 0, i32 1
  %91 = ptrtoint ptr %len141 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 512, ptr %len141, align 1
  %conv142 = trunc i32 %num_probes.0 to i16
  %92 = tail call i16 @llvm.bswap.i16(i16 %conv142)
  %num_probes143 = getelementptr inbounds %struct.mwifiex_ie_types_num_probes, ptr %tlv_pos.5, i32 0, i32 1
  %93 = ptrtoint ptr %num_probes143 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 2)
  store i16 %92, ptr %num_probes143, align 1
  %add.ptr148 = getelementptr i8, ptr %tlv_pos.5, i32 6
  br label %if.end149

if.end149:                                        ; preds = %if.then137, %if.end135.if.end149_crit_edge
  %tlv_pos.6 = phi ptr [ %tlv_pos.5, %if.end135.if.end149_crit_edge ], [ %add.ptr148, %if.then137 ]
  %94 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %95, i32 0, i32 47
  %96 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %97, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool151.not = icmp eq i32 %and, 0
  br i1 %tobool151.not, label %if.end149.if.end174_crit_edge, label %land.lhs.true152

if.end149.if.end174_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end174

land.lhs.true152:                                 ; preds = %if.end149
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %95, i32 0, i32 84
  %98 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %config_bands, align 2
  %100 = and i8 %99, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %land.lhs.true152.if.end174_crit_edge, label %if.then163

land.lhs.true152.if.end174_crit_edge:             ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end174

if.then163:                                       ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #15
  %102 = getelementptr inbounds i8, ptr %tlv_pos.6, i32 4
  %103 = call ptr @memset(ptr %102, i32 0, i32 26)
  %104 = ptrtoint ptr %tlv_pos.6 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 11520, ptr %tlv_pos.6, align 1
  %len167 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.6, i32 0, i32 1
  %105 = ptrtoint ptr %len167 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 6656, ptr %len167, align 1
  %106 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %priv, align 8
  %config_bands169 = getelementptr inbounds %struct.mwifiex_adapter, ptr %107, i32 0, i32 84
  %108 = ptrtoint ptr %config_bands169 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %config_bands169, align 2
  %call170 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %109) #13
  %ht_cap171 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %tlv_pos.6, i32 0, i32 1
  %call172 = tail call i32 @mwifiex_fill_cap_info(ptr noundef %priv, i8 noundef zeroext %call170, ptr noundef %ht_cap171) #13
  %add.ptr173 = getelementptr i8, ptr %tlv_pos.6, i32 30
  br label %if.end174

if.end174:                                        ; preds = %if.then163, %land.lhs.true152.if.end174_crit_edge, %if.end149.if.end174_crit_edge
  %tlv_pos.7 = phi ptr [ %tlv_pos.6, %if.end149.if.end174_crit_edge ], [ %tlv_pos.6, %land.lhs.true152.if.end174_crit_edge ], [ %add.ptr173, %if.then163 ]
  %tobool1.not.i = icmp eq ptr %tlv_pos.7, null
  br i1 %tobool1.not.i, label %if.end174.mwifiex_cmd_append_vsie_tlv.exit_crit_edge, label %for.body.i.preheader

if.end174.mwifiex_cmd_append_vsie_tlv.exit_crit_edge: ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_cmd_append_vsie_tlv.exit

for.body.i.preheader:                             ; preds = %if.end174
  %arrayidx.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 0
  %110 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx.i, align 2
  %and59.i = and i16 %111, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i)
  %tobool5.not.i = icmp eq i16 %and59.i, 0
  br i1 %tobool5.not.i, label %for.body.i.preheader.for.inc.i_crit_edge, label %if.then6.i

for.body.i.preheader.for.inc.i_crit_edge:         ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i.preheader
  %112 = ptrtoint ptr %tlv_pos.7 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 2561, ptr %tlv_pos.7, align 1
  %arrayidx9.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 0, i32 2, i32 1
  %113 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx9.i, align 1
  %conv11.i = zext i8 %114 to i16
  %add.i = add nuw nsw i16 %conv11.i, 2
  %115 = tail call i16 @llvm.bswap.i16(i16 %add.i) #13
  %len.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.7, i32 0, i32 1
  %116 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 2)
  store i16 %115, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %114)
  %cmp18.i = icmp eq i8 %114, -1
  br i1 %cmp18.i, label %if.then6.i.if.then20.i_crit_edge, label %if.end21.i

if.then6.i.if.then20.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.then20.i:                                      ; preds = %if.then6.i.7.if.then20.i_crit_edge, %if.then6.i.6.if.then20.i_crit_edge, %if.then6.i.5.if.then20.i_crit_edge, %if.then6.i.4.if.then20.i_crit_edge, %if.then6.i.3.if.then20.i_crit_edge, %if.then6.i.2.if.then20.i_crit_edge, %if.then6.i.1.if.then20.i_crit_edge, %if.then6.i.if.then20.i_crit_edge
  %tlv_pos.8.lcssa = phi ptr [ %tlv_pos.7, %if.then6.i.if.then20.i_crit_edge ], [ %tlv_pos.9, %if.then6.i.1.if.then20.i_crit_edge ], [ %tlv_pos.9.1, %if.then6.i.2.if.then20.i_crit_edge ], [ %tlv_pos.9.2, %if.then6.i.3.if.then20.i_crit_edge ], [ %tlv_pos.9.3, %if.then6.i.4.if.then20.i_crit_edge ], [ %tlv_pos.9.4, %if.then6.i.5.if.then20.i_crit_edge ], [ %tlv_pos.9.5, %if.then6.i.6.if.then20.i_crit_edge ], [ %tlv_pos.9.6, %if.then6.i.7.if.then20.i_crit_edge ]
  %117 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %118, i32 noundef 4, ptr noundef nonnull @.str.29) #13
  br label %mwifiex_cmd_append_vsie_tlv.exit

if.end21.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i = zext i16 %add.i to i32
  %ie.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 0, i32 2
  %ie22.i = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.7, i32 0, i32 1
  %119 = call ptr @memcpy(ptr %ie22.i, ptr %ie.i, i32 %conv17.i)
  %add33.i = add nuw nsw i32 %conv17.i, 4
  %add.ptr.i394 = getelementptr i8, ptr %tlv_pos.7, i32 %add33.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end21.i, %for.body.i.preheader.for.inc.i_crit_edge
  %tlv_pos.9 = phi ptr [ %tlv_pos.7, %for.body.i.preheader.for.inc.i_crit_edge ], [ %add.ptr.i394, %if.end21.i ]
  %arrayidx.i.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 1
  %120 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx.i.1, align 2
  %and59.i.1 = and i16 %121, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i.1)
  %tobool5.not.i.1 = icmp eq i16 %and59.i.1, 0
  br i1 %tobool5.not.i.1, label %for.inc.i.for.inc.i.1_crit_edge, label %if.then6.i.1

for.inc.i.for.inc.i.1_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.1

if.then6.i.1:                                     ; preds = %for.inc.i
  %122 = ptrtoint ptr %tlv_pos.9 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 2)
  store i16 2561, ptr %tlv_pos.9, align 1
  %arrayidx9.i.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 1, i32 2, i32 1
  %123 = ptrtoint ptr %arrayidx9.i.1 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx9.i.1, align 1
  %conv11.i.1 = zext i8 %124 to i16
  %add.i.1 = add nuw nsw i16 %conv11.i.1, 2
  %125 = tail call i16 @llvm.bswap.i16(i16 %add.i.1) #13
  %len.i.1 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.9, i32 0, i32 1
  %126 = ptrtoint ptr %len.i.1 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 %125, ptr %len.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %124)
  %cmp18.i.1 = icmp eq i8 %124, -1
  br i1 %cmp18.i.1, label %if.then6.i.1.if.then20.i_crit_edge, label %if.end21.i.1

if.then6.i.1.if.then20.i_crit_edge:               ; preds = %if.then6.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.end21.i.1:                                     ; preds = %if.then6.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.1 = zext i16 %add.i.1 to i32
  %ie.i.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 1, i32 2
  %ie22.i.1 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.9, i32 0, i32 1
  %127 = call ptr @memcpy(ptr %ie22.i.1, ptr %ie.i.1, i32 %conv17.i.1)
  %add33.i.1 = add nuw nsw i32 %conv17.i.1, 4
  %add.ptr.i394.1 = getelementptr i8, ptr %tlv_pos.9, i32 %add33.i.1
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.end21.i.1, %for.inc.i.for.inc.i.1_crit_edge
  %tlv_pos.9.1 = phi ptr [ %tlv_pos.9, %for.inc.i.for.inc.i.1_crit_edge ], [ %add.ptr.i394.1, %if.end21.i.1 ]
  %arrayidx.i.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 2
  %128 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx.i.2, align 2
  %and59.i.2 = and i16 %129, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i.2)
  %tobool5.not.i.2 = icmp eq i16 %and59.i.2, 0
  br i1 %tobool5.not.i.2, label %for.inc.i.1.for.inc.i.2_crit_edge, label %if.then6.i.2

for.inc.i.1.for.inc.i.2_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.2

if.then6.i.2:                                     ; preds = %for.inc.i.1
  %130 = ptrtoint ptr %tlv_pos.9.1 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 2561, ptr %tlv_pos.9.1, align 1
  %arrayidx9.i.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 2, i32 2, i32 1
  %131 = ptrtoint ptr %arrayidx9.i.2 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx9.i.2, align 1
  %conv11.i.2 = zext i8 %132 to i16
  %add.i.2 = add nuw nsw i16 %conv11.i.2, 2
  %133 = tail call i16 @llvm.bswap.i16(i16 %add.i.2) #13
  %len.i.2 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.9.1, i32 0, i32 1
  %134 = ptrtoint ptr %len.i.2 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 2)
  store i16 %133, ptr %len.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %132)
  %cmp18.i.2 = icmp eq i8 %132, -1
  br i1 %cmp18.i.2, label %if.then6.i.2.if.then20.i_crit_edge, label %if.end21.i.2

if.then6.i.2.if.then20.i_crit_edge:               ; preds = %if.then6.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.end21.i.2:                                     ; preds = %if.then6.i.2
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.2 = zext i16 %add.i.2 to i32
  %ie.i.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 2, i32 2
  %ie22.i.2 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.9.1, i32 0, i32 1
  %135 = call ptr @memcpy(ptr %ie22.i.2, ptr %ie.i.2, i32 %conv17.i.2)
  %add33.i.2 = add nuw nsw i32 %conv17.i.2, 4
  %add.ptr.i394.2 = getelementptr i8, ptr %tlv_pos.9.1, i32 %add33.i.2
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.end21.i.2, %for.inc.i.1.for.inc.i.2_crit_edge
  %tlv_pos.9.2 = phi ptr [ %tlv_pos.9.1, %for.inc.i.1.for.inc.i.2_crit_edge ], [ %add.ptr.i394.2, %if.end21.i.2 ]
  %arrayidx.i.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 3
  %136 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx.i.3, align 2
  %and59.i.3 = and i16 %137, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i.3)
  %tobool5.not.i.3 = icmp eq i16 %and59.i.3, 0
  br i1 %tobool5.not.i.3, label %for.inc.i.2.for.inc.i.3_crit_edge, label %if.then6.i.3

for.inc.i.2.for.inc.i.3_crit_edge:                ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.3

if.then6.i.3:                                     ; preds = %for.inc.i.2
  %138 = ptrtoint ptr %tlv_pos.9.2 to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 2561, ptr %tlv_pos.9.2, align 1
  %arrayidx9.i.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 3, i32 2, i32 1
  %139 = ptrtoint ptr %arrayidx9.i.3 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx9.i.3, align 1
  %conv11.i.3 = zext i8 %140 to i16
  %add.i.3 = add nuw nsw i16 %conv11.i.3, 2
  %141 = tail call i16 @llvm.bswap.i16(i16 %add.i.3) #13
  %len.i.3 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.9.2, i32 0, i32 1
  %142 = ptrtoint ptr %len.i.3 to i32
  call void @__asan_storeN_noabort(i32 %142, i32 2)
  store i16 %141, ptr %len.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %140)
  %cmp18.i.3 = icmp eq i8 %140, -1
  br i1 %cmp18.i.3, label %if.then6.i.3.if.then20.i_crit_edge, label %if.end21.i.3

if.then6.i.3.if.then20.i_crit_edge:               ; preds = %if.then6.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.end21.i.3:                                     ; preds = %if.then6.i.3
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.3 = zext i16 %add.i.3 to i32
  %ie.i.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 3, i32 2
  %ie22.i.3 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.9.2, i32 0, i32 1
  %143 = call ptr @memcpy(ptr %ie22.i.3, ptr %ie.i.3, i32 %conv17.i.3)
  %add33.i.3 = add nuw nsw i32 %conv17.i.3, 4
  %add.ptr.i394.3 = getelementptr i8, ptr %tlv_pos.9.2, i32 %add33.i.3
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.end21.i.3, %for.inc.i.2.for.inc.i.3_crit_edge
  %tlv_pos.9.3 = phi ptr [ %tlv_pos.9.2, %for.inc.i.2.for.inc.i.3_crit_edge ], [ %add.ptr.i394.3, %if.end21.i.3 ]
  %arrayidx.i.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 4
  %144 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %arrayidx.i.4, align 2
  %and59.i.4 = and i16 %145, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i.4)
  %tobool5.not.i.4 = icmp eq i16 %and59.i.4, 0
  br i1 %tobool5.not.i.4, label %for.inc.i.3.for.inc.i.4_crit_edge, label %if.then6.i.4

for.inc.i.3.for.inc.i.4_crit_edge:                ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.4

if.then6.i.4:                                     ; preds = %for.inc.i.3
  %146 = ptrtoint ptr %tlv_pos.9.3 to i32
  call void @__asan_storeN_noabort(i32 %146, i32 2)
  store i16 2561, ptr %tlv_pos.9.3, align 1
  %arrayidx9.i.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 4, i32 2, i32 1
  %147 = ptrtoint ptr %arrayidx9.i.4 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx9.i.4, align 1
  %conv11.i.4 = zext i8 %148 to i16
  %add.i.4 = add nuw nsw i16 %conv11.i.4, 2
  %149 = tail call i16 @llvm.bswap.i16(i16 %add.i.4) #13
  %len.i.4 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.9.3, i32 0, i32 1
  %150 = ptrtoint ptr %len.i.4 to i32
  call void @__asan_storeN_noabort(i32 %150, i32 2)
  store i16 %149, ptr %len.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %148)
  %cmp18.i.4 = icmp eq i8 %148, -1
  br i1 %cmp18.i.4, label %if.then6.i.4.if.then20.i_crit_edge, label %if.end21.i.4

if.then6.i.4.if.then20.i_crit_edge:               ; preds = %if.then6.i.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.end21.i.4:                                     ; preds = %if.then6.i.4
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.4 = zext i16 %add.i.4 to i32
  %ie.i.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 4, i32 2
  %ie22.i.4 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.9.3, i32 0, i32 1
  %151 = call ptr @memcpy(ptr %ie22.i.4, ptr %ie.i.4, i32 %conv17.i.4)
  %add33.i.4 = add nuw nsw i32 %conv17.i.4, 4
  %add.ptr.i394.4 = getelementptr i8, ptr %tlv_pos.9.3, i32 %add33.i.4
  br label %for.inc.i.4

for.inc.i.4:                                      ; preds = %if.end21.i.4, %for.inc.i.3.for.inc.i.4_crit_edge
  %tlv_pos.9.4 = phi ptr [ %tlv_pos.9.3, %for.inc.i.3.for.inc.i.4_crit_edge ], [ %add.ptr.i394.4, %if.end21.i.4 ]
  %arrayidx.i.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 5
  %152 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx.i.5, align 2
  %and59.i.5 = and i16 %153, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i.5)
  %tobool5.not.i.5 = icmp eq i16 %and59.i.5, 0
  br i1 %tobool5.not.i.5, label %for.inc.i.4.for.inc.i.5_crit_edge, label %if.then6.i.5

for.inc.i.4.for.inc.i.5_crit_edge:                ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.5

if.then6.i.5:                                     ; preds = %for.inc.i.4
  %154 = ptrtoint ptr %tlv_pos.9.4 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 2561, ptr %tlv_pos.9.4, align 1
  %arrayidx9.i.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 5, i32 2, i32 1
  %155 = ptrtoint ptr %arrayidx9.i.5 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx9.i.5, align 1
  %conv11.i.5 = zext i8 %156 to i16
  %add.i.5 = add nuw nsw i16 %conv11.i.5, 2
  %157 = tail call i16 @llvm.bswap.i16(i16 %add.i.5) #13
  %len.i.5 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.9.4, i32 0, i32 1
  %158 = ptrtoint ptr %len.i.5 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 2)
  store i16 %157, ptr %len.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %156)
  %cmp18.i.5 = icmp eq i8 %156, -1
  br i1 %cmp18.i.5, label %if.then6.i.5.if.then20.i_crit_edge, label %if.end21.i.5

if.then6.i.5.if.then20.i_crit_edge:               ; preds = %if.then6.i.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.end21.i.5:                                     ; preds = %if.then6.i.5
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.5 = zext i16 %add.i.5 to i32
  %ie.i.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 5, i32 2
  %ie22.i.5 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.9.4, i32 0, i32 1
  %159 = call ptr @memcpy(ptr %ie22.i.5, ptr %ie.i.5, i32 %conv17.i.5)
  %add33.i.5 = add nuw nsw i32 %conv17.i.5, 4
  %add.ptr.i394.5 = getelementptr i8, ptr %tlv_pos.9.4, i32 %add33.i.5
  br label %for.inc.i.5

for.inc.i.5:                                      ; preds = %if.end21.i.5, %for.inc.i.4.for.inc.i.5_crit_edge
  %tlv_pos.9.5 = phi ptr [ %tlv_pos.9.4, %for.inc.i.4.for.inc.i.5_crit_edge ], [ %add.ptr.i394.5, %if.end21.i.5 ]
  %arrayidx.i.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 6
  %160 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %arrayidx.i.6, align 2
  %and59.i.6 = and i16 %161, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i.6)
  %tobool5.not.i.6 = icmp eq i16 %and59.i.6, 0
  br i1 %tobool5.not.i.6, label %for.inc.i.5.for.inc.i.6_crit_edge, label %if.then6.i.6

for.inc.i.5.for.inc.i.6_crit_edge:                ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.6

if.then6.i.6:                                     ; preds = %for.inc.i.5
  %162 = ptrtoint ptr %tlv_pos.9.5 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 2)
  store i16 2561, ptr %tlv_pos.9.5, align 1
  %arrayidx9.i.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 6, i32 2, i32 1
  %163 = ptrtoint ptr %arrayidx9.i.6 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx9.i.6, align 1
  %conv11.i.6 = zext i8 %164 to i16
  %add.i.6 = add nuw nsw i16 %conv11.i.6, 2
  %165 = tail call i16 @llvm.bswap.i16(i16 %add.i.6) #13
  %len.i.6 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.9.5, i32 0, i32 1
  %166 = ptrtoint ptr %len.i.6 to i32
  call void @__asan_storeN_noabort(i32 %166, i32 2)
  store i16 %165, ptr %len.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %164)
  %cmp18.i.6 = icmp eq i8 %164, -1
  br i1 %cmp18.i.6, label %if.then6.i.6.if.then20.i_crit_edge, label %if.end21.i.6

if.then6.i.6.if.then20.i_crit_edge:               ; preds = %if.then6.i.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.end21.i.6:                                     ; preds = %if.then6.i.6
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.6 = zext i16 %add.i.6 to i32
  %ie.i.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 6, i32 2
  %ie22.i.6 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.9.5, i32 0, i32 1
  %167 = call ptr @memcpy(ptr %ie22.i.6, ptr %ie.i.6, i32 %conv17.i.6)
  %add33.i.6 = add nuw nsw i32 %conv17.i.6, 4
  %add.ptr.i394.6 = getelementptr i8, ptr %tlv_pos.9.5, i32 %add33.i.6
  br label %for.inc.i.6

for.inc.i.6:                                      ; preds = %if.end21.i.6, %for.inc.i.5.for.inc.i.6_crit_edge
  %tlv_pos.9.6 = phi ptr [ %tlv_pos.9.5, %for.inc.i.5.for.inc.i.6_crit_edge ], [ %add.ptr.i394.6, %if.end21.i.6 ]
  %arrayidx.i.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 7
  %168 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %arrayidx.i.7, align 2
  %and59.i.7 = and i16 %169, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i.7)
  %tobool5.not.i.7 = icmp eq i16 %and59.i.7, 0
  br i1 %tobool5.not.i.7, label %for.inc.i.6.mwifiex_cmd_append_vsie_tlv.exit_crit_edge, label %if.then6.i.7

for.inc.i.6.mwifiex_cmd_append_vsie_tlv.exit_crit_edge: ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_cmd_append_vsie_tlv.exit

if.then6.i.7:                                     ; preds = %for.inc.i.6
  %170 = ptrtoint ptr %tlv_pos.9.6 to i32
  call void @__asan_storeN_noabort(i32 %170, i32 2)
  store i16 2561, ptr %tlv_pos.9.6, align 1
  %arrayidx9.i.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 7, i32 2, i32 1
  %171 = ptrtoint ptr %arrayidx9.i.7 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx9.i.7, align 1
  %conv11.i.7 = zext i8 %172 to i16
  %add.i.7 = add nuw nsw i16 %conv11.i.7, 2
  %173 = tail call i16 @llvm.bswap.i16(i16 %add.i.7) #13
  %len.i.7 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.9.6, i32 0, i32 1
  %174 = ptrtoint ptr %len.i.7 to i32
  call void @__asan_storeN_noabort(i32 %174, i32 2)
  store i16 %173, ptr %len.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %172)
  %cmp18.i.7 = icmp eq i8 %172, -1
  br i1 %cmp18.i.7, label %if.then6.i.7.if.then20.i_crit_edge, label %if.end21.i.7

if.then6.i.7.if.then20.i_crit_edge:               ; preds = %if.then6.i.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.end21.i.7:                                     ; preds = %if.then6.i.7
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.7 = zext i16 %add.i.7 to i32
  %ie.i.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 7, i32 2
  %ie22.i.7 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.9.6, i32 0, i32 1
  %175 = call ptr @memcpy(ptr %ie22.i.7, ptr %ie.i.7, i32 %conv17.i.7)
  %add33.i.7 = add nuw nsw i32 %conv17.i.7, 4
  %add.ptr.i394.7 = getelementptr i8, ptr %tlv_pos.9.6, i32 %add33.i.7
  br label %mwifiex_cmd_append_vsie_tlv.exit

mwifiex_cmd_append_vsie_tlv.exit:                 ; preds = %if.end21.i.7, %for.inc.i.6.mwifiex_cmd_append_vsie_tlv.exit_crit_edge, %if.then20.i, %if.end174.mwifiex_cmd_append_vsie_tlv.exit_crit_edge
  %tlv_pos.10 = phi ptr [ null, %if.end174.mwifiex_cmd_append_vsie_tlv.exit_crit_edge ], [ %tlv_pos.8.lcssa, %if.then20.i ], [ %tlv_pos.9.6, %for.inc.i.6.mwifiex_cmd_append_vsie_tlv.exit_crit_edge ], [ %add.ptr.i394.7, %if.end21.i.7 ]
  %176 = ptrtoint ptr %chan_list_out to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %tlv_pos.10, ptr %chan_list_out, align 4
  br i1 %tobool.not, label %mwifiex_cmd_append_vsie_tlv.exit.if.else259_crit_edge, label %land.lhs.true177

mwifiex_cmd_append_vsie_tlv.exit.if.else259_crit_edge: ; preds = %mwifiex_cmd_append_vsie_tlv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else259

land.lhs.true177:                                 ; preds = %mwifiex_cmd_append_vsie_tlv.exit
  %chan_list = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %user_scan_in, i32 0, i32 6
  %177 = ptrtoint ptr %chan_list to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %chan_list, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool180.not = icmp eq i8 %178, 0
  br i1 %tobool180.not, label %land.lhs.true177.if.else259_crit_edge, label %if.then181

land.lhs.true177.if.else259_crit_edge:            ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else259

if.then181:                                       ; preds = %land.lhs.true177
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.35) #13
  %specific_scan_time = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 78
  %active_scan_time = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 79
  %passive_scan_time = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 80
  br label %land.rhs

land.rhs:                                         ; preds = %if.end241.land.rhs_crit_edge, %if.then181
  %chan_idx.0456 = phi i32 [ 0, %if.then181 ], [ %inc245, %if.end241.land.rhs_crit_edge ]
  %arrayidx186 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %user_scan_in, i32 0, i32 6, i32 %chan_idx.0456
  %179 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx186, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool189.not = icmp eq i8 %180, 0
  br i1 %tobool189.not, label %for.end246, label %for.body190

for.body190:                                      ; preds = %land.rhs
  %arrayidx194 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %scan_chan_list, i32 %chan_idx.0456
  %chan_number195 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %scan_chan_list, i32 %chan_idx.0456, i32 1
  %181 = ptrtoint ptr %chan_number195 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %chan_number195, align 1
  %radio_type198 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %user_scan_in, i32 0, i32 6, i32 %chan_idx.0456, i32 1
  %182 = ptrtoint ptr %radio_type198 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %radio_type198, align 1
  %184 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %183, ptr %arrayidx194, align 1
  %scan_type203 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %user_scan_in, i32 0, i32 6, i32 %chan_idx.0456, i32 2
  %185 = ptrtoint ptr %scan_type203 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %scan_type203, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %186)
  %cmp205 = icmp eq i8 %186, 2
  %chan_scan_mode_bitmap = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %scan_chan_list, i32 %chan_idx.0456, i32 2
  %187 = ptrtoint ptr %chan_scan_mode_bitmap to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %chan_scan_mode_bitmap, align 1
  %189 = and i8 %188, -4
  %190 = or i8 %188, 17
  %.sink471 = select i1 %cmp205, i8 %190, i8 %189
  %chan_scan_mode_bitmap219 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %scan_chan_list, i32 %chan_idx.0456, i32 2
  %191 = or i8 %.sink471, 2
  %192 = ptrtoint ptr %chan_scan_mode_bitmap219 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %chan_scan_mode_bitmap219, align 1
  %scan_time = getelementptr %struct.mwifiex_user_scan_cfg, ptr %user_scan_in, i32 0, i32 6, i32 %chan_idx.0456, i32 4
  %193 = ptrtoint ptr %scan_time to i32
  call void @__asan_loadN_noabort(i32 %193, i32 4)
  %194 = load i32, ptr %scan_time, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool225.not = icmp eq i32 %194, 0
  br i1 %tobool225.not, label %if.else231, label %if.then226

if.then226:                                       ; preds = %for.body190
  call void @__sanitizer_cov_trace_pc() #15
  %conv230 = trunc i32 %194 to i16
  br label %if.end241

if.else231:                                       ; preds = %for.body190
  br i1 %cmp205, label %if.then234, label %if.else235

if.then234:                                       ; preds = %if.else231
  call void @__sanitizer_cov_trace_pc() #15
  %195 = ptrtoint ptr %passive_scan_time to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %passive_scan_time, align 4
  br label %if.end241

if.else235:                                       ; preds = %if.else231
  %197 = ptrtoint ptr %filtered_scan to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %filtered_scan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool236.not = icmp eq i8 %198, 0
  br i1 %tobool236.not, label %if.else238, label %if.then237

if.then237:                                       ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #15
  %199 = ptrtoint ptr %specific_scan_time to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %specific_scan_time, align 4
  br label %if.end241

if.else238:                                       ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #15
  %201 = ptrtoint ptr %active_scan_time to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %active_scan_time, align 2
  br label %if.end241

if.end241:                                        ; preds = %if.else238, %if.then237, %if.then234, %if.then226
  %scan_dur.0 = phi i16 [ %conv230, %if.then226 ], [ %196, %if.then234 ], [ %200, %if.then237 ], [ %202, %if.else238 ]
  %203 = tail call i16 @llvm.bswap.i16(i16 %scan_dur.0)
  %min_scan_time = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %scan_chan_list, i32 %chan_idx.0456, i32 3
  %204 = ptrtoint ptr %min_scan_time to i32
  call void @__asan_storeN_noabort(i32 %204, i32 2)
  store i16 %203, ptr %min_scan_time, align 1
  %max_scan_time = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %scan_chan_list, i32 %chan_idx.0456, i32 4
  %205 = ptrtoint ptr %max_scan_time to i32
  call void @__asan_storeN_noabort(i32 %205, i32 2)
  store i16 %203, ptr %max_scan_time, align 1
  %inc245 = add nuw nsw i32 %chan_idx.0456, 1
  %exitcond.not = icmp eq i32 %inc245, 50
  br i1 %exitcond.not, label %if.end241.if.end261_crit_edge, label %if.end241.land.rhs_crit_edge

if.end241.land.rhs_crit_edge:                     ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.end241.if.end261_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

for.end246:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %chan_idx.0456)
  %cmp247 = icmp eq i32 %chan_idx.0456, 1
  br i1 %cmp247, label %land.lhs.true249, label %for.end246.if.end261_crit_edge

for.end246.if.end261_crit_edge:                   ; preds = %for.end246
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

land.lhs.true249:                                 ; preds = %for.end246
  %206 = ptrtoint ptr %chan_list to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %chan_list, align 1
  %conv253 = zext i8 %207 to i32
  %channel254 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 5
  %208 = ptrtoint ptr %channel254 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %channel254, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %conv253)
  %cmp255 = icmp eq i32 %209, %conv253
  br i1 %cmp255, label %if.then257, label %land.lhs.true249.if.end261_crit_edge

land.lhs.true249.if.end261_crit_edge:             ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

if.then257:                                       ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #15
  %210 = ptrtoint ptr %scan_current_only to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 1, ptr %scan_current_only, align 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.36) #13
  br label %if.end261

if.else259:                                       ; preds = %land.lhs.true177.if.else259_crit_edge, %mwifiex_cmd_append_vsie_tlv.exit.if.else259_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.37) #13
  %211 = ptrtoint ptr %filtered_scan to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %filtered_scan, align 1
  %213 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %priv, align 8
  %wdev.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %scan_time.i = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %user_scan_in, i32 0, i32 6, i32 0, i32 4
  %passive_scan_time.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %214, i32 0, i32 80
  %active_scan_time.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %214, i32 0, i32 79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool60.not.i = icmp eq i8 %212, 0
  %specific_scan_time.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %214, i32 0, i32 78
  br label %for.body.i396

for.body.i396:                                    ; preds = %for.inc74.i.for.body.i396_crit_edge, %if.else259
  %chan_idx.013.i = phi i32 [ 0, %if.else259 ], [ %chan_idx.3.i, %for.inc74.i.for.body.i396_crit_edge ]
  %band.010.i = phi i32 [ 0, %if.else259 ], [ %inc75.i, %for.inc74.i.for.body.i396_crit_edge ]
  %215 = ptrtoint ptr %wdev.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %wdev.i, align 8
  %arrayidx.i395 = getelementptr %struct.wiphy, ptr %216, i32 0, i32 53, i32 %band.010.i
  %217 = ptrtoint ptr %arrayidx.i395 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx.i395, align 4
  %tobool.not.i = icmp eq ptr %218, null
  br i1 %tobool.not.i, label %for.body.i396.for.inc74.i_crit_edge, label %for.cond6.preheader.i

for.body.i396.for.inc74.i_crit_edge:              ; preds = %for.body.i396
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc74.i

for.cond6.preheader.i:                            ; preds = %for.body.i396
  %n_channels.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %218, i32 0, i32 3
  %219 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %cmp72.i = icmp sgt i32 %220, 0
  br i1 %cmp72.i, label %for.body8.lr.ph.i, label %for.cond6.preheader.i.for.inc74.i_crit_edge

for.cond6.preheader.i.for.inc74.i_crit_edge:      ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc74.i

for.body8.lr.ph.i:                                ; preds = %for.cond6.preheader.i
  %conv.i397 = trunc i32 %band.010.i to i8
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.inc.i399.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc73.i, %for.inc.i399.for.body8.i_crit_edge ]
  %chan_idx.13.i = phi i32 [ %chan_idx.013.i, %for.body8.lr.ph.i ], [ %chan_idx.2.i, %for.inc.i399.for.body8.i_crit_edge ]
  %221 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %218, align 4
  %flags.i = getelementptr %struct.ieee80211_channel, ptr %222, i32 %i.08.i, i32 4
  %223 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %224, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %for.body8.i.for.inc.i399_crit_edge

for.body8.i.for.inc.i399_crit_edge:               ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i399

if.end12.i:                                       ; preds = %for.body8.i
  %arrayidx13.i = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %scan_chan_list, i32 %chan_idx.13.i
  %225 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv.i397, ptr %arrayidx13.i, align 1
  br i1 %tobool.not, label %if.end12.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end12.i.if.else.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %226 = ptrtoint ptr %scan_time.i to i32
  call void @__asan_loadN_noabort(i32 %226, i32 4)
  %227 = load i32, ptr %scan_time.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool16.not.i = icmp eq i32 %227, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then17.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv21.i = trunc i32 %227 to i16
  br label %if.end36.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end12.i.if.else.i_crit_edge
  %228 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %flags.i, align 4
  %230 = and i32 %229, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %if.else32.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %232 = ptrtoint ptr %passive_scan_time.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %passive_scan_time.i, align 4
  br label %if.end36.i

if.else32.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %234 = ptrtoint ptr %active_scan_time.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %active_scan_time.i, align 2
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else32.i, %if.then29.i, %if.then17.i
  %.sink14.i = phi i16 [ %233, %if.then29.i ], [ %235, %if.else32.i ], [ %conv21.i, %if.then17.i ]
  %236 = tail call i16 @llvm.bswap.i16(i16 %.sink14.i) #13
  %max_scan_time31.i = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %scan_chan_list, i32 %chan_idx.13.i, i32 4
  %237 = ptrtoint ptr %max_scan_time31.i to i32
  call void @__asan_storeN_noabort(i32 %237, i32 2)
  store i16 %236, ptr %max_scan_time31.i, align 1
  %238 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %flags.i, align 4
  %and38.i = and i32 %239, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  %chan_scan_mode_bitmap46.i = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %scan_chan_list, i32 %chan_idx.13.i, i32 2
  %240 = ptrtoint ptr %chan_scan_mode_bitmap46.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %chan_scan_mode_bitmap46.i, align 1
  %242 = and i8 %241, -2
  %243 = or i8 %241, 17
  %.sink.i = select i1 %tobool39.not.i, i8 %242, i8 %243
  store i8 %.sink.i, ptr %chan_scan_mode_bitmap46.i, align 1
  %hw_value.i = getelementptr %struct.ieee80211_channel, ptr %222, i32 %i.08.i, i32 3
  %244 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %hw_value.i, align 2
  %conv52.i = trunc i16 %245 to i8
  %chan_number.i = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %scan_chan_list, i32 %chan_idx.13.i, i32 1
  %246 = ptrtoint ptr %chan_number.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %conv52.i, ptr %chan_number.i, align 1
  %247 = or i8 %.sink.i, 2
  store i8 %247, ptr %chan_scan_mode_bitmap46.i, align 1
  br i1 %tobool60.not.i, label %if.end36.i.if.end72.i_crit_edge, label %land.lhs.true61.i

if.end36.i.if.end72.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72.i

land.lhs.true61.i:                                ; preds = %if.end36.i
  %248 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %flags.i, align 4
  %250 = and i32 %249, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %if.then69.i, label %land.lhs.true61.i.if.end72.i_crit_edge

land.lhs.true61.i.if.end72.i_crit_edge:           ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72.i

if.then69.i:                                      ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #15
  %252 = ptrtoint ptr %specific_scan_time.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %specific_scan_time.i, align 4
  %254 = tail call i16 @llvm.bswap.i16(i16 %253) #13
  %255 = ptrtoint ptr %max_scan_time31.i to i32
  call void @__asan_storeN_noabort(i32 %255, i32 2)
  store i16 %254, ptr %max_scan_time31.i, align 1
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then69.i, %land.lhs.true61.i.if.end72.i_crit_edge, %if.end36.i.if.end72.i_crit_edge
  %inc.i398 = add i32 %chan_idx.13.i, 1
  br label %for.inc.i399

for.inc.i399:                                     ; preds = %if.end72.i, %for.body8.i.for.inc.i399_crit_edge
  %chan_idx.2.i = phi i32 [ %chan_idx.13.i, %for.body8.i.for.inc.i399_crit_edge ], [ %inc.i398, %if.end72.i ]
  %inc73.i = add nuw nsw i32 %i.08.i, 1
  %256 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %n_channels.i, align 4
  %cmp7.i = icmp slt i32 %inc73.i, %257
  br i1 %cmp7.i, label %for.inc.i399.for.body8.i_crit_edge, label %for.inc.i399.for.inc74.i_crit_edge

for.inc.i399.for.inc74.i_crit_edge:               ; preds = %for.inc.i399
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc74.i

for.inc.i399.for.body8.i_crit_edge:               ; preds = %for.inc.i399
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body8.i

for.inc74.i:                                      ; preds = %for.inc.i399.for.inc74.i_crit_edge, %for.cond6.preheader.i.for.inc74.i_crit_edge, %for.body.i396.for.inc74.i_crit_edge
  %chan_idx.3.i = phi i32 [ %chan_idx.013.i, %for.body.i396.for.inc74.i_crit_edge ], [ %chan_idx.013.i, %for.cond6.preheader.i.for.inc74.i_crit_edge ], [ %chan_idx.2.i, %for.inc.i399.for.inc74.i_crit_edge ]
  %inc75.i = add nuw nsw i32 %band.010.i, 1
  %exitcond.not.i400 = icmp eq i32 %inc75.i, 6
  br i1 %exitcond.not.i400, label %for.inc74.i.if.end261_crit_edge, label %for.inc74.i.for.body.i396_crit_edge

for.inc74.i.for.body.i396_crit_edge:              ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i396

for.inc74.i.if.end261_crit_edge:                  ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

if.end261:                                        ; preds = %for.inc74.i.if.end261_crit_edge, %if.then257, %land.lhs.true249.if.end261_crit_edge, %for.end246.if.end261_crit_edge, %if.end241.if.end261_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_scan_channel_list(ptr noundef %priv, i32 noundef %max_chan_per_scan, i8 noundef zeroext %filtered_scan, ptr noundef %scan_cfg_out, ptr noundef %chan_tlv_out, ptr noundef %scan_chan_list) unnamed_addr #2 align 64 {
entry:
  %rates.i = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %scan_cfg_out, null
  %tobool2.not = icmp eq ptr %chan_tlv_out, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  %tobool4.not = icmp eq ptr %scan_chan_list, null
  %or.cond161 = or i1 %or.cond, %tobool4.not
  br i1 %or.cond161, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.38, ptr noundef %scan_cfg_out, ptr noundef %chan_tlv_out, ptr noundef %scan_chan_list) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %csa_chan.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 132
  %2 = ptrtoint ptr %csa_chan.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %csa_chan.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.mwifiex_11h_get_csa_closed_channel.exit_crit_edge, label %if.end.i

if.end.mwifiex_11h_get_csa_closed_channel.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_11h_get_csa_closed_channel.exit

if.end.i:                                         ; preds = %if.end
  %csa_expire_time.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 134
  %4 = ptrtoint ptr %csa_expire_time.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %csa_expire_time.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.mwifiex_11h_get_csa_closed_channel.exit_crit_edge

if.end.i.mwifiex_11h_get_csa_closed_channel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_11h_get_csa_closed_channel.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %csa_chan.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %csa_chan.i, align 2
  %8 = ptrtoint ptr %csa_expire_time.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %csa_expire_time.i, align 4
  br label %mwifiex_11h_get_csa_closed_channel.exit

mwifiex_11h_get_csa_closed_channel.exit:          ; preds = %if.then1.i, %if.end.i.mwifiex_11h_get_csa_closed_channel.exit_crit_edge, %if.end.mwifiex_11h_get_csa_closed_channel.exit_crit_edge
  %9 = ptrtoint ptr %chan_tlv_out to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 257, ptr %chan_tlv_out, align 1
  %len = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %chan_tlv_out, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_chan_per_scan)
  %cmp188.not = icmp eq i32 %max_chan_per_scan, 0
  %chan_scan_param = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %chan_tlv_out, i32 0, i32 1
  %tlv_buf = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %scan_cfg_out, i32 0, i32 3
  %sub.ptr.lhs.cast = ptrtoint ptr %chan_tlv_out to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %tlv_buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tlv_buf_len = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %scan_cfg_out, i32 0, i32 2
  %add = add i32 %sub.ptr.sub, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %filtered_scan)
  %tobool42.not = icmp eq i8 %filtered_scan, 0
  %scan_request.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 111
  br label %while.cond

while.cond:                                       ; preds = %mwifiex_append_rate_tlv.exit.while.cond_crit_edge, %mwifiex_11h_get_csa_closed_channel.exit
  %tmp_chan_list.0 = phi ptr [ %scan_chan_list, %mwifiex_11h_get_csa_closed_channel.exit ], [ %tmp_chan_list.1.lcssa213, %mwifiex_append_rate_tlv.exit.while.cond_crit_edge ]
  %chan_number = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, ptr %tmp_chan_list.0, i32 0, i32 1
  %10 = ptrtoint ptr %chan_number to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chan_number, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %while.cond.while.end97_crit_edge, label %while.body

while.cond.while.end97_crit_edge:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end97

while.body:                                       ; preds = %while.cond
  %12 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 0, ptr %len, align 1
  br i1 %cmp188.not, label %while.body.if.end83_crit_edge, label %while.body.land.lhs.true.lr.ph_crit_edge

while.body.land.lhs.true.lr.ph_crit_edge:         ; preds = %while.body
  br label %land.lhs.true.lr.ph

while.body.if.end83_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

land.lhs.true.lr.ph:                              ; preds = %if.end78.land.lhs.true.lr.ph_crit_edge, %while.body.land.lhs.true.lr.ph_crit_edge
  %cmp194 = phi i1 [ %cmp, %if.end78.land.lhs.true.lr.ph_crit_edge ], [ true, %while.body.land.lhs.true.lr.ph_crit_edge ]
  %radio_type.0.ph193 = phi i8 [ %18, %if.end78.land.lhs.true.lr.ph_crit_edge ], [ 0, %while.body.land.lhs.true.lr.ph_crit_edge ]
  %done_early.0.ph192 = phi i32 [ %done_early.2, %if.end78.land.lhs.true.lr.ph_crit_edge ], [ 0, %while.body.land.lhs.true.lr.ph_crit_edge ]
  %total_scan_time.0.ph191 = phi i32 [ %add41, %if.end78.land.lhs.true.lr.ph_crit_edge ], [ 0, %while.body.land.lhs.true.lr.ph_crit_edge ]
  %tlv_idx.0.ph190 = phi i32 [ %inc, %if.end78.land.lhs.true.lr.ph_crit_edge ], [ 0, %while.body.land.lhs.true.lr.ph_crit_edge ]
  %tmp_chan_list.1.ph189 = phi ptr [ %incdec.ptr60170, %if.end78.land.lhs.true.lr.ph_crit_edge ], [ %tmp_chan_list.0, %while.body.land.lhs.true.lr.ph_crit_edge ]
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then18.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %done_early.0179 = phi i32 [ %done_early.0.ph192, %land.lhs.true.lr.ph ], [ 0, %if.then18.land.lhs.true_crit_edge ]
  %tmp_chan_list.1178 = phi ptr [ %tmp_chan_list.1.ph189, %land.lhs.true.lr.ph ], [ %incdec.ptr, %if.then18.land.lhs.true_crit_edge ]
  %chan_number9 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, ptr %tmp_chan_list.1178, i32 0, i32 1
  %13 = ptrtoint ptr %chan_number9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chan_number9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not = icmp ne i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done_early.0179)
  %tobool11.not = icmp eq i32 %done_early.0179, 0
  %or.cond162 = and i1 %tobool11.not, %tobool10.not
  br i1 %or.cond162, label %while.body12, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body12:                                     ; preds = %land.lhs.true
  %15 = ptrtoint ptr %csa_chan.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %csa_chan.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp16 = icmp eq i8 %14, %16
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %while.body12
  %incdec.ptr = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %tmp_chan_list.1178, i32 1
  br i1 %cmp194, label %if.then18.land.lhs.true_crit_edge, label %if.then18.while.end_crit_edge

if.then18.while.end_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then18.land.lhs.true_crit_edge:                ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end19:                                         ; preds = %while.body12
  %conv.le = zext i8 %14 to i32
  %17 = ptrtoint ptr %tmp_chan_list.1178 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tmp_chan_list.1178, align 1
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 8
  %conv25 = zext i8 %18 to i32
  %chan_scan_mode_bitmap = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, ptr %tmp_chan_list.1178, i32 0, i32 2
  %21 = ptrtoint ptr %chan_scan_mode_bitmap to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %chan_scan_mode_bitmap, align 1
  %conv26 = zext i8 %22 to i32
  %and = and i32 %conv26, 1
  %and29 = lshr i32 %conv26, 1
  %23 = and i32 %and29, 1
  %max_scan_time = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, ptr %tmp_chan_list.1178, i32 0, i32 4
  %24 = ptrtoint ptr %max_scan_time to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %max_scan_time, align 1
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %conv30 = zext i16 %26 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 1073741824, ptr noundef nonnull @.str.39, i32 noundef %conv.le, i32 noundef %conv25, i32 noundef %and, i32 noundef %23, i32 noundef %conv30) #13
  %add.ptr = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %chan_scan_param, i32 %tlv_idx.0.ph190
  %27 = call ptr @memcpy(ptr %add.ptr, ptr %tmp_chan_list.1178, i32 7)
  %28 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %len, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29) #13
  %add.i = add i16 %30, 7
  %31 = call i16 @llvm.bswap.i16(i16 %add.i) #13
  %32 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %len, align 1
  %33 = ptrtoint ptr %tlv_buf_len to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %sub.ptr.sub, ptr %tlv_buf_len, align 1
  %34 = load i16, ptr %len, align 1
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %conv36 = zext i16 %35 to i32
  %add38 = add i32 %add, %conv36
  %36 = ptrtoint ptr %tlv_buf_len to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %add38, ptr %tlv_buf_len, align 1
  %inc = add nuw i32 %tlv_idx.0.ph190, 1
  %37 = ptrtoint ptr %max_scan_time to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %max_scan_time, align 1
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %conv40 = zext i16 %39 to i32
  %add41 = add i32 %total_scan_time.0.ph191, %conv40
  br i1 %tobool42.not, label %land.lhs.true43, label %if.end19.if.end78_crit_edge

if.end19.if.end78_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

land.lhs.true43:                                  ; preds = %if.end19
  %chan_number9.le = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, ptr %tmp_chan_list.1178, i32 0, i32 1
  %40 = ptrtoint ptr %chan_number9.le to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %chan_number9.le, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %41, label %land.lhs.true43.land.lhs.true62_crit_edge [
    i8 1, label %land.lhs.true43.if.then58_crit_edge
    i8 6, label %land.lhs.true43.if.then58_crit_edge247
    i8 11, label %land.lhs.true43.if.then58_crit_edge248
  ]

land.lhs.true43.if.then58_crit_edge248:           ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58

land.lhs.true43.if.then58_crit_edge247:           ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58

land.lhs.true43.if.then58_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58

land.lhs.true43.land.lhs.true62_crit_edge:        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true62

if.then58:                                        ; preds = %land.lhs.true43.if.then58_crit_edge, %land.lhs.true43.if.then58_crit_edge247, %land.lhs.true43.if.then58_crit_edge248
  br label %land.lhs.true62

land.lhs.true62:                                  ; preds = %if.then58, %land.lhs.true43.land.lhs.true62_crit_edge
  %done_early.1.ph = phi i32 [ 0, %land.lhs.true43.land.lhs.true62_crit_edge ], [ 1, %if.then58 ]
  %chan_number63 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %tmp_chan_list.1178, i32 1, i32 1
  %43 = ptrtoint ptr %chan_number63 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %chan_number63, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %44, label %land.lhs.true62.if.end78_crit_edge [
    i8 1, label %land.lhs.true62.if.then77_crit_edge
    i8 6, label %land.lhs.true62.if.then77_crit_edge249
    i8 11, label %land.lhs.true62.if.then77_crit_edge250
  ]

land.lhs.true62.if.then77_crit_edge250:           ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77

land.lhs.true62.if.then77_crit_edge249:           ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77

land.lhs.true62.if.then77_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77

land.lhs.true62.if.end78_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

if.then77:                                        ; preds = %land.lhs.true62.if.then77_crit_edge, %land.lhs.true62.if.then77_crit_edge249, %land.lhs.true62.if.then77_crit_edge250
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %land.lhs.true62.if.end78_crit_edge, %if.end19.if.end78_crit_edge
  %done_early.2 = phi i32 [ 1, %if.then77 ], [ %done_early.1.ph, %land.lhs.true62.if.end78_crit_edge ], [ 0, %if.end19.if.end78_crit_edge ]
  %incdec.ptr60170 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %tmp_chan_list.1178, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %max_chan_per_scan)
  %cmp = icmp ult i32 %inc, %max_chan_per_scan
  %exitcond.not = icmp eq i32 %inc, %max_chan_per_scan
  br i1 %exitcond.not, label %if.end78.while.end_crit_edge, label %if.end78.land.lhs.true.lr.ph_crit_edge

if.end78.land.lhs.true.lr.ph_crit_edge:           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.lr.ph

if.end78.while.end_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end78.while.end_crit_edge, %if.then18.while.end_crit_edge, %land.lhs.true.while.end_crit_edge
  %total_scan_time.0.ph.lcssa = phi i32 [ %total_scan_time.0.ph191, %if.then18.while.end_crit_edge ], [ %total_scan_time.0.ph191, %land.lhs.true.while.end_crit_edge ], [ %add41, %if.end78.while.end_crit_edge ]
  %radio_type.0.ph.lcssa = phi i8 [ %radio_type.0.ph193, %if.then18.while.end_crit_edge ], [ %radio_type.0.ph193, %land.lhs.true.while.end_crit_edge ], [ %18, %if.end78.while.end_crit_edge ]
  %tmp_chan_list.1.lcssa = phi ptr [ %tmp_chan_list.1178, %land.lhs.true.while.end_crit_edge ], [ %incdec.ptr, %if.then18.while.end_crit_edge ], [ %incdec.ptr60170, %if.end78.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000, i32 %total_scan_time.0.ph.lcssa)
  %cmp79 = icmp ugt i32 %total_scan_time.0.ph.lcssa, 9000
  br i1 %cmp79, label %if.then81, label %while.end.if.end83_crit_edge

while.end.if.end83_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then81:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %47, i32 noundef 4, ptr noundef nonnull @.str.40, i32 noundef %total_scan_time.0.ph.lcssa, i32 noundef 9000) #13
  br label %while.end97

if.end83:                                         ; preds = %while.end.if.end83_crit_edge, %while.body.if.end83_crit_edge
  %tmp_chan_list.1.lcssa213 = phi ptr [ %tmp_chan_list.1.lcssa, %while.end.if.end83_crit_edge ], [ %tmp_chan_list.0, %while.body.if.end83_crit_edge ]
  %radio_type.0.ph.lcssa212 = phi i8 [ %radio_type.0.ph.lcssa, %while.end.if.end83_crit_edge ], [ 0, %while.body.if.end83_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %rates.i) #13
  %48 = call ptr @memset(ptr %rates.i, i32 0, i32 14)
  %49 = ptrtoint ptr %tlv_buf_len to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %tlv_buf_len, align 1
  %51 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %scan_request.i, align 8
  %tobool.not.i164 = icmp eq ptr %52, null
  br i1 %tobool.not.i164, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 @mwifiex_get_rates_from_cfg80211(ptr noundef %priv, ptr noundef nonnull %rates.i, i8 noundef zeroext %radio_type.0.ph.lcssa212) #13
  br label %mwifiex_append_rate_tlv.exit

if.else.i:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = call i32 @mwifiex_get_supported_rates(ptr noundef %priv, ptr noundef nonnull %rates.i) #13
  br label %mwifiex_append_rate_tlv.exit

mwifiex_append_rate_tlv.exit:                     ; preds = %if.else.i, %if.then.i
  %rates_size.0.i = phi i32 [ %call.i, %if.then.i ], [ %call4.i, %if.else.i ]
  %add.ptr.i = getelementptr i8, ptr %tlv_buf, i32 %50
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %54, i32 noundef 16, ptr noundef nonnull @.str.41, i32 noundef %rates_size.0.i) #13
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 256, ptr %add.ptr.i, align 1
  %conv.i = trunc i32 %rates_size.0.i to i16
  %56 = call i16 @llvm.bswap.i16(i16 %conv.i) #13
  %len.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %add.ptr.i, i32 0, i32 1
  %57 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %56, ptr %len.i, align 1
  %rates6.i = getelementptr inbounds %struct.mwifiex_ie_types_rates_param_set, ptr %add.ptr.i, i32 0, i32 1
  %58 = call ptr @memcpy(ptr %rates6.i, ptr %rates.i, i32 %rates_size.0.i)
  %add.i165 = add i32 %rates_size.0.i, 4
  %59 = ptrtoint ptr %tlv_buf_len to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %tlv_buf_len, align 1
  %add10.i = add i32 %60, %add.i165
  store i32 %add10.i, ptr %tlv_buf_len, align 1
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %rates.i) #13
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 8
  %scan_channels = getelementptr inbounds %struct.mwifiex_adapter, ptr %62, i32 0, i32 85
  %63 = ptrtoint ptr %scan_channels to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %tmp_chan_list.0, ptr %scan_channels, align 4
  %64 = load ptr, ptr %priv, align 8
  %ext_scan = getelementptr inbounds %struct.mwifiex_adapter, ptr %64, i32 0, i32 137
  %65 = ptrtoint ptr %ext_scan to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ext_scan, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool87.not = icmp eq i8 %66, 0
  %. = select i1 %tobool87.not, i16 6, i16 263
  %call91 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext %., i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %scan_cfg_out, i1 noundef zeroext false) #13
  %67 = ptrtoint ptr %tlv_buf_len to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %tlv_buf_len, align 1
  %sub = sub i32 %68, %add.i165
  store i32 %sub, ptr %tlv_buf_len, align 1
  %tobool94.not = icmp eq i32 %call91, 0
  br i1 %tobool94.not, label %mwifiex_append_rate_tlv.exit.while.cond_crit_edge, label %if.then95

mwifiex_append_rate_tlv.exit.while.cond_crit_edge: ; preds = %mwifiex_append_rate_tlv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.then95:                                        ; preds = %mwifiex_append_rate_tlv.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @mwifiex_cancel_pending_scan_cmd(ptr noundef %1) #13
  br label %while.end97

while.end97:                                      ; preds = %if.then95, %if.then81, %while.cond.while.end97_crit_edge
  %not.tobool6.not = xor i1 %tobool6.not, true
  %.163 = sext i1 %not.tobool6.not to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end97, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %.163, %while.end97 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_insert_cmd_to_pending_q(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_wait_queue_complete(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_802_11_scan(ptr nocapture noundef writeonly %cmd, ptr nocapture noundef readonly %scan_cfg) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %scan_cfg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scan_cfg, align 1
  %2 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %params, align 1
  %bssid = getelementptr inbounds %struct.host_cmd_ds_802_11_scan, ptr %params, i32 0, i32 1
  %specific_bssid = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %scan_cfg, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %bssid, ptr %specific_bssid, i32 6)
  %tlv_buffer = getelementptr inbounds %struct.host_cmd_ds_802_11_scan, ptr %params, i32 0, i32 2
  %tlv_buf = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %scan_cfg, i32 0, i32 3
  %tlv_buf_len = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %scan_cfg, i32 0, i32 2
  %4 = ptrtoint ptr %tlv_buf_len to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tlv_buf_len, align 1
  %6 = call ptr @memcpy(ptr %tlv_buffer, ptr %tlv_buf, i32 %5)
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 1536, ptr %cmd, align 1
  %8 = load i32, ptr %tlv_buf_len, align 1
  %9 = trunc i32 %8 to i16
  %conv = add i16 %9, 15
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %size, align 1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_check_network_compatibility(ptr noundef %priv, ptr noundef %bss_desc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bss_desc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %bss_band = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 13
  %0 = ptrtoint ptr %bss_band to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bss_band, align 4
  %conv = trunc i16 %1 to i8
  %channel = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 5
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 8
  %conv1 = trunc i32 %3 to i16
  %call = tail call ptr @mwifiex_get_cfp(ptr noundef %priv, i8 noundef zeroext %conv, i16 noundef zeroext %conv1, i32 noundef 0) #13
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %4 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bss_mode, align 8
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.then3
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %disable_11n.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 22
  %8 = ptrtoint ptr %disable_11n.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %disable_11n.i, align 4
  %media_connected.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %9 = ptrtoint ptr %media_connected.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %media_connected.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %land.lhs.true.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %11 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bss_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %land.lhs.true3.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %bss_mode4.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 10
  %13 = ptrtoint ptr %bss_mode4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bss_mode4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp5.i = icmp eq i32 %14, 2
  br i1 %cmp5.i, label %land.lhs.true3.i.cleanup_crit_edge, label %land.lhs.true3.i.if.end.i_crit_edge

land.lhs.true3.i.if.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true3.i.cleanup_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true3.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  %wps.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 113
  %15 = ptrtoint ptr %wps.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %wps.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not.i = icmp eq i8 %16, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 128, ptr noundef nonnull @.str.42) #13
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %chan_sw_ie_present.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 59
  %17 = ptrtoint ptr %chan_sw_ie_present.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chan_sw_ie_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool10.not.i = icmp eq i8 %18, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 1073741824, ptr noundef nonnull @.str.43) #13
  br label %if.then7

if.end12.i:                                       ; preds = %if.end9.i
  %wapi_enabled.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 2
  %19 = ptrtoint ptr %wapi_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %wapi_enabled.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.end12.i.if.end14.i_crit_edge, label %land.lhs.true.i.i

if.end12.i.if.end14.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

land.lhs.true.i.i:                                ; preds = %if.end12.i
  %bcn_wapi_ie.i.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 52
  %21 = ptrtoint ptr %bcn_wapi_ie.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bcn_wapi_ie.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.if.end14.i_crit_edge, label %has_ieee_hdr.exit.i.i

land.lhs.true.i.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

has_ieee_hdr.exit.i.i:                            ; preds = %land.lhs.true.i.i
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %24)
  %cmp.i.i.i = icmp eq i8 %24, 68
  br i1 %cmp.i.i.i, label %if.then13.i, label %has_ieee_hdr.exit.i.i.if.end14.i_crit_edge

has_ieee_hdr.exit.i.i.if.end14.i_crit_edge:       ; preds = %has_ieee_hdr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then13.i:                                      ; preds = %has_ieee_hdr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 1073741824, ptr noundef nonnull @.str.44) #13
  br label %cleanup

if.end14.i:                                       ; preds = %has_ieee_hdr.exit.i.i.if.end14.i_crit_edge, %land.lhs.true.i.i.if.end14.i_crit_edge, %if.end12.i.if.end14.i_crit_edge
  %bss_mode15.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 10
  %25 = ptrtoint ptr %bss_mode15.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bss_mode15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %5)
  %cmp16.i = icmp eq i32 %26, %5
  br i1 %cmp16.i, label %if.then18.i, label %if.end14.i.if.then7_crit_edge

if.end14.i.if.then7_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.then18.i:                                      ; preds = %if.end14.i
  %wep_enabled.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %27 = ptrtoint ptr %wep_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %wep_enabled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i130.i = icmp eq i8 %28, 0
  %sec_info.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60
  %29 = ptrtoint ptr %sec_info.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sec_info.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool2.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i130.i, label %land.lhs.true.i131.i, label %land.lhs.true.i141.i

land.lhs.true.i131.i:                             ; preds = %if.then18.i
  br i1 %tobool2.not.i.i, label %land.lhs.true3.i.i, label %land.lhs.true.i131.i.if.else24.i_crit_edge

land.lhs.true.i131.i.if.else24.i_crit_edge:       ; preds = %land.lhs.true.i131.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else24.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i131.i
  %wpa2_enabled.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 1
  %31 = ptrtoint ptr %wpa2_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %wpa2_enabled.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool5.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true6.i.i, label %land.lhs.true3.i.i.if.else24.i_crit_edge

land.lhs.true3.i.i.if.else24.i_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else24.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true3.i.i
  %bcn_wpa_ie.i.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 46
  %33 = ptrtoint ptr %bcn_wpa_ie.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bcn_wpa_ie.i.i, align 8
  %tobool.not.i.i132.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i132.i, label %land.lhs.true6.i.i.land.lhs.true7.i.i_crit_edge, label %has_vendor_hdr.exit.i.i

land.lhs.true6.i.i.land.lhs.true7.i.i_crit_edge:  ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true7.i.i

has_vendor_hdr.exit.i.i:                          ; preds = %land.lhs.true6.i.i
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %36)
  %cmp.i.i133.i = icmp eq i8 %36, -35
  br i1 %cmp.i.i133.i, label %has_vendor_hdr.exit.i.i.if.else24.i_crit_edge, label %has_vendor_hdr.exit.i.i.land.lhs.true7.i.i_crit_edge

has_vendor_hdr.exit.i.i.land.lhs.true7.i.i_crit_edge: ; preds = %has_vendor_hdr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true7.i.i

has_vendor_hdr.exit.i.i.if.else24.i_crit_edge:    ; preds = %has_vendor_hdr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else24.i

land.lhs.true7.i.i:                               ; preds = %has_vendor_hdr.exit.i.i.land.lhs.true7.i.i_crit_edge, %land.lhs.true6.i.i.land.lhs.true7.i.i_crit_edge
  %bcn_rsn_ie.i.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 49
  %37 = ptrtoint ptr %bcn_rsn_ie.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bcn_rsn_ie.i.i, align 8
  %tobool.not.i19.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i19.i.i, label %land.lhs.true7.i.i.land.lhs.true9.i.i_crit_edge, label %has_ieee_hdr.exit.i134.i

land.lhs.true7.i.i.land.lhs.true9.i.i_crit_edge:  ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true9.i.i

has_ieee_hdr.exit.i134.i:                         ; preds = %land.lhs.true7.i.i
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %40)
  %cmp.i20.i.i = icmp eq i8 %40, 48
  br i1 %cmp.i20.i.i, label %has_ieee_hdr.exit.i134.i.if.else24.i_crit_edge, label %has_ieee_hdr.exit.i134.i.land.lhs.true9.i.i_crit_edge

has_ieee_hdr.exit.i134.i.land.lhs.true9.i.i_crit_edge: ; preds = %has_ieee_hdr.exit.i134.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true9.i.i

has_ieee_hdr.exit.i134.i.if.else24.i_crit_edge:   ; preds = %has_ieee_hdr.exit.i134.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else24.i

land.lhs.true9.i.i:                               ; preds = %has_ieee_hdr.exit.i134.i.land.lhs.true9.i.i_crit_edge, %land.lhs.true7.i.i.land.lhs.true9.i.i_crit_edge
  %encryption_mode.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 7
  %41 = ptrtoint ptr %encryption_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %encryption_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool11.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true12.i.i, label %land.lhs.true9.i.i.if.else24.i_crit_edge

land.lhs.true9.i.i.if.else24.i_crit_edge:         ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else24.i

land.lhs.true12.i.i:                              ; preds = %land.lhs.true9.i.i
  %privacy.i.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 3
  %43 = ptrtoint ptr %privacy.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %privacy.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool13.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool13.not.i.i, label %land.lhs.true12.i.i.cleanup_crit_edge, label %land.lhs.true12.i.i.if.else24.i_crit_edge

land.lhs.true12.i.i.if.else24.i_crit_edge:        ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else24.i

land.lhs.true12.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i141.i:                             ; preds = %if.then18.i
  br i1 %tobool2.not.i.i, label %land.lhs.true3.i144.i, label %land.lhs.true.i141.i.if.else24.i_crit_edge

land.lhs.true.i141.i.if.else24.i_crit_edge:       ; preds = %land.lhs.true.i141.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else24.i

land.lhs.true3.i144.i:                            ; preds = %land.lhs.true.i141.i
  %wpa2_enabled.i142.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 1
  %45 = ptrtoint ptr %wpa2_enabled.i142.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %wpa2_enabled.i142.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool5.not.i143.i = icmp eq i8 %46, 0
  br i1 %tobool5.not.i143.i, label %land.lhs.true6.i146.i, label %land.lhs.true3.i144.i.if.else24.i_crit_edge

land.lhs.true3.i144.i.if.else24.i_crit_edge:      ; preds = %land.lhs.true3.i144.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else24.i

land.lhs.true6.i146.i:                            ; preds = %land.lhs.true3.i144.i
  %privacy.i145.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 3
  %47 = ptrtoint ptr %privacy.i145.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %privacy.i145.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool7.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true6.i146.i.if.else24.i_crit_edge, label %if.then22.i

land.lhs.true6.i146.i.if.else24.i_crit_edge:      ; preds = %land.lhs.true6.i146.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else24.i

if.then22.i:                                      ; preds = %land.lhs.true6.i146.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 1073741824, ptr noundef nonnull @.str.45) #13
  %49 = ptrtoint ptr %disable_11n.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %disable_11n.i, align 4
  br label %cleanup

if.else24.i:                                      ; preds = %land.lhs.true6.i146.i.if.else24.i_crit_edge, %land.lhs.true3.i144.i.if.else24.i_crit_edge, %land.lhs.true.i141.i.if.else24.i_crit_edge, %land.lhs.true12.i.i.if.else24.i_crit_edge, %land.lhs.true9.i.i.if.else24.i_crit_edge, %has_ieee_hdr.exit.i134.i.if.else24.i_crit_edge, %has_vendor_hdr.exit.i.i.if.else24.i_crit_edge, %land.lhs.true3.i.i.if.else24.i_crit_edge, %land.lhs.true.i131.i.if.else24.i_crit_edge
  %call25.i = tail call fastcc zeroext i1 @mwifiex_is_bss_wpa(ptr noundef %priv, ptr noundef nonnull %bss_desc) #13
  br i1 %call25.i, label %if.then26.i, label %if.else48.i

if.then26.i:                                      ; preds = %if.else24.i
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 8
  %config_bands.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %51, i32 0, i32 84
  %52 = ptrtoint ptr %config_bands.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %config_bands.i, align 2
  %54 = and i8 %53, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %if.then26.i.cleanup_crit_edge, label %land.lhs.true35.i

if.then26.i.cleanup_crit_edge:                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true35.i:                                ; preds = %if.then26.i
  %bcn_ht_cap.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 24
  %56 = ptrtoint ptr %bcn_ht_cap.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bcn_ht_cap.i, align 8
  %tobool36.not.i = icmp eq ptr %57, null
  br i1 %tobool36.not.i, label %land.lhs.true35.i.cleanup_crit_edge, label %land.lhs.true37.i

land.lhs.true35.i.cleanup_crit_edge:              ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true37.i:                                ; preds = %land.lhs.true35.i
  %call38.i = tail call fastcc zeroext i8 @mwifiex_is_wpa_oui_present(ptr noundef nonnull %bss_desc, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call38.i)
  %tobool39.not.i = icmp eq i8 %call38.i, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %land.lhs.true37.i.cleanup_crit_edge

land.lhs.true37.i.cleanup_crit_edge:              ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then40.i:                                      ; preds = %land.lhs.true37.i
  %call41.i = tail call fastcc zeroext i8 @mwifiex_is_wpa_oui_present(ptr noundef nonnull %bss_desc, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call41.i)
  %tobool42.not.i = icmp eq i8 %call41.i, 0
  br i1 %tobool42.not.i, label %if.then40.i.if.then7_crit_edge, label %if.then43.i

if.then40.i.if.then7_crit_edge:                   ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.then43.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 1073741824, ptr noundef nonnull @.str.46) #13
  %58 = ptrtoint ptr %disable_11n.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %disable_11n.i, align 4
  br label %cleanup

if.else48.i:                                      ; preds = %if.else24.i
  %call49.i = tail call fastcc zeroext i1 @mwifiex_is_bss_wpa2(ptr noundef %priv, ptr noundef nonnull %bss_desc) #13
  br i1 %call49.i, label %if.then50.i, label %if.else76.i

if.then50.i:                                      ; preds = %if.else48.i
  %59 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv, align 8
  %config_bands52.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %60, i32 0, i32 84
  %61 = ptrtoint ptr %config_bands52.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %config_bands52.i, align 2
  %63 = and i8 %62, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %if.then50.i.cleanup_crit_edge, label %land.lhs.true62.i

if.then50.i.cleanup_crit_edge:                    ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true62.i:                                ; preds = %if.then50.i
  %bcn_ht_cap63.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 24
  %65 = ptrtoint ptr %bcn_ht_cap63.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bcn_ht_cap63.i, align 8
  %tobool64.not.i = icmp eq ptr %66, null
  br i1 %tobool64.not.i, label %land.lhs.true62.i.cleanup_crit_edge, label %land.lhs.true65.i

land.lhs.true62.i.cleanup_crit_edge:              ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true65.i:                                ; preds = %land.lhs.true62.i
  %call66.i = tail call fastcc zeroext i8 @mwifiex_is_rsn_oui_present(ptr noundef nonnull %bss_desc, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call66.i)
  %tobool67.not.i = icmp eq i8 %call66.i, 0
  br i1 %tobool67.not.i, label %if.then68.i, label %land.lhs.true65.i.cleanup_crit_edge

land.lhs.true65.i.cleanup_crit_edge:              ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then68.i:                                      ; preds = %land.lhs.true65.i
  %call69.i = tail call fastcc zeroext i8 @mwifiex_is_rsn_oui_present(ptr noundef nonnull %bss_desc, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call69.i)
  %tobool70.not.i = icmp eq i8 %call69.i, 0
  br i1 %tobool70.not.i, label %if.then68.i.if.then7_crit_edge, label %if.then71.i

if.then68.i.if.then7_crit_edge:                   ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.then71.i:                                      ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 1073741824, ptr noundef nonnull @.str.46) #13
  %67 = ptrtoint ptr %disable_11n.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %disable_11n.i, align 4
  br label %cleanup

if.else76.i:                                      ; preds = %if.else48.i
  %call77.i = tail call fastcc zeroext i1 @mwifiex_is_bss_adhoc_aes(ptr noundef %priv, ptr noundef nonnull %bss_desc) #13
  br i1 %call77.i, label %if.else76.i.cleanup_crit_edge, label %if.else79.i

if.else76.i.cleanup_crit_edge:                    ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else79.i:                                      ; preds = %if.else76.i
  %call80.i = tail call fastcc zeroext i1 @mwifiex_is_bss_dynamic_wep(ptr noundef %priv, ptr noundef nonnull %bss_desc) #13
  br i1 %call80.i, label %if.else79.i.cleanup_crit_edge, label %if.end87.i

if.else79.i.cleanup_crit_edge:                    ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end87.i:                                       ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @_dbg_security_flags(i32 noundef 4, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.mwifiex_is_network_compatible, ptr noundef %priv, ptr noundef nonnull %bss_desc) #13
  br label %if.then7

if.then7:                                         ; preds = %if.end87.i, %if.then68.i.if.then7_crit_edge, %if.then40.i.if.then7_crit_edge, %if.end14.i.if.then7_crit_edge, %if.then11.i
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %69, i32 noundef 4, ptr noundef nonnull @.str.6) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.else79.i.cleanup_crit_edge, %if.else76.i.cleanup_crit_edge, %if.then71.i, %land.lhs.true65.i.cleanup_crit_edge, %land.lhs.true62.i.cleanup_crit_edge, %if.then50.i.cleanup_crit_edge, %if.then43.i, %land.lhs.true37.i.cleanup_crit_edge, %land.lhs.true35.i.cleanup_crit_edge, %if.then26.i.cleanup_crit_edge, %if.then22.i, %land.lhs.true12.i.i.cleanup_crit_edge, %if.then13.i, %if.then8.i, %land.lhs.true3.i.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.then7 ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.then8.i ], [ 0, %if.then13.i ], [ 0, %if.then22.i ], [ 0, %land.lhs.true3.i.cleanup_crit_edge ], [ 0, %if.then26.i.cleanup_crit_edge ], [ 0, %if.then43.i ], [ 0, %land.lhs.true37.i.cleanup_crit_edge ], [ 0, %land.lhs.true35.i.cleanup_crit_edge ], [ 0, %if.then50.i.cleanup_crit_edge ], [ 0, %if.then71.i ], [ 0, %land.lhs.true65.i.cleanup_crit_edge ], [ 0, %land.lhs.true62.i.cleanup_crit_edge ], [ 0, %if.else76.i.cleanup_crit_edge ], [ 0, %if.else79.i.cleanup_crit_edge ], [ 0, %land.lhs.true12.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_cfp(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_cancel_scan(ptr noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mwifiex_cancel_pending_scan_cmd(ptr noundef %adapter) #13
  %scan_processing = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 73
  %0 = ptrtoint ptr %scan_processing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scan_processing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then:                                          ; preds = %entry
  %mwifiex_cmd_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %mwifiex_cmd_lock) #13
  %2 = ptrtoint ptr %scan_processing to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %scan_processing, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock) #13
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %3 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp27.not = icmp eq i8 %4, 0
  br i1 %cmp27.not, label %if.then.if.end12_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.028
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %scan_request = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 111
  %7 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scan_request, align 8
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end.for.inc_crit_edge, label %if.then8

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #13
  %9 = call ptr @memcpy(ptr %info, ptr @__const.mwifiex_check_next_scan_command.info, i32 16)
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.7) #13
  %10 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scan_request, align 8
  call void @cfg80211_scan_done(ptr noundef %11, ptr noundef nonnull %info) #13
  %12 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %scan_request, align 8
  %scan_aborting = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 130
  %13 = ptrtoint ptr %scan_aborting to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %scan_aborting, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %14 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %priv_num, align 4
  %conv = zext i8 %15 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end12_crit_edge

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end12:                                         ; preds = %for.inc.if.end12_crit_edge, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_cancel_pending_scan_cmd(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_802_11_scan(ptr noundef %priv, ptr noundef %resp) local_unnamed_addr #2 align 64 {
entry:
  %tsf_tlv = alloca ptr, align 4
  %bss_info = alloca ptr, align 4
  %bytes_left = alloca i32, align 4
  %chan_band_tlv = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tsf_tlv) #13
  %2 = ptrtoint ptr %tsf_tlv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tsf_tlv, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bss_info) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_left) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan_band_tlv) #13
  %3 = ptrtoint ptr %chan_band_tlv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %chan_band_tlv, align 4, !annotation !175
  %4 = ptrtoint ptr %resp to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %resp, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 27648, i16 %5)
  %cmp = icmp eq i16 %5, 27648
  %scan_resp = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %params4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %scan_rsp.0 = select i1 %cmp, ptr %scan_resp, ptr %params4
  %number_of_sets = getelementptr inbounds %struct.host_cmd_ds_802_11_scan_rsp, ptr %scan_rsp.0, i32 0, i32 1
  %6 = ptrtoint ptr %number_of_sets to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number_of_sets, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %7)
  %cmp6 = icmp ugt i8 %7, 64
  br i1 %cmp6, label %if.then8, label %if.end11

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv5 = zext i8 %7 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %conv5) #13
  br label %check_next_scan

if.end11:                                         ; preds = %entry
  %csa_chan.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 132
  %8 = ptrtoint ptr %csa_chan.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %csa_chan.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end11.mwifiex_11h_get_csa_closed_channel.exit_crit_edge, label %if.end.i

if.end11.mwifiex_11h_get_csa_closed_channel.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_11h_get_csa_closed_channel.exit

if.end.i:                                         ; preds = %if.end11
  %csa_expire_time.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 134
  %10 = ptrtoint ptr %csa_expire_time.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %csa_expire_time.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.mwifiex_11h_get_csa_closed_channel.exit_crit_edge

if.end.i.mwifiex_11h_get_csa_closed_channel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_11h_get_csa_closed_channel.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %csa_chan.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %csa_chan.i, align 2
  %14 = ptrtoint ptr %csa_expire_time.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %csa_expire_time.i, align 4
  br label %mwifiex_11h_get_csa_closed_channel.exit

mwifiex_11h_get_csa_closed_channel.exit:          ; preds = %if.then1.i, %if.end.i.mwifiex_11h_get_csa_closed_channel.exit_crit_edge, %if.end11.mwifiex_11h_get_csa_closed_channel.exit_crit_edge
  %15 = ptrtoint ptr %scan_rsp.0 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %scan_rsp.0, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv12 = zext i16 %17 to i32
  %18 = ptrtoint ptr %bytes_left to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv12, ptr %bytes_left, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.9, i32 noundef %conv12) #13
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 1
  %19 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %size, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv13 = zext i16 %21 to i32
  %22 = ptrtoint ptr %number_of_sets to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %number_of_sets, align 1
  %conv15 = zext i8 %23 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.10, i32 noundef %conv15) #13
  %bss_desc_and_tlv_buffer = getelementptr inbounds %struct.host_cmd_ds_802_11_scan_rsp, ptr %scan_rsp.0, i32 0, i32 2
  %24 = ptrtoint ptr %bss_info to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %bss_desc_and_tlv_buffer, ptr %bss_info, align 4
  %add17.neg = sub nuw nsw i32 -11, %conv12
  %sub = add nsw i32 %add17.neg, %conv13
  %add.ptr = getelementptr i8, ptr %bss_desc_and_tlv_buffer, i32 %conv12
  call fastcc void @mwifiex_ret_802_11_scan_get_tlv_ptrs(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %sub, i32 noundef 275, ptr noundef nonnull %tsf_tlv)
  call fastcc void @mwifiex_ret_802_11_scan_get_tlv_ptrs(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %sub, i32 noundef 298, ptr noundef nonnull %chan_band_tlv)
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %25 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wdev, align 8
  %wowlan_config = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 41
  %27 = ptrtoint ptr %wowlan_config to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wowlan_config, align 4
  %tobool20.not = icmp eq ptr %28, null
  br i1 %tobool20.not, label %mwifiex_11h_get_csa_closed_channel.exit.if.end40thread-pre-split_crit_edge, label %if.then21

mwifiex_11h_get_csa_closed_channel.exit.if.end40thread-pre-split_crit_edge: ; preds = %mwifiex_11h_get_csa_closed_channel.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40thread-pre-split

if.then21:                                        ; preds = %mwifiex_11h_get_csa_closed_channel.exit
  %nd_config25 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %nd_config25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nd_config25, align 4
  %phi.cmp = icmp eq ptr %30, null
  br i1 %phi.cmp, label %if.then21.if.end40thread-pre-split_crit_edge, label %if.end8.i.i

if.then21.if.end40thread-pre-split_crit_edge:     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40thread-pre-split

if.end8.i.i:                                      ; preds = %if.then21
  %31 = ptrtoint ptr %number_of_sets to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %number_of_sets, align 1
  %conv30 = zext i8 %32 to i32
  %mul = shl nuw nsw i32 %conv30, 2
  %add31 = add nuw nsw i32 %mul, 40
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add31, i32 noundef 2848) #18
  %nd_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 162
  %33 = ptrtoint ptr %nd_info to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i.i, ptr %nd_info, align 4
  %tobool34.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool34.not, label %if.end8.i.i.if.end40thread-pre-split_crit_edge, label %if.then35

if.end8.i.i.if.end40thread-pre-split_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40thread-pre-split

if.then35:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %number_of_sets to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %number_of_sets, align 1
  %conv37 = zext i8 %35 to i32
  %36 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv37, ptr %call9.i.i, align 128
  br label %if.end40

if.end40thread-pre-split:                         ; preds = %if.end8.i.i.if.end40thread-pre-split_crit_edge, %if.then21.if.end40thread-pre-split_crit_edge, %mwifiex_11h_get_csa_closed_channel.exit.if.end40thread-pre-split_crit_edge
  %37 = ptrtoint ptr %number_of_sets to i32
  call void @__asan_load1_noabort(i32 %37)
  %.pr = load i8, ptr %number_of_sets, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.end40thread-pre-split, %if.then35
  %38 = phi i8 [ %.pr, %if.end40thread-pre-split ], [ %35, %if.then35 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp43124.not = icmp eq i8 %38, 0
  br i1 %cmp43124.not, label %if.end40.check_next_scan_crit_edge, label %land.rhs.lr.ph

if.end40.check_next_scan_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_next_scan

land.rhs.lr.ph:                                   ; preds = %if.end40
  %nd_info57 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 162
  br label %land.rhs

for.cond:                                         ; preds = %if.end71
  %inc = add nuw nsw i32 %idx.0125, 1
  %39 = ptrtoint ptr %number_of_sets to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %number_of_sets, align 1
  %conv42 = zext i8 %40 to i32
  %cmp43 = icmp ult i32 %inc, %conv42
  br i1 %cmp43, label %for.cond.land.rhs_crit_edge, label %for.cond.check_next_scan_crit_edge

for.cond.check_next_scan_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_next_scan

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %land.rhs.lr.ph
  %fw_tsf.0129 = phi i64 [ 0, %land.rhs.lr.ph ], [ %fw_tsf.1, %for.cond.land.rhs_crit_edge ]
  %chan_band.0128 = phi ptr [ inttoptr (i32 -1 to ptr), %land.rhs.lr.ph ], [ %chan_band.1, %for.cond.land.rhs_crit_edge ]
  %idx.0125 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.cond.land.rhs_crit_edge ]
  %41 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bytes_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool45.not = icmp eq i32 %42, 0
  br i1 %tobool45.not, label %land.rhs.check_next_scan_crit_edge, label %for.body

land.rhs.check_next_scan_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_next_scan

for.body:                                         ; preds = %land.rhs
  %43 = ptrtoint ptr %tsf_tlv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tsf_tlv, align 4
  %tobool46.not = icmp eq ptr %44, null
  br i1 %tobool46.not, label %for.body.if.end49_crit_edge, label %if.then47

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then47:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %mul48 = shl i32 %idx.0125, 3
  %arrayidx = getelementptr %struct.mwifiex_ie_types_tsf_timestamp, ptr %44, i32 0, i32 1, i32 %mul48
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %fw_tsf.0.copyload = load i64, ptr %arrayidx, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %for.body.if.end49_crit_edge
  %fw_tsf.1 = phi i64 [ %fw_tsf.0.copyload, %if.then47 ], [ %fw_tsf.0129, %for.body.if.end49_crit_edge ]
  %46 = ptrtoint ptr %chan_band_tlv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chan_band_tlv, align 4
  %tobool50.not = icmp eq ptr %47, null
  %arrayidx52 = getelementptr %struct.mwifiex_ie_types_chan_band_list_param_set, ptr %47, i32 0, i32 1, i32 %idx.0125
  %chan_band.1 = select i1 %tobool50.not, ptr %chan_band.0128, ptr %arrayidx52
  %radio_type.0 = select i1 %tobool50.not, ptr null, ptr %arrayidx52
  br i1 %tobool50.not, label %if.end49.if.end71_crit_edge, label %land.lhs.true

if.end49.if.end71_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

land.lhs.true:                                    ; preds = %if.end49
  %48 = ptrtoint ptr %nd_info57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nd_info57, align 4
  %tobool58.not = icmp eq ptr %49, null
  br i1 %tobool58.not, label %land.lhs.true.if.end71_crit_edge, label %if.then59

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then59:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i121 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 2848, i32 noundef 44) #17
  %51 = ptrtoint ptr %nd_info57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nd_info57, align 4
  %arrayidx62 = getelementptr %struct.cfg80211_wowlan_nd_info, ptr %52, i32 0, i32 1, i32 %idx.0125
  %53 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i121, ptr %arrayidx62, align 4
  %54 = load ptr, ptr %nd_info57, align 4
  %arrayidx65 = getelementptr %struct.cfg80211_wowlan_nd_info, ptr %54, i32 0, i32 1, i32 %idx.0125
  %55 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx65, align 4
  %tobool66.not = icmp eq ptr %56, null
  br i1 %tobool66.not, label %if.then59.if.end71_crit_edge, label %if.then67

if.then59.if.end71_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then67:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #15
  %n_channels = getelementptr inbounds %struct.cfg80211_wowlan_nd_match, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %n_channels to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %n_channels, align 4
  %chan_number = getelementptr inbounds %struct.chan_band_param_set, ptr %chan_band.1, i32 0, i32 1
  %58 = ptrtoint ptr %chan_number to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %chan_number, align 1
  %conv68 = zext i8 %59 to i32
  %channels = getelementptr inbounds %struct.cfg80211_wowlan_nd_match, ptr %56, i32 0, i32 2
  %60 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv68, ptr %channels, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.then59.if.end71_crit_edge, %land.lhs.true.if.end71_crit_edge, %if.end49.if.end71_crit_edge
  %61 = tail call i64 @llvm.bswap.i64(i64 %fw_tsf.1)
  %call72 = call fastcc i32 @mwifiex_parse_single_response_buf(ptr noundef %priv, ptr noundef nonnull %bss_info, ptr noundef nonnull %bytes_left, i64 noundef %61, ptr noundef %radio_type.0, i1 noundef zeroext false, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %for.cond, label %if.end71.check_next_scan_crit_edge

if.end71.check_next_scan_crit_edge:               ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_next_scan

check_next_scan:                                  ; preds = %if.end71.check_next_scan_crit_edge, %land.rhs.check_next_scan_crit_edge, %for.cond.check_next_scan_crit_edge, %if.end40.check_next_scan_crit_edge, %if.then8
  %ret.1 = phi i32 [ -1, %if.then8 ], [ 0, %if.end40.check_next_scan_crit_edge ], [ %call72, %if.end71.check_next_scan_crit_edge ], [ 0, %for.cond.check_next_scan_crit_edge ], [ 0, %land.rhs.check_next_scan_crit_edge ]
  tail call fastcc void @mwifiex_check_next_scan_command(ptr noundef %priv)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan_band_tlv) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_left) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bss_info) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tsf_tlv) #13
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_802_11_scan_get_tlv_ptrs(ptr noundef %adapter, ptr noundef %tlv, i32 noundef %tlv_buf_size, i32 noundef %req_tlv_type, ptr nocapture noundef %tlv_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tlv_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tlv_data, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.57, i32 noundef %tlv_buf_size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tlv_buf_size)
  %cmp37 = icmp ugt i32 %tlv_buf_size, 3
  br i1 %cmp37, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %entry.while.body_crit_edge
  %tlv_buf_left.040 = phi i32 [ %sub, %if.end11.while.body_crit_edge ], [ %tlv_buf_size, %entry.while.body_crit_edge ]
  %current_tlv.038 = phi ptr [ %add.ptr, %if.end11.while.body_crit_edge ], [ %tlv, %entry.while.body_crit_edge ]
  %1 = ptrtoint ptr %current_tlv.038 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %current_tlv.038, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %len = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %current_tlv.038, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %len, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv2 = zext i16 %6 to i32
  %add = add nuw nsw i32 %conv2, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tlv_buf_left.040, i32 %add)
  %cmp3 = icmp ult i32 %tlv_buf_left.040, %add
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.58) #13
  br label %cleanup

if.end:                                           ; preds = %while.body
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %req_tlv_type)
  %cmp5 = icmp eq i32 %conv, %req_tlv_type
  br i1 %cmp5, label %if.then7, label %if.end9thread-pre-split

if.then7:                                         ; preds = %if.end
  %7 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.83)
  switch i16 %3, label %sw.default [
    i16 275, label %sw.bb
    i16 298, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.59, i32 noundef %conv2) #13
  %8 = ptrtoint ptr %tlv_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %current_tlv.038, ptr %tlv_data, align 4
  br label %if.end9

sw.bb8:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.60, i32 noundef %conv2) #13
  %9 = ptrtoint ptr %tlv_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %current_tlv.038, ptr %tlv_data, align 4
  br label %if.end9

sw.default:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.61, i32 noundef %req_tlv_type) #13
  br label %cleanup

if.end9thread-pre-split:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %tlv_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %tlv_data, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9thread-pre-split, %sw.bb8, %sw.bb
  %11 = phi ptr [ %.pr, %if.end9thread-pre-split ], [ %current_tlv.038, %sw.bb ], [ %current_tlv.038, %sw.bb8 ]
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end11, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end9
  %sub = sub i32 %tlv_buf_left.040, %add
  %data = getelementptr inbounds %struct.mwifiex_ie_types_data, ptr %current_tlv.038, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %data, i32 %conv2
  %cmp = icmp ugt i32 %sub, 3
  br i1 %cmp, label %if.end11.while.body_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %sw.default, %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_parse_single_response_buf(ptr noundef %priv, ptr nocapture noundef %bss_info, ptr nocapture noundef %bytes_left, i64 noundef %fw_tsf, ptr noundef readonly %radio_type, i1 noundef zeroext %ext_scan, i32 noundef %rssi_val) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca %struct.cfg80211_inform_bss, align 8
  %bssid = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bssid) #13
  %2 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.end, label %entry.if.then4_crit_edge

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bss_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bss_info, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %5, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #13
  %sub = add i32 %3, -2
  %9 = ptrtoint ptr %bytes_left to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %bytes_left, align 4
  %10 = ptrtoint ptr %bss_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bss_info, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 2
  store ptr %add.ptr, ptr %bss_info, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %conv = zext i16 %8 to i32
  %12 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytes_left, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp2 = icmp ult i32 %13, %conv
  br i1 %cmp2, label %lor.lhs.false.if.then4_crit_edge, label %if.end6

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge, %entry.if.then4_crit_edge
  %14 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytes_left, align 4
  %16 = ptrtoint ptr %bss_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bss_info, align 4
  %add.ptr5 = getelementptr i8, ptr %17, i32 %15
  store ptr %add.ptr5, ptr %bss_info, align 4
  store i32 0, ptr %bytes_left, align 4
  br label %cleanup116

if.end6:                                          ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %bss_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bss_info, align 4
  %add.ptr8 = getelementptr i8, ptr %19, i32 %conv
  store ptr %add.ptr8, ptr %bss_info, align 4
  %20 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytes_left, align 4
  %sub10 = sub i32 %21, %conv
  store i32 %sub10, ptr %bytes_left, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %8)
  %cmp12 = icmp ult i16 %8, 19
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.62) #13
  br label %cleanup116

if.end15:                                         ; preds = %if.end6
  %22 = call ptr @memcpy(ptr %bssid, ptr %19, i32 6)
  %add.ptr16 = getelementptr i8, ptr %19, i32 6
  br i1 %ext_scan, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr16, align 1
  %conv20 = zext i8 %24 to i32
  %mul = mul nsw i32 %conv20, -100
  %add.ptr22 = getelementptr i8, ptr %19, i32 7
  %sub23 = add nsw i32 %conv, -7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.27, i32 noundef %mul) #13
  br label %if.end24

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %sub17 = add nsw i32 %conv, -6
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then19
  %rssi.0 = phi i32 [ %rssi_val, %if.else ], [ %mul, %if.then19 ]
  %curr_bcn_bytes.0 = phi i32 [ %sub17, %if.else ], [ %sub23, %if.then19 ]
  %current_ptr.0 = phi ptr [ %add.ptr16, %if.else ], [ %add.ptr22, %if.then19 ]
  %add.ptr25 = getelementptr i8, ptr %current_ptr.0, i32 12
  %sub26 = add nsw i32 %curr_bcn_bytes.0, -12
  %25 = ptrtoint ptr %current_ptr.0 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %current_ptr.0, align 1
  %27 = tail call i64 @llvm.bswap.i64(i64 %26)
  %beacon_period28 = getelementptr inbounds %struct.mwifiex_fixed_bcn_param, ptr %current_ptr.0, i32 0, i32 1
  %28 = ptrtoint ptr %beacon_period28 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %beacon_period28, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %cap_info_bitmap29 = getelementptr inbounds %struct.mwifiex_fixed_bcn_param, ptr %current_ptr.0, i32 0, i32 2
  %31 = ptrtoint ptr %cap_info_bitmap29 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %cap_info_bitmap29, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv30 = zext i16 %33 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.63, i32 noundef %conv30) #13
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.64, i32 noundef %sub26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub26)
  %cmp31221 = icmp ugt i32 %sub26, 1
  br i1 %cmp31221, label %if.end24.while.body_crit_edge, label %if.end24.if.else114_crit_edge

if.end24.if.else114_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else114

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end24.while.body_crit_edge
  %current_ptr.1223 = phi ptr [ %add.ptr48, %cleanup.while.body_crit_edge ], [ %add.ptr25, %if.end24.while.body_crit_edge ]
  %curr_bcn_bytes.1222 = phi i32 [ %sub51, %cleanup.while.body_crit_edge ], [ %sub26, %if.end24.while.body_crit_edge ]
  %add.ptr33 = getelementptr i8, ptr %current_ptr.1223, i32 1
  %34 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr33, align 1
  %conv34 = zext i8 %35 to i32
  %add = add nuw nsw i32 %conv34, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %curr_bcn_bytes.1222, i32 %add)
  %cmp35 = icmp ult i32 %curr_bcn_bytes.1222, %add
  br i1 %cmp35, label %cleanup.thread, label %if.end38

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.mwifiex_parse_single_response_buf) #13
  br label %cleanup116

if.end38:                                         ; preds = %while.body
  %36 = ptrtoint ptr %current_ptr.1223 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %current_ptr.1223, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %37)
  %cmp40 = icmp eq i8 %37, 3
  br i1 %cmp40, label %while.end, label %cleanup

cleanup:                                          ; preds = %if.end38
  %add.ptr48 = getelementptr i8, ptr %current_ptr.1223, i32 %add
  %sub51 = sub i32 %curr_bcn_bytes.1222, %add
  %cmp31 = icmp ugt i32 %sub51, 1
  br i1 %cmp31, label %cleanup.while.body_crit_edge, label %cleanup.if.else114_crit_edge

cleanup.if.else114_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else114

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %if.end38
  %add.ptr43 = getelementptr i8, ptr %current_ptr.1223, i32 2
  %38 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr43, align 1
  %conv44 = zext i8 %39 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool53.not = icmp eq i8 %39, 0
  br i1 %tobool53.not, label %while.end.if.else114_crit_edge, label %if.then54

while.end.if.else114_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else114

if.then54:                                        ; preds = %while.end
  %conv55 = zext i8 %39 to i32
  %csa_chan = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 132
  %40 = ptrtoint ptr %csa_chan to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %csa_chan, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp57 = icmp eq i8 %39, %41
  br i1 %cmp57, label %cleanup110, label %if.end60

if.end60:                                         ; preds = %if.then54
  %tobool61.not = icmp eq ptr %radio_type, null
  br i1 %tobool61.not, label %if.end60.if.end66_crit_edge, label %if.then62

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %radio_type to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %radio_type, align 1
  %44 = and i8 %43, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cond.i = icmp eq i8 %44, 1
  %..i = select i1 %cond.i, i8 4, i8 2
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end60.if.end66_crit_edge
  %band.0 = phi i8 [ %..i, %if.then62 ], [ 2, %if.end60.if.end66_crit_edge ]
  %call67 = tail call ptr @mwifiex_get_cfp(ptr noundef %priv, i8 noundef zeroext %band.0, i16 noundef zeroext %conv44, i32 noundef 0) #13
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.end66.cond.end_crit_edge, label %cond.true

if.end66.cond.end_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %freq69 = getelementptr inbounds %struct.mwifiex_chan_freq_power, ptr %call67, i32 0, i32 1
  %45 = ptrtoint ptr %freq69 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %freq69, align 4
  %phi.bo = mul i32 %46, 1000
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end66.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo, %cond.true ], [ 0, %if.end66.cond.end_crit_edge ]
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %47 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wdev, align 8
  %call.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %48, i32 noundef %cond) #13
  %tobool71.not = icmp eq ptr %call.i, null
  br i1 %tobool71.not, label %cond.end.cleanup116_crit_edge, label %land.lhs.true

cond.end.cleanup116_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup116

land.lhs.true:                                    ; preds = %cond.end
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i, i32 0, i32 4
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %and72 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.then74, label %land.lhs.true.cleanup116_crit_edge

land.lhs.true.cleanup116_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup116

if.then74:                                        ; preds = %land.lhs.true
  %51 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wdev, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i) #13
  %53 = getelementptr inbounds i8, ptr %data.i, i32 8
  %54 = call ptr @memset(ptr %53, i32 0, i32 40)
  %55 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %data.i, align 8
  %scan_width.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i, i32 0, i32 1
  %56 = ptrtoint ptr %scan_width.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %scan_width.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %rssi.0, ptr %53, align 8
  %call.i204 = call ptr @cfg80211_inform_bss_data(ptr noundef %52, ptr noundef nonnull %data.i, i32 noundef 0, ptr noundef nonnull %bssid, i64 noundef %27, i16 noundef zeroext %33, i16 noundef zeroext %30, ptr noundef %add.ptr25, i32 noundef %sub26, i32 noundef 2592) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #13
  %tobool79.not = icmp eq ptr %call.i204, null
  br i1 %tobool79.not, label %if.then74.cleanup116_crit_edge, label %if.then80

if.then74.cleanup116_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup116

if.then80:                                        ; preds = %if.then74
  %priv81 = getelementptr inbounds %struct.cfg80211_bss, ptr %call.i204, i32 0, i32 17
  %58 = ptrtoint ptr %priv81 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %band.0, ptr %priv81, align 8
  %fw_tsf84 = getelementptr inbounds %struct.cfg80211_bss, ptr %call.i204, i32 1, i32 2
  %59 = ptrtoint ptr %fw_tsf84 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %fw_tsf, ptr %fw_tsf84, align 8
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %60 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool86.not = icmp eq i8 %61, 0
  br i1 %tobool86.not, label %if.then80.if.end94_crit_edge, label %land.lhs.true87

if.then80.if.end94_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

land.lhs.true87:                                  ; preds = %if.then80
  %curr_bss_params = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %bssid, ptr noundef dereferenceable(6) %curr_bss_params, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool91.not = icmp eq i32 %bcmp, 0
  br i1 %tobool91.not, label %if.then92, label %land.lhs.true87.if.end94_crit_edge

land.lhs.true87.if.end94_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

if.then92:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @mwifiex_update_curr_bss_params(ptr noundef %priv, ptr noundef nonnull %call.i204)
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %land.lhs.true87.if.end94_crit_edge, %if.then80.if.end94_crit_edge
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %64 = and i32 %63, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %if.end94.if.end105_crit_edge, label %if.then102

if.end94.if.end105_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then102:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.67, i32 noundef %conv55) #13
  call fastcc void @mwifiex_save_hidden_ssid_channels(ptr noundef %priv, ptr noundef nonnull %call.i204)
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %if.end94.if.end105_crit_edge
  %66 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wdev, align 8
  call void @cfg80211_put_bss(ptr noundef %67, ptr noundef nonnull %call.i204) #13
  br label %cleanup116

cleanup110:                                       ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 536870912, ptr noundef nonnull @.str.66) #13
  br label %cleanup116

if.else114:                                       ; preds = %while.end.if.else114_crit_edge, %cleanup.if.else114_crit_edge, %if.end24.if.else114_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 536870912, ptr noundef nonnull @.str.68) #13
  br label %cleanup116

cleanup116:                                       ; preds = %if.else114, %cleanup110, %if.end105, %if.then74.cleanup116_crit_edge, %land.lhs.true.cleanup116_crit_edge, %cond.end.cleanup116_crit_edge, %cleanup.thread, %if.then14, %if.then4
  %retval.4 = phi i32 [ -14, %if.then4 ], [ -14, %if.then14 ], [ 0, %cleanup110 ], [ -14, %cleanup.thread ], [ 0, %if.else114 ], [ 0, %cond.end.cleanup116_crit_edge ], [ 0, %land.lhs.true.cleanup116_crit_edge ], [ 0, %if.end105 ], [ 0, %if.then74.cleanup116_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid) #13
  ret i32 %retval.4
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_check_next_scan_command(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  %info29 = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %scan_pending_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %scan_pending_q_lock) #13
  %scan_pending_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 68
  %2 = ptrtoint ptr %scan_pending_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %scan_pending_q, align 4
  %cmp.i.not = icmp eq ptr %3, %scan_pending_q
  br i1 %cmp.i.not, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_bh(ptr noundef %scan_pending_q_lock) #13
  %mwifiex_cmd_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %mwifiex_cmd_lock) #13
  %scan_processing = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 73
  %4 = ptrtoint ptr %scan_processing to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %scan_processing, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock) #13
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %active_scan_triggered.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %6, i32 0, i32 159
  %7 = ptrtoint ptr %active_scan_triggered.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %active_scan_triggered.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.if.then.i_crit_edge

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then
  %scan_request.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 111
  %9 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scan_request.i, align 8
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %scan_aborting.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 130
  %11 = ptrtoint ptr %scan_aborting.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %scan_aborting.i, align 8, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not.i = icmp eq i8 %12, 0
  br i1 %tobool4.not.i, label %if.end.i, label %lor.lhs.false3.i.if.then.i_crit_edge

lor.lhs.false3.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false3.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %13 = ptrtoint ptr %active_scan_triggered.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %active_scan_triggered.i, align 4
  br label %mwifiex_active_scan_req_for_passive_chan.exit

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %hidden_chan.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 161
  %14 = ptrtoint ptr %hidden_chan.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hidden_chan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not.i = icmp eq i8 %15, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 1073741824, ptr noundef nonnull @.str.72) #13
  br label %mwifiex_active_scan_req_for_passive_chan.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 422) #17
  %tobool10.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not.i, label %if.end9.i.mwifiex_active_scan_req_for_passive_chan.exit_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

if.end9.i.mwifiex_active_scan_req_for_passive_chan.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_active_scan_req_for_passive_chan.exit

for.body.i:                                       ; preds = %if.end20.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %if.end20.i.for.body.i_crit_edge ], [ 0, %if.end9.i.for.body.i_crit_edge ]
  %arrayidx16.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 161, i32 %indvars.iv.i
  %17 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool18.not.i = icmp eq i8 %18, 0
  br i1 %tobool18.not.i, label %for.body.i.for.end.i_crit_edge, label %if.end20.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end20.i:                                       ; preds = %for.body.i
  %arrayidx22.i = getelementptr %struct.mwifiex_user_scan_cfg, ptr %call7.i.i.i, i32 0, i32 6, i32 %indvars.iv.i
  %19 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %arrayidx16.i, align 4
  %21 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %arrayidx22.i, align 2
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 50
  br i1 %exitcond.not.i, label %if.end20.i.for.end.i_crit_edge, label %if.end20.i.for.body.i_crit_edge

if.end20.i.for.body.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %if.end20.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %22 = ptrtoint ptr %active_scan_triggered.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %active_scan_triggered.i, align 4
  %23 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scan_request.i, align 8
  %flags.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool28.not.i, label %for.end.i.if.end32.i_crit_edge, label %if.then29.i

for.end.i.if.end32.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i

if.then29.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %random_mac.i = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %call7.i.i.i, i32 0, i32 8
  %mac_addr.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %24, i32 0, i32 11
  %27 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mac_addr.i, align 4
  %29 = ptrtoint ptr %random_mac.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %random_mac.i, align 8
  %add.ptr.i.i = getelementptr %struct.cfg80211_scan_request, ptr %24, i32 0, i32 11, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.mwifiex_user_scan_cfg, ptr %call7.i.i.i, i32 0, i32 8, i32 4
  %32 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %add.ptr1.i.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %for.end.i.if.end32.i_crit_edge
  %n_ssids.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %24, i32 0, i32 1
  %33 = ptrtoint ptr %n_ssids.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_ssids.i, align 4
  %conv34.i = trunc i32 %34 to i8
  %num_ssids.i = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %call7.i.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %num_ssids.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv34.i, ptr %num_ssids.i, align 1
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %24, align 8
  %ssid_list.i = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %call7.i.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %ssid_list.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store ptr %37, ptr %ssid_list.i, align 1
  %call36.i = tail call i32 @mwifiex_scan_networks(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  %39 = call ptr @memset(ptr %hidden_chan.i, i32 0, i32 400)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool38.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool38.not.i, label %if.end32.i.mwifiex_active_scan_req_for_passive_chan.exit_crit_edge, label %do.end.i

if.end32.i.mwifiex_active_scan_req_for_passive_chan.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_active_scan_req_for_passive_chan.exit

do.end.i:                                         ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.73, i32 noundef %call36.i) #19
  br label %mwifiex_active_scan_req_for_passive_chan.exit

mwifiex_active_scan_req_for_passive_chan.exit:    ; preds = %do.end.i, %if.end32.i.mwifiex_active_scan_req_for_passive_chan.exit_crit_edge, %if.end9.i.mwifiex_active_scan_req_for_passive_chan.exit_crit_edge, %if.then8.i, %if.then.i
  %ext_scan = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 137
  %44 = ptrtoint ptr %ext_scan to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ext_scan, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool5.not = icmp eq i8 %45, 0
  br i1 %tobool5.not, label %if.then6, label %mwifiex_active_scan_req_for_passive_chan.exit.if.end_crit_edge

mwifiex_active_scan_req_for_passive_chan.exit.if.end_crit_edge: ; preds = %mwifiex_active_scan_req_for_passive_chan.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then6:                                         ; preds = %mwifiex_active_scan_req_for_passive_chan.exit
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %survey_idx.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %47, i32 0, i32 150
  %48 = ptrtoint ptr %survey_idx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %survey_idx.i, align 4
  %curr_cmd.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %47, i32 0, i32 60
  %49 = ptrtoint ptr %curr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %curr_cmd.i, align 4
  %wait_q_enabled.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %wait_q_enabled.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wait_q_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i77 = icmp eq i32 %52, 0
  br i1 %tobool.not.i77, label %if.then6.if.end_crit_edge, label %if.then.i80

if.then6.if.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i80:                                      ; preds = %if.then6
  %status.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %47, i32 0, i32 121, i32 1
  %53 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %status.i, align 4
  %scan_request.i78 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 111
  %54 = ptrtoint ptr %scan_request.i78 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %scan_request.i78, align 8
  %tobool2.not.i79 = icmp eq ptr %55, null
  br i1 %tobool2.not.i79, label %if.then3.i, label %if.then.i80.if.end_crit_edge

if.then.i80.if.end_crit_edge:                     ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then3.i:                                       ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %47, i32 noundef 1073741824, ptr noundef nonnull @.str.79) #13
  %56 = ptrtoint ptr %curr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %curr_cmd.i, align 4
  %call.i = tail call i32 @mwifiex_complete_cmd(ptr noundef %47, ptr noundef %57) #13
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.then.i80.if.end_crit_edge, %if.then6.if.end_crit_edge, %mwifiex_active_scan_req_for_passive_chan.exit.if.end_crit_edge
  %scan_request = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 111
  %58 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %scan_request, align 8
  %tobool7.not = icmp eq ptr %59, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #13
  %60 = call ptr @memset(ptr %info, i32 0, i32 16)
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.70) #13
  %61 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %scan_request, align 8
  call void @cfg80211_scan_done(ptr noundef %62, ptr noundef nonnull %info) #13
  %63 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %scan_request, align 8
  %scan_aborting = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 130
  %64 = ptrtoint ptr %scan_aborting to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %scan_aborting, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #13
  br label %if.end41

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %scan_aborting11 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 130
  %65 = ptrtoint ptr %scan_aborting11 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %scan_aborting11, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.71) #13
  br label %if.end41

if.else13:                                        ; preds = %entry
  %scan_aborting14 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 130
  %66 = ptrtoint ptr %scan_aborting14 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %scan_aborting14, align 8, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool15.not = icmp eq i8 %67, 0
  br i1 %tobool15.not, label %if.else13.lor.lhs.false_crit_edge, label %land.lhs.true

if.else13.lor.lhs.false_crit_edge:                ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else13
  %scan_request16 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 111
  %68 = ptrtoint ptr %scan_request16 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %scan_request16, align 8
  %tobool17.not = icmp eq ptr %69, null
  br i1 %tobool17.not, label %land.lhs.true.if.then19_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.else13.lor.lhs.false_crit_edge
  %scan_block = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 114
  %70 = ptrtoint ptr %scan_block to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %scan_block, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool18.not = icmp eq i8 %71, 0
  br i1 %tobool18.not, label %if.else37, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %scan_pending_q_lock) #13
  tail call void @mwifiex_cancel_pending_scan_cmd(ptr noundef %1) #13
  %mwifiex_cmd_lock21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %mwifiex_cmd_lock21) #13
  %scan_processing22 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 73
  %72 = ptrtoint ptr %scan_processing22 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %scan_processing22, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock21) #13
  %active_scan_triggered = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 159
  %73 = ptrtoint ptr %active_scan_triggered to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %active_scan_triggered, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool24.not = icmp eq i8 %74, 0
  br i1 %tobool24.not, label %if.then25, label %if.then19.if.end41_crit_edge

if.then19.if.end41_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then25:                                        ; preds = %if.then19
  %scan_request26 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 111
  %75 = ptrtoint ptr %scan_request26 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %scan_request26, align 8
  %tobool27.not = icmp eq ptr %76, null
  br i1 %tobool27.not, label %if.else33, label %if.then28

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info29) #13
  %77 = call ptr @memcpy(ptr %info29, ptr @__const.mwifiex_check_next_scan_command.info, i32 16)
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.7) #13
  %78 = ptrtoint ptr %scan_request26 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %scan_request26, align 8
  call void @cfg80211_scan_done(ptr noundef %79, ptr noundef nonnull %info29) #13
  %80 = ptrtoint ptr %scan_request26 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %scan_request26, align 8
  %81 = ptrtoint ptr %scan_aborting14 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %scan_aborting14, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info29) #13
  br label %if.end41

if.else33:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %scan_aborting14 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %scan_aborting14, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.71) #13
  br label %if.end41

if.else37:                                        ; preds = %lor.lhs.false
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.else37.list_del.exit_crit_edge

if.else37.list_del.exit_crit_edge:                ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i, align 4
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev1.i.i.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %84, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else37.list_del.exit_crit_edge
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %scan_pending_q_lock) #13
  tail call void @mwifiex_insert_cmd_to_pending_q(ptr noundef %1, ptr noundef %3) #13
  br label %if.end41

if.end41:                                         ; preds = %list_del.exit, %if.else33, %if.then28, %if.then19.if.end41_crit_edge, %if.else, %if.then8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_802_11_scan_ext(ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %cmd, ptr nocapture noundef readonly %data_buf) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tlv_buffer = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %tlv_buf = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %data_buf, i32 0, i32 3
  %tlv_buf_len = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %data_buf, i32 0, i32 2
  %0 = ptrtoint ptr %tlv_buf_len to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %tlv_buf_len, align 1
  %2 = call ptr @memcpy(ptr %tlv_buffer, ptr %tlv_buf, i32 %1)
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 1793, ptr %cmd, align 1
  %4 = load i32, ptr %tlv_buf_len, align 1
  %5 = trunc i32 %4 to i16
  %conv = add i16 %5, 12
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %size, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_802_11_bg_scan_config(ptr nocapture noundef readonly %priv, ptr noundef %cmd, ptr nocapture noundef readonly %data_buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %tlv = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 27392, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 7680, ptr %size, align 1
  %2 = ptrtoint ptr %data_buf to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %data_buf, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %params, align 1
  %enable = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 1
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable, align 1
  %enable2 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %enable2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %enable2, align 1
  %bss_type = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 2
  %9 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bss_type, align 1
  %bss_type3 = getelementptr inbounds %struct.host_cmd_ds_802_11_bg_scan_config, ptr %params, i32 0, i32 2
  %11 = ptrtoint ptr %bss_type3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %bss_type3, align 1
  %scan_interval = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 4
  %12 = ptrtoint ptr %scan_interval to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %scan_interval, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %scan_interval4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %scan_interval4 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %scan_interval4, align 1
  %report_condition = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 5
  %16 = ptrtoint ptr %report_condition to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %report_condition, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %report_condition5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 5
  %19 = ptrtoint ptr %report_condition5 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %report_condition5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %chan_per_scan = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 3
  %20 = ptrtoint ptr %chan_per_scan to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %chan_per_scan, align 1
  %chan_per_scan7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %22 = ptrtoint ptr %chan_per_scan7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %chan_per_scan7, align 1
  %num_probes8 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 6
  %23 = ptrtoint ptr %num_probes8 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_probes8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool9.not = icmp eq i8 %24, 0
  br i1 %tobool9.not, label %cond.end, label %if.end.if.then15_crit_edge

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

cond.end:                                         ; preds = %if.end
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %scan_probes = getelementptr inbounds %struct.mwifiex_adapter, ptr %26, i32 0, i32 76
  %27 = ptrtoint ptr %scan_probes to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %scan_probes, align 4
  %conv12 = trunc i16 %28 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv12)
  %tobool14.not = icmp eq i8 %conv12, 0
  br i1 %tobool14.not, label %cond.end.if.end22_crit_edge, label %cond.end.if.then15_crit_edge

cond.end.if.then15_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

cond.end.if.end22_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then15:                                        ; preds = %cond.end.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %cond327 = phi i8 [ %conv12, %cond.end.if.then15_crit_edge ], [ %24, %if.end.if.then15_crit_edge ]
  %29 = ptrtoint ptr %tlv to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 513, ptr %tlv, align 1
  %len = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 4
  %30 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 512, ptr %len, align 1
  %conv17 = zext i8 %cond327 to i16
  %31 = shl nuw i16 %conv17, 8
  %num_probes18 = getelementptr inbounds %struct.mwifiex_ie_types_num_probes, ptr %tlv, i32 0, i32 1
  %32 = ptrtoint ptr %num_probes18 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %num_probes18, align 1
  %add.ptr = getelementptr i8, ptr %tlv, i32 6
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %cond.end.if.end22_crit_edge
  %tlv_pos.0 = phi ptr [ %tlv, %cond.end.if.end22_crit_edge ], [ %add.ptr, %if.then15 ]
  %repeat_count = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 9
  %33 = ptrtoint ptr %repeat_count to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %repeat_count, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool23.not = icmp eq i16 %34, 0
  br i1 %tobool23.not, label %if.end22.if.end36_crit_edge, label %if.then24

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %tlv_pos.0 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 -20479, ptr %tlv_pos.0, align 1
  %len28 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.0, i32 0, i32 1
  %36 = ptrtoint ptr %len28 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 512, ptr %len28, align 1
  %37 = ptrtoint ptr %repeat_count to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %repeat_count, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %repeat_count30 = getelementptr inbounds %struct.mwifiex_ie_types_repeat_count, ptr %tlv_pos.0, i32 0, i32 1
  %40 = ptrtoint ptr %repeat_count30 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %repeat_count30, align 1
  %add.ptr35 = getelementptr i8, ptr %tlv_pos.0, i32 6
  br label %if.end36

if.end36:                                         ; preds = %if.then24, %if.end22.if.end36_crit_edge
  %tlv_pos.1 = phi ptr [ %tlv_pos.0, %if.end22.if.end36_crit_edge ], [ %add.ptr35, %if.then24 ]
  %rssi_threshold = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 7
  %41 = ptrtoint ptr %rssi_threshold to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rssi_threshold, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool37.not = icmp eq i8 %42, 0
  br i1 %tobool37.not, label %if.end36.if.end51_crit_edge, label %if.then38

if.end36.if.end51_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %tlv_pos.1 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 1025, ptr %tlv_pos.1, align 1
  %len42 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.1, i32 0, i32 1
  %44 = ptrtoint ptr %len42 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 512, ptr %len42, align 1
  %45 = ptrtoint ptr %rssi_threshold to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rssi_threshold, align 1
  %conv44 = zext i8 %46 to i16
  %47 = shl nuw i16 %conv44, 8
  %rssi_threshold45 = getelementptr inbounds %struct.mwifiex_ie_types_min_rssi_threshold, ptr %tlv_pos.1, i32 0, i32 1
  %48 = ptrtoint ptr %rssi_threshold45 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %rssi_threshold45, align 1
  %add.ptr50 = getelementptr i8, ptr %tlv_pos.1, i32 6
  br label %if.end51

if.end51:                                         ; preds = %if.then38, %if.end36.if.end51_crit_edge
  %tlv_pos.2 = phi ptr [ %tlv_pos.1, %if.end36.if.end51_crit_edge ], [ %add.ptr50, %if.then38 ]
  %num_ssids = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 12
  %49 = ptrtoint ptr %num_ssids to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %num_ssids, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp334.not = icmp eq i8 %50, 0
  br i1 %cmp334.not, label %if.end51.for.end_crit_edge, label %for.body.lr.ph

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end51
  %ssid_list = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0336 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %tlv_pos.3335 = phi ptr [ %tlv_pos.2, %for.body.lr.ph ], [ %add.ptr77, %for.body.for.body_crit_edge ]
  %51 = ptrtoint ptr %ssid_list to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load ptr, ptr %ssid_list, align 1
  %ssid_len54 = getelementptr %struct.cfg80211_match_set, ptr %52, i32 %i.0336, i32 0, i32 1
  %53 = ptrtoint ptr %ssid_len54 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ssid_len54, align 4
  %conv55 = zext i8 %54 to i32
  %55 = ptrtoint ptr %tlv_pos.3335 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 4609, ptr %tlv_pos.3335, align 1
  %56 = zext i8 %54 to i16
  %conv59 = add nuw nsw i16 %56, 1
  %57 = tail call i16 @llvm.bswap.i16(i16 %conv59)
  %len61 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.3335, i32 0, i32 1
  %58 = ptrtoint ptr %len61 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %57, ptr %len61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool62.not = icmp eq i8 %54, 0
  %spec.select = select i1 %tobool62.not, i8 32, i8 0
  %59 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, ptr %tlv_pos.3335, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %spec.select, ptr %59, align 1
  %ssid66 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, ptr %tlv_pos.3335, i32 0, i32 2
  %61 = ptrtoint ptr %ssid_list to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load ptr, ptr %ssid_list, align 1
  %arrayidx69 = getelementptr %struct.cfg80211_match_set, ptr %62, i32 %i.0336
  %63 = call ptr @memcpy(ptr %ssid66, ptr %arrayidx69, i32 %conv55)
  %64 = ptrtoint ptr %len61 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %len61, align 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %65)
  %conv75 = zext i16 %66 to i32
  %add76 = add nuw nsw i32 %conv75, 4
  %add.ptr77 = getelementptr i8, ptr %tlv_pos.3335, i32 %add76
  %inc = add nuw nsw i32 %i.0336, 1
  %67 = ptrtoint ptr %num_ssids to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %num_ssids, align 1
  %conv52 = zext i8 %68 to i32
  %cmp = icmp ult i32 %inc, %conv52
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end51.for.end_crit_edge
  %tlv_pos.3.lcssa = phi ptr [ %tlv_pos.2, %if.end51.for.end_crit_edge ], [ %add.ptr77, %for.body.for.end_crit_edge ]
  %chan_list = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 13
  %69 = ptrtoint ptr %chan_list to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %chan_list, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool79.not = icmp eq i8 %70, 0
  br i1 %tobool79.not, label %do.body150, label %do.body

do.body:                                          ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_cmd_802_11_bg_scan_config.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_cmd_802_11_bg_scan_config, %if.then84)) #13
          to label %do.end [label %if.then84], !srcloc !177

if.then84:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.mwifiex_adapter, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mwifiex_cmd_802_11_bg_scan_config.__UNIQUE_ID_ddebug489, ptr noundef %74, ptr noundef nonnull @.str.14) #13
  br label %do.end

do.end:                                           ; preds = %if.then84, %do.body
  %75 = ptrtoint ptr %tlv_pos.3.lcssa to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 257, ptr %tlv_pos.3.lcssa, align 1
  %chan_scan_param = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %tlv_pos.3.lcssa, i32 0, i32 1
  %len101 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.3.lcssa, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end143.land.rhs_crit_edge, %do.end
  %chan_idx.0337 = phi i32 [ 0, %do.end ], [ %inc147, %if.end143.land.rhs_crit_edge ]
  %arrayidx93 = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 13, i32 %chan_idx.0337
  %76 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool96.not = icmp eq i8 %77, 0
  br i1 %tobool96.not, label %land.rhs.if.end174_crit_edge, label %for.body97

land.rhs.if.end174_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end174

for.body97:                                       ; preds = %land.rhs
  %add.ptr99 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %chan_scan_param, i32 %chan_idx.0337
  %78 = ptrtoint ptr %len101 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %len101, align 1
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #13
  %add.i = add i16 %80, 7
  %81 = tail call i16 @llvm.bswap.i16(i16 %add.i) #13
  %82 = ptrtoint ptr %len101 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %len101, align 1
  %83 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx93, align 1
  %chan_number105 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %chan_scan_param, i32 %chan_idx.0337, i32 1
  %85 = ptrtoint ptr %chan_number105 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %chan_number105, align 1
  %radio_type = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 13, i32 %chan_idx.0337, i32 1
  %86 = ptrtoint ptr %radio_type to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %radio_type, align 1
  %88 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %add.ptr99, align 1
  %scan_type111 = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 13, i32 %chan_idx.0337, i32 2
  %89 = ptrtoint ptr %scan_type111 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %scan_type111, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %90)
  %cmp113 = icmp eq i8 %90, 2
  %chan_scan_mode_bitmap = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %chan_scan_param, i32 %chan_idx.0337, i32 2
  %91 = ptrtoint ptr %chan_scan_mode_bitmap to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %chan_scan_mode_bitmap, align 1
  br i1 %cmp113, label %if.end122, label %if.end122.thread

if.end122:                                        ; preds = %for.body97
  %93 = or i8 %92, 1
  %94 = ptrtoint ptr %chan_scan_mode_bitmap to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %chan_scan_mode_bitmap, align 1
  %scan_time = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 13, i32 %chan_idx.0337, i32 4
  %95 = ptrtoint ptr %scan_time to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %scan_time, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool125.not = icmp eq i32 %96, 0
  br i1 %tobool125.not, label %cond.true135, label %if.end122.if.then126_crit_edge

if.end122.if.then126_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then126

if.end122.thread:                                 ; preds = %for.body97
  %97 = and i8 %92, -2
  %98 = ptrtoint ptr %chan_scan_mode_bitmap to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %chan_scan_mode_bitmap, align 1
  %scan_time329 = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 13, i32 %chan_idx.0337, i32 4
  %99 = ptrtoint ptr %scan_time329 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %scan_time329, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool125.not330 = icmp eq i32 %100, 0
  br i1 %tobool125.not330, label %cond.false138, label %if.end122.thread.if.then126_crit_edge

if.end122.thread.if.then126_crit_edge:            ; preds = %if.end122.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then126

if.then126:                                       ; preds = %if.end122.thread.if.then126_crit_edge, %if.end122.if.then126_crit_edge
  %101 = phi i32 [ %100, %if.end122.thread.if.then126_crit_edge ], [ %96, %if.end122.if.then126_crit_edge ]
  %conv130 = trunc i32 %101 to i16
  br label %if.end143

cond.true135:                                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %102 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %priv, align 8
  %passive_scan_time = getelementptr inbounds %struct.mwifiex_adapter, ptr %103, i32 0, i32 80
  br label %cond.end141

cond.false138:                                    ; preds = %if.end122.thread
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %priv, align 8
  %specific_scan_time = getelementptr inbounds %struct.mwifiex_adapter, ptr %105, i32 0, i32 78
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false138, %cond.true135
  %cond142.in.in = phi ptr [ %passive_scan_time, %cond.true135 ], [ %specific_scan_time, %cond.false138 ]
  %106 = ptrtoint ptr %cond142.in.in to i32
  call void @__asan_load2_noabort(i32 %106)
  %cond142.in = load i16, ptr %cond142.in.in, align 4
  br label %if.end143

if.end143:                                        ; preds = %cond.end141, %if.then126
  %scan_dur.0.in = phi i16 [ %conv130, %if.then126 ], [ %cond142.in, %cond.end141 ]
  %107 = tail call i16 @llvm.bswap.i16(i16 %scan_dur.0.in)
  %min_scan_time = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %chan_scan_param, i32 %chan_idx.0337, i32 3
  %108 = ptrtoint ptr %min_scan_time to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 %107, ptr %min_scan_time, align 1
  %max_scan_time = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %chan_scan_param, i32 %chan_idx.0337, i32 4
  %109 = ptrtoint ptr %max_scan_time to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 %107, ptr %max_scan_time, align 1
  %inc147 = add nuw nsw i32 %chan_idx.0337, 1
  %exitcond.not = icmp eq i32 %inc147, 38
  br i1 %exitcond.not, label %if.end143.if.end174_crit_edge, label %if.end143.land.rhs_crit_edge

if.end143.land.rhs_crit_edge:                     ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.end143.if.end174_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end174

do.body150:                                       ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_cmd_802_11_bg_scan_config.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_cmd_802_11_bg_scan_config, %if.then162)) #13
          to label %do.end167 [label %if.then162], !srcloc !177

if.then162:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %priv, align 8
  %dev164 = getelementptr inbounds %struct.mwifiex_adapter, ptr %111, i32 0, i32 9
  %112 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev164, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mwifiex_cmd_802_11_bg_scan_config.__UNIQUE_ID_ddebug490, ptr noundef %113, ptr noundef nonnull @.str.15) #13
  br label %do.end167

do.end167:                                        ; preds = %if.then162, %do.body150
  %chan_scan_param168 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %tlv_pos.3.lcssa, i32 0, i32 1
  %114 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %priv, align 8
  %wdev.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %scan_time.i = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 13, i32 0, i32 4
  %passive_scan_time.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %115, i32 0, i32 80
  %specific_scan_time.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %115, i32 0, i32 78
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc51.i.for.body.i_crit_edge, %do.end167
  %chan_idx.092.i = phi i32 [ 0, %do.end167 ], [ %chan_idx.3.i, %for.inc51.i.for.body.i_crit_edge ]
  %band.089.i = phi i32 [ 0, %do.end167 ], [ %inc52.i, %for.inc51.i.for.body.i_crit_edge ]
  %116 = ptrtoint ptr %wdev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wdev.i, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %117, i32 0, i32 53, i32 %band.089.i
  %118 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %119, null
  br i1 %tobool.not.i, label %for.body.i.for.inc51.i_crit_edge, label %for.cond6.preheader.i

for.body.i.for.inc51.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc51.i

for.cond6.preheader.i:                            ; preds = %for.body.i
  %n_channels.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp783.i = icmp sgt i32 %121, 0
  br i1 %cmp783.i, label %for.body8.lr.ph.i, label %for.cond6.preheader.i.for.inc51.i_crit_edge

for.cond6.preheader.i.for.inc51.i_crit_edge:      ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc51.i

for.body8.lr.ph.i:                                ; preds = %for.cond6.preheader.i
  %conv.i = trunc i32 %band.089.i to i8
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.inc.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %i.087.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc50.i, %for.inc.i.for.body8.i_crit_edge ]
  %chan_idx.184.i = phi i32 [ %chan_idx.092.i, %for.body8.lr.ph.i ], [ %chan_idx.2.i, %for.inc.i.for.body8.i_crit_edge ]
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %119, align 4
  %flags.i = getelementptr %struct.ieee80211_channel, ptr %123, i32 %i.087.i, i32 4
  %124 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %for.body8.i.for.inc.i_crit_edge

for.body8.i.for.inc.i_crit_edge:                  ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end12.i:                                       ; preds = %for.body8.i
  %arrayidx13.i = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %chan_scan_param168, i32 %chan_idx.184.i
  %126 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv.i, ptr %arrayidx13.i, align 1
  %127 = ptrtoint ptr %scan_time.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %scan_time.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool15.not.i = icmp eq i32 %128, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv20.i = trunc i32 %128 to i16
  br label %if.end32.i

if.else.i:                                        ; preds = %if.end12.i
  %129 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags.i, align 4
  %and23.i = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.else28.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %131 = ptrtoint ptr %passive_scan_time.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %passive_scan_time.i, align 4
  br label %if.end32.i

if.else28.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %133 = ptrtoint ptr %specific_scan_time.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %specific_scan_time.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else28.i, %if.then25.i, %if.then16.i
  %.sink93.i = phi i16 [ %132, %if.then25.i ], [ %134, %if.else28.i ], [ %conv20.i, %if.then16.i ]
  %135 = tail call i16 @llvm.bswap.i16(i16 %.sink93.i) #13
  %max_scan_time27.i = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %chan_scan_param168, i32 %chan_idx.184.i, i32 4
  %136 = ptrtoint ptr %max_scan_time27.i to i32
  call void @__asan_storeN_noabort(i32 %136, i32 2)
  store i16 %135, ptr %max_scan_time27.i, align 1
  %137 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %flags.i, align 4
  %chan_scan_mode_bitmap42.i = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %chan_scan_param168, i32 %chan_idx.184.i, i32 2
  %139 = ptrtoint ptr %chan_scan_mode_bitmap42.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %chan_scan_mode_bitmap42.i, align 1
  %141 = and i8 %140, -2
  %142 = trunc i32 %138 to i8
  %143 = lshr i8 %142, 1
  %144 = and i8 %143, 1
  %.sink.i = or i8 %144, %141
  store i8 %.sink.i, ptr %chan_scan_mode_bitmap42.i, align 1
  %hw_value.i = getelementptr %struct.ieee80211_channel, ptr %123, i32 %i.087.i, i32 3
  %145 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %hw_value.i, align 2
  %conv48.i = trunc i16 %146 to i8
  %chan_number.i = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %chan_scan_param168, i32 %chan_idx.184.i, i32 1
  %147 = ptrtoint ptr %chan_number.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv48.i, ptr %chan_number.i, align 1
  %inc.i = add i32 %chan_idx.184.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end32.i, %for.body8.i.for.inc.i_crit_edge
  %chan_idx.2.i = phi i32 [ %chan_idx.184.i, %for.body8.i.for.inc.i_crit_edge ], [ %inc.i, %if.end32.i ]
  %inc50.i = add nuw nsw i32 %i.087.i, 1
  %148 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %n_channels.i, align 4
  %cmp7.i = icmp slt i32 %inc50.i, %149
  br i1 %cmp7.i, label %for.inc.i.for.body8.i_crit_edge, label %for.inc.i.for.inc51.i_crit_edge

for.inc.i.for.inc51.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc51.i

for.inc.i.for.body8.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body8.i

for.inc51.i:                                      ; preds = %for.inc.i.for.inc51.i_crit_edge, %for.cond6.preheader.i.for.inc51.i_crit_edge, %for.body.i.for.inc51.i_crit_edge
  %chan_idx.3.i = phi i32 [ %chan_idx.092.i, %for.body.i.for.inc51.i_crit_edge ], [ %chan_idx.092.i, %for.cond6.preheader.i.for.inc51.i_crit_edge ], [ %chan_idx.2.i, %for.inc.i.for.inc51.i_crit_edge ]
  %inc52.i = add nuw nsw i32 %band.089.i, 1
  %exitcond.not.i = icmp eq i32 %inc52.i, 6
  br i1 %exitcond.not.i, label %mwifiex_bgscan_create_channel_list.exit, label %for.inc51.i.for.body.i_crit_edge

for.inc51.i.for.body.i_crit_edge:                 ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

mwifiex_bgscan_create_channel_list.exit:          ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #15
  %len172 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.3.lcssa, i32 0, i32 1
  %150 = trunc i32 %chan_idx.3.i to i16
  %conv173 = mul i16 %150, 7
  %151 = ptrtoint ptr %len172 to i32
  call void @__asan_loadN_noabort(i32 %151, i32 2)
  %152 = load i16, ptr %len172, align 1
  %153 = tail call i16 @llvm.bswap.i16(i16 %152) #13
  %add.i302 = add i16 %153, %conv173
  %154 = tail call i16 @llvm.bswap.i16(i16 %add.i302) #13
  %155 = ptrtoint ptr %len172 to i32
  call void @__asan_storeN_noabort(i32 %155, i32 2)
  store i16 %154, ptr %len172, align 1
  br label %if.end174

if.end174:                                        ; preds = %mwifiex_bgscan_create_channel_list.exit, %if.end143.if.end174_crit_edge, %land.rhs.if.end174_crit_edge
  %len176 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.3.lcssa, i32 0, i32 1
  %156 = ptrtoint ptr %len176 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 2)
  %157 = load i16, ptr %len176, align 1
  %158 = tail call i16 @llvm.bswap.i16(i16 %157)
  %conv177 = zext i16 %158 to i32
  %add178 = add nuw nsw i32 %conv177, 4
  %add.ptr179 = getelementptr i8, ptr %tlv_pos.3.lcssa, i32 %add178
  %start_later = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %data_buf, i32 0, i32 10
  %159 = ptrtoint ptr %start_later to i32
  call void @__asan_loadN_noabort(i32 %159, i32 2)
  %160 = load i16, ptr %start_later, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool180.not = icmp eq i16 %160, 0
  br i1 %tobool180.not, label %if.end174.if.end193_crit_edge, label %if.then181

if.end174.if.end193_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end193

if.then181:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  %161 = ptrtoint ptr %add.ptr179 to i32
  call void @__asan_storeN_noabort(i32 %161, i32 2)
  store i16 7681, ptr %add.ptr179, align 1
  %len185 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %add.ptr179, i32 0, i32 1
  %162 = ptrtoint ptr %len185 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 2)
  store i16 512, ptr %len185, align 1
  %163 = ptrtoint ptr %start_later to i32
  call void @__asan_loadN_noabort(i32 %163, i32 2)
  %164 = load i16, ptr %start_later, align 1
  %165 = tail call i16 @llvm.bswap.i16(i16 %164)
  %start_later187 = getelementptr inbounds %struct.mwifiex_ie_types_bgscan_start_later, ptr %add.ptr179, i32 0, i32 1
  %166 = ptrtoint ptr %start_later187 to i32
  call void @__asan_storeN_noabort(i32 %166, i32 2)
  store i16 %165, ptr %start_later187, align 1
  %add.ptr192 = getelementptr i8, ptr %add.ptr179, i32 6
  br label %if.end193

if.end193:                                        ; preds = %if.then181, %if.end174.if.end193_crit_edge
  %tlv_pos.4 = phi ptr [ %add.ptr179, %if.end174.if.end193_crit_edge ], [ %add.ptr192, %if.then181 ]
  %tobool1.not.i = icmp eq ptr %tlv_pos.4, null
  br i1 %tobool1.not.i, label %if.end193.mwifiex_cmd_append_vsie_tlv.exit_crit_edge, label %for.body.i304.preheader

if.end193.mwifiex_cmd_append_vsie_tlv.exit_crit_edge: ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_cmd_append_vsie_tlv.exit

for.body.i304.preheader:                          ; preds = %if.end193
  %arrayidx.i303 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 0
  %167 = ptrtoint ptr %arrayidx.i303 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %arrayidx.i303, align 2
  %and59.i = and i16 %168, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i)
  %tobool5.not.i = icmp eq i16 %and59.i, 0
  br i1 %tobool5.not.i, label %for.body.i304.preheader.for.inc.i308_crit_edge, label %if.then6.i

for.body.i304.preheader.for.inc.i308_crit_edge:   ; preds = %for.body.i304.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i308

if.then6.i:                                       ; preds = %for.body.i304.preheader
  %169 = ptrtoint ptr %tlv_pos.4 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 2)
  store i16 2561, ptr %tlv_pos.4, align 1
  %arrayidx9.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 0, i32 2, i32 1
  %170 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx9.i, align 1
  %conv11.i = zext i8 %171 to i16
  %add.i305 = add nuw nsw i16 %conv11.i, 2
  %172 = tail call i16 @llvm.bswap.i16(i16 %add.i305) #13
  %len.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.4, i32 0, i32 1
  %173 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %173, i32 2)
  store i16 %172, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %171)
  %cmp18.i = icmp eq i8 %171, -1
  br i1 %cmp18.i, label %if.then6.i.if.then20.i_crit_edge, label %if.end21.i

if.then6.i.if.then20.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.then20.i:                                      ; preds = %if.then6.i.7.if.then20.i_crit_edge, %if.then6.i.6.if.then20.i_crit_edge, %if.then6.i.5.if.then20.i_crit_edge, %if.then6.i.4.if.then20.i_crit_edge, %if.then6.i.3.if.then20.i_crit_edge, %if.then6.i.2.if.then20.i_crit_edge, %if.then6.i.1.if.then20.i_crit_edge, %if.then6.i.if.then20.i_crit_edge
  %tlv_pos.5.lcssa = phi ptr [ %tlv_pos.4, %if.then6.i.if.then20.i_crit_edge ], [ %tlv_pos.6, %if.then6.i.1.if.then20.i_crit_edge ], [ %tlv_pos.6.1, %if.then6.i.2.if.then20.i_crit_edge ], [ %tlv_pos.6.2, %if.then6.i.3.if.then20.i_crit_edge ], [ %tlv_pos.6.3, %if.then6.i.4.if.then20.i_crit_edge ], [ %tlv_pos.6.4, %if.then6.i.5.if.then20.i_crit_edge ], [ %tlv_pos.6.5, %if.then6.i.6.if.then20.i_crit_edge ], [ %tlv_pos.6.6, %if.then6.i.7.if.then20.i_crit_edge ]
  %174 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %175, i32 noundef 4, ptr noundef nonnull @.str.29) #13
  br label %mwifiex_cmd_append_vsie_tlv.exit

if.end21.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i = zext i16 %add.i305 to i32
  %ie.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 0, i32 2
  %ie22.i = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.4, i32 0, i32 1
  %176 = call ptr @memcpy(ptr %ie22.i, ptr %ie.i, i32 %conv17.i)
  %add33.i = add nuw nsw i32 %conv17.i, 4
  %add.ptr.i = getelementptr i8, ptr %tlv_pos.4, i32 %add33.i
  br label %for.inc.i308

for.inc.i308:                                     ; preds = %if.end21.i, %for.body.i304.preheader.for.inc.i308_crit_edge
  %tlv_pos.6 = phi ptr [ %tlv_pos.4, %for.body.i304.preheader.for.inc.i308_crit_edge ], [ %add.ptr.i, %if.end21.i ]
  %arrayidx.i303.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 1
  %177 = ptrtoint ptr %arrayidx.i303.1 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %arrayidx.i303.1, align 2
  %and59.i.1 = and i16 %178, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i.1)
  %tobool5.not.i.1 = icmp eq i16 %and59.i.1, 0
  br i1 %tobool5.not.i.1, label %for.inc.i308.for.inc.i308.1_crit_edge, label %if.then6.i.1

for.inc.i308.for.inc.i308.1_crit_edge:            ; preds = %for.inc.i308
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i308.1

if.then6.i.1:                                     ; preds = %for.inc.i308
  %179 = ptrtoint ptr %tlv_pos.6 to i32
  call void @__asan_storeN_noabort(i32 %179, i32 2)
  store i16 2561, ptr %tlv_pos.6, align 1
  %arrayidx9.i.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 1, i32 2, i32 1
  %180 = ptrtoint ptr %arrayidx9.i.1 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx9.i.1, align 1
  %conv11.i.1 = zext i8 %181 to i16
  %add.i305.1 = add nuw nsw i16 %conv11.i.1, 2
  %182 = tail call i16 @llvm.bswap.i16(i16 %add.i305.1) #13
  %len.i.1 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.6, i32 0, i32 1
  %183 = ptrtoint ptr %len.i.1 to i32
  call void @__asan_storeN_noabort(i32 %183, i32 2)
  store i16 %182, ptr %len.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %181)
  %cmp18.i.1 = icmp eq i8 %181, -1
  br i1 %cmp18.i.1, label %if.then6.i.1.if.then20.i_crit_edge, label %if.end21.i.1

if.then6.i.1.if.then20.i_crit_edge:               ; preds = %if.then6.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.end21.i.1:                                     ; preds = %if.then6.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.1 = zext i16 %add.i305.1 to i32
  %ie.i.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 1, i32 2
  %ie22.i.1 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.6, i32 0, i32 1
  %184 = call ptr @memcpy(ptr %ie22.i.1, ptr %ie.i.1, i32 %conv17.i.1)
  %add33.i.1 = add nuw nsw i32 %conv17.i.1, 4
  %add.ptr.i.1 = getelementptr i8, ptr %tlv_pos.6, i32 %add33.i.1
  br label %for.inc.i308.1

for.inc.i308.1:                                   ; preds = %if.end21.i.1, %for.inc.i308.for.inc.i308.1_crit_edge
  %tlv_pos.6.1 = phi ptr [ %tlv_pos.6, %for.inc.i308.for.inc.i308.1_crit_edge ], [ %add.ptr.i.1, %if.end21.i.1 ]
  %arrayidx.i303.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 2
  %185 = ptrtoint ptr %arrayidx.i303.2 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %arrayidx.i303.2, align 2
  %and59.i.2 = and i16 %186, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i.2)
  %tobool5.not.i.2 = icmp eq i16 %and59.i.2, 0
  br i1 %tobool5.not.i.2, label %for.inc.i308.1.for.inc.i308.2_crit_edge, label %if.then6.i.2

for.inc.i308.1.for.inc.i308.2_crit_edge:          ; preds = %for.inc.i308.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i308.2

if.then6.i.2:                                     ; preds = %for.inc.i308.1
  %187 = ptrtoint ptr %tlv_pos.6.1 to i32
  call void @__asan_storeN_noabort(i32 %187, i32 2)
  store i16 2561, ptr %tlv_pos.6.1, align 1
  %arrayidx9.i.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 2, i32 2, i32 1
  %188 = ptrtoint ptr %arrayidx9.i.2 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx9.i.2, align 1
  %conv11.i.2 = zext i8 %189 to i16
  %add.i305.2 = add nuw nsw i16 %conv11.i.2, 2
  %190 = tail call i16 @llvm.bswap.i16(i16 %add.i305.2) #13
  %len.i.2 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.6.1, i32 0, i32 1
  %191 = ptrtoint ptr %len.i.2 to i32
  call void @__asan_storeN_noabort(i32 %191, i32 2)
  store i16 %190, ptr %len.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %189)
  %cmp18.i.2 = icmp eq i8 %189, -1
  br i1 %cmp18.i.2, label %if.then6.i.2.if.then20.i_crit_edge, label %if.end21.i.2

if.then6.i.2.if.then20.i_crit_edge:               ; preds = %if.then6.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.end21.i.2:                                     ; preds = %if.then6.i.2
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.2 = zext i16 %add.i305.2 to i32
  %ie.i.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 2, i32 2
  %ie22.i.2 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.6.1, i32 0, i32 1
  %192 = call ptr @memcpy(ptr %ie22.i.2, ptr %ie.i.2, i32 %conv17.i.2)
  %add33.i.2 = add nuw nsw i32 %conv17.i.2, 4
  %add.ptr.i.2 = getelementptr i8, ptr %tlv_pos.6.1, i32 %add33.i.2
  br label %for.inc.i308.2

for.inc.i308.2:                                   ; preds = %if.end21.i.2, %for.inc.i308.1.for.inc.i308.2_crit_edge
  %tlv_pos.6.2 = phi ptr [ %tlv_pos.6.1, %for.inc.i308.1.for.inc.i308.2_crit_edge ], [ %add.ptr.i.2, %if.end21.i.2 ]
  %arrayidx.i303.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 3
  %193 = ptrtoint ptr %arrayidx.i303.3 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %arrayidx.i303.3, align 2
  %and59.i.3 = and i16 %194, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i.3)
  %tobool5.not.i.3 = icmp eq i16 %and59.i.3, 0
  br i1 %tobool5.not.i.3, label %for.inc.i308.2.for.inc.i308.3_crit_edge, label %if.then6.i.3

for.inc.i308.2.for.inc.i308.3_crit_edge:          ; preds = %for.inc.i308.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i308.3

if.then6.i.3:                                     ; preds = %for.inc.i308.2
  %195 = ptrtoint ptr %tlv_pos.6.2 to i32
  call void @__asan_storeN_noabort(i32 %195, i32 2)
  store i16 2561, ptr %tlv_pos.6.2, align 1
  %arrayidx9.i.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 3, i32 2, i32 1
  %196 = ptrtoint ptr %arrayidx9.i.3 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx9.i.3, align 1
  %conv11.i.3 = zext i8 %197 to i16
  %add.i305.3 = add nuw nsw i16 %conv11.i.3, 2
  %198 = tail call i16 @llvm.bswap.i16(i16 %add.i305.3) #13
  %len.i.3 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.6.2, i32 0, i32 1
  %199 = ptrtoint ptr %len.i.3 to i32
  call void @__asan_storeN_noabort(i32 %199, i32 2)
  store i16 %198, ptr %len.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %197)
  %cmp18.i.3 = icmp eq i8 %197, -1
  br i1 %cmp18.i.3, label %if.then6.i.3.if.then20.i_crit_edge, label %if.end21.i.3

if.then6.i.3.if.then20.i_crit_edge:               ; preds = %if.then6.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.end21.i.3:                                     ; preds = %if.then6.i.3
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.3 = zext i16 %add.i305.3 to i32
  %ie.i.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 3, i32 2
  %ie22.i.3 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.6.2, i32 0, i32 1
  %200 = call ptr @memcpy(ptr %ie22.i.3, ptr %ie.i.3, i32 %conv17.i.3)
  %add33.i.3 = add nuw nsw i32 %conv17.i.3, 4
  %add.ptr.i.3 = getelementptr i8, ptr %tlv_pos.6.2, i32 %add33.i.3
  br label %for.inc.i308.3

for.inc.i308.3:                                   ; preds = %if.end21.i.3, %for.inc.i308.2.for.inc.i308.3_crit_edge
  %tlv_pos.6.3 = phi ptr [ %tlv_pos.6.2, %for.inc.i308.2.for.inc.i308.3_crit_edge ], [ %add.ptr.i.3, %if.end21.i.3 ]
  %arrayidx.i303.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 4
  %201 = ptrtoint ptr %arrayidx.i303.4 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %arrayidx.i303.4, align 2
  %and59.i.4 = and i16 %202, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i.4)
  %tobool5.not.i.4 = icmp eq i16 %and59.i.4, 0
  br i1 %tobool5.not.i.4, label %for.inc.i308.3.for.inc.i308.4_crit_edge, label %if.then6.i.4

for.inc.i308.3.for.inc.i308.4_crit_edge:          ; preds = %for.inc.i308.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i308.4

if.then6.i.4:                                     ; preds = %for.inc.i308.3
  %203 = ptrtoint ptr %tlv_pos.6.3 to i32
  call void @__asan_storeN_noabort(i32 %203, i32 2)
  store i16 2561, ptr %tlv_pos.6.3, align 1
  %arrayidx9.i.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 4, i32 2, i32 1
  %204 = ptrtoint ptr %arrayidx9.i.4 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx9.i.4, align 1
  %conv11.i.4 = zext i8 %205 to i16
  %add.i305.4 = add nuw nsw i16 %conv11.i.4, 2
  %206 = tail call i16 @llvm.bswap.i16(i16 %add.i305.4) #13
  %len.i.4 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.6.3, i32 0, i32 1
  %207 = ptrtoint ptr %len.i.4 to i32
  call void @__asan_storeN_noabort(i32 %207, i32 2)
  store i16 %206, ptr %len.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %205)
  %cmp18.i.4 = icmp eq i8 %205, -1
  br i1 %cmp18.i.4, label %if.then6.i.4.if.then20.i_crit_edge, label %if.end21.i.4

if.then6.i.4.if.then20.i_crit_edge:               ; preds = %if.then6.i.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.end21.i.4:                                     ; preds = %if.then6.i.4
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.4 = zext i16 %add.i305.4 to i32
  %ie.i.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 4, i32 2
  %ie22.i.4 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.6.3, i32 0, i32 1
  %208 = call ptr @memcpy(ptr %ie22.i.4, ptr %ie.i.4, i32 %conv17.i.4)
  %add33.i.4 = add nuw nsw i32 %conv17.i.4, 4
  %add.ptr.i.4 = getelementptr i8, ptr %tlv_pos.6.3, i32 %add33.i.4
  br label %for.inc.i308.4

for.inc.i308.4:                                   ; preds = %if.end21.i.4, %for.inc.i308.3.for.inc.i308.4_crit_edge
  %tlv_pos.6.4 = phi ptr [ %tlv_pos.6.3, %for.inc.i308.3.for.inc.i308.4_crit_edge ], [ %add.ptr.i.4, %if.end21.i.4 ]
  %arrayidx.i303.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 5
  %209 = ptrtoint ptr %arrayidx.i303.5 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %arrayidx.i303.5, align 2
  %and59.i.5 = and i16 %210, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i.5)
  %tobool5.not.i.5 = icmp eq i16 %and59.i.5, 0
  br i1 %tobool5.not.i.5, label %for.inc.i308.4.for.inc.i308.5_crit_edge, label %if.then6.i.5

for.inc.i308.4.for.inc.i308.5_crit_edge:          ; preds = %for.inc.i308.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i308.5

if.then6.i.5:                                     ; preds = %for.inc.i308.4
  %211 = ptrtoint ptr %tlv_pos.6.4 to i32
  call void @__asan_storeN_noabort(i32 %211, i32 2)
  store i16 2561, ptr %tlv_pos.6.4, align 1
  %arrayidx9.i.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 5, i32 2, i32 1
  %212 = ptrtoint ptr %arrayidx9.i.5 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx9.i.5, align 1
  %conv11.i.5 = zext i8 %213 to i16
  %add.i305.5 = add nuw nsw i16 %conv11.i.5, 2
  %214 = tail call i16 @llvm.bswap.i16(i16 %add.i305.5) #13
  %len.i.5 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.6.4, i32 0, i32 1
  %215 = ptrtoint ptr %len.i.5 to i32
  call void @__asan_storeN_noabort(i32 %215, i32 2)
  store i16 %214, ptr %len.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %213)
  %cmp18.i.5 = icmp eq i8 %213, -1
  br i1 %cmp18.i.5, label %if.then6.i.5.if.then20.i_crit_edge, label %if.end21.i.5

if.then6.i.5.if.then20.i_crit_edge:               ; preds = %if.then6.i.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.end21.i.5:                                     ; preds = %if.then6.i.5
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.5 = zext i16 %add.i305.5 to i32
  %ie.i.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 5, i32 2
  %ie22.i.5 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.6.4, i32 0, i32 1
  %216 = call ptr @memcpy(ptr %ie22.i.5, ptr %ie.i.5, i32 %conv17.i.5)
  %add33.i.5 = add nuw nsw i32 %conv17.i.5, 4
  %add.ptr.i.5 = getelementptr i8, ptr %tlv_pos.6.4, i32 %add33.i.5
  br label %for.inc.i308.5

for.inc.i308.5:                                   ; preds = %if.end21.i.5, %for.inc.i308.4.for.inc.i308.5_crit_edge
  %tlv_pos.6.5 = phi ptr [ %tlv_pos.6.4, %for.inc.i308.4.for.inc.i308.5_crit_edge ], [ %add.ptr.i.5, %if.end21.i.5 ]
  %arrayidx.i303.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 6
  %217 = ptrtoint ptr %arrayidx.i303.6 to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %arrayidx.i303.6, align 2
  %and59.i.6 = and i16 %218, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i.6)
  %tobool5.not.i.6 = icmp eq i16 %and59.i.6, 0
  br i1 %tobool5.not.i.6, label %for.inc.i308.5.for.inc.i308.6_crit_edge, label %if.then6.i.6

for.inc.i308.5.for.inc.i308.6_crit_edge:          ; preds = %for.inc.i308.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i308.6

if.then6.i.6:                                     ; preds = %for.inc.i308.5
  %219 = ptrtoint ptr %tlv_pos.6.5 to i32
  call void @__asan_storeN_noabort(i32 %219, i32 2)
  store i16 2561, ptr %tlv_pos.6.5, align 1
  %arrayidx9.i.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 6, i32 2, i32 1
  %220 = ptrtoint ptr %arrayidx9.i.6 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx9.i.6, align 1
  %conv11.i.6 = zext i8 %221 to i16
  %add.i305.6 = add nuw nsw i16 %conv11.i.6, 2
  %222 = tail call i16 @llvm.bswap.i16(i16 %add.i305.6) #13
  %len.i.6 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.6.5, i32 0, i32 1
  %223 = ptrtoint ptr %len.i.6 to i32
  call void @__asan_storeN_noabort(i32 %223, i32 2)
  store i16 %222, ptr %len.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %221)
  %cmp18.i.6 = icmp eq i8 %221, -1
  br i1 %cmp18.i.6, label %if.then6.i.6.if.then20.i_crit_edge, label %if.end21.i.6

if.then6.i.6.if.then20.i_crit_edge:               ; preds = %if.then6.i.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.end21.i.6:                                     ; preds = %if.then6.i.6
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.6 = zext i16 %add.i305.6 to i32
  %ie.i.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 6, i32 2
  %ie22.i.6 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.6.5, i32 0, i32 1
  %224 = call ptr @memcpy(ptr %ie22.i.6, ptr %ie.i.6, i32 %conv17.i.6)
  %add33.i.6 = add nuw nsw i32 %conv17.i.6, 4
  %add.ptr.i.6 = getelementptr i8, ptr %tlv_pos.6.5, i32 %add33.i.6
  br label %for.inc.i308.6

for.inc.i308.6:                                   ; preds = %if.end21.i.6, %for.inc.i308.5.for.inc.i308.6_crit_edge
  %tlv_pos.6.6 = phi ptr [ %tlv_pos.6.5, %for.inc.i308.5.for.inc.i308.6_crit_edge ], [ %add.ptr.i.6, %if.end21.i.6 ]
  %arrayidx.i303.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 7
  %225 = ptrtoint ptr %arrayidx.i303.7 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %arrayidx.i303.7, align 2
  %and59.i.7 = and i16 %226, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59.i.7)
  %tobool5.not.i.7 = icmp eq i16 %and59.i.7, 0
  br i1 %tobool5.not.i.7, label %for.inc.i308.6.mwifiex_cmd_append_vsie_tlv.exit_crit_edge, label %if.then6.i.7

for.inc.i308.6.mwifiex_cmd_append_vsie_tlv.exit_crit_edge: ; preds = %for.inc.i308.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_cmd_append_vsie_tlv.exit

if.then6.i.7:                                     ; preds = %for.inc.i308.6
  %227 = ptrtoint ptr %tlv_pos.6.6 to i32
  call void @__asan_storeN_noabort(i32 %227, i32 2)
  store i16 2561, ptr %tlv_pos.6.6, align 1
  %arrayidx9.i.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 7, i32 2, i32 1
  %228 = ptrtoint ptr %arrayidx9.i.7 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx9.i.7, align 1
  %conv11.i.7 = zext i8 %229 to i16
  %add.i305.7 = add nuw nsw i16 %conv11.i.7, 2
  %230 = tail call i16 @llvm.bswap.i16(i16 %add.i305.7) #13
  %len.i.7 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_pos.6.6, i32 0, i32 1
  %231 = ptrtoint ptr %len.i.7 to i32
  call void @__asan_storeN_noabort(i32 %231, i32 2)
  store i16 %230, ptr %len.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %229)
  %cmp18.i.7 = icmp eq i8 %229, -1
  br i1 %cmp18.i.7, label %if.then6.i.7.if.then20.i_crit_edge, label %if.end21.i.7

if.then6.i.7.if.then20.i_crit_edge:               ; preds = %if.then6.i.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i

if.end21.i.7:                                     ; preds = %if.then6.i.7
  call void @__sanitizer_cov_trace_pc() #15
  %conv17.i.7 = zext i16 %add.i305.7 to i32
  %ie.i.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 7, i32 2
  %ie22.i.7 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %tlv_pos.6.6, i32 0, i32 1
  %232 = call ptr @memcpy(ptr %ie22.i.7, ptr %ie.i.7, i32 %conv17.i.7)
  %add33.i.7 = add nuw nsw i32 %conv17.i.7, 4
  %add.ptr.i.7 = getelementptr i8, ptr %tlv_pos.6.6, i32 %add33.i.7
  br label %mwifiex_cmd_append_vsie_tlv.exit

mwifiex_cmd_append_vsie_tlv.exit:                 ; preds = %if.end21.i.7, %for.inc.i308.6.mwifiex_cmd_append_vsie_tlv.exit_crit_edge, %if.then20.i, %if.end193.mwifiex_cmd_append_vsie_tlv.exit_crit_edge
  %tlv_pos.7 = phi ptr [ null, %if.end193.mwifiex_cmd_append_vsie_tlv.exit_crit_edge ], [ %tlv_pos.5.lcssa, %if.then20.i ], [ %tlv_pos.6.6, %for.inc.i308.6.mwifiex_cmd_append_vsie_tlv.exit_crit_edge ], [ %add.ptr.i.7, %if.end21.i.7 ]
  %sub.ptr.lhs.cast = ptrtoint ptr %tlv_pos.7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %tlv to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv198 = trunc i32 %sub.ptr.sub to i16
  %233 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %233, i32 2)
  %234 = load i16, ptr %size, align 1
  %235 = tail call i16 @llvm.bswap.i16(i16 %234) #13
  %add.i310 = add i16 %235, %conv198
  %236 = tail call i16 @llvm.bswap.i16(i16 %add.i310) #13
  %237 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %237, i32 2)
  store i16 %236, ptr %size, align 1
  br label %cleanup

cleanup:                                          ; preds = %mwifiex_cmd_append_vsie_tlv.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_append_vsie_tlv(ptr nocapture noundef readonly %priv, i16 noundef zeroext %vsie_mask, ptr noundef %buffer) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buffer, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %ret_len.063 = phi i32 [ %ret_len.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %id.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 %id.061
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %and59 = and i16 %3, %vsie_mask
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and59)
  %tobool5.not = icmp eq i16 %and59, 0
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then6:                                         ; preds = %for.body
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 2561, ptr %5, align 1
  %arrayidx9 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 %id.061, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9, align 1
  %conv11 = zext i8 %8 to i16
  %add = add nuw nsw i16 %conv11, 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %add)
  %len = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp18 = icmp eq i8 %8, -1
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.29) #13
  br label %cleanup

if.end21:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %conv17 = zext i16 %add to i32
  %ie = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 96, i32 %id.061, i32 2
  %ie22 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %5, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %ie22, ptr %ie, i32 %conv17)
  %add33 = add nuw nsw i32 %conv17, 4
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %add33
  store ptr %add.ptr, ptr %buffer, align 4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %len, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv36 = zext i16 %18 to i32
  %add37 = add i32 %ret_len.063, 4
  %add38 = add i32 %add37, %conv36
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %for.body.for.inc_crit_edge
  %ret_len.1 = phi i32 [ %add38, %if.end21 ], [ %ret_len.063, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %id.061, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %ret_len.063, %if.then20 ], [ %ret_len.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_stop_bg_scan(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_scanning = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 131
  %0 = ptrtoint ptr %sched_scanning to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sched_scanning, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_stop_bg_scan.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_stop_bg_scan, %if.then4)) #13
          to label %cleanup [label %if.then4], !srcloc !177

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mwifiex_stop_bg_scan.__UNIQUE_ID_ddebug491, ptr noundef %5, ptr noundef nonnull @.str.17) #13
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 331) #17
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %bss_type = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %bss_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %bss_type, align 1
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %call7.i.i, align 8
  %enable = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %enable, align 2
  %call10 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 107, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %sched_scanning to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %sched_scanning, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %if.then4 ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %do.body ], [ -14, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_802_11_scan_ext(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %resp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.18) #13
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %size, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %sub = add i16 %4, -12
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %sub)
  %cmp65 = icmp ugt i16 %sub, 3
  br i1 %cmp65, label %while.body.preheader, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %tlv_buffer = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.preheader
  %tlv.067 = phi ptr [ %add.ptr18, %sw.epilog.while.body_crit_edge ], [ %tlv_buffer, %while.body.preheader ]
  %buf_left.066 = phi i16 [ %conv16, %sw.epilog.while.body_crit_edge ], [ %sub, %while.body.preheader ]
  %conv3 = zext i16 %buf_left.066 to i32
  %len6 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.067, i32 0, i32 1
  %5 = ptrtoint ptr %len6 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %len6, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv8 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv8, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv3)
  %cmp9 = icmp ugt i32 %add, %conv3
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.19) #13
  br label %while.end

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %tlv.067 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %tlv.067, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14847, i16 %9)
  %cond = icmp eq i16 %9, -14847
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %12 = udiv i16 %7, 10
  %13 = and i16 %12, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp48.not.i = icmp eq i16 %13, 0
  br i1 %cmp48.not.i, label %sw.bb.sw.epilog_crit_edge, label %for.body.lr.ph.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %add.ptr.i = getelementptr i8, ptr %tlv.067, i32 4
  %survey_idx.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 150
  %num_in_chan_stats.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 149
  %chan_stats26.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 148
  %14 = trunc i16 %12 to i8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fw_chan_stats.050.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ]
  %i.049.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %inc28.i, %if.end.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %survey_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %survey_idx.i, align 4
  %17 = ptrtoint ptr %num_in_chan_stats.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_in_chan_stats.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp6.not.i = icmp ult i32 %16, %18
  br i1 %cmp6.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 536870912, ptr noundef nonnull @.str.77, i32 noundef %18) #13
  br label %sw.epilog

if.end.i:                                         ; preds = %for.body.i
  %19 = ptrtoint ptr %fw_chan_stats.050.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fw_chan_stats.050.i, align 1
  %bandcfg.i = getelementptr inbounds %struct.mwifiex_fw_chan_stats, ptr %fw_chan_stats.050.i, i32 0, i32 1
  %21 = ptrtoint ptr %bandcfg.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bandcfg.i, align 1
  %flags.i = getelementptr inbounds %struct.mwifiex_fw_chan_stats, ptr %fw_chan_stats.050.i, i32 0, i32 2
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags.i, align 1
  %noise.i = getelementptr inbounds %struct.mwifiex_fw_chan_stats, ptr %fw_chan_stats.050.i, i32 0, i32 3
  %25 = ptrtoint ptr %noise.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %noise.i, align 1
  %total_bss.i = getelementptr inbounds %struct.mwifiex_fw_chan_stats, ptr %fw_chan_stats.050.i, i32 0, i32 4
  %27 = ptrtoint ptr %total_bss.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %total_bss.i, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #13
  %cca_scan_dur.i = getelementptr inbounds %struct.mwifiex_fw_chan_stats, ptr %fw_chan_stats.050.i, i32 0, i32 5
  %30 = ptrtoint ptr %cca_scan_dur.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %cca_scan_dur.i, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #13
  %cca_busy_dur.i = getelementptr inbounds %struct.mwifiex_fw_chan_stats, ptr %fw_chan_stats.050.i, i32 0, i32 6
  %33 = ptrtoint ptr %cca_busy_dur.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %cca_busy_dur.i, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #13
  %conv17.i = zext i8 %20 to i32
  %conv19.i = sext i8 %26 to i32
  %conv21.i = zext i16 %29 to i32
  %conv23.i = zext i16 %32 to i32
  %conv25.i = zext i16 %35 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 1073741824, ptr noundef nonnull @.str.78, i32 noundef %conv17.i, i32 noundef %conv19.i, i32 noundef %conv21.i, i32 noundef %conv23.i, i32 noundef %conv25.i) #13
  %36 = ptrtoint ptr %chan_stats26.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan_stats26.i, align 4
  %38 = ptrtoint ptr %survey_idx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %survey_idx.i, align 4
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %survey_idx.i, align 4
  %arrayidx.i = getelementptr %struct.mwifiex_chan_stats, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %20, ptr %arrayidx.i, align 1
  %chan_stats.sroa.6.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 1
  %41 = ptrtoint ptr %chan_stats.sroa.6.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %22, ptr %chan_stats.sroa.6.0.arrayidx.sroa_idx.i, align 1
  %chan_stats.sroa.8.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 2
  %42 = ptrtoint ptr %chan_stats.sroa.8.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %24, ptr %chan_stats.sroa.8.0.arrayidx.sroa_idx.i, align 1
  %chan_stats.sroa.10.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 3
  %43 = ptrtoint ptr %chan_stats.sroa.10.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %26, ptr %chan_stats.sroa.10.0.arrayidx.sroa_idx.i, align 1
  %chan_stats.sroa.13.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %44 = ptrtoint ptr %chan_stats.sroa.13.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %29, ptr %chan_stats.sroa.13.0.arrayidx.sroa_idx.i, align 1
  %chan_stats.sroa.16.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 6
  %45 = ptrtoint ptr %chan_stats.sroa.16.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %32, ptr %chan_stats.sroa.16.0.arrayidx.sroa_idx.i, align 1
  %chan_stats.sroa.19.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %46 = ptrtoint ptr %chan_stats.sroa.19.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %35, ptr %chan_stats.sroa.19.0.arrayidx.sroa_idx.i, align 1
  %incdec.ptr.i = getelementptr %struct.mwifiex_fw_chan_stats, ptr %fw_chan_stats.050.i, i32 1
  %inc28.i = add nuw i8 %i.049.i, 1
  %cmp.i = icmp ult i8 %inc28.i, %14
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

sw.epilog:                                        ; preds = %if.end.i.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %47 = trunc i32 %add to i16
  %conv16 = sub i16 %buf_left.066, %47
  %add.ptr = getelementptr i8, ptr %tlv.067, i32 4
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 %conv8
  %cmp = icmp ugt i16 %conv16, 3
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %if.then, %entry.while.end_crit_edge
  %cmd_pending_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_pending_q_lock) #13
  %scan_pending_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %scan_pending_q_lock) #13
  %scan_pending_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 68
  %48 = ptrtoint ptr %scan_pending_q to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %scan_pending_q, align 4
  %cmp.i61.not = icmp eq ptr %49, %scan_pending_q
  br i1 %cmp.i61.not, label %if.then19, label %if.end34

if.then19:                                        ; preds = %while.end
  %cmd_pending_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 66
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then19
  %cmd_node.0.in = phi ptr [ %cmd_pending_q, %if.then19 ], [ %cmd_node.0, %for.body.for.cond_crit_edge ]
  %50 = ptrtoint ptr %cmd_node.0.in to i32
  call void @__asan_load4_noabort(i32 %50)
  %cmd_node.0 = load ptr, ptr %cmd_node.0.in, align 4
  %cmp22.not = icmp eq ptr %cmd_node.0, %cmd_pending_q
  br i1 %cmp22.not, label %if.then38.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %cmd_skb = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node.0, i32 0, i32 4
  %51 = ptrtoint ptr %cmd_skb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmd_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 19
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %54, align 1
  %cmp25 = icmp eq i16 %56, 1793
  br i1 %cmp25, label %if.then27, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.20) #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %scan_pending_q_lock) #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_pending_q_lock) #13
  br label %if.end39

if.end34:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %scan_pending_q_lock) #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_pending_q_lock) #13
  br label %if.end39

if.then38.critedge:                               ; preds = %for.cond
  tail call void @_raw_spin_unlock_bh(ptr noundef %scan_pending_q_lock) #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_pending_q_lock) #13
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv, align 8
  %survey_idx.i62 = getelementptr inbounds %struct.mwifiex_adapter, ptr %58, i32 0, i32 150
  %59 = ptrtoint ptr %survey_idx.i62 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %survey_idx.i62, align 4
  %curr_cmd.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %58, i32 0, i32 60
  %60 = ptrtoint ptr %curr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %curr_cmd.i, align 4
  %wait_q_enabled.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %wait_q_enabled.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wait_q_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i, label %if.then38.critedge.if.end39_crit_edge, label %if.then.i63

if.then38.critedge.if.end39_crit_edge:            ; preds = %if.then38.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then.i63:                                      ; preds = %if.then38.critedge
  %status.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %58, i32 0, i32 121, i32 1
  %64 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %status.i, align 4
  %scan_request.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 111
  %65 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %scan_request.i, align 8
  %tobool2.not.i = icmp eq ptr %66, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.then.i63.if.end39_crit_edge

if.then.i63.if.end39_crit_edge:                   ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then3.i:                                       ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %58, i32 noundef 1073741824, ptr noundef nonnull @.str.79) #13
  %67 = ptrtoint ptr %curr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %curr_cmd.i, align 4
  %call.i = tail call i32 @mwifiex_complete_cmd(ptr noundef %58, ptr noundef %68) #13
  br label %if.end39

if.end39:                                         ; preds = %if.then3.i, %if.then.i63.if.end39_crit_edge, %if.then38.critedge.if.end39_crit_edge, %if.end34, %if.then27
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_handle_event_ext_scan_report(ptr noundef %priv, ptr noundef %buf) local_unnamed_addr #2 align 64 {
entry:
  %bss_info = alloca ptr, align 4
  %bytes_left = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bss_info) #13
  %2 = ptrtoint ptr %bss_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bss_info, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_left) #13
  %num_of_set2 = getelementptr inbounds %struct.mwifiex_event_scan_result, ptr %buf, i32 0, i32 6
  %3 = ptrtoint ptr %num_of_set2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_of_set2, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 11
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %4)
  %cmp = icmp ugt i8 %4, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %conv) #13
  br label %check_next_scan

if.end:                                           ; preds = %entry
  %buf_size = getelementptr inbounds %struct.mwifiex_event_scan_result, ptr %buf, i32 0, i32 5
  %5 = ptrtoint ptr %buf_size to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %buf_size, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv5 = zext i16 %7 to i32
  %8 = ptrtoint ptr %bytes_left to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv5, ptr %bytes_left, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.22, i32 noundef %conv5, i32 noundef %conv) #13
  %debug_mask = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask, align 4
  %and = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.then8

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add = add nuw nsw i32 %conv5, 11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %buf, i32 noundef %add, i1 noundef zeroext false) #13
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp12139.not = icmp eq i8 %4, 0
  br i1 %cmp12139.not, label %do.end.check_next_scan_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  br label %land.rhs

do.end.check_next_scan_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_next_scan

for.cond:                                         ; preds = %if.end78
  %inc = add nuw nsw i32 %idx.0140, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.check_next_scan_crit_edge, label %for.cond.land.rhs_crit_edge

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

for.cond.check_next_scan_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_next_scan

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %do.end.land.rhs_crit_edge
  %rssi.0143 = phi i32 [ %rssi.1, %for.cond.land.rhs_crit_edge ], [ 0, %do.end.land.rhs_crit_edge ]
  %fw_tsf.0142 = phi i64 [ %fw_tsf.1, %for.cond.land.rhs_crit_edge ], [ 0, %do.end.land.rhs_crit_edge ]
  %tlv.0141 = phi ptr [ %tlv.1.ph, %for.cond.land.rhs_crit_edge ], [ %add.ptr, %do.end.land.rhs_crit_edge ]
  %idx.0140 = phi i32 [ %inc, %for.cond.land.rhs_crit_edge ], [ 0, %do.end.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bytes_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %land.rhs.check_next_scan_crit_edge, label %for.body

land.rhs.check_next_scan_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_next_scan

for.body:                                         ; preds = %land.rhs
  %len17 = getelementptr %struct.mwifiex_ie_types_header, ptr %tlv.0141, i32 0, i32 1
  %13 = ptrtoint ptr %len17 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %len17, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv18 = zext i16 %15 to i32
  %add19 = add nuw nsw i32 %conv18, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add19)
  %cmp20 = icmp ult i32 %12, %add19
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.25) #13
  br label %check_next_scan

if.end23:                                         ; preds = %for.body
  %16 = ptrtoint ptr %tlv.0141 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %tlv.0141, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 22017, i16 %17)
  %cmp25.not = icmp eq i16 %17, 22017
  br i1 %cmp25.not, label %if.end28, label %if.end23.check_next_scan_crit_edge

if.end23.check_next_scan_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_next_scan

if.end28:                                         ; preds = %if.end23
  %18 = ptrtoint ptr %bss_info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tlv.0141, ptr %bss_info, align 4
  %data = getelementptr inbounds %struct.mwifiex_ie_types_data, ptr %tlv.0141, i32 0, i32 1
  %add.ptr30 = getelementptr i8, ptr %data, i32 %conv18
  %sub = sub i32 %12, %add19
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %sw.epilog, %if.end28
  %bytes_left_for_tlv.0.ph = phi i32 [ %sub67, %sw.epilog ], [ %sub, %if.end28 ]
  %tlv.1.ph = phi ptr [ %add.ptr61, %sw.epilog ], [ %add.ptr30, %if.end28 ]
  %scan_rsp_tlv.0.ph = phi ptr [ %scan_rsp_tlv.0.ph130, %sw.epilog ], [ %tlv.0141, %if.end28 ]
  %scan_info_tlv.0.ph = phi ptr [ %scan_info_tlv.1, %sw.epilog ], [ null, %if.end28 ]
  %len45 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.1.ph, i32 0, i32 1
  br label %while.cond.outer128

while.cond.outer128:                              ; preds = %if.then50, %while.cond.outer
  %bytes_left_for_tlv.0.ph129 = phi i32 [ %bytes_left_for_tlv.0.ph, %while.cond.outer ], [ 0, %if.then50 ]
  %scan_rsp_tlv.0.ph130 = phi ptr [ %scan_rsp_tlv.0.ph, %while.cond.outer ], [ null, %if.then50 ]
  %scan_info_tlv.0.ph131 = phi ptr [ %scan_info_tlv.0.ph, %while.cond.outer ], [ %scan_info_tlv.0, %if.then50 ]
  br label %while.cond

while.cond:                                       ; preds = %sw.bb.while.cond_crit_edge, %while.cond.outer128
  %bytes_left_for_tlv.0 = phi i32 [ 0, %sw.bb.while.cond_crit_edge ], [ %bytes_left_for_tlv.0.ph129, %while.cond.outer128 ]
  %scan_info_tlv.0 = phi ptr [ %tlv.1.ph, %sw.bb.while.cond_crit_edge ], [ %scan_info_tlv.0.ph131, %while.cond.outer128 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bytes_left_for_tlv.0)
  %cmp33 = icmp ugt i32 %bytes_left_for_tlv.0, 3
  br i1 %cmp33, label %land.rhs35, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs35:                                       ; preds = %while.cond
  %19 = ptrtoint ptr %tlv.1.ph to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %tlv.1.ph, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 22017, i16 %20)
  %cmp39.not = icmp eq i16 %20, 22017
  br i1 %cmp39.not, label %land.rhs35.while.end_crit_edge, label %while.body

land.rhs35.while.end_crit_edge:                   ; preds = %land.rhs35
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %land.rhs35
  %21 = ptrtoint ptr %len45 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %len45, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv46 = zext i16 %23 to i32
  %add47 = add nuw nsw i32 %conv46, 4
  %cmp48 = icmp ult i32 %bytes_left_for_tlv.0, %add47
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.26) #13
  br label %while.cond.outer128

if.end51:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 22273, i16 %20)
  %cond = icmp eq i16 %20, 22273
  br i1 %cond, label %sw.bb, label %if.end51.sw.epilog_crit_edge

if.end51.sw.epilog_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end51
  %cmp54.not = icmp eq i16 %22, 4096
  br i1 %cmp54.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.while.cond_crit_edge

sw.bb.while.cond_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end51.sw.epilog_crit_edge
  %scan_info_tlv.1 = phi ptr [ %tlv.1.ph, %sw.bb.sw.epilog_crit_edge ], [ %scan_info_tlv.0, %if.end51.sw.epilog_crit_edge ]
  %data58 = getelementptr inbounds %struct.mwifiex_ie_types_data, ptr %tlv.1.ph, i32 0, i32 1
  %add.ptr61 = getelementptr i8, ptr %data58, i32 %conv46
  %24 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bytes_left, align 4
  %sub64 = sub i32 %25, %add47
  store i32 %sub64, ptr %bytes_left, align 4
  %sub67 = sub i32 %bytes_left_for_tlv.0, %add47
  br label %while.cond.outer

while.end:                                        ; preds = %land.rhs35.while.end_crit_edge, %while.cond.while.end_crit_edge
  %tobool68.not = icmp eq ptr %scan_rsp_tlv.0.ph130, null
  br i1 %tobool68.not, label %while.end.check_next_scan_crit_edge, label %if.end70

while.end.check_next_scan_crit_edge:              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_next_scan

if.end70:                                         ; preds = %while.end
  %26 = ptrtoint ptr %bss_info to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %len17, ptr %bss_info, align 4
  %27 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bytes_left, align 4
  %sub72 = add i32 %28, -2
  store i32 %sub72, ptr %bytes_left, align 4
  %tobool73.not = icmp eq ptr %scan_info_tlv.0, null
  br i1 %tobool73.not, label %if.end70.if.end78_crit_edge, label %if.then74

if.end70.if.end78_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  %rssi75 = getelementptr inbounds %struct.mwifiex_ie_types_bss_scan_info, ptr %scan_info_tlv.0, i32 0, i32 1
  %29 = ptrtoint ptr %rssi75 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %rssi75, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %conv76 = sext i16 %31 to i32
  %mul = mul nsw i32 %conv76, 100
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.27, i32 noundef %mul) #13
  %tsf = getelementptr inbounds %struct.mwifiex_ie_types_bss_scan_info, ptr %scan_info_tlv.0, i32 0, i32 7
  %32 = ptrtoint ptr %tsf to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %tsf, align 1
  %34 = tail call i64 @llvm.bswap.i64(i64 %33)
  %radio_type77 = getelementptr inbounds %struct.mwifiex_ie_types_bss_scan_info, ptr %scan_info_tlv.0, i32 0, i32 4
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.end70.if.end78_crit_edge
  %radio_type.0 = phi ptr [ %radio_type77, %if.then74 ], [ null, %if.end70.if.end78_crit_edge ]
  %fw_tsf.1 = phi i64 [ %34, %if.then74 ], [ %fw_tsf.0142, %if.end70.if.end78_crit_edge ]
  %rssi.1 = phi i32 [ %mul, %if.then74 ], [ %rssi.0143, %if.end70.if.end78_crit_edge ]
  %call = call fastcc i32 @mwifiex_parse_single_response_buf(ptr noundef %priv, ptr noundef nonnull %bss_info, ptr noundef nonnull %bytes_left, i64 noundef %fw_tsf.1, ptr noundef %radio_type.0, i1 noundef zeroext true, i32 noundef %rssi.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool79.not = icmp eq i32 %call, 0
  br i1 %tobool79.not, label %for.cond, label %if.end78.check_next_scan_crit_edge

if.end78.check_next_scan_crit_edge:               ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_next_scan

check_next_scan:                                  ; preds = %if.end78.check_next_scan_crit_edge, %while.end.check_next_scan_crit_edge, %if.end23.check_next_scan_crit_edge, %if.then22, %land.rhs.check_next_scan_crit_edge, %for.cond.check_next_scan_crit_edge, %do.end.check_next_scan_crit_edge, %if.then
  %ret.1 = phi i32 [ -1, %if.then ], [ 0, %if.then22 ], [ 0, %do.end.check_next_scan_crit_edge ], [ %call, %if.end78.check_next_scan_crit_edge ], [ 0, %for.cond.check_next_scan_crit_edge ], [ 0, %while.end.check_next_scan_crit_edge ], [ 0, %if.end23.check_next_scan_crit_edge ], [ 0, %land.rhs.check_next_scan_crit_edge ]
  %more_event = getelementptr inbounds %struct.mwifiex_event_scan_result, ptr %buf, i32 0, i32 3
  %35 = ptrtoint ptr %more_event to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %more_event, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool82.not = icmp eq i8 %36, 0
  br i1 %tobool82.not, label %if.then83, label %check_next_scan.if.end84_crit_edge

check_next_scan.if.end84_crit_edge:               ; preds = %check_next_scan
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then83:                                        ; preds = %check_next_scan
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @mwifiex_check_next_scan_command(ptr noundef %priv)
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %check_next_scan.if.end84_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_left) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bss_info) #13
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @mwifiex_cmd_802_11_bg_scan_query(ptr nocapture noundef writeonly %cmd) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 27648, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 2304, ptr %size, align 1
  %2 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %params, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_queue_scan_cmd(ptr nocapture noundef readonly %priv, ptr noundef %cmd_node) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %wait_q_enabled = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node, i32 0, i32 7
  %2 = ptrtoint ptr %wait_q_enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %wait_q_enabled, align 4
  %scan_wait_q_woken = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 122
  %condition = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node, i32 0, i32 9
  %3 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %scan_wait_q_woken, ptr %condition, align 4
  %scan_pending_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %scan_pending_q_lock) #13
  %scan_pending_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 68
  %prev.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 68, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cmd_node, ptr noundef %5, ptr noundef %scan_pending_q) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cmd_node, ptr %prev.i, align 4
  %7 = ptrtoint ptr %cmd_node to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %scan_pending_q, ptr %cmd_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %cmd_node, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %cmd_node, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %scan_pending_q_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_request_scan(ptr noundef %priv, ptr noundef %req_ssid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %async_mutex = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 110
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %async_mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.mwifiex_request_scan) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %scan_wait_q_woken = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 122
  %2 = ptrtoint ptr %scan_wait_q_woken to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %scan_wait_q_woken, align 4
  %tobool2.not = icmp eq ptr %req_ssid, null
  br i1 %tobool2.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %req_ssid, i32 0, i32 1
  %3 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ssid_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %if.then4

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %scan_processing.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %6, i32 0, i32 73
  %7 = ptrtoint ptr %scan_processing.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scan_processing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 536870912, ptr noundef nonnull @.str.2) #13
  br label %if.end7

if.end.i:                                         ; preds = %if.then4
  %scan_block.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 114
  %9 = ptrtoint ptr %scan_block.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %scan_block.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not.i = icmp eq i8 %10, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 536870912, ptr noundef nonnull @.str.3) #13
  br label %if.end7

if.end4.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 422) #17
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end7_crit_edge, label %if.end7.i

if.end4.i.if.end7_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %ssid_list.i = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %call7.i.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %ssid_list.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store ptr %req_ssid, ptr %ssid_list.i, align 1
  %num_ssids.i = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %call7.i.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %num_ssids.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %num_ssids.i, align 1
  %call8.i = tail call i32 @mwifiex_scan_networks(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %call6 = tail call i32 @mwifiex_scan_networks(ptr noundef %priv, ptr noundef null)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end7.i, %if.end4.i.if.end7_crit_edge, %if.then3.i, %if.then.i
  %ret.0 = phi i32 [ %call6, %if.else ], [ -16, %if.then.i ], [ -16, %if.then3.i ], [ %call8.i, %if.end7.i ], [ -12, %if.end4.i.if.end7_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %async_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %ret.0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_save_curr_bcn(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %beacon_buf_size = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 56
  %0 = ptrtoint ptr %beacon_buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %beacon_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %curr_bcn_buf = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 100
  %2 = ptrtoint ptr %curr_bcn_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_bcn_buf, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %curr_bcn_size = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 101
  %4 = ptrtoint ptr %curr_bcn_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curr_bcn_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp.not = icmp eq i32 %5, %1
  br i1 %cmp.not, label %lor.lhs.false.if.end13_crit_edge, label %lor.lhs.false.if.then3_crit_edge

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %curr_bcn_size5 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 101
  %6 = ptrtoint ptr %curr_bcn_size5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %curr_bcn_size5, align 8
  tail call void @kfree(ptr noundef %3) #13
  %7 = ptrtoint ptr %beacon_buf_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %beacon_buf_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 2592) #18
  %9 = ptrtoint ptr %curr_bcn_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i, ptr %curr_bcn_buf, align 4
  %tobool10.not = icmp eq ptr %call9.i, null
  br i1 %tobool10.not, label %if.then3.cleanup_crit_edge, label %if.then3.if.end13_crit_edge

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.then3.if.end13_crit_edge, %lor.lhs.false.if.end13_crit_edge
  %10 = ptrtoint ptr %curr_bcn_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %curr_bcn_buf, align 4
  %beacon_buf = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 55
  %12 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %beacon_buf, align 8
  %14 = ptrtoint ptr %beacon_buf_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %beacon_buf_size, align 4
  %16 = call ptr @memcpy(ptr %11, ptr %13, i32 %15)
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %curr_bcn_size16 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 101
  %19 = ptrtoint ptr %curr_bcn_size16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %curr_bcn_size16, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %18, i32 noundef 1073741824, ptr noundef nonnull @.str.30, i32 noundef %20) #13
  %21 = ptrtoint ptr %curr_bcn_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %curr_bcn_buf, align 4
  %23 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %beacon_buf, align 8
  %bcn_wpa_ie = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 46
  %24 = ptrtoint ptr %bcn_wpa_ie to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bcn_wpa_ie, align 8
  %tobool19.not = icmp eq ptr %25, null
  br i1 %tobool19.not, label %if.end13.if.end23_crit_edge, label %if.then20

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %wpa_offset = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 47
  %26 = ptrtoint ptr %wpa_offset to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %wpa_offset, align 4
  %conv = zext i16 %27 to i32
  %add.ptr = getelementptr i8, ptr %22, i32 %conv
  %28 = ptrtoint ptr %bcn_wpa_ie to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %bcn_wpa_ie, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end13.if.end23_crit_edge
  %bcn_rsn_ie = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 49
  %29 = ptrtoint ptr %bcn_rsn_ie to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bcn_rsn_ie, align 8
  %tobool24.not = icmp eq ptr %30, null
  br i1 %tobool24.not, label %if.end23.if.end30_crit_edge, label %if.then25

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %rsn_offset = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 50
  %31 = ptrtoint ptr %rsn_offset to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rsn_offset, align 4
  %conv27 = zext i16 %32 to i32
  %add.ptr28 = getelementptr i8, ptr %22, i32 %conv27
  %33 = ptrtoint ptr %bcn_rsn_ie to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr28, ptr %bcn_rsn_ie, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end23.if.end30_crit_edge
  %bcn_ht_cap = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 24
  %34 = ptrtoint ptr %bcn_ht_cap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bcn_ht_cap, align 8
  %tobool31.not = icmp eq ptr %35, null
  br i1 %tobool31.not, label %if.end30.if.end37_crit_edge, label %if.then32

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %ht_cap_offset = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 25
  %36 = ptrtoint ptr %ht_cap_offset to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ht_cap_offset, align 4
  %conv34 = zext i16 %37 to i32
  %add.ptr35 = getelementptr i8, ptr %22, i32 %conv34
  %38 = ptrtoint ptr %bcn_ht_cap to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr35, ptr %bcn_ht_cap, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end30.if.end37_crit_edge
  %bcn_ht_oper = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 27
  %39 = ptrtoint ptr %bcn_ht_oper to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bcn_ht_oper, align 8
  %tobool38.not = icmp eq ptr %40, null
  br i1 %tobool38.not, label %if.end37.if.end44_crit_edge, label %if.then39

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %ht_info_offset = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 28
  %41 = ptrtoint ptr %ht_info_offset to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ht_info_offset, align 4
  %conv41 = zext i16 %42 to i32
  %add.ptr42 = getelementptr i8, ptr %22, i32 %conv41
  %43 = ptrtoint ptr %bcn_ht_oper to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr42, ptr %bcn_ht_oper, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end37.if.end44_crit_edge
  %bcn_vht_cap = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 36
  %44 = ptrtoint ptr %bcn_vht_cap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bcn_vht_cap, align 8
  %tobool45.not = icmp eq ptr %45, null
  br i1 %tobool45.not, label %if.end44.if.end51_crit_edge, label %if.then46

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %vht_cap_offset = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 37
  %46 = ptrtoint ptr %vht_cap_offset to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vht_cap_offset, align 4
  %conv48 = zext i16 %47 to i32
  %add.ptr49 = getelementptr i8, ptr %22, i32 %conv48
  %48 = ptrtoint ptr %bcn_vht_cap to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr49, ptr %bcn_vht_cap, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end44.if.end51_crit_edge
  %bcn_vht_oper = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 39
  %49 = ptrtoint ptr %bcn_vht_oper to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bcn_vht_oper, align 8
  %tobool52.not = icmp eq ptr %50, null
  br i1 %tobool52.not, label %if.end51.if.end58_crit_edge, label %if.then53

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %vht_info_offset = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 40
  %51 = ptrtoint ptr %vht_info_offset to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vht_info_offset, align 4
  %conv55 = zext i16 %52 to i32
  %add.ptr56 = getelementptr i8, ptr %22, i32 %conv55
  %53 = ptrtoint ptr %bcn_vht_oper to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr56, ptr %bcn_vht_oper, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.end51.if.end58_crit_edge
  %bcn_bss_co_2040 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 30
  %54 = ptrtoint ptr %bcn_bss_co_2040 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bcn_bss_co_2040, align 8
  %tobool59.not = icmp eq ptr %55, null
  br i1 %tobool59.not, label %if.end58.if.end65_crit_edge, label %if.then60

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  %bss_co_2040_offset = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 31
  %56 = ptrtoint ptr %bss_co_2040_offset to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %bss_co_2040_offset, align 4
  %conv62 = zext i16 %57 to i32
  %add.ptr63 = getelementptr i8, ptr %22, i32 %conv62
  %58 = ptrtoint ptr %bcn_bss_co_2040 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr63, ptr %bcn_bss_co_2040, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end58.if.end65_crit_edge
  %bcn_ext_cap = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 33
  %59 = ptrtoint ptr %bcn_ext_cap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bcn_ext_cap, align 8
  %tobool66.not = icmp eq ptr %60, null
  br i1 %tobool66.not, label %if.end65.if.end72_crit_edge, label %if.then67

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %ext_cap_offset = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 34
  %61 = ptrtoint ptr %ext_cap_offset to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %ext_cap_offset, align 4
  %conv69 = zext i16 %62 to i32
  %add.ptr70 = getelementptr i8, ptr %22, i32 %conv69
  %63 = ptrtoint ptr %bcn_ext_cap to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr70, ptr %bcn_ext_cap, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.end65.if.end72_crit_edge
  %oper_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 42
  %64 = ptrtoint ptr %oper_mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %oper_mode, align 8
  %tobool73.not = icmp eq ptr %65, null
  br i1 %tobool73.not, label %if.end72.cleanup_crit_edge, label %if.then74

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  %oper_mode_offset = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 43
  %66 = ptrtoint ptr %oper_mode_offset to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %oper_mode_offset, align 4
  %conv76 = zext i16 %67 to i32
  %add.ptr77 = getelementptr i8, ptr %22, i32 %conv76
  %68 = ptrtoint ptr %oper_mode to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr77, ptr %oper_mode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %if.end72.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_free_curr_bcn(ptr nocapture noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_bcn_buf = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 100
  %0 = ptrtoint ptr %curr_bcn_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_bcn_buf, align 4
  tail call void @kfree(ptr noundef %1) #13
  %2 = ptrtoint ptr %curr_bcn_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %curr_bcn_buf, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_fill_cap_info(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_rates_from_cfg80211(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_supported_rates(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mwifiex_is_bss_wpa(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %bss_desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wep_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %0 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wep_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true:                                    ; preds = %entry
  %sec_info = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60
  %2 = ptrtoint ptr %sec_info to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sec_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true3

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true3:                                   ; preds = %land.lhs.true
  %wpa2_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 1
  %4 = ptrtoint ptr %wpa2_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wpa2_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true3.return_crit_edge

land.lhs.true3.return_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %bcn_wpa_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 46
  %6 = ptrtoint ptr %bcn_wpa_ie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bcn_wpa_ie, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true6.return_crit_edge, label %has_vendor_hdr.exit

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

has_vendor_hdr.exit:                              ; preds = %land.lhs.true6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %9)
  %cmp.i = icmp eq i8 %9, -35
  br i1 %cmp.i, label %cond.end.i, label %has_vendor_hdr.exit.return_crit_edge

has_vendor_hdr.exit.return_crit_edge:             ; preds = %has_vendor_hdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

cond.end.i:                                       ; preds = %has_vendor_hdr.exit
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %7, align 1
  %conv.i = zext i8 %13 to i32
  %bcn_rsn_ie.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 49
  %14 = ptrtoint ptr %bcn_rsn_ie.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bcn_rsn_ie.i, align 8
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %cond.end.i._dbg_security_flags.exit_crit_edge, label %cond.true3.i

cond.end.i._dbg_security_flags.exit_crit_edge:    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_dbg_security_flags.exit

cond.true3.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv6.i = zext i8 %17 to i32
  br label %_dbg_security_flags.exit

_dbg_security_flags.exit:                         ; preds = %cond.true3.i, %cond.end.i._dbg_security_flags.exit_crit_edge
  %cond9.i = phi i32 [ %conv6.i, %cond.true3.i ], [ 0, %cond.end.i._dbg_security_flags.exit_crit_edge ]
  %encryption_mode.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 7
  %18 = ptrtoint ptr %encryption_mode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %encryption_mode.i, align 4
  %privacy.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 3
  %20 = ptrtoint ptr %privacy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %privacy.i, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 1073741824, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.mwifiex_is_bss_wpa, i32 noundef %conv.i, i32 noundef %cond9.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %19, i32 noundef %21) #13
  br label %return

return:                                           ; preds = %_dbg_security_flags.exit, %has_vendor_hdr.exit.return_crit_edge, %land.lhs.true6.return_crit_edge, %land.lhs.true3.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %_dbg_security_flags.exit ], [ false, %has_vendor_hdr.exit.return_crit_edge ], [ false, %land.lhs.true3.return_crit_edge ], [ false, %land.lhs.true.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %land.lhs.true6.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @mwifiex_is_wpa_oui_present(ptr nocapture noundef readonly %bss_desc, i32 noundef %cipher) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bcn_wpa_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 46
  %0 = ptrtoint ptr %bcn_wpa_ie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bcn_wpa_ie, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %has_vendor_hdr.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

has_vendor_hdr.exit:                              ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %3)
  %cmp.i = icmp eq i8 %3, -35
  br i1 %cmp.i, label %if.then, label %has_vendor_hdr.exit.cleanup_crit_edge

has_vendor_hdr.exit.cleanup_crit_edge:            ; preds = %has_vendor_hdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %has_vendor_hdr.exit
  %arrayidx = getelementptr [2 x [4 x i8]], ptr @mwifiex_wpa_oui, i32 0, i32 %cipher
  %ptk_cnt.i = getelementptr %struct.ieee_types_vendor_specific, ptr %1, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %ptk_cnt.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ptk_cnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not16.i = icmp eq i8 %5, 0
  br i1 %tobool.not16.i, label %if.then.do.body.i_crit_edge, label %while.body.i.preheader

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

while.body.i.preheader:                           ; preds = %if.then
  %add.ptr = getelementptr %struct.ieee_types_vendor_specific, ptr %1, i32 0, i32 1, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.i.preheader
  %iebody.addr.018.i = phi ptr [ %spec.select.i, %if.end.i.while.body.i_crit_edge ], [ %add.ptr, %while.body.i.preheader ]
  %count.017.i = phi i8 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ %5, %while.body.i.preheader ]
  %ptk_body.i = getelementptr inbounds %struct.ie_body, ptr %iebody.addr.018.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %ptk_body.i, ptr noundef dereferenceable(4) %arrayidx, i32 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool1.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool1.not.i, label %while.body.i.cleanup_crit_edge, label %if.end.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  %dec.i = add i8 %count.017.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %tobool2.not.i = icmp eq i8 %dec.i, 0
  %spec.select.idx.i = select i1 %tobool2.not.i, i32 0, i32 4
  %spec.select.i = getelementptr i8, ptr %iebody.addr.018.i, i32 %spec.select.idx.i
  br i1 %tobool2.not.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_search_oui_in_ie.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_is_wpa_oui_present, %mwifiex_search_oui_in_ie.exit.thread)) #13
          to label %cleanup [label %mwifiex_search_oui_in_ie.exit.thread], !srcloc !177

mwifiex_search_oui_in_ie.exit.thread:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_search_oui_in_ie.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49) #13
  br label %cleanup

cleanup:                                          ; preds = %mwifiex_search_oui_in_ie.exit.thread, %do.body.i, %while.body.i.cleanup_crit_edge, %has_vendor_hdr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %do.body.i ], [ 0, %mwifiex_search_oui_in_ie.exit.thread ], [ 0, %has_vendor_hdr.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %while.body.i.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mwifiex_is_bss_wpa2(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %bss_desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wep_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %0 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wep_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true:                                    ; preds = %entry
  %sec_info = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60
  %2 = ptrtoint ptr %sec_info to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sec_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true3:                                   ; preds = %land.lhs.true
  %wpa2_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 1
  %4 = ptrtoint ptr %wpa2_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wpa2_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %land.lhs.true3.return_crit_edge, label %land.lhs.true6

land.lhs.true3.return_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %bcn_rsn_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 49
  %6 = ptrtoint ptr %bcn_rsn_ie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bcn_rsn_ie, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true6.return_crit_edge, label %has_ieee_hdr.exit

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

has_ieee_hdr.exit:                                ; preds = %land.lhs.true6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %9)
  %cmp.i = icmp eq i8 %9, 48
  br i1 %cmp.i, label %if.then, label %has_ieee_hdr.exit.return_crit_edge

has_ieee_hdr.exit.return_crit_edge:               ; preds = %has_ieee_hdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %has_ieee_hdr.exit
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %bcn_wpa_ie.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 46
  %12 = ptrtoint ptr %bcn_wpa_ie.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bcn_wpa_ie.i, align 8
  %tobool.not.i12 = icmp eq ptr %13, null
  br i1 %tobool.not.i12, label %if.then._dbg_security_flags.exit_crit_edge, label %cond.true.i

if.then._dbg_security_flags.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %_dbg_security_flags.exit

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv.i = zext i8 %15 to i32
  br label %_dbg_security_flags.exit

_dbg_security_flags.exit:                         ; preds = %cond.true.i, %if.then._dbg_security_flags.exit_crit_edge
  %cond.i = phi i32 [ %conv.i, %cond.true.i ], [ 0, %if.then._dbg_security_flags.exit_crit_edge ]
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %7, align 1
  %conv6.i = zext i8 %17 to i32
  %encryption_mode.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 7
  %18 = ptrtoint ptr %encryption_mode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %encryption_mode.i, align 4
  %privacy.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 3
  %20 = ptrtoint ptr %privacy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %privacy.i, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 1073741824, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.mwifiex_is_bss_wpa2, i32 noundef %cond.i, i32 noundef %conv6.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i32 noundef %19, i32 noundef %21) #13
  br label %return

return:                                           ; preds = %_dbg_security_flags.exit, %has_ieee_hdr.exit.return_crit_edge, %land.lhs.true6.return_crit_edge, %land.lhs.true3.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %_dbg_security_flags.exit ], [ false, %has_ieee_hdr.exit.return_crit_edge ], [ false, %land.lhs.true3.return_crit_edge ], [ false, %land.lhs.true.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %land.lhs.true6.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @mwifiex_is_rsn_oui_present(ptr nocapture noundef readonly %bss_desc, i32 noundef %cipher) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bcn_rsn_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 49
  %0 = ptrtoint ptr %bcn_rsn_ie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bcn_rsn_ie, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %has_ieee_hdr.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

has_ieee_hdr.exit:                                ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %3)
  %cmp.i = icmp eq i8 %3, 48
  br i1 %cmp.i, label %if.then, label %has_ieee_hdr.exit.cleanup_crit_edge

has_ieee_hdr.exit.cleanup_crit_edge:              ; preds = %has_ieee_hdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %has_ieee_hdr.exit
  %arrayidx = getelementptr [2 x [4 x i8]], ptr @mwifiex_rsn_oui, i32 0, i32 %cipher
  %ptk_cnt.i = getelementptr %struct.ieee_types_generic, ptr %1, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %ptk_cnt.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ptk_cnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not16.i = icmp eq i8 %5, 0
  br i1 %tobool.not16.i, label %if.then.do.body.i_crit_edge, label %while.body.i.preheader

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

while.body.i.preheader:                           ; preds = %if.then
  %add.ptr = getelementptr %struct.ieee_types_generic, ptr %1, i32 0, i32 1, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.i.preheader
  %iebody.addr.018.i = phi ptr [ %spec.select.i, %if.end.i.while.body.i_crit_edge ], [ %add.ptr, %while.body.i.preheader ]
  %count.017.i = phi i8 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ %5, %while.body.i.preheader ]
  %ptk_body.i = getelementptr inbounds %struct.ie_body, ptr %iebody.addr.018.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %ptk_body.i, ptr noundef dereferenceable(4) %arrayidx, i32 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool1.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool1.not.i, label %while.body.i.cleanup_crit_edge, label %if.end.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  %dec.i = add i8 %count.017.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %tobool2.not.i = icmp eq i8 %dec.i, 0
  %spec.select.idx.i = select i1 %tobool2.not.i, i32 0, i32 4
  %spec.select.i = getelementptr i8, ptr %iebody.addr.018.i, i32 %spec.select.idx.i
  br i1 %tobool2.not.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_search_oui_in_ie.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_is_rsn_oui_present, %mwifiex_search_oui_in_ie.exit.thread)) #13
          to label %cleanup [label %mwifiex_search_oui_in_ie.exit.thread], !srcloc !177

mwifiex_search_oui_in_ie.exit.thread:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_search_oui_in_ie.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49) #13
  br label %cleanup

cleanup:                                          ; preds = %mwifiex_search_oui_in_ie.exit.thread, %do.body.i, %while.body.i.cleanup_crit_edge, %has_ieee_hdr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %do.body.i ], [ 0, %mwifiex_search_oui_in_ie.exit.thread ], [ 0, %has_ieee_hdr.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %while.body.i.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @mwifiex_is_bss_adhoc_aes(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %bss_desc) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wep_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %0 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wep_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sec_info = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60
  %2 = ptrtoint ptr %sec_info to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sec_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %wpa2_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 1
  %4 = ptrtoint ptr %wpa2_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wpa2_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %bcn_wpa_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 46
  %6 = ptrtoint ptr %bcn_wpa_ie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bcn_wpa_ie, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true6.land.lhs.true7_crit_edge, label %has_vendor_hdr.exit

land.lhs.true6.land.lhs.true7_crit_edge:          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true7

has_vendor_hdr.exit:                              ; preds = %land.lhs.true6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %9)
  %cmp.i = icmp eq i8 %9, -35
  br i1 %cmp.i, label %has_vendor_hdr.exit.if.end_crit_edge, label %has_vendor_hdr.exit.land.lhs.true7_crit_edge

has_vendor_hdr.exit.land.lhs.true7_crit_edge:     ; preds = %has_vendor_hdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true7

has_vendor_hdr.exit.if.end_crit_edge:             ; preds = %has_vendor_hdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7:                                   ; preds = %has_vendor_hdr.exit.land.lhs.true7_crit_edge, %land.lhs.true6.land.lhs.true7_crit_edge
  %bcn_rsn_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 49
  %10 = ptrtoint ptr %bcn_rsn_ie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bcn_rsn_ie, align 8
  %tobool.not.i19 = icmp eq ptr %11, null
  br i1 %tobool.not.i19, label %land.lhs.true7.land.lhs.true9_crit_edge, label %has_ieee_hdr.exit

land.lhs.true7.land.lhs.true9_crit_edge:          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true9

has_ieee_hdr.exit:                                ; preds = %land.lhs.true7
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %13)
  %cmp.i20 = icmp eq i8 %13, 48
  br i1 %cmp.i20, label %has_ieee_hdr.exit.if.end_crit_edge, label %has_ieee_hdr.exit.land.lhs.true9_crit_edge

has_ieee_hdr.exit.land.lhs.true9_crit_edge:       ; preds = %has_ieee_hdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true9

has_ieee_hdr.exit.if.end_crit_edge:               ; preds = %has_ieee_hdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true9:                                   ; preds = %has_ieee_hdr.exit.land.lhs.true9_crit_edge, %land.lhs.true7.land.lhs.true9_crit_edge
  %encryption_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 7
  %14 = ptrtoint ptr %encryption_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %encryption_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %land.lhs.true9.if.end_crit_edge

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %privacy = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 3
  %16 = ptrtoint ptr %privacy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %privacy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not = icmp eq i32 %17, 0
  br i1 %tobool13.not, label %land.lhs.true12.if.end_crit_edge, label %land.lhs.true12.return_crit_edge

land.lhs.true12.return_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true12.if.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true12.if.end_crit_edge, %land.lhs.true9.if.end_crit_edge, %has_ieee_hdr.exit.if.end_crit_edge, %has_vendor_hdr.exit.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true12.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end ], [ true, %land.lhs.true12.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mwifiex_is_bss_dynamic_wep(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %bss_desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wep_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %0 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wep_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true:                                    ; preds = %entry
  %sec_info = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60
  %2 = ptrtoint ptr %sec_info to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sec_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true3:                                   ; preds = %land.lhs.true
  %wpa2_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 1
  %4 = ptrtoint ptr %wpa2_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wpa2_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true3.return_crit_edge

land.lhs.true3.return_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %bcn_wpa_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 46
  %6 = ptrtoint ptr %bcn_wpa_ie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bcn_wpa_ie, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true6.land.lhs.true7_crit_edge, label %has_vendor_hdr.exit

land.lhs.true6.land.lhs.true7_crit_edge:          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true7

has_vendor_hdr.exit:                              ; preds = %land.lhs.true6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %9)
  %cmp.i = icmp eq i8 %9, -35
  br i1 %cmp.i, label %has_vendor_hdr.exit.return_crit_edge, label %has_vendor_hdr.exit.land.lhs.true7_crit_edge

has_vendor_hdr.exit.land.lhs.true7_crit_edge:     ; preds = %has_vendor_hdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true7

has_vendor_hdr.exit.return_crit_edge:             ; preds = %has_vendor_hdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true7:                                   ; preds = %has_vendor_hdr.exit.land.lhs.true7_crit_edge, %land.lhs.true6.land.lhs.true7_crit_edge
  %bcn_rsn_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 49
  %10 = ptrtoint ptr %bcn_rsn_ie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bcn_rsn_ie, align 8
  %tobool.not.i21 = icmp eq ptr %11, null
  br i1 %tobool.not.i21, label %land.lhs.true7.land.lhs.true9_crit_edge, label %has_ieee_hdr.exit

land.lhs.true7.land.lhs.true9_crit_edge:          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true9

has_ieee_hdr.exit:                                ; preds = %land.lhs.true7
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %13)
  %cmp.i22 = icmp eq i8 %13, 48
  br i1 %cmp.i22, label %has_ieee_hdr.exit.return_crit_edge, label %has_ieee_hdr.exit.land.lhs.true9_crit_edge

has_ieee_hdr.exit.land.lhs.true9_crit_edge:       ; preds = %has_ieee_hdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true9

has_ieee_hdr.exit.return_crit_edge:               ; preds = %has_ieee_hdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true9:                                   ; preds = %has_ieee_hdr.exit.land.lhs.true9_crit_edge, %land.lhs.true7.land.lhs.true9_crit_edge
  %encryption_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 7
  %14 = ptrtoint ptr %encryption_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %encryption_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %land.lhs.true9.return_crit_edge, label %land.lhs.true12

land.lhs.true9.return_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %privacy = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 3
  %16 = ptrtoint ptr %privacy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %privacy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not = icmp eq i32 %17, 0
  br i1 %tobool13.not, label %land.lhs.true12.return_crit_edge, label %if.then

land.lhs.true12.return_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @_dbg_security_flags(i32 noundef 1073741824, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.mwifiex_is_bss_dynamic_wep, ptr noundef %priv, ptr noundef %bss_desc)
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true12.return_crit_edge, %land.lhs.true9.return_crit_edge, %has_ieee_hdr.exit.return_crit_edge, %has_vendor_hdr.exit.return_crit_edge, %land.lhs.true3.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.then ], [ false, %land.lhs.true12.return_crit_edge ], [ false, %land.lhs.true9.return_crit_edge ], [ false, %has_ieee_hdr.exit.return_crit_edge ], [ false, %has_vendor_hdr.exit.return_crit_edge ], [ false, %land.lhs.true3.return_crit_edge ], [ false, %land.lhs.true.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dbg_security_flags(i32 noundef %log_level, ptr noundef %func, ptr noundef %desc, ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %bss_desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %bcn_wpa_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 46
  %2 = ptrtoint ptr %bcn_wpa_ie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bcn_wpa_ie, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %bcn_rsn_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 49
  %6 = ptrtoint ptr %bcn_rsn_ie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bcn_rsn_ie, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %cond.end.cond.end8_crit_edge, label %cond.true3

cond.end.cond.end8_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end8

cond.true3:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv6 = zext i8 %9 to i32
  br label %cond.end8

cond.end8:                                        ; preds = %cond.true3, %cond.end.cond.end8_crit_edge
  %cond9 = phi i32 [ %conv6, %cond.true3 ], [ 0, %cond.end.cond.end8_crit_edge ]
  %sec_info = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60
  %wep_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %10 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wep_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  %cond12 = select i1 %tobool11.not, ptr @.str.56, ptr @.str.55
  %12 = ptrtoint ptr %sec_info to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sec_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.56, ptr @.str.55
  %wpa2_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 1
  %14 = ptrtoint ptr %wpa2_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wpa2_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  %cond20 = select i1 %tobool19.not, ptr @.str.56, ptr @.str.55
  %encryption_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 7
  %16 = ptrtoint ptr %encryption_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %encryption_mode, align 4
  %privacy = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 3
  %18 = ptrtoint ptr %privacy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %privacy, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef %log_level, ptr noundef nonnull @.str.54, ptr noundef %func, ptr noundef %desc, i32 noundef %cond, i32 noundef %cond9, ptr noundef nonnull %cond12, ptr noundef nonnull %cond16, ptr noundef nonnull %cond20, i32 noundef %17, i32 noundef %19) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_update_curr_bss_params(ptr noundef %priv, ptr noundef %bss) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mwifiex_fill_new_bss_desc(ptr noundef %priv, ptr noundef %bss, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @mwifiex_check_network_compatibility(ptr noundef %priv, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.done_crit_edge

if.end4.done_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %curr_bcn_buf_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 102
  tail call void @_raw_spin_lock_bh(ptr noundef %curr_bcn_buf_lock) #13
  %curr_bss_params = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  %1 = call ptr @memcpy(ptr %curr_bss_params, ptr %call7.i.i, i32 256)
  tail call void @mwifiex_save_curr_bcn(ptr noundef %priv)
  tail call void @_raw_spin_unlock_bh(ptr noundef %curr_bcn_buf_lock) #13
  br label %done

done:                                             ; preds = %if.end8, %if.end4.done_crit_edge, %if.end.done_crit_edge
  %beacon_buf = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %call7.i.i, i32 0, i32 55
  %2 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %beacon_buf, align 8
  tail call void @kfree(ptr noundef %3) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_save_hidden_ssid_channels(ptr noundef %priv, ptr noundef %bss) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mwifiex_fill_new_bss_desc(ptr noundef %priv, ptr noundef %bss, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end4:                                          ; preds = %if.end
  %ssid = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %call7.i.i, i32 0, i32 1
  %ssid_len.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %call7.i.i, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ssid_len.i, align 2
  %conv.i = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp6.not.i = icmp eq i8 %2, 0
  br i1 %cmp6.not.i, label %if.end4.if.then6_crit_edge, label %for.body.i.preheader

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

for.body.i.preheader:                             ; preds = %if.end4
  %3 = ptrtoint ptr %ssid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ssid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i3 = icmp eq i8 %4, 0
  br i1 %tobool.not.i3, label %for.body.i.preheader.for.cond.i_crit_edge, label %for.body.i.preheader.done_crit_edge

for.body.i.preheader.done_crit_edge:              ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %idx.07.i4 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %idx.07.i4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.mwifiex_is_hidden_ssid.exit_crit_edge, label %for.body.i

for.cond.i.mwifiex_is_hidden_ssid.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_is_hidden_ssid.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr [32 x i8], ptr %ssid, i32 0, i32 %inc.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.mwifiex_is_hidden_ssid.exit_crit_edge

for.body.i.mwifiex_is_hidden_ssid.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_is_hidden_ssid.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

mwifiex_is_hidden_ssid.exit:                      ; preds = %for.body.i.mwifiex_is_hidden_ssid.exit_crit_edge, %for.cond.i.mwifiex_is_hidden_ssid.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp.i.le = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i.le, label %mwifiex_is_hidden_ssid.exit.done_crit_edge, label %mwifiex_is_hidden_ssid.exit.if.then6_crit_edge

mwifiex_is_hidden_ssid.exit.if.then6_crit_edge:   ; preds = %mwifiex_is_hidden_ssid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

mwifiex_is_hidden_ssid.exit.done_crit_edge:       ; preds = %mwifiex_is_hidden_ssid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then6:                                         ; preds = %mwifiex_is_hidden_ssid.exit.if.then6_crit_edge, %if.end4.if.then6_crit_edge
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 1073741824, ptr noundef nonnull @.str.69) #13
  %9 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bss, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hw_value, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then6
  %chid.06 = phi i32 [ 0, %if.then6 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 161, i32 %chid.06
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 4
  %15 = zext i8 %14 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %15)
  %cmp8 = icmp eq i16 %12, %15
  br i1 %cmp8, label %for.body.done_crit_edge, label %if.end11

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end11:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %if.then16, label %for.inc

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %conv19 = trunc i16 %12 to i8
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv19, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bss, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %conv24 = trunc i32 %20 to i8
  %radio_type = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 161, i32 %chid.06, i32 1
  %21 = ptrtoint ptr %radio_type to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv24, ptr %radio_type, align 1
  %scan_type = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 161, i32 %chid.06, i32 2
  %22 = ptrtoint ptr %scan_type to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %scan_type, align 2
  br label %done

for.inc:                                          ; preds = %if.end11
  %inc = add nuw nsw i32 %chid.06, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %for.inc.done_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

done:                                             ; preds = %for.inc.done_crit_edge, %if.then16, %for.body.done_crit_edge, %mwifiex_is_hidden_ssid.exit.done_crit_edge, %for.body.i.preheader.done_crit_edge, %if.end.done_crit_edge
  %beacon_buf = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %call7.i.i, i32 0, i32 55
  %23 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %beacon_buf, align 8
  tail call void @kfree(ptr noundef %24) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_fill_new_bss_desc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_complete_cmd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !98, !99, !101, !103, !104, !105, !106, !108, !109, !111, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !158, !159, !160, !162, !164}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1243, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1255, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1507, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1513, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1520, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1566, i32 5}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1641, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2084, i32 5}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2143, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2154, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2160, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2392, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mwifiex_cmd_802_11_bg_scan_config.__UNIQUE_ID_ddebug489, !23, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2436, i32 3}
!30 = !{ptr @mwifiex_cmd_802_11_bg_scan_config.__UNIQUE_ID_ddebug490, !29, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2477, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mwifiex_stop_bg_scan.__UNIQUE_ID_ddebug491, !32, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2558, i32 2}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2571, i32 4}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2598, i32 5}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2637, i32 3}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2645, i32 2}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2648, i32 2}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2658, i32 4}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2685, i32 5}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2727, i32 4}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2837, i32 3}
!56 = !{ptr @__func__.mwifiex_request_scan, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2888, i32 5}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2936, i32 2}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 930, i32 9}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 939, i32 4}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 964, i32 4}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1024, i32 3}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1067, i32 3}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1118, i32 4}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1122, i32 3}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 634, i32 3}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 679, i32 4}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 753, i32 4}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 595, i32 2}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 365, i32 3}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 371, i32 3}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 377, i32 3}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 388, i32 4}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 402, i32 6}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 439, i32 3}
!95 = !{ptr @__func__.mwifiex_is_network_compatible, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 268, i32 3}
!98 = !{ptr @__func__.mwifiex_is_bss_wpa, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mwifiex_wpa_oui, !100, !"mwifiex_wpa_oui", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 70, i32 11}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 139, i32 2}
!103 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mwifiex_search_oui_in_ie.__UNIQUE_ID_ddebug488, !102, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!105 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 289, i32 3}
!108 = !{ptr @__func__.mwifiex_is_bss_wpa2, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @mwifiex_rsn_oui, !110, !"mwifiex_rsn_oui", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 74, i32 11}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 326, i32 3}
!113 = !{ptr @__func__.mwifiex_is_bss_dynamic_wep, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 85, i32 8}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 91, i32 37}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 91, i32 43}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1155, i32 2}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1165, i32 4}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1173, i32 5}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1180, i32 5}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1187, i32 5}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1803, i32 3}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1831, i32 2}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1838, i32 2}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1849, i32 4}
!138 = !{ptr @__func__.mwifiex_parse_single_response_buf, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1870, i32 4}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1905, i32 6}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1916, i32 3}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1685, i32 3}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2013, i32 4}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2020, i32 4}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1955, i32 3}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1984, i32 3}
!155 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @mwifiex_active_scan_req_for_passive_chan._entry, !154, !"_entry", i1 false, i1 false}
!159 = !{ptr @mwifiex_active_scan_req_for_passive_chan._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2517, i32 4}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 2531, i32 3}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/marvell/mwifiex/scan.c", i32 1930, i32 4}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{!"auto-init"}
!176 = !{i8 0, i8 2}
!177 = !{i64 2148438841, i64 2148438846, i64 2148438859, i64 2148438903, i64 2148438937, i64 2148438958}
