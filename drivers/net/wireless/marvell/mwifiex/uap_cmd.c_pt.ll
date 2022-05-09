; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/uap_cmd.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/uap_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cfg80211_ap_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, i32, i32, ptr, i32, i32, %struct.cfg80211_crypto_settings, i8, i32, i32, i32, i8, i8, ptr, i8, %struct.cfg80211_bitrate_mask, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.cfg80211_fils_discovery, %struct.cfg80211_unsol_bcast_probe_resp, %struct.cfg80211_mbssid_config }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.159] }
%struct.anon.159 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.cfg80211_fils_discovery = type { i32, i32, i32, ptr }
%struct.cfg80211_unsol_bcast_probe_resp = type { i32, i32, ptr }
%struct.cfg80211_mbssid_config = type { ptr, i8, i8 }
%struct.mwifiex_uap_bss_param = type <{ i8, i8, i16, i16, i8, i8, %struct.mwifiex_802_11_ssid, i8, i8, i8, i8, i16, i16, i16, i16, i16, [2 x i8], %struct.wpa_param, [4 x %struct.wep_key], %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, [14 x i8], i32, i32, i8, i8, %struct.mwifiex_types_wmm_info, [2 x i8] }>
%struct.mwifiex_802_11_ssid = type { i32, [32 x i8] }
%struct.wpa_param = type { i8, i8, i8, i32, [64 x i8] }
%struct.wep_key = type { i8, i8, i16, [13 x i8] }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.mwifiex_types_wmm_info = type { [4 x i8], i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
%struct.mwifiex_private = type <{ ptr, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i32, i8, [3 x i8], ptr, %struct.net_device_stats, i32, i32, i32, i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, [18 x i16], [2 x i8], i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i8], ptr, %struct.cfg80211_ssid, [6 x i8], i8, %struct.mwifiex_current_bss_params, i16, i8, i8, i16, i16, i8, i8, i8, i8, %struct.mwifiex_802_11_security, [4 x %struct.mwifiex_wep_key], i16, [256 x i8], i16, i8, %struct.host_cmd_ds_802_11_key_material, %struct.host_cmd_ds_802_11_key_material_v2, [256 x i8], i8, i16, ptr, i16, i8, i8, i8, [3 x i8], %struct.mwifiex_wmm_desc, [4 x %struct.atomic_t], %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, [8 x %struct.mwifiex_tx_aggr], %struct.mwifiex_add_ba_param, [8 x i16], [8 x i8], %struct.list_head, %struct.spinlock, [500 x i8], i32, [256 x i8], i8, i8, [8 x %struct.mwifiex_vendor_spec_cfg_ie], [256 x i8], i8, i8, ptr, i32, %struct.spinlock, %struct.wireless_dev, %struct.mwifiex_chan_freq_power, i32, [128 x i8], ptr, i16, [2 x i8], %struct.mutex, ptr, [6 x i8], %struct.wps, i8, i32, i32, i8, i8, %struct.mwifiex_ds_misc_subsc_evt, [16 x %struct.mwifiex_ie], i16, i16, i16, i16, i8, i8, i32, [4 x i8], %struct.mwifiex_roc_cfg, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.mwifiex_uap_bss_param, %struct.cfg80211_chan_def, ptr, %struct.sk_buff_head, i8, [3 x i8], %struct.timer_list, i8, [3 x i8], %struct.idr, %struct.spinlock, ptr, %struct.cfg80211_chan_def, ptr, %struct.delayed_work, %struct.timer_list, ptr, %struct.delayed_work, %struct.cfg80211_beacon_data, %struct.mwifiex_11h_intf_state, [2 x i8], %struct.mwifiex_ds_mem_rw, %struct.sk_buff_head, [50 x %struct.mwifiex_user_scan_chan], i8, i8, [2 x i8] }>
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.mwifiex_current_bss_params = type { %struct.mwifiex_bssdescriptor, i8, i8, i8, i32, [14 x i8] }
%struct.mwifiex_bssdescriptor = type <{ [6 x i8], %struct.cfg80211_ssid, i8, i32, i32, i32, i32, i16, i8, i8, i32, [14 x i8], [14 x i8], i16, [2 x i8], i64, i64, %union.ieee_types_phy_param_set, %union.ieee_types_ss_param_set, i8, i16, %struct.ieee_types_wmm_parameter, i8, [3 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, i8, i8, ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i32, i8, i8, i8, [5 x i8] }>
%union.ieee_types_phy_param_set = type { %struct.ieee_types_fh_param_set }
%struct.ieee_types_fh_param_set = type <{ i8, i8, i16, i8, i8, i8 }>
%union.ieee_types_ss_param_set = type { %struct.ieee_types_cf_param_set }
%struct.ieee_types_cf_param_set = type { i8, i8, i8, i8, i16, i16 }
%struct.ieee_types_wmm_parameter = type { %struct.ieee_types_vendor_header, i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.152 }
%struct.anon.152 = type { [3 x i8], i8 }
%struct.mwifiex_802_11_security = type { i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.mwifiex_wep_key = type { i32, i32, i32, [16 x i8] }
%struct.host_cmd_ds_802_11_key_material = type { i16, %struct.mwifiex_ie_type_key_param_set }
%struct.mwifiex_ie_type_key_param_set = type { i16, i16, i16, i16, i16, [50 x i8] }
%struct.host_cmd_ds_802_11_key_material_v2 = type { i16, %struct.mwifiex_ie_type_key_param_set_v2 }
%struct.mwifiex_ie_type_key_param_set_v2 = type { i16, i16, [6 x i8], i8, i8, i16, %union.anon.153 }
%union.anon.153 = type { %struct.mwifiex_wapi_param }
%struct.mwifiex_wapi_param = type { [16 x i8], i16, [32 x i8] }
%struct.mwifiex_wmm_desc = type { [8 x %struct.mwifiex_tid_tbl], [8 x i32], [8 x i32], %struct.spinlock, [4 x %struct.mwifiex_wmm_ac_status], [4 x i8], i32, [4 x i8], [8 x i32], %struct.atomic_t, %struct.atomic_t }
%struct.mwifiex_tid_tbl = type { %struct.list_head }
%struct.mwifiex_wmm_ac_status = type { i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.mwifiex_tx_aggr = type { i8, i8, i8 }
%struct.mwifiex_add_ba_param = type { i32, i32, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mwifiex_vendor_spec_cfg_ie = type { i16, i16, [256 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.143, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.143 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_bss_selection = type { i32, %union.anon.144 }
%union.anon.144 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mwifiex_chan_freq_power = type { i16, i32, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wps = type { i8 }
%struct.mwifiex_ds_misc_subsc_evt = type { i16, i16, %struct.subsc_evt_cfg, %struct.subsc_evt_cfg }
%struct.subsc_evt_cfg = type { i8, i8 }
%struct.mwifiex_ie = type { i16, i16, i16, [256 x i8] }
%struct.mwifiex_roc_cfg = type { i64, %struct.ieee80211_channel }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.mwifiex_802_11d_domain_reg = type { [3 x i8], i8, [83 x %struct.ieee80211_country_ie_triplet] }
%struct.ieee80211_country_ie_triplet = type { %union.anon.149 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i8, i8, i8 }
%struct.mwifiex_sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.mwifiex_sleep_period = type { i16, i16 }
%struct.mwifiex_hs_config_param = type <{ i32, i8, i8 }>
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.mwifiex_11ac_vht_cfg = type { i8, i8, i32, i32, i32 }
%struct.ieee_types_header = type { i8, i8 }
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.160 }
%union.anon.160 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.host_cmd_tlv_bcast_ssid = type <{ %struct.mwifiex_ie_types_header, i8 }>
%struct.host_cmd_tlv_rates = type { %struct.mwifiex_ie_types_header, [0 x i8] }
%struct.host_cmd_tlv_channel_band = type { %struct.mwifiex_ie_types_header, i8, i8 }
%struct.host_cmd_tlv_beacon_period = type { %struct.mwifiex_ie_types_header, i16 }
%struct.host_cmd_tlv_dtim_period = type <{ %struct.mwifiex_ie_types_header, i8 }>
%struct.host_cmd_tlv_rts_threshold = type { %struct.mwifiex_ie_types_header, i16 }
%struct.host_cmd_tlv_frag_threshold = type { %struct.mwifiex_ie_types_header, i16 }
%struct.host_cmd_tlv_retry_limit = type <{ %struct.mwifiex_ie_types_header, i8 }>
%struct.host_cmd_tlv_akmp = type { %struct.mwifiex_ie_types_header, i16, i16 }
%struct.host_cmd_tlv_pwk_cipher = type { %struct.mwifiex_ie_types_header, i16, i8, i8 }
%struct.host_cmd_tlv_gwk_cipher = type { %struct.mwifiex_ie_types_header, i8, i8 }
%struct.host_cmd_tlv_passphrase = type { %struct.mwifiex_ie_types_header, [0 x i8] }
%struct.host_cmd_tlv_wep_key = type <{ %struct.mwifiex_ie_types_header, i8, i8, [1 x i8] }>
%struct.host_cmd_tlv_auth_type = type <{ %struct.mwifiex_ie_types_header, i8 }>
%struct.host_cmd_tlv_encrypt_protocol = type { %struct.mwifiex_ie_types_header, i16 }
%struct.mwifiex_ie_types_htcap = type { %struct.mwifiex_ie_types_header, %struct.ieee80211_ht_cap }
%struct.mwifiex_ie_types_wmmcap = type { %struct.mwifiex_ie_types_header, %struct.mwifiex_types_wmm_info }
%struct.host_cmd_tlv_ageout_timer = type { %struct.mwifiex_ie_types_header, i32 }
%struct.host_cmd_tlv_power_constraint = type <{ %struct.mwifiex_ie_types_header, i8 }>
%struct.mwifiex_ie_list = type { i16, i16, [16 x %struct.mwifiex_ie] }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"11D: failed to enable 11D\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PREP_CMD: unknown cmd %#x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown channel width: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set AP configuration\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to start the BSS\0A\00", [39 x i8] zeroinitializer }, align 32
@switch.table.mwifiex_set_secure_params = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 1, i16 255, i16 128], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027074]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.8 = internal global [9 x i64] [i64 7, i64 16, i64 175, i64 176, i64 177, i64 178, i64 179, i64 181, i64 221]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 5, i64 13]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 5, i64 13]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 5, i64 13]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 5, i64 13]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 255]
@__sancov_gen_cov_switch_values.15 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 471, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 808, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 864, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 884, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [50 x i8] c"../drivers/net/wireless/marvell/mwifiex/uap_cmd.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 891, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [39 x i8] c"switch.table.mwifiex_set_secure_params\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @switch.table.mwifiex_set_secure_params], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mwifiex_set_secure_params to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_set_secure_params(ptr nocapture noundef %priv, ptr noundef %bss_config, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  %wep_key.sroa.8 = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wep_key.sroa.8)
  %privacy = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 8
  %0 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %privacy, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %protocol = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 13
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %protocol, align 4
  %key_mgmt = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 14
  %3 = ptrtoint ptr %key_mgmt to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 4, ptr %key_mgmt, align 2
  %length = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 17, i32 3
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %length, align 4
  %sec_info = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60
  %wep_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %5 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %wep_enabled, align 4
  %6 = ptrtoint ptr %sec_info to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %sec_info, align 4
  %wpa2_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 1
  %7 = ptrtoint ptr %wpa2_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %wpa2_enabled, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %auth_type = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 9
  %8 = ptrtoint ptr %auth_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %auth_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.mwifiex_set_secure_params, i32 0, i32 %9
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %11)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %.sink246 = phi i16 [ %switch.load, %switch.lookup ], [ 255, %if.end.sw.epilog_crit_edge ]
  %auth_mode7 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 12
  %12 = ptrtoint ptr %auth_mode7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %.sink246, ptr %auth_mode7, align 2
  %key_mgmt_operation = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 15
  %13 = ptrtoint ptr %key_mgmt_operation to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %key_mgmt_operation, align 4
  %15 = or i16 %14, 3
  store i16 %15, ptr %key_mgmt_operation, align 4
  %crypto = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 7
  %n_akm_suites = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 7, i32 4
  %16 = ptrtoint ptr %n_akm_suites to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_akm_suites, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp234 = icmp sgt i32 %17, 0
  br i1 %cmp234, label %for.body.lr.ph, label %sw.epilog.for.cond51.preheader_crit_edge

sw.epilog.for.cond51.preheader_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond51.preheader

for.body.lr.ph:                                   ; preds = %sw.epilog
  %protocol35 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 13
  %key_mgmt36 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 14
  br label %for.body

for.cond51.preheader:                             ; preds = %for.inc.for.cond51.preheader_crit_edge, %sw.epilog.for.cond51.preheader_crit_edge
  %n_ciphers_pairwise = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %n_ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_ciphers_pairwise, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp53236 = icmp sgt i32 %19, 0
  br i1 %cmp53236, label %for.body55.lr.ph, label %for.cond51.preheader.for.end107_crit_edge

for.cond51.preheader.for.end107_crit_edge:        ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end107

for.body55.lr.ph:                                 ; preds = %for.cond51.preheader
  %wpa_cfg65 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 17
  %pairwise_cipher_wpa2 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 17, i32 1
  br label %for.body55

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0235 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 7, i32 5, i32 %i.0235
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %for.body.for.inc_crit_edge [
    i32 1027073, label %sw.bb11
    i32 1027074, label %sw.bb29
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb11:                                          ; preds = %for.body
  %23 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %crypto, align 4
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %sw.bb11.if.end17_crit_edge, label %if.then14

sw.bb11.if.end17_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %protocol35 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 8, ptr %protocol35, align 4
  %26 = ptrtoint ptr %key_mgmt36 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %key_mgmt36, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %sw.bb11.if.end17_crit_edge
  %27 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %crypto, align 4
  %and20 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end17.for.inc_crit_edge, label %if.end17.for.inc.sink.split_crit_edge

if.end17.for.inc.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb29:                                          ; preds = %for.body
  %29 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %crypto, align 4
  %and32 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %sw.bb29.if.end37_crit_edge, label %if.then34

sw.bb29.if.end37_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then34:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %protocol35 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 8, ptr %protocol35, align 4
  %32 = ptrtoint ptr %key_mgmt36 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2, ptr %key_mgmt36, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %sw.bb29.if.end37_crit_edge
  %33 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %crypto, align 4
  %and40 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end37.for.inc_crit_edge, label %if.end37.for.inc.sink.split_crit_edge

if.end37.for.inc.sink.split_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc.sink.split:                               ; preds = %if.end37.for.inc.sink.split_crit_edge, %if.end17.for.inc.sink.split_crit_edge
  %.sink247 = phi i16 [ 1, %if.end17.for.inc.sink.split_crit_edge ], [ 2, %if.end37.for.inc.sink.split_crit_edge ]
  %35 = ptrtoint ptr %protocol35 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %protocol35, align 4
  %37 = or i16 %36, 32
  store i16 %37, ptr %protocol35, align 4
  %38 = ptrtoint ptr %key_mgmt36 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %.sink247, ptr %key_mgmt36, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end37.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0235, 1
  %39 = ptrtoint ptr %n_akm_suites to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_akm_suites, align 4
  %cmp = icmp slt i32 %inc, %40
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond51.preheader_crit_edge

for.inc.for.cond51.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond51.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body55:                                       ; preds = %for.inc105.for.body55_crit_edge, %for.body55.lr.ph
  %i.1237 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc106, %for.inc105.for.body55_crit_edge ]
  %arrayidx57 = getelementptr %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 7, i32 3, i32 %i.1237
  %41 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx57, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %42, label %for.body55.for.inc105_crit_edge [
    i32 1027076, label %sw.bb80
    i32 1027074, label %sw.bb59
  ]

for.body55.for.inc105_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc105

sw.bb59:                                          ; preds = %for.body55
  %44 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %crypto, align 4
  %and62 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %sw.bb59.if.end69_crit_edge, label %if.then64

sw.bb59.if.end69_crit_edge:                       ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then64:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %wpa_cfg65 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %wpa_cfg65, align 4
  %48 = or i8 %47, 4
  store i8 %48, ptr %wpa_cfg65, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %sw.bb59.if.end69_crit_edge
  %49 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %crypto, align 4
  %and72 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end69.for.inc105_crit_edge, label %if.end69.for.inc105.sink.split_crit_edge

if.end69.for.inc105.sink.split_crit_edge:         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc105.sink.split

if.end69.for.inc105_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc105

sw.bb80:                                          ; preds = %for.body55
  %51 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %crypto, align 4
  %and83 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %sw.bb80.if.end91_crit_edge, label %if.then85

sw.bb80.if.end91_crit_edge:                       ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.then85:                                        ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %wpa_cfg65 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %wpa_cfg65, align 4
  %55 = or i8 %54, 8
  store i8 %55, ptr %wpa_cfg65, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then85, %sw.bb80.if.end91_crit_edge
  %56 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %crypto, align 4
  %and94 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end91.for.inc105_crit_edge, label %if.end91.for.inc105.sink.split_crit_edge

if.end91.for.inc105.sink.split_crit_edge:         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc105.sink.split

if.end91.for.inc105_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc105

for.inc105.sink.split:                            ; preds = %if.end91.for.inc105.sink.split_crit_edge, %if.end69.for.inc105.sink.split_crit_edge
  %.sink252 = phi i8 [ 4, %if.end69.for.inc105.sink.split_crit_edge ], [ 8, %if.end91.for.inc105.sink.split_crit_edge ]
  %58 = ptrtoint ptr %pairwise_cipher_wpa2 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pairwise_cipher_wpa2, align 1
  %60 = or i8 %59, %.sink252
  store i8 %60, ptr %pairwise_cipher_wpa2, align 1
  br label %for.inc105

for.inc105:                                       ; preds = %for.inc105.sink.split, %if.end91.for.inc105_crit_edge, %if.end69.for.inc105_crit_edge, %for.body55.for.inc105_crit_edge
  %inc106 = add nuw nsw i32 %i.1237, 1
  %61 = ptrtoint ptr %n_ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %n_ciphers_pairwise, align 4
  %cmp53 = icmp slt i32 %inc106, %62
  br i1 %cmp53, label %for.inc105.for.body55_crit_edge, label %for.inc105.for.end107_crit_edge

for.inc105.for.end107_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end107

for.inc105.for.body55_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body55

for.end107:                                       ; preds = %for.inc105.for.end107_crit_edge, %for.cond51.preheader.for.end107_crit_edge
  %cipher_group = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 7, i32 1
  %63 = ptrtoint ptr %cipher_group to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cipher_group, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %64, label %for.end107.cleanup_crit_edge [
    i32 1027073, label %for.end107.sw.bb109_crit_edge
    i32 1027077, label %for.end107.sw.bb109_crit_edge253
    i32 1027074, label %sw.bb147
    i32 1027076, label %sw.bb149
  ]

for.end107.sw.bb109_crit_edge253:                 ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb109

for.end107.sw.bb109_crit_edge:                    ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb109

for.end107.cleanup_crit_edge:                     ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb109:                                         ; preds = %for.end107.sw.bb109_crit_edge, %for.end107.sw.bb109_crit_edge253
  %wep_enabled111 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %66 = ptrtoint ptr %wep_enabled111 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %wep_enabled111, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool112.not = icmp eq i8 %67, 0
  br i1 %tobool112.not, label %sw.bb109.cleanup_crit_edge, label %if.then113

sw.bb109.cleanup_crit_edge:                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then113:                                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #8
  %protocol114 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 13
  %68 = ptrtoint ptr %protocol114 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 2, ptr %protocol114, align 4
  %key_mgmt115 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 14
  %69 = ptrtoint ptr %key_mgmt115 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 4, ptr %key_mgmt115, align 2
  %length117 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 17, i32 3
  %70 = ptrtoint ptr %length117 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %length117, align 4
  %wep_key_curr_index = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 62
  %wep_key.sroa.5.0.arrayidx123.sroa_idx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 0, i32 2
  %71 = ptrtoint ptr %wep_key.sroa.5.0.arrayidx123.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %71)
  %wep_key.sroa.5.0.copyload = load i32, ptr %wep_key.sroa.5.0.arrayidx123.sroa_idx, align 4
  %wep_key.sroa.8.0.arrayidx123.sroa_idx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 0, i32 3
  %72 = call ptr @memcpy(ptr %wep_key.sroa.8, ptr %wep_key.sroa.8.0.arrayidx123.sroa_idx, i32 16)
  %arrayidx125 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 0
  %73 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx125, align 2
  %74 = ptrtoint ptr %wep_key_curr_index to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %wep_key_curr_index, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %cmp127 = icmp eq i16 %75, 0
  %spec.select = zext i1 %cmp127 to i8
  %76 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %spec.select, ptr %76, align 1
  %conv136 = trunc i32 %wep_key.sroa.5.0.copyload to i16
  %length139 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 0, i32 2
  %78 = ptrtoint ptr %length139 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv136, ptr %length139, align 2
  %key = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 0, i32 3
  %79 = call ptr @memcpy(ptr %key, ptr %wep_key.sroa.8, i32 %wep_key.sroa.5.0.copyload)
  %wep_key.sroa.5.0.arrayidx123.sroa_idx.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 1, i32 2
  %80 = ptrtoint ptr %wep_key.sroa.5.0.arrayidx123.sroa_idx.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %wep_key.sroa.5.0.copyload.1 = load i32, ptr %wep_key.sroa.5.0.arrayidx123.sroa_idx.1, align 4
  %wep_key.sroa.8.0.arrayidx123.sroa_idx.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 1, i32 3
  %81 = call ptr @memcpy(ptr %wep_key.sroa.8, ptr %wep_key.sroa.8.0.arrayidx123.sroa_idx.1, i32 16)
  %arrayidx125.1 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 1
  %82 = ptrtoint ptr %arrayidx125.1 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %arrayidx125.1, align 2
  %83 = ptrtoint ptr %wep_key_curr_index to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %wep_key_curr_index, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %84)
  %cmp127.1 = icmp eq i16 %84, 1
  %.sink243 = zext i1 %cmp127.1 to i8
  %85 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 1, i32 1
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %.sink243, ptr %85, align 1
  %conv136.1 = trunc i32 %wep_key.sroa.5.0.copyload.1 to i16
  %length139.1 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 1, i32 2
  %87 = ptrtoint ptr %length139.1 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv136.1, ptr %length139.1, align 2
  %key.1 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 1, i32 3
  %88 = call ptr @memcpy(ptr %key.1, ptr %wep_key.sroa.8, i32 %wep_key.sroa.5.0.copyload.1)
  %wep_key.sroa.5.0.arrayidx123.sroa_idx.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 2, i32 2
  %89 = ptrtoint ptr %wep_key.sroa.5.0.arrayidx123.sroa_idx.2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %wep_key.sroa.5.0.copyload.2 = load i32, ptr %wep_key.sroa.5.0.arrayidx123.sroa_idx.2, align 4
  %wep_key.sroa.8.0.arrayidx123.sroa_idx.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 2, i32 3
  %90 = call ptr @memcpy(ptr %wep_key.sroa.8, ptr %wep_key.sroa.8.0.arrayidx123.sroa_idx.2, i32 16)
  %arrayidx125.2 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 2
  %91 = ptrtoint ptr %arrayidx125.2 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 2, ptr %arrayidx125.2, align 2
  %92 = ptrtoint ptr %wep_key_curr_index to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %wep_key_curr_index, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %93)
  %cmp127.2 = icmp eq i16 %93, 2
  %.sink244 = zext i1 %cmp127.2 to i8
  %94 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 2, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %.sink244, ptr %94, align 1
  %conv136.2 = trunc i32 %wep_key.sroa.5.0.copyload.2 to i16
  %length139.2 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 2, i32 2
  %96 = ptrtoint ptr %length139.2 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv136.2, ptr %length139.2, align 2
  %key.2 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 2, i32 3
  %97 = call ptr @memcpy(ptr %key.2, ptr %wep_key.sroa.8, i32 %wep_key.sroa.5.0.copyload.2)
  %wep_key.sroa.5.0.arrayidx123.sroa_idx.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 3, i32 2
  %98 = ptrtoint ptr %wep_key.sroa.5.0.arrayidx123.sroa_idx.3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %wep_key.sroa.5.0.copyload.3 = load i32, ptr %wep_key.sroa.5.0.arrayidx123.sroa_idx.3, align 4
  %wep_key.sroa.8.0.arrayidx123.sroa_idx.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 3, i32 3
  %99 = call ptr @memcpy(ptr %wep_key.sroa.8, ptr %wep_key.sroa.8.0.arrayidx123.sroa_idx.3, i32 16)
  %arrayidx125.3 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 3
  %100 = ptrtoint ptr %arrayidx125.3 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 3, ptr %arrayidx125.3, align 2
  %101 = ptrtoint ptr %wep_key_curr_index to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %wep_key_curr_index, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %102)
  %cmp127.3 = icmp eq i16 %102, 3
  %.sink245 = zext i1 %cmp127.3 to i8
  %103 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 3, i32 1
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %.sink245, ptr %103, align 1
  %conv136.3 = trunc i32 %wep_key.sroa.5.0.copyload.3 to i16
  %length139.3 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 3, i32 2
  %105 = ptrtoint ptr %length139.3 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv136.3, ptr %length139.3, align 2
  %key.3 = getelementptr %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 18, i32 3, i32 3
  %106 = call ptr @memcpy(ptr %key.3, ptr %wep_key.sroa.8, i32 %wep_key.sroa.5.0.copyload.3)
  br label %cleanup

sw.bb147:                                         ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #8
  %group_cipher = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 17, i32 2
  %107 = ptrtoint ptr %group_cipher to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 4, ptr %group_cipher, align 2
  br label %cleanup

sw.bb149:                                         ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #8
  %group_cipher151 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_config, i32 0, i32 17, i32 2
  %108 = ptrtoint ptr %group_cipher151 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 8, ptr %group_cipher151, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb149, %sw.bb147, %if.then113, %sw.bb109.cleanup_crit_edge, %for.end107.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wep_key.sroa.8)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_set_ht_params(ptr nocapture noundef %priv, ptr nocapture noundef writeonly %bss_cfg, ptr nocapture noundef readonly %params) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail, align 4
  %tail_len = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 1, i32 11
  %6 = ptrtoint ptr %tail_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail_len, align 4
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 45, ptr noundef %5, i32 noundef %7, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %tobool2.not = icmp eq ptr %call.i.i, null
  %ht_cap4 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_cfg, i32 0, i32 19
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 2
  %8 = call ptr @memcpy(ptr %ht_cap4, ptr %add.ptr, i32 26)
  %ap_11n_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 125
  %9 = ptrtoint ptr %ap_11n_enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %ap_11n_enabled, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = call ptr @memset(ptr %ht_cap4, i32 0, i32 26)
  %11 = ptrtoint ptr %ht_cap4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 3089, ptr %ht_cap4, align 4
  %ampdu_params_info = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_cfg, i32 0, i32 19, i32 1
  %12 = ptrtoint ptr %ampdu_params_info to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %ampdu_params_info, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_set_vht_params(ptr nocapture noundef writeonly %priv, ptr nocapture noundef writeonly %bss_cfg, ptr nocapture noundef readonly %params) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tail = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail, align 4
  %tail_len = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 1, i32 11
  %2 = ptrtoint ptr %tail_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail_len, align 4
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext -65, ptr noundef %1, i32 noundef %3, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vht_cap = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_cfg, i32 0, i32 20
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 2
  %4 = call ptr @memcpy(ptr %vht_cap, ptr %add.ptr, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i8 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 126
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %5, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_set_tpc_params(ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %bss_cfg, ptr nocapture noundef readonly %params) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tail = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail, align 4
  %tail_len = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 1, i32 11
  %2 = ptrtoint ptr %tail_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail_len, align 4
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 34, ptr noundef %1, i32 noundef %3, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 2
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i8 [ %5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %6 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_cfg, i32 0, i32 25
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %6, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_set_vht_width(ptr noundef %priv, i32 noundef %width, i1 noundef zeroext %ap_11ac_enable) local_unnamed_addr #2 align 64 {
entry:
  %vht_cfg = alloca %struct.mwifiex_11ac_vht_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vht_cfg) #6
  %2 = ptrtoint ptr %vht_cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %vht_cfg, align 4
  store i8 2, ptr %vht_cfg, align 4
  %hw_dot_11ac_dev_cap = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 129
  %3 = ptrtoint ptr %hw_dot_11ac_dev_cap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_dot_11ac_dev_cap, align 4
  %cap_info = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %vht_cfg, i32 0, i32 2
  %5 = ptrtoint ptr %cap_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cap_info, align 4
  %spec.select = select i1 %ap_11ac_enable, i32 65530, i32 65535
  %6 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %vht_cfg, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %vht_cfg, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %8, align 4
  %misc_config = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %vht_cfg, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %width)
  %cmp = icmp ugt i32 %width, 2
  %or.cond = and i1 %cmp, %ap_11ac_enable
  %spec.store.select = select i1 %or.cond, i8 7, i8 3
  %10 = ptrtoint ptr %misc_config to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.store.select, ptr %misc_config, align 1
  %call = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 274, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %vht_cfg, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vht_cfg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_set_uap_rates(ptr nocapture noundef writeonly %bss_cfg, ptr nocapture noundef readonly %params) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %beacon = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %beacon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %beacon, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %head_len = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %head_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head_len, align 4
  %sub = add i32 %3, -36
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 1, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  %len2 = getelementptr inbounds %struct.ieee_types_header, ptr %call.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %len2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %5)
  %cmp = icmp ugt i8 %5, 14
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %5 to i32
  %rates = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_cfg, i32 0, i32 21
  %add.ptr5 = getelementptr %struct.ieee_types_header, ptr %call.i.i, i32 1
  %6 = call ptr @memcpy(ptr %rates, ptr %add.ptr5, i32 %conv)
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len2, align 1
  %phi.cast = zext i8 %8 to i32
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %rate_len.0 = phi i32 [ %phi.cast, %if.end ], [ 0, %entry.if.end9_crit_edge ]
  %tail = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail, align 4
  %tail_len = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 1, i32 11
  %11 = ptrtoint ptr %tail_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail_len, align 4
  %call.i.i49 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 50, ptr noundef %10, i32 noundef %12, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %tobool13.not = icmp eq ptr %call.i.i49, null
  br i1 %tobool13.not, label %if.end9.cleanup_crit_edge, label %if.then14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.end9
  %len15 = getelementptr inbounds %struct.ieee_types_header, ptr %call.i.i49, i32 0, i32 1
  %13 = ptrtoint ptr %len15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %len15, align 1
  %conv16 = zext i8 %14 to i32
  %sub18 = sub nsw i32 14, %rate_len.0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18, i32 %conv16)
  %cmp19 = icmp slt i32 %sub18, %conv16
  br i1 %cmp19, label %if.then14.cleanup_crit_edge, label %if.end22

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %rates23 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_cfg, i32 0, i32 21
  %add.ptr26 = getelementptr i8, ptr %rates23, i32 %rate_len.0
  %add.ptr27 = getelementptr %struct.ieee_types_header, ptr %call.i.i49, i32 1
  %15 = call ptr @memcpy(ptr %add.ptr26, ptr %add.ptr27, i32 %conv16)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mwifiex_set_sys_config_invalid_data(ptr nocapture noundef writeonly %config) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bcast_ssid_ctl = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %config, i32 0, i32 7
  %0 = ptrtoint ptr %bcast_ssid_ctl to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 127, ptr %bcast_ssid_ctl, align 4
  %radio_ctl = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %config, i32 0, i32 8
  %1 = ptrtoint ptr %radio_ctl to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 127, ptr %radio_ctl, align 1
  %dtim_period = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %config, i32 0, i32 9
  %2 = ptrtoint ptr %dtim_period to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 127, ptr %dtim_period, align 2
  %beacon_period = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %config, i32 0, i32 11
  %3 = ptrtoint ptr %beacon_period to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 32767, ptr %beacon_period, align 4
  %auth_mode = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %config, i32 0, i32 12
  %4 = ptrtoint ptr %auth_mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 127, ptr %auth_mode, align 2
  %rts_threshold = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %config, i32 0, i32 2
  %5 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 32767, ptr %rts_threshold, align 2
  %frag_threshold = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %config, i32 0, i32 3
  %6 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 32767, ptr %frag_threshold, align 4
  %retry_limit = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %config, i32 0, i32 4
  %7 = ptrtoint ptr %retry_limit to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 127, ptr %retry_limit, align 2
  %qos_info = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %config, i32 0, i32 24
  %8 = ptrtoint ptr %qos_info to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %qos_info, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_set_wmm_params(ptr nocapture noundef writeonly %priv, ptr nocapture noundef writeonly %bss_cfg, ptr nocapture noundef readonly %params) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tail = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail, align 4
  %tail_len = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 1, i32 11
  %2 = ptrtoint ptr %tail_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail_len, align 4
  %call.i = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 20722, i32 noundef 2, ptr noundef %1, i32 noundef %3) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call.i, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %5)
  %cmp = icmp ugt i8 %5, 24
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %5 to i32
  %wmm_info = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_cfg, i32 0, i32 26
  %add.ptr4 = getelementptr i8, ptr %call.i, i32 2
  %6 = call ptr @memcpy(ptr %wmm_info, ptr %add.ptr4, i32 %conv)
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wmm_info7 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_cfg, i32 0, i32 26
  %7 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_cfg, i32 0, i32 26, i32 3
  %8 = call ptr @memset(ptr %7, i32 0, i32 18)
  %9 = ptrtoint ptr %wmm_info7 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 5304834, ptr %wmm_info7, align 2
  %subtype = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_cfg, i32 0, i32 26, i32 1
  %10 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %subtype, align 2
  %version = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_cfg, i32 0, i32 26, i32 2
  %11 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %version, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end
  %.sink = phi i8 [ 0, %if.else ], [ 1, %if.end ]
  %wmm_enabled11 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 74
  %12 = ptrtoint ptr %wmm_enabled11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %wmm_enabled11, align 1
  %qos_info = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_cfg, i32 0, i32 24
  %13 = ptrtoint ptr %qos_info to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %qos_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_config_uap_11d(ptr noundef %priv, ptr nocapture noundef readonly %beacon_data) local_unnamed_addr #2 align 64 {
entry:
  %state_11d = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state_11d) #6
  %tail = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %beacon_data, i32 0, i32 1
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail, align 4
  %tail_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %beacon_data, i32 0, i32 11
  %2 = ptrtoint ptr %tail_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail_len, align 4
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 7, ptr noundef %1, i32 noundef %3, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %state_11d to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %state_11d, align 4
  %call1 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 22, i16 noundef zeroext 1, i32 noundef 9, ptr noundef nonnull %state_11d, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 4, ptr noundef nonnull @.str) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state_11d) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_uap_prepare_cmd(ptr noundef %priv, i16 noundef zeroext %cmd_no, i16 noundef zeroext %cmd_action, i32 noundef %type, ptr noundef %data_buf, ptr noundef %cmd_buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %cmd_no to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %cmd_no, label %sw.default [
    i16 176, label %sw.bb
    i16 177, label %entry.sw.bb1_crit_edge
    i16 178, label %entry.sw.bb1_crit_edge27
    i16 175, label %entry.sw.bb1_crit_edge28
    i16 179, label %entry.sw.bb1_crit_edge29
    i16 181, label %sw.bb2
    i16 221, label %sw.bb7
  ]

entry.sw.bb1_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 -20480, ptr %cmd_buf, align 1
  %params.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #6
  %3 = ptrtoint ptr %params.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %params.i, align 2
  %tlv1.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %type, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  %ssid1.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 6
  %5 = ptrtoint ptr %ssid1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ssid1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.if.end.i.i_crit_edge, label %if.then.i.i

sw.bb.i.if.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %tlv1.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 0, ptr %tlv1.i, align 1
  %8 = ptrtoint ptr %ssid1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ssid1.i.i, align 4
  %conv.i.i = trunc i32 %9 to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #6
  %len.i.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 2
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %len.i.i, align 1
  %ssid5.i.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 3
  %ssid7.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %ssid1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ssid1.i.i, align 4
  %14 = call ptr @memcpy(ptr %ssid5.i.i, ptr %ssid7.i.i, i32 %13)
  %15 = load i32, ptr %ssid1.i.i, align 4
  %16 = trunc i32 %15 to i16
  %add18.i.i = add i32 %15, 4
  %add.ptr.i.i = getelementptr i8, ptr %tlv1.i, i32 %add18.i.i
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 12289, ptr %add.ptr.i.i, align 1
  %len22.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %add.ptr.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %len22.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 256, ptr %len22.i.i, align 1
  %bcast_ssid_ctl.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 7
  %19 = ptrtoint ptr %bcast_ssid_ctl.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bcast_ssid_ctl.i.i, align 4
  %bcast_ctl.i.i = getelementptr inbounds %struct.host_cmd_tlv_bcast_ssid, ptr %add.ptr.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %bcast_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %bcast_ctl.i.i, align 1
  %add24.i.i = add i16 %16, 19
  %add.ptr26.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.bb.i.if.end.i.i_crit_edge
  %tlv.addr.0.i.i = phi ptr [ %tlv1.i, %sw.bb.i.if.end.i.i_crit_edge ], [ %add.ptr26.i.i, %if.then.i.i ]
  %cmd_size.0.i.i = phi i16 [ 10, %sw.bb.i.if.end.i.i_crit_edge ], [ %add24.i.i, %if.then.i.i ]
  %rates.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 21
  %22 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rates.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool27.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool27.not.i.i, label %if.end.i.i.if.end49.i.i_crit_edge, label %if.then28.i.i

if.end.i.i.if.end49.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i.i

if.then28.i.i:                                    ; preds = %if.end.i.i
  %24 = ptrtoint ptr %tlv.addr.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 256, ptr %tlv.addr.0.i.i, align 1
  %25 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rates.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool35.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool35.not.i.i, label %if.then28.i.i.for.end.i.i_crit_edge, label %for.body.i.i

if.then28.i.i.for.end.i.i_crit_edge:              ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.then28.i.i
  %arrayidx39.i.i = getelementptr %struct.host_cmd_tlv_rates, ptr %tlv.addr.0.i.i, i32 0, i32 1, i32 0
  %27 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx39.i.i, align 1
  %arrayidx33.1.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 21, i32 1
  %28 = ptrtoint ptr %arrayidx33.1.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx33.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool35.not.1.i.i = icmp eq i8 %29, 0
  br i1 %tobool35.not.1.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.1.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.1.i.i:                                   ; preds = %for.body.i.i
  %arrayidx39.1.i.i = getelementptr %struct.host_cmd_tlv_rates, ptr %tlv.addr.0.i.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx39.1.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx39.1.i.i, align 1
  %arrayidx33.2.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 21, i32 2
  %31 = ptrtoint ptr %arrayidx33.2.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx33.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool35.not.2.i.i = icmp eq i8 %32, 0
  br i1 %tobool35.not.2.i.i, label %for.body.1.i.i.for.end.i.i_crit_edge, label %for.body.2.i.i

for.body.1.i.i.for.end.i.i_crit_edge:             ; preds = %for.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.2.i.i:                                   ; preds = %for.body.1.i.i
  %arrayidx39.2.i.i = getelementptr %struct.host_cmd_tlv_rates, ptr %tlv.addr.0.i.i, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %arrayidx39.2.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx39.2.i.i, align 1
  %arrayidx33.3.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 21, i32 3
  %34 = ptrtoint ptr %arrayidx33.3.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx33.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool35.not.3.i.i = icmp eq i8 %35, 0
  br i1 %tobool35.not.3.i.i, label %for.body.2.i.i.for.end.i.i_crit_edge, label %for.body.3.i.i

for.body.2.i.i.for.end.i.i_crit_edge:             ; preds = %for.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.3.i.i:                                   ; preds = %for.body.2.i.i
  %arrayidx39.3.i.i = getelementptr %struct.host_cmd_tlv_rates, ptr %tlv.addr.0.i.i, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %arrayidx39.3.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx39.3.i.i, align 1
  %arrayidx33.4.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 21, i32 4
  %37 = ptrtoint ptr %arrayidx33.4.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx33.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool35.not.4.i.i = icmp eq i8 %38, 0
  br i1 %tobool35.not.4.i.i, label %for.body.3.i.i.for.end.i.i_crit_edge, label %for.body.4.i.i

for.body.3.i.i.for.end.i.i_crit_edge:             ; preds = %for.body.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.4.i.i:                                   ; preds = %for.body.3.i.i
  %arrayidx39.4.i.i = getelementptr %struct.host_cmd_tlv_rates, ptr %tlv.addr.0.i.i, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %arrayidx39.4.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx39.4.i.i, align 1
  %arrayidx33.5.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 21, i32 5
  %40 = ptrtoint ptr %arrayidx33.5.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx33.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool35.not.5.i.i = icmp eq i8 %41, 0
  br i1 %tobool35.not.5.i.i, label %for.body.4.i.i.for.end.i.i_crit_edge, label %for.body.5.i.i

for.body.4.i.i.for.end.i.i_crit_edge:             ; preds = %for.body.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.5.i.i:                                   ; preds = %for.body.4.i.i
  %arrayidx39.5.i.i = getelementptr %struct.host_cmd_tlv_rates, ptr %tlv.addr.0.i.i, i32 0, i32 1, i32 5
  %42 = ptrtoint ptr %arrayidx39.5.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx39.5.i.i, align 1
  %arrayidx33.6.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 21, i32 6
  %43 = ptrtoint ptr %arrayidx33.6.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx33.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool35.not.6.i.i = icmp eq i8 %44, 0
  br i1 %tobool35.not.6.i.i, label %for.body.5.i.i.for.end.i.i_crit_edge, label %for.body.6.i.i

for.body.5.i.i.for.end.i.i_crit_edge:             ; preds = %for.body.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.6.i.i:                                   ; preds = %for.body.5.i.i
  %arrayidx39.6.i.i = getelementptr %struct.host_cmd_tlv_rates, ptr %tlv.addr.0.i.i, i32 0, i32 1, i32 6
  %45 = ptrtoint ptr %arrayidx39.6.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx39.6.i.i, align 1
  %arrayidx33.7.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 21, i32 7
  %46 = ptrtoint ptr %arrayidx33.7.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx33.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool35.not.7.i.i = icmp eq i8 %47, 0
  br i1 %tobool35.not.7.i.i, label %for.body.6.i.i.for.end.i.i_crit_edge, label %for.body.7.i.i

for.body.6.i.i.for.end.i.i_crit_edge:             ; preds = %for.body.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.7.i.i:                                   ; preds = %for.body.6.i.i
  %arrayidx39.7.i.i = getelementptr %struct.host_cmd_tlv_rates, ptr %tlv.addr.0.i.i, i32 0, i32 1, i32 7
  %48 = ptrtoint ptr %arrayidx39.7.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx39.7.i.i, align 1
  %arrayidx33.8.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 21, i32 8
  %49 = ptrtoint ptr %arrayidx33.8.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx33.8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool35.not.8.i.i = icmp eq i8 %50, 0
  br i1 %tobool35.not.8.i.i, label %for.body.7.i.i.for.end.i.i_crit_edge, label %for.body.8.i.i

for.body.7.i.i.for.end.i.i_crit_edge:             ; preds = %for.body.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.8.i.i:                                   ; preds = %for.body.7.i.i
  %arrayidx39.8.i.i = getelementptr %struct.host_cmd_tlv_rates, ptr %tlv.addr.0.i.i, i32 0, i32 1, i32 8
  %51 = ptrtoint ptr %arrayidx39.8.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx39.8.i.i, align 1
  %arrayidx33.9.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 21, i32 9
  %52 = ptrtoint ptr %arrayidx33.9.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx33.9.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool35.not.9.i.i = icmp eq i8 %53, 0
  br i1 %tobool35.not.9.i.i, label %for.body.8.i.i.for.end.i.i_crit_edge, label %for.body.9.i.i

for.body.8.i.i.for.end.i.i_crit_edge:             ; preds = %for.body.8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.9.i.i:                                   ; preds = %for.body.8.i.i
  %arrayidx39.9.i.i = getelementptr %struct.host_cmd_tlv_rates, ptr %tlv.addr.0.i.i, i32 0, i32 1, i32 9
  %54 = ptrtoint ptr %arrayidx39.9.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx39.9.i.i, align 1
  %arrayidx33.10.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 21, i32 10
  %55 = ptrtoint ptr %arrayidx33.10.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx33.10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool35.not.10.i.i = icmp eq i8 %56, 0
  br i1 %tobool35.not.10.i.i, label %for.body.9.i.i.for.end.i.i_crit_edge, label %for.body.10.i.i

for.body.9.i.i.for.end.i.i_crit_edge:             ; preds = %for.body.9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.10.i.i:                                  ; preds = %for.body.9.i.i
  %arrayidx39.10.i.i = getelementptr %struct.host_cmd_tlv_rates, ptr %tlv.addr.0.i.i, i32 0, i32 1, i32 10
  %57 = ptrtoint ptr %arrayidx39.10.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx39.10.i.i, align 1
  %arrayidx33.11.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 21, i32 11
  %58 = ptrtoint ptr %arrayidx33.11.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx33.11.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool35.not.11.i.i = icmp eq i8 %59, 0
  br i1 %tobool35.not.11.i.i, label %for.body.10.i.i.for.end.i.i_crit_edge, label %for.body.11.i.i

for.body.10.i.i.for.end.i.i_crit_edge:            ; preds = %for.body.10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.11.i.i:                                  ; preds = %for.body.10.i.i
  %arrayidx39.11.i.i = getelementptr %struct.host_cmd_tlv_rates, ptr %tlv.addr.0.i.i, i32 0, i32 1, i32 11
  %60 = ptrtoint ptr %arrayidx39.11.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx39.11.i.i, align 1
  %arrayidx33.12.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 21, i32 12
  %61 = ptrtoint ptr %arrayidx33.12.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx33.12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool35.not.12.i.i = icmp eq i8 %62, 0
  br i1 %tobool35.not.12.i.i, label %for.body.11.i.i.for.end.i.i_crit_edge, label %for.body.12.i.i

for.body.11.i.i.for.end.i.i_crit_edge:            ; preds = %for.body.11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.12.i.i:                                  ; preds = %for.body.11.i.i
  %arrayidx39.12.i.i = getelementptr %struct.host_cmd_tlv_rates, ptr %tlv.addr.0.i.i, i32 0, i32 1, i32 12
  %63 = ptrtoint ptr %arrayidx39.12.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx39.12.i.i, align 1
  %arrayidx33.13.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 21, i32 13
  %64 = ptrtoint ptr %arrayidx33.13.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx33.13.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool35.not.13.i.i = icmp eq i8 %65, 0
  br i1 %tobool35.not.13.i.i, label %for.body.12.i.i.for.end.i.i_crit_edge, label %for.body.13.i.i

for.body.12.i.i.for.end.i.i_crit_edge:            ; preds = %for.body.12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.13.i.i:                                  ; preds = %for.body.12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx39.13.i.i = getelementptr %struct.host_cmd_tlv_rates, ptr %tlv.addr.0.i.i, i32 0, i32 1, i32 13
  %66 = ptrtoint ptr %arrayidx39.13.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx39.13.i.i, align 1
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.13.i.i, %for.body.12.i.i.for.end.i.i_crit_edge, %for.body.11.i.i.for.end.i.i_crit_edge, %for.body.10.i.i.for.end.i.i_crit_edge, %for.body.9.i.i.for.end.i.i_crit_edge, %for.body.8.i.i.for.end.i.i_crit_edge, %for.body.7.i.i.for.end.i.i_crit_edge, %for.body.6.i.i.for.end.i.i_crit_edge, %for.body.5.i.i.for.end.i.i_crit_edge, %for.body.4.i.i.for.end.i.i_crit_edge, %for.body.3.i.i.for.end.i.i_crit_edge, %for.body.2.i.i.for.end.i.i_crit_edge, %for.body.1.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge, %if.then28.i.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.then28.i.i.for.end.i.i_crit_edge ], [ 1, %for.body.i.i.for.end.i.i_crit_edge ], [ 2, %for.body.1.i.i.for.end.i.i_crit_edge ], [ 3, %for.body.2.i.i.for.end.i.i_crit_edge ], [ 4, %for.body.3.i.i.for.end.i.i_crit_edge ], [ 5, %for.body.4.i.i.for.end.i.i_crit_edge ], [ 6, %for.body.5.i.i.for.end.i.i_crit_edge ], [ 7, %for.body.6.i.i.for.end.i.i_crit_edge ], [ 8, %for.body.7.i.i.for.end.i.i_crit_edge ], [ 9, %for.body.8.i.i.for.end.i.i_crit_edge ], [ 10, %for.body.9.i.i.for.end.i.i_crit_edge ], [ 11, %for.body.10.i.i.for.end.i.i_crit_edge ], [ 12, %for.body.11.i.i.for.end.i.i_crit_edge ], [ 13, %for.body.12.i.i.for.end.i.i_crit_edge ], [ 14, %for.body.13.i.i ]
  %conv40.i.i = trunc i32 %i.0.lcssa.i.i to i16
  %67 = shl nuw nsw i16 %conv40.i.i, 8
  %len42.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.0.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %len42.i.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 %67, ptr %len42.i.i, align 1
  %add43.i.i = add nuw nsw i32 %i.0.lcssa.i.i, 4
  %69 = trunc i32 %add43.i.i to i16
  %conv46.i.i = add i16 %cmd_size.0.i.i, %69
  %add.ptr48.i.i = getelementptr i8, ptr %tlv.addr.0.i.i, i32 %add43.i.i
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %for.end.i.i, %if.end.i.i.if.end49.i.i_crit_edge
  %tlv.addr.1.i.i = phi ptr [ %tlv.addr.0.i.i, %if.end.i.i.if.end49.i.i_crit_edge ], [ %add.ptr48.i.i, %for.end.i.i ]
  %cmd_size.1.i.i = phi i16 [ %cmd_size.0.i.i, %if.end.i.i.if.end49.i.i_crit_edge ], [ %conv46.i.i, %for.end.i.i ]
  %70 = ptrtoint ptr %data_buf to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool51.not.i.i = icmp eq i8 %71, 0
  br i1 %tobool51.not.i.i, label %if.end49.i.i.if.end82.i.i_crit_edge, label %land.lhs.true.i.i

if.end49.i.i.if.end82.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82.i.i

land.lhs.true.i.i:                                ; preds = %if.end49.i.i
  %band_cfg.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 1
  %72 = ptrtoint ptr %band_cfg.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %band_cfg.i.i, align 1
  %74 = and i8 %73, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp53.i.i = icmp eq i8 %74, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %71)
  %cmp58.i.i = icmp ult i8 %71, 15
  %or.cond.i.i = select i1 %cmp53.i.i, i1 %cmp58.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.if.then70.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.if.then70.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %cmp53.not.i.i = xor i1 %cmp53.i.i, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 -90, i8 %71)
  %cmp68.i.i = icmp ult i8 %71, -90
  %or.cond64.i.i = select i1 %cmp53.not.i.i, i1 %cmp68.i.i, i1 false
  br i1 %or.cond64.i.i, label %lor.lhs.false.i.i.if.then70.i.i_crit_edge, label %lor.lhs.false.i.i.if.end82.i.i_crit_edge

lor.lhs.false.i.i.if.end82.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82.i.i

lor.lhs.false.i.i.if.then70.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70.i.i

if.then70.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then70.i.i_crit_edge, %land.lhs.true.i.i.if.then70.i.i_crit_edge
  %75 = ptrtoint ptr %tlv.addr.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 10753, ptr %tlv.addr.1.i.i, align 1
  %len74.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.1.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %len74.i.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 512, ptr %len74.i.i, align 1
  %77 = ptrtoint ptr %band_cfg.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %band_cfg.i.i, align 1
  %band_config.i.i = getelementptr inbounds %struct.host_cmd_tlv_channel_band, ptr %tlv.addr.1.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %band_config.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %band_config.i.i, align 1
  %80 = ptrtoint ptr %data_buf to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %data_buf, align 4
  %channel77.i.i = getelementptr inbounds %struct.host_cmd_tlv_channel_band, ptr %tlv.addr.1.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %channel77.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %channel77.i.i, align 1
  %add79.i.i = add i16 %cmd_size.1.i.i, 6
  %add.ptr81.i.i = getelementptr i8, ptr %tlv.addr.1.i.i, i32 6
  br label %if.end82.i.i

if.end82.i.i:                                     ; preds = %if.then70.i.i, %lor.lhs.false.i.i.if.end82.i.i_crit_edge, %if.end49.i.i.if.end82.i.i_crit_edge
  %tlv.addr.2.i.i = phi ptr [ %tlv.addr.1.i.i, %if.end49.i.i.if.end82.i.i_crit_edge ], [ %add.ptr81.i.i, %if.then70.i.i ], [ %tlv.addr.1.i.i, %lor.lhs.false.i.i.if.end82.i.i_crit_edge ]
  %cmd_size.2.i.i = phi i16 [ %cmd_size.1.i.i, %if.end49.i.i.if.end82.i.i_crit_edge ], [ %add79.i.i, %if.then70.i.i ], [ %cmd_size.1.i.i, %lor.lhs.false.i.i.if.end82.i.i_crit_edge ]
  %beacon_period83.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 11
  %83 = ptrtoint ptr %beacon_period83.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %beacon_period83.i.i, align 4
  %85 = add i16 %84, -50
  call void @__sanitizer_cov_trace_const_cmp2(i16 3951, i16 %85)
  %86 = icmp ult i16 %85, 3951
  br i1 %86, label %if.then92.i.i, label %if.end82.i.i.if.end102.i.i_crit_edge

if.end82.i.i.if.end102.i.i_crit_edge:             ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102.i.i

if.then92.i.i:                                    ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %tlv.addr.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 11265, ptr %tlv.addr.2.i.i, align 1
  %len96.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.2.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %len96.i.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 512, ptr %len96.i.i, align 1
  %89 = ptrtoint ptr %beacon_period83.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %beacon_period83.i.i, align 4
  %91 = tail call i16 @llvm.bswap.i16(i16 %90) #6
  %period.i.i = getelementptr inbounds %struct.host_cmd_tlv_beacon_period, ptr %tlv.addr.2.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %period.i.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 %91, ptr %period.i.i, align 1
  %add99.i.i = add i16 %cmd_size.2.i.i, 6
  %add.ptr101.i.i = getelementptr i8, ptr %tlv.addr.2.i.i, i32 6
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %if.then92.i.i, %if.end82.i.i.if.end102.i.i_crit_edge
  %tlv.addr.3.i.i = phi ptr [ %add.ptr101.i.i, %if.then92.i.i ], [ %tlv.addr.2.i.i, %if.end82.i.i.if.end102.i.i_crit_edge ]
  %cmd_size.3.i.i = phi i16 [ %add99.i.i, %if.then92.i.i ], [ %cmd_size.2.i.i, %if.end82.i.i.if.end102.i.i_crit_edge ]
  %dtim_period103.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 9
  %93 = ptrtoint ptr %dtim_period103.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %dtim_period103.i.i, align 2
  %95 = add i8 %94, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %95)
  %96 = icmp ult i8 %95, 100
  br i1 %96, label %if.then112.i.i, label %if.end102.i.i.if.end123.i.i_crit_edge

if.end102.i.i.if.end123.i.i_crit_edge:            ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123.i.i

if.then112.i.i:                                   ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %tlv.addr.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 11521, ptr %tlv.addr.3.i.i, align 1
  %len116.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.3.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %len116.i.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 2)
  store i16 256, ptr %len116.i.i, align 1
  %99 = ptrtoint ptr %dtim_period103.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %dtim_period103.i.i, align 2
  %period118.i.i = getelementptr inbounds %struct.host_cmd_tlv_dtim_period, ptr %tlv.addr.3.i.i, i32 0, i32 1
  %101 = ptrtoint ptr %period118.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %period118.i.i, align 1
  %add120.i.i = add i16 %cmd_size.3.i.i, 5
  %add.ptr122.i.i = getelementptr i8, ptr %tlv.addr.3.i.i, i32 5
  br label %if.end123.i.i

if.end123.i.i:                                    ; preds = %if.then112.i.i, %if.end102.i.i.if.end123.i.i_crit_edge
  %tlv.addr.4.i.i = phi ptr [ %add.ptr122.i.i, %if.then112.i.i ], [ %tlv.addr.3.i.i, %if.end102.i.i.if.end123.i.i_crit_edge ]
  %cmd_size.4.i.i = phi i16 [ %add120.i.i, %if.then112.i.i ], [ %cmd_size.3.i.i, %if.end102.i.i.if.end123.i.i_crit_edge ]
  %rts_threshold124.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 2
  %102 = ptrtoint ptr %rts_threshold124.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %rts_threshold124.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2348, i16 %103)
  %cmp126.i.i = icmp ult i16 %103, 2348
  br i1 %cmp126.i.i, label %if.then128.i.i, label %if.end123.i.i.if.end138.i.i_crit_edge

if.end123.i.i.if.end138.i.i_crit_edge:            ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138.i.i

if.then128.i.i:                                   ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %tlv.addr.4.i.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 13057, ptr %tlv.addr.4.i.i, align 1
  %len132.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.4.i.i, i32 0, i32 1
  %105 = ptrtoint ptr %len132.i.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 512, ptr %len132.i.i, align 1
  %106 = ptrtoint ptr %rts_threshold124.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %rts_threshold124.i.i, align 2
  %108 = tail call i16 @llvm.bswap.i16(i16 %107) #6
  %rts_thr.i.i = getelementptr inbounds %struct.host_cmd_tlv_rts_threshold, ptr %tlv.addr.4.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %rts_thr.i.i to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 %108, ptr %rts_thr.i.i, align 1
  %add135.i.i = add i16 %cmd_size.4.i.i, 6
  %add.ptr137.i.i = getelementptr i8, ptr %tlv.addr.4.i.i, i32 6
  br label %if.end138.i.i

if.end138.i.i:                                    ; preds = %if.then128.i.i, %if.end123.i.i.if.end138.i.i_crit_edge
  %tlv.addr.5.i.i = phi ptr [ %add.ptr137.i.i, %if.then128.i.i ], [ %tlv.addr.4.i.i, %if.end123.i.i.if.end138.i.i_crit_edge ]
  %cmd_size.5.i.i = phi i16 [ %add135.i.i, %if.then128.i.i ], [ %cmd_size.4.i.i, %if.end123.i.i.if.end138.i.i_crit_edge ]
  %frag_threshold139.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 3
  %110 = ptrtoint ptr %frag_threshold139.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %frag_threshold139.i.i, align 4
  %112 = add i16 %111, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 2091, i16 %112)
  %113 = icmp ult i16 %112, 2091
  br i1 %113, label %if.then148.i.i, label %if.end138.i.i.if.end158.i.i_crit_edge

if.end138.i.i.if.end158.i.i_crit_edge:            ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end158.i.i

if.then148.i.i:                                   ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %tlv.addr.5.i.i to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 17921, ptr %tlv.addr.5.i.i, align 1
  %len152.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.5.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %len152.i.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 512, ptr %len152.i.i, align 1
  %116 = ptrtoint ptr %frag_threshold139.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %frag_threshold139.i.i, align 4
  %118 = tail call i16 @llvm.bswap.i16(i16 %117) #6
  %frag_thr.i.i = getelementptr inbounds %struct.host_cmd_tlv_frag_threshold, ptr %tlv.addr.5.i.i, i32 0, i32 1
  %119 = ptrtoint ptr %frag_thr.i.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 2)
  store i16 %118, ptr %frag_thr.i.i, align 1
  %add155.i.i = add i16 %cmd_size.5.i.i, 6
  %add.ptr157.i.i = getelementptr i8, ptr %tlv.addr.5.i.i, i32 6
  br label %if.end158.i.i

if.end158.i.i:                                    ; preds = %if.then148.i.i, %if.end138.i.i.if.end158.i.i_crit_edge
  %tlv.addr.6.i.i = phi ptr [ %add.ptr157.i.i, %if.then148.i.i ], [ %tlv.addr.5.i.i, %if.end138.i.i.if.end158.i.i_crit_edge ]
  %cmd_size.6.i.i = phi i16 [ %add155.i.i, %if.then148.i.i ], [ %cmd_size.5.i.i, %if.end138.i.i.if.end158.i.i_crit_edge ]
  %retry_limit159.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 4
  %120 = ptrtoint ptr %retry_limit159.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %retry_limit159.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %121)
  %cmp161.i.i = icmp ult i8 %121, 15
  br i1 %cmp161.i.i, label %if.then163.i.i, label %if.end158.i.i.if.end173.i.i_crit_edge

if.end158.i.i.if.end173.i.i_crit_edge:            ; preds = %if.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173.i.i

if.then163.i.i:                                   ; preds = %if.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %tlv.addr.6.i.i to i32
  call void @__asan_storeN_noabort(i32 %122, i32 2)
  store i16 23809, ptr %tlv.addr.6.i.i, align 1
  %len167.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.6.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %len167.i.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 256, ptr %len167.i.i, align 1
  %124 = ptrtoint ptr %retry_limit159.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %retry_limit159.i.i, align 2
  %limit.i.i = getelementptr inbounds %struct.host_cmd_tlv_retry_limit, ptr %tlv.addr.6.i.i, i32 0, i32 1
  %126 = ptrtoint ptr %limit.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %limit.i.i, align 1
  %add170.i.i = add i16 %cmd_size.6.i.i, 5
  %add.ptr172.i.i = getelementptr i8, ptr %tlv.addr.6.i.i, i32 5
  br label %if.end173.i.i

if.end173.i.i:                                    ; preds = %if.then163.i.i, %if.end158.i.i.if.end173.i.i_crit_edge
  %tlv.addr.7.i.i = phi ptr [ %add.ptr172.i.i, %if.then163.i.i ], [ %tlv.addr.6.i.i, %if.end158.i.i.if.end173.i.i_crit_edge ]
  %cmd_size.7.i.i = phi i16 [ %add170.i.i, %if.then163.i.i ], [ %cmd_size.6.i.i, %if.end158.i.i.if.end173.i.i_crit_edge ]
  %protocol.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 13
  %127 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %protocol.i.i, align 4
  %129 = and i16 %128, 104
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %if.else.i.i, label %if.then187.i.i

if.then187.i.i:                                   ; preds = %if.end173.i.i
  %131 = ptrtoint ptr %tlv.addr.7.i.i to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 16641, ptr %tlv.addr.7.i.i, align 1
  %len.i.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.7.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 2)
  store i16 1024, ptr %len.i.i.i, align 1
  %key_mgmt_operation.i.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 15
  %133 = ptrtoint ptr %key_mgmt_operation.i.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %key_mgmt_operation.i.i.i, align 4
  %135 = tail call i16 @llvm.bswap.i16(i16 %134) #6
  %key_mgmt_operation2.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_akmp, ptr %tlv.addr.7.i.i, i32 0, i32 2
  %136 = ptrtoint ptr %key_mgmt_operation2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %136, i32 2)
  store i16 %135, ptr %key_mgmt_operation2.i.i.i, align 1
  %key_mgmt.i.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 14
  %137 = ptrtoint ptr %key_mgmt.i.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %key_mgmt.i.i.i, align 2
  %139 = tail call i16 @llvm.bswap.i16(i16 %138) #6
  %key_mgmt3.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_akmp, ptr %tlv.addr.7.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %key_mgmt3.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 2)
  store i16 %139, ptr %key_mgmt3.i.i.i, align 1
  %add.i.i.i = add i16 %cmd_size.7.i.i, 8
  %add.ptr.i.i.i = getelementptr i8, ptr %tlv.addr.7.i.i, i32 8
  %wpa_cfg.i.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 17
  %141 = ptrtoint ptr %wpa_cfg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %wpa_cfg.i.i.i, align 4
  %143 = and i8 %142, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i.i.i = icmp eq i8 %143, 0
  br i1 %tobool.not.i.i.i, label %if.then187.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then187.i.i.if.end.i.i.i_crit_edge:            ; preds = %if.then187.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then187.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %144 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %144, i32 2)
  store i16 -28415, ptr %add.ptr.i.i.i, align 1
  %len9.i.i.i = getelementptr i8, ptr %tlv.addr.7.i.i, i32 10
  %145 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %145, i32 2)
  store i16 1024, ptr %len9.i.i.i, align 1
  %proto.i.i.i = getelementptr i8, ptr %tlv.addr.7.i.i, i32 12
  %146 = ptrtoint ptr %proto.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %146, i32 2)
  store i16 2048, ptr %proto.i.i.i, align 1
  %147 = ptrtoint ptr %wpa_cfg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %wpa_cfg.i.i.i, align 4
  %cipher.i.i.i = getelementptr i8, ptr %tlv.addr.7.i.i, i32 14
  %149 = ptrtoint ptr %cipher.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %cipher.i.i.i, align 1
  %add13.i.i.i = add i16 %cmd_size.7.i.i, 16
  %add.ptr15.i.i.i = getelementptr i8, ptr %tlv.addr.7.i.i, i32 16
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then187.i.i.if.end.i.i.i_crit_edge
  %cmd_size.0.i.i.i = phi i16 [ %add13.i.i.i, %if.then.i.i.i ], [ %add.i.i.i, %if.then187.i.i.if.end.i.i.i_crit_edge ]
  %tlv.0.i.i.i = phi ptr [ %add.ptr15.i.i.i, %if.then.i.i.i ], [ %add.ptr.i.i.i, %if.then187.i.i.if.end.i.i.i_crit_edge ]
  %pairwise_cipher_wpa2.i.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 17, i32 1
  %150 = ptrtoint ptr %pairwise_cipher_wpa2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %pairwise_cipher_wpa2.i.i.i, align 1
  %152 = and i8 %151, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool19.not.i.i.i = icmp eq i8 %152, 0
  br i1 %tobool19.not.i.i.i, label %if.end.i.i.i.if.end33.i.i.i_crit_edge, label %if.then20.i.i.i

if.end.i.i.i.if.end33.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i.i.i

if.then20.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %tlv.0.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %153, i32 2)
  store i16 -28415, ptr %tlv.0.i.i.i, align 1
  %len24.i.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.0.i.i.i, i32 0, i32 1
  %154 = ptrtoint ptr %len24.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 1024, ptr %len24.i.i.i, align 1
  %proto25.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_pwk_cipher, ptr %tlv.0.i.i.i, i32 0, i32 1
  %155 = ptrtoint ptr %proto25.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %155, i32 2)
  store i16 8192, ptr %proto25.i.i.i, align 1
  %156 = ptrtoint ptr %pairwise_cipher_wpa2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %pairwise_cipher_wpa2.i.i.i, align 1
  %cipher28.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_pwk_cipher, ptr %tlv.0.i.i.i, i32 0, i32 2
  %158 = ptrtoint ptr %cipher28.i.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %cipher28.i.i.i, align 1
  %add30.i.i.i = add i16 %cmd_size.0.i.i.i, 8
  %add.ptr32.i.i.i = getelementptr i8, ptr %tlv.0.i.i.i, i32 8
  br label %if.end33.i.i.i

if.end33.i.i.i:                                   ; preds = %if.then20.i.i.i, %if.end.i.i.i.if.end33.i.i.i_crit_edge
  %cmd_size.1.i.i.i = phi i16 [ %add30.i.i.i, %if.then20.i.i.i ], [ %cmd_size.0.i.i.i, %if.end.i.i.i.if.end33.i.i.i_crit_edge ]
  %tlv.1.i.i.i = phi ptr [ %add.ptr32.i.i.i, %if.then20.i.i.i ], [ %tlv.0.i.i.i, %if.end.i.i.i.if.end33.i.i.i_crit_edge ]
  %group_cipher.i.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 17, i32 2
  %159 = ptrtoint ptr %group_cipher.i.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %group_cipher.i.i.i, align 2
  %161 = and i8 %160, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool37.not.i.i.i = icmp eq i8 %161, 0
  br i1 %tobool37.not.i.i.i, label %if.end33.i.i.i.if.end50.i.i.i_crit_edge, label %if.then38.i.i.i

if.end33.i.i.i.if.end50.i.i.i_crit_edge:          ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i.i.i

if.then38.i.i.i:                                  ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %tlv.1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %162, i32 2)
  store i16 -28159, ptr %tlv.1.i.i.i, align 1
  %len42.i.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.1.i.i.i, i32 0, i32 1
  %163 = ptrtoint ptr %len42.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %163, i32 2)
  store i16 512, ptr %len42.i.i.i, align 1
  %164 = ptrtoint ptr %group_cipher.i.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %group_cipher.i.i.i, align 2
  %cipher45.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_gwk_cipher, ptr %tlv.1.i.i.i, i32 0, i32 1
  %166 = ptrtoint ptr %cipher45.i.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %cipher45.i.i.i, align 1
  %add47.i.i.i = add i16 %cmd_size.1.i.i.i, 6
  %add.ptr49.i.i.i = getelementptr i8, ptr %tlv.1.i.i.i, i32 6
  br label %if.end50.i.i.i

if.end50.i.i.i:                                   ; preds = %if.then38.i.i.i, %if.end33.i.i.i.if.end50.i.i.i_crit_edge
  %cmd_size.2.i.i.i = phi i16 [ %add47.i.i.i, %if.then38.i.i.i ], [ %cmd_size.1.i.i.i, %if.end33.i.i.i.if.end50.i.i.i_crit_edge ]
  %tlv.2.i.i.i = phi ptr [ %add.ptr49.i.i.i, %if.then38.i.i.i ], [ %tlv.1.i.i.i, %if.end33.i.i.i.if.end50.i.i.i_crit_edge ]
  %length.i.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 17, i32 3
  %167 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool52.not.i.i.i = icmp eq i32 %168, 0
  br i1 %tobool52.not.i.i.i, label %if.end50.i.i.i.if.end188.i.i_crit_edge, label %if.then53.i.i.i

if.end50.i.i.i.if.end188.i.i_crit_edge:           ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end188.i.i

if.then53.i.i.i:                                  ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %169 = ptrtoint ptr %tlv.2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %169, i32 2)
  store i16 15361, ptr %tlv.2.i.i.i, align 1
  %170 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %length.i.i.i, align 4
  %conv58.i.i.i = trunc i32 %171 to i16
  %172 = tail call i16 @llvm.bswap.i16(i16 %conv58.i.i.i) #6
  %len60.i.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.2.i.i.i, i32 0, i32 1
  %173 = ptrtoint ptr %len60.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %173, i32 2)
  store i16 %172, ptr %len60.i.i.i, align 1
  %passphrase61.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_passphrase, ptr %tlv.2.i.i.i, i32 0, i32 1
  %passphrase63.i.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 17, i32 4
  %174 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %length.i.i.i, align 4
  %176 = call ptr @memcpy(ptr %passphrase61.i.i.i, ptr %passphrase63.i.i.i, i32 %175)
  %177 = load i32, ptr %length.i.i.i, align 4
  %add69.i.i.i = add i32 %177, 4
  %178 = trunc i32 %add69.i.i.i to i16
  %conv72.i.i.i = add i16 %cmd_size.2.i.i.i, %178
  %add.ptr76.i.i.i = getelementptr i8, ptr %tlv.2.i.i.i, i32 %add69.i.i.i
  br label %if.end188.i.i

if.else.i.i:                                      ; preds = %if.end173.i.i
  %length.i7.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 0, i32 2
  %179 = ptrtoint ptr %length.i7.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %length.i7.i.i, align 2
  %181 = zext i16 %180 to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %180, label %if.else.i.i.for.inc.i.i.i_crit_edge [
    i16 13, label %if.else.i.i.if.then.i11.i.i_crit_edge
    i16 5, label %if.else.i.i.if.then.i11.i.i_crit_edge30
  ]

if.else.i.i.if.then.i11.i.i_crit_edge30:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i11.i.i

if.else.i.i.if.then.i11.i.i_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i11.i.i

if.else.i.i.for.inc.i.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i

if.then.i11.i.i:                                  ; preds = %if.else.i.i.if.then.i11.i.i_crit_edge, %if.else.i.i.if.then.i11.i.i_crit_edge30
  %arrayidx.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 0
  %182 = ptrtoint ptr %tlv.addr.7.i.i to i32
  call void @__asan_storeN_noabort(i32 %182, i32 2)
  store i16 15105, ptr %tlv.addr.7.i.i, align 1
  %183 = ptrtoint ptr %length.i7.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %length.i7.i.i, align 2
  %add.i8.i.i = add i16 %184, 2
  %185 = tail call i16 @llvm.bswap.i16(i16 %add.i8.i.i) #6
  %len.i9.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.7.i.i, i32 0, i32 1
  %186 = ptrtoint ptr %len.i9.i.i to i32
  call void @__asan_storeN_noabort(i32 %186, i32 2)
  store i16 %185, ptr %len.i9.i.i, align 1
  %187 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx.i.i.i, align 2
  %key_index21.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %tlv.addr.7.i.i, i32 0, i32 1
  %189 = ptrtoint ptr %key_index21.i.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %key_index21.i.i.i, align 1
  %is_default.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 0, i32 1
  %190 = ptrtoint ptr %is_default.i.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %is_default.i.i.i, align 1
  %is_default24.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %tlv.addr.7.i.i, i32 0, i32 2
  %192 = ptrtoint ptr %is_default24.i.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %is_default24.i.i.i, align 1
  %key.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %tlv.addr.7.i.i, i32 0, i32 3
  %key27.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 0, i32 3
  %193 = ptrtoint ptr %length.i7.i.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %length.i7.i.i, align 2
  %conv32.i.i.i = zext i16 %194 to i32
  %195 = call ptr @memcpy(ptr %key.i.i.i, ptr %key27.i.i.i, i32 %conv32.i.i.i)
  %196 = load i16, ptr %length.i7.i.i, align 2
  %conv36.i.i.i = zext i16 %196 to i32
  %add37.i.i.i = add nuw nsw i32 %conv36.i.i.i, 6
  %197 = trunc i32 %add37.i.i.i to i16
  %conv40.i.i.i = add i16 %cmd_size.7.i.i, %197
  %add.ptr.i10.i.i = getelementptr i8, ptr %tlv.addr.7.i.i, i32 %add37.i.i.i
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i11.i.i, %if.else.i.i.for.inc.i.i.i_crit_edge
  %cmd_size.1.i12.i.i = phi i16 [ %conv40.i.i.i, %if.then.i11.i.i ], [ %cmd_size.7.i.i, %if.else.i.i.for.inc.i.i.i_crit_edge ]
  %tlv.1.i13.i.i = phi ptr [ %add.ptr.i10.i.i, %if.then.i11.i.i ], [ %tlv.addr.7.i.i, %if.else.i.i.for.inc.i.i.i_crit_edge ]
  %length.1.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 1, i32 2
  %198 = ptrtoint ptr %length.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %length.1.i.i.i, align 2
  %200 = zext i16 %199 to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %199, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge [
    i16 13, label %for.inc.i.i.i.if.then.1.i.i.i_crit_edge
    i16 5, label %for.inc.i.i.i.if.then.1.i.i.i_crit_edge31
  ]

for.inc.i.i.i.if.then.1.i.i.i_crit_edge31:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.1.i.i.i

for.inc.i.i.i.if.then.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.1.i.i.i

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i.i.i

if.then.1.i.i.i:                                  ; preds = %for.inc.i.i.i.if.then.1.i.i.i_crit_edge, %for.inc.i.i.i.if.then.1.i.i.i_crit_edge31
  %arrayidx.1.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 1
  %201 = ptrtoint ptr %tlv.1.i13.i.i to i32
  call void @__asan_storeN_noabort(i32 %201, i32 2)
  store i16 15105, ptr %tlv.1.i13.i.i, align 1
  %202 = ptrtoint ptr %length.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %length.1.i.i.i, align 2
  %add.1.i.i.i = add i16 %203, 2
  %204 = tail call i16 @llvm.bswap.i16(i16 %add.1.i.i.i) #6
  %len.1.i.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.1.i13.i.i, i32 0, i32 1
  %205 = ptrtoint ptr %len.1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %205, i32 2)
  store i16 %204, ptr %len.1.i.i.i, align 1
  %206 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx.1.i.i.i, align 2
  %key_index21.1.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %tlv.1.i13.i.i, i32 0, i32 1
  %208 = ptrtoint ptr %key_index21.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %key_index21.1.i.i.i, align 1
  %is_default.1.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 1, i32 1
  %209 = ptrtoint ptr %is_default.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %is_default.1.i.i.i, align 1
  %is_default24.1.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %tlv.1.i13.i.i, i32 0, i32 2
  %211 = ptrtoint ptr %is_default24.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %is_default24.1.i.i.i, align 1
  %key.1.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %tlv.1.i13.i.i, i32 0, i32 3
  %key27.1.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 1, i32 3
  %212 = ptrtoint ptr %length.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %length.1.i.i.i, align 2
  %conv32.1.i.i.i = zext i16 %213 to i32
  %214 = call ptr @memcpy(ptr %key.1.i.i.i, ptr %key27.1.i.i.i, i32 %conv32.1.i.i.i)
  %215 = load i16, ptr %length.1.i.i.i, align 2
  %conv36.1.i.i.i = zext i16 %215 to i32
  %add37.1.i.i.i = add nuw nsw i32 %conv36.1.i.i.i, 6
  %216 = trunc i32 %add37.1.i.i.i to i16
  %conv40.1.i.i.i = add i16 %cmd_size.1.i12.i.i, %216
  %add.ptr.1.i.i.i = getelementptr i8, ptr %tlv.1.i13.i.i, i32 %add37.1.i.i.i
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.then.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %cmd_size.1.1.i.i.i = phi i16 [ %conv40.1.i.i.i, %if.then.1.i.i.i ], [ %cmd_size.1.i12.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge ]
  %tlv.1.1.i.i.i = phi ptr [ %add.ptr.1.i.i.i, %if.then.1.i.i.i ], [ %tlv.1.i13.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge ]
  %length.2.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 2, i32 2
  %217 = ptrtoint ptr %length.2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %length.2.i.i.i, align 2
  %219 = zext i16 %218 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %218, label %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge [
    i16 13, label %for.inc.1.i.i.i.if.then.2.i.i.i_crit_edge
    i16 5, label %for.inc.1.i.i.i.if.then.2.i.i.i_crit_edge32
  ]

for.inc.1.i.i.i.if.then.2.i.i.i_crit_edge32:      ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.2.i.i.i

for.inc.1.i.i.i.if.then.2.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.2.i.i.i

for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i.i.i

if.then.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i.if.then.2.i.i.i_crit_edge, %for.inc.1.i.i.i.if.then.2.i.i.i_crit_edge32
  %arrayidx.2.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 2
  %220 = ptrtoint ptr %tlv.1.1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %220, i32 2)
  store i16 15105, ptr %tlv.1.1.i.i.i, align 1
  %221 = ptrtoint ptr %length.2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %length.2.i.i.i, align 2
  %add.2.i.i.i = add i16 %222, 2
  %223 = tail call i16 @llvm.bswap.i16(i16 %add.2.i.i.i) #6
  %len.2.i.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.1.1.i.i.i, i32 0, i32 1
  %224 = ptrtoint ptr %len.2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %224, i32 2)
  store i16 %223, ptr %len.2.i.i.i, align 1
  %225 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx.2.i.i.i, align 2
  %key_index21.2.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %tlv.1.1.i.i.i, i32 0, i32 1
  %227 = ptrtoint ptr %key_index21.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %key_index21.2.i.i.i, align 1
  %is_default.2.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 2, i32 1
  %228 = ptrtoint ptr %is_default.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %is_default.2.i.i.i, align 1
  %is_default24.2.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %tlv.1.1.i.i.i, i32 0, i32 2
  %230 = ptrtoint ptr %is_default24.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %is_default24.2.i.i.i, align 1
  %key.2.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %tlv.1.1.i.i.i, i32 0, i32 3
  %key27.2.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 2, i32 3
  %231 = ptrtoint ptr %length.2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %length.2.i.i.i, align 2
  %conv32.2.i.i.i = zext i16 %232 to i32
  %233 = call ptr @memcpy(ptr %key.2.i.i.i, ptr %key27.2.i.i.i, i32 %conv32.2.i.i.i)
  %234 = load i16, ptr %length.2.i.i.i, align 2
  %conv36.2.i.i.i = zext i16 %234 to i32
  %add37.2.i.i.i = add nuw nsw i32 %conv36.2.i.i.i, 6
  %235 = trunc i32 %add37.2.i.i.i to i16
  %conv40.2.i.i.i = add i16 %cmd_size.1.1.i.i.i, %235
  %add.ptr.2.i.i.i = getelementptr i8, ptr %tlv.1.1.i.i.i, i32 %add37.2.i.i.i
  br label %for.inc.2.i.i.i

for.inc.2.i.i.i:                                  ; preds = %if.then.2.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge
  %cmd_size.1.2.i.i.i = phi i16 [ %conv40.2.i.i.i, %if.then.2.i.i.i ], [ %cmd_size.1.1.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge ]
  %tlv.1.2.i.i.i = phi ptr [ %add.ptr.2.i.i.i, %if.then.2.i.i.i ], [ %tlv.1.1.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge ]
  %length.3.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 3, i32 2
  %236 = ptrtoint ptr %length.3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %length.3.i.i.i, align 2
  %238 = zext i16 %237 to i64
  call void @__sanitizer_cov_trace_switch(i64 %238, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %237, label %for.inc.2.i.i.i.if.end188.i.i_crit_edge [
    i16 13, label %for.inc.2.i.i.i.if.then.3.i.i.i_crit_edge
    i16 5, label %for.inc.2.i.i.i.if.then.3.i.i.i_crit_edge33
  ]

for.inc.2.i.i.i.if.then.3.i.i.i_crit_edge33:      ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.3.i.i.i

for.inc.2.i.i.i.if.then.3.i.i.i_crit_edge:        ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.3.i.i.i

for.inc.2.i.i.i.if.end188.i.i_crit_edge:          ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end188.i.i

if.then.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i.if.then.3.i.i.i_crit_edge, %for.inc.2.i.i.i.if.then.3.i.i.i_crit_edge33
  %arrayidx.3.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 3
  %239 = ptrtoint ptr %tlv.1.2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %239, i32 2)
  store i16 15105, ptr %tlv.1.2.i.i.i, align 1
  %240 = ptrtoint ptr %length.3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %length.3.i.i.i, align 2
  %add.3.i.i.i = add i16 %241, 2
  %242 = tail call i16 @llvm.bswap.i16(i16 %add.3.i.i.i) #6
  %len.3.i.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.1.2.i.i.i, i32 0, i32 1
  %243 = ptrtoint ptr %len.3.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %243, i32 2)
  store i16 %242, ptr %len.3.i.i.i, align 1
  %244 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx.3.i.i.i, align 2
  %key_index21.3.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %tlv.1.2.i.i.i, i32 0, i32 1
  %246 = ptrtoint ptr %key_index21.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %key_index21.3.i.i.i, align 1
  %is_default.3.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 3, i32 1
  %247 = ptrtoint ptr %is_default.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %is_default.3.i.i.i, align 1
  %is_default24.3.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %tlv.1.2.i.i.i, i32 0, i32 2
  %249 = ptrtoint ptr %is_default24.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %is_default24.3.i.i.i, align 1
  %key.3.i.i.i = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %tlv.1.2.i.i.i, i32 0, i32 3
  %key27.3.i.i.i = getelementptr %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 18, i32 3, i32 3
  %250 = ptrtoint ptr %length.3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %length.3.i.i.i, align 2
  %conv32.3.i.i.i = zext i16 %251 to i32
  %252 = call ptr @memcpy(ptr %key.3.i.i.i, ptr %key27.3.i.i.i, i32 %conv32.3.i.i.i)
  %253 = load i16, ptr %length.3.i.i.i, align 2
  %conv36.3.i.i.i = zext i16 %253 to i32
  %add37.3.i.i.i = add nuw nsw i32 %conv36.3.i.i.i, 6
  %254 = trunc i32 %add37.3.i.i.i to i16
  %conv40.3.i.i.i = add i16 %cmd_size.1.2.i.i.i, %254
  %add.ptr.3.i.i.i = getelementptr i8, ptr %tlv.1.2.i.i.i, i32 %add37.3.i.i.i
  br label %if.end188.i.i

if.end188.i.i:                                    ; preds = %if.then.3.i.i.i, %for.inc.2.i.i.i.if.end188.i.i_crit_edge, %if.then53.i.i.i, %if.end50.i.i.i.if.end188.i.i_crit_edge
  %tlv.addr.8.i.i = phi ptr [ %add.ptr76.i.i.i, %if.then53.i.i.i ], [ %tlv.2.i.i.i, %if.end50.i.i.i.if.end188.i.i_crit_edge ], [ %add.ptr.3.i.i.i, %if.then.3.i.i.i ], [ %tlv.1.2.i.i.i, %for.inc.2.i.i.i.if.end188.i.i_crit_edge ]
  %cmd_size.8.i.i = phi i16 [ %conv72.i.i.i, %if.then53.i.i.i ], [ %cmd_size.2.i.i.i, %if.end50.i.i.i.if.end188.i.i_crit_edge ], [ %conv40.3.i.i.i, %if.then.3.i.i.i ], [ %cmd_size.1.2.i.i.i, %for.inc.2.i.i.i.if.end188.i.i_crit_edge ]
  %auth_mode.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 12
  %255 = ptrtoint ptr %auth_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %auth_mode.i.i, align 2
  %257 = zext i16 %256 to i64
  call void @__sanitizer_cov_trace_switch(i64 %257, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %256, label %if.end188.i.i.if.end209.i.i_crit_edge [
    i16 255, label %if.end188.i.i.if.then197.i.i_crit_edge
    i16 1, label %if.end188.i.i.if.then197.i.i_crit_edge34
    i16 0, label %if.end188.i.i.if.then197.i.i_crit_edge35
  ]

if.end188.i.i.if.then197.i.i_crit_edge35:         ; preds = %if.end188.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then197.i.i

if.end188.i.i.if.then197.i.i_crit_edge34:         ; preds = %if.end188.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then197.i.i

if.end188.i.i.if.then197.i.i_crit_edge:           ; preds = %if.end188.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then197.i.i

if.end188.i.i.if.end209.i.i_crit_edge:            ; preds = %if.end188.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209.i.i

if.then197.i.i:                                   ; preds = %if.end188.i.i.if.then197.i.i_crit_edge, %if.end188.i.i.if.then197.i.i_crit_edge34, %if.end188.i.i.if.then197.i.i_crit_edge35
  %258 = ptrtoint ptr %tlv.addr.8.i.i to i32
  call void @__asan_storeN_noabort(i32 %258, i32 2)
  store i16 7937, ptr %tlv.addr.8.i.i, align 1
  %len201.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.8.i.i, i32 0, i32 1
  %259 = ptrtoint ptr %len201.i.i to i32
  call void @__asan_storeN_noabort(i32 %259, i32 2)
  store i16 256, ptr %len201.i.i, align 1
  %260 = ptrtoint ptr %auth_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %auth_mode.i.i, align 2
  %conv203.i.i = trunc i16 %261 to i8
  %auth_type204.i.i = getelementptr inbounds %struct.host_cmd_tlv_auth_type, ptr %tlv.addr.8.i.i, i32 0, i32 1
  %262 = ptrtoint ptr %auth_type204.i.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %conv203.i.i, ptr %auth_type204.i.i, align 1
  %add206.i.i = add i16 %cmd_size.8.i.i, 5
  %add.ptr208.i.i = getelementptr i8, ptr %tlv.addr.8.i.i, i32 5
  br label %if.end209.i.i

if.end209.i.i:                                    ; preds = %if.then197.i.i, %if.end188.i.i.if.end209.i.i_crit_edge
  %tlv.addr.9.i.i = phi ptr [ %tlv.addr.8.i.i, %if.end188.i.i.if.end209.i.i_crit_edge ], [ %add.ptr208.i.i, %if.then197.i.i ]
  %cmd_size.9.i.i = phi i16 [ %cmd_size.8.i.i, %if.end188.i.i.if.end209.i.i_crit_edge ], [ %add206.i.i, %if.then197.i.i ]
  %263 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %264)
  %tobool211.not.i.i = icmp eq i16 %264, 0
  br i1 %tobool211.not.i.i, label %if.end209.i.i.if.end222.i.i_crit_edge, label %if.then212.i.i

if.end209.i.i.if.end222.i.i_crit_edge:            ; preds = %if.end209.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end222.i.i

if.then212.i.i:                                   ; preds = %if.end209.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %265 = ptrtoint ptr %tlv.addr.9.i.i to i32
  call void @__asan_storeN_noabort(i32 %265, i32 2)
  store i16 16385, ptr %tlv.addr.9.i.i, align 1
  %len216.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.9.i.i, i32 0, i32 1
  %266 = ptrtoint ptr %len216.i.i to i32
  call void @__asan_storeN_noabort(i32 %266, i32 2)
  store i16 512, ptr %len216.i.i, align 1
  %267 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %protocol.i.i, align 4
  %269 = tail call i16 @llvm.bswap.i16(i16 %268) #6
  %proto.i.i = getelementptr inbounds %struct.host_cmd_tlv_encrypt_protocol, ptr %tlv.addr.9.i.i, i32 0, i32 1
  %270 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_storeN_noabort(i32 %270, i32 2)
  store i16 %269, ptr %proto.i.i, align 1
  %add219.i.i = add i16 %cmd_size.9.i.i, 6
  %add.ptr221.i.i = getelementptr i8, ptr %tlv.addr.9.i.i, i32 6
  br label %if.end222.i.i

if.end222.i.i:                                    ; preds = %if.then212.i.i, %if.end209.i.i.if.end222.i.i_crit_edge
  %tlv.addr.10.i.i = phi ptr [ %tlv.addr.9.i.i, %if.end209.i.i.if.end222.i.i_crit_edge ], [ %add.ptr221.i.i, %if.then212.i.i ]
  %cmd_size.10.i.i = phi i16 [ %cmd_size.9.i.i, %if.end209.i.i.if.end222.i.i_crit_edge ], [ %add219.i.i, %if.then212.i.i ]
  %ht_cap.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 19
  %271 = ptrtoint ptr %ht_cap.i.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %ht_cap.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %272)
  %tobool223.not.i.i = icmp eq i16 %272, 0
  br i1 %tobool223.not.i.i, label %if.end222.i.i.if.end252.i.i_crit_edge, label %if.then224.i.i

if.end222.i.i.if.end252.i.i_crit_edge:            ; preds = %if.end222.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252.i.i

if.then224.i.i:                                   ; preds = %if.end222.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %273 = ptrtoint ptr %tlv.addr.10.i.i to i32
  call void @__asan_storeN_noabort(i32 %273, i32 2)
  store i16 11520, ptr %tlv.addr.10.i.i, align 1
  %len228.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.10.i.i, i32 0, i32 1
  %274 = ptrtoint ptr %len228.i.i to i32
  call void @__asan_storeN_noabort(i32 %274, i32 2)
  store i16 6656, ptr %len228.i.i, align 1
  %275 = ptrtoint ptr %ht_cap.i.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %ht_cap.i.i, align 4
  %ht_cap231.i.i = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %tlv.addr.10.i.i, i32 0, i32 1
  %277 = ptrtoint ptr %ht_cap231.i.i to i32
  call void @__asan_storeN_noabort(i32 %277, i32 2)
  store i16 %276, ptr %ht_cap231.i.i, align 1
  %ampdu_params_info.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 19, i32 1
  %278 = ptrtoint ptr %ampdu_params_info.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %ampdu_params_info.i.i, align 2
  %ampdu_params_info235.i.i = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %tlv.addr.10.i.i, i32 0, i32 1, i32 1
  %280 = ptrtoint ptr %ampdu_params_info235.i.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %279, ptr %ampdu_params_info235.i.i, align 1
  %mcs.i.i = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %tlv.addr.10.i.i, i32 0, i32 1, i32 2
  %mcs238.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 19, i32 2
  %281 = call ptr @memcpy(ptr %mcs.i.i, ptr %mcs238.i.i, i32 16)
  %extended_ht_cap_info.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 19, i32 3
  %282 = ptrtoint ptr %extended_ht_cap_info.i.i to i32
  call void @__asan_loadN_noabort(i32 %282, i32 2)
  %283 = load i16, ptr %extended_ht_cap_info.i.i, align 1
  %extended_ht_cap_info241.i.i = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %tlv.addr.10.i.i, i32 0, i32 1, i32 3
  %284 = ptrtoint ptr %extended_ht_cap_info241.i.i to i32
  call void @__asan_storeN_noabort(i32 %284, i32 2)
  store i16 %283, ptr %extended_ht_cap_info241.i.i, align 1
  %tx_BF_cap_info.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 19, i32 4
  %285 = ptrtoint ptr %tx_BF_cap_info.i.i to i32
  call void @__asan_loadN_noabort(i32 %285, i32 4)
  %286 = load i32, ptr %tx_BF_cap_info.i.i, align 1
  %tx_BF_cap_info244.i.i = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %tlv.addr.10.i.i, i32 0, i32 1, i32 4
  %287 = ptrtoint ptr %tx_BF_cap_info244.i.i to i32
  call void @__asan_storeN_noabort(i32 %287, i32 4)
  store i32 %286, ptr %tx_BF_cap_info244.i.i, align 1
  %antenna_selection_info.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 19, i32 5
  %288 = ptrtoint ptr %antenna_selection_info.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %antenna_selection_info.i.i, align 1
  %antenna_selection_info247.i.i = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %tlv.addr.10.i.i, i32 0, i32 1, i32 5
  %290 = ptrtoint ptr %antenna_selection_info247.i.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %289, ptr %antenna_selection_info247.i.i, align 1
  %add249.i.i = add i16 %cmd_size.10.i.i, 30
  %add.ptr251.i.i = getelementptr i8, ptr %tlv.addr.10.i.i, i32 30
  br label %if.end252.i.i

if.end252.i.i:                                    ; preds = %if.then224.i.i, %if.end222.i.i.if.end252.i.i_crit_edge
  %tlv.addr.11.i.i = phi ptr [ %tlv.addr.10.i.i, %if.end222.i.i.if.end252.i.i_crit_edge ], [ %add.ptr251.i.i, %if.then224.i.i ]
  %cmd_size.11.i.i = phi i16 [ %cmd_size.10.i.i, %if.end222.i.i.if.end252.i.i_crit_edge ], [ %add249.i.i, %if.then224.i.i ]
  %qos_info.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 26, i32 3
  %291 = ptrtoint ptr %qos_info.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %qos_info.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %292)
  %cmp254.not.i.i = icmp eq i8 %292, -1
  br i1 %cmp254.not.i.i, label %if.end252.i.i.if.end267.i.i_crit_edge, label %if.then256.i.i

if.end252.i.i.if.end267.i.i_crit_edge:            ; preds = %if.end252.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end267.i.i

if.then256.i.i:                                   ; preds = %if.end252.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %wmm_info.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 26
  %293 = ptrtoint ptr %tlv.addr.11.i.i to i32
  call void @__asan_storeN_noabort(i32 %293, i32 2)
  store i16 -8960, ptr %tlv.addr.11.i.i, align 1
  %len260.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.11.i.i, i32 0, i32 1
  %294 = ptrtoint ptr %len260.i.i to i32
  call void @__asan_storeN_noabort(i32 %294, i32 2)
  store i16 6144, ptr %len260.i.i, align 1
  %wmm_info261.i.i = getelementptr inbounds %struct.mwifiex_ie_types_wmmcap, ptr %tlv.addr.11.i.i, i32 0, i32 1
  %295 = call ptr @memcpy(ptr %wmm_info261.i.i, ptr %wmm_info.i.i, i32 24)
  %add264.i.i = add i16 %cmd_size.11.i.i, 28
  %add.ptr266.i.i = getelementptr i8, ptr %tlv.addr.11.i.i, i32 28
  br label %if.end267.i.i

if.end267.i.i:                                    ; preds = %if.then256.i.i, %if.end252.i.i.if.end267.i.i_crit_edge
  %tlv.addr.12.i.i = phi ptr [ %tlv.addr.11.i.i, %if.end252.i.i.if.end267.i.i_crit_edge ], [ %add.ptr266.i.i, %if.then256.i.i ]
  %cmd_size.12.i.i = phi i16 [ %cmd_size.11.i.i, %if.end252.i.i.if.end267.i.i_crit_edge ], [ %add264.i.i, %if.then256.i.i ]
  %sta_ao_timer.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 22
  %296 = ptrtoint ptr %sta_ao_timer.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %sta_ao_timer.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool268.not.i.i = icmp eq i32 %297, 0
  br i1 %tobool268.not.i.i, label %if.end267.i.i.if.end280.i.i_crit_edge, label %if.then269.i.i

if.end267.i.i.if.end280.i.i_crit_edge:            ; preds = %if.end267.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end280.i.i

if.then269.i.i:                                   ; preds = %if.end267.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %298 = ptrtoint ptr %tlv.addr.12.i.i to i32
  call void @__asan_storeN_noabort(i32 %298, i32 2)
  store i16 14593, ptr %tlv.addr.12.i.i, align 1
  %len273.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.12.i.i, i32 0, i32 1
  %299 = ptrtoint ptr %len273.i.i to i32
  call void @__asan_storeN_noabort(i32 %299, i32 2)
  store i16 1024, ptr %len273.i.i, align 1
  %300 = ptrtoint ptr %sta_ao_timer.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %sta_ao_timer.i.i, align 4
  %302 = tail call i32 @llvm.bswap.i32(i32 %301) #6
  %sta_ao_timer275.i.i = getelementptr inbounds %struct.host_cmd_tlv_ageout_timer, ptr %tlv.addr.12.i.i, i32 0, i32 1
  %303 = ptrtoint ptr %sta_ao_timer275.i.i to i32
  call void @__asan_storeN_noabort(i32 %303, i32 4)
  store i32 %302, ptr %sta_ao_timer275.i.i, align 1
  %add277.i.i = add i16 %cmd_size.12.i.i, 8
  %add.ptr279.i.i = getelementptr i8, ptr %tlv.addr.12.i.i, i32 8
  br label %if.end280.i.i

if.end280.i.i:                                    ; preds = %if.then269.i.i, %if.end267.i.i.if.end280.i.i_crit_edge
  %tlv.addr.13.i.i = phi ptr [ %tlv.addr.12.i.i, %if.end267.i.i.if.end280.i.i_crit_edge ], [ %add.ptr279.i.i, %if.then269.i.i ]
  %cmd_size.13.i.i = phi i16 [ %cmd_size.12.i.i, %if.end267.i.i.if.end280.i.i_crit_edge ], [ %add277.i.i, %if.then269.i.i ]
  %power_constraint.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 25
  %304 = ptrtoint ptr %power_constraint.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %power_constraint.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %tobool281.not.i.i = icmp eq i8 %305, 0
  br i1 %tobool281.not.i.i, label %if.end280.i.i.if.end292.i.i_crit_edge, label %if.then282.i.i

if.end280.i.i.if.end292.i.i_crit_edge:            ; preds = %if.end280.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end292.i.i

if.then282.i.i:                                   ; preds = %if.end280.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %306 = ptrtoint ptr %tlv.addr.13.i.i to i32
  call void @__asan_storeN_noabort(i32 %306, i32 2)
  store i16 8192, ptr %tlv.addr.13.i.i, align 1
  %len286.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.13.i.i, i32 0, i32 1
  %307 = ptrtoint ptr %len286.i.i to i32
  call void @__asan_storeN_noabort(i32 %307, i32 2)
  store i16 256, ptr %len286.i.i, align 1
  %308 = ptrtoint ptr %power_constraint.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %power_constraint.i.i, align 1
  %constraint.i.i = getelementptr inbounds %struct.host_cmd_tlv_power_constraint, ptr %tlv.addr.13.i.i, i32 0, i32 1
  %310 = ptrtoint ptr %constraint.i.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %309, ptr %constraint.i.i, align 1
  %add289.i.i = add i16 %cmd_size.13.i.i, 5
  %add.ptr291.i.i = getelementptr i8, ptr %tlv.addr.13.i.i, i32 5
  br label %if.end292.i.i

if.end292.i.i:                                    ; preds = %if.then282.i.i, %if.end280.i.i.if.end292.i.i_crit_edge
  %tlv.addr.14.i.i = phi ptr [ %tlv.addr.13.i.i, %if.end280.i.i.if.end292.i.i_crit_edge ], [ %add.ptr291.i.i, %if.then282.i.i ]
  %cmd_size.14.i.i = phi i16 [ %cmd_size.13.i.i, %if.end280.i.i.if.end292.i.i_crit_edge ], [ %add289.i.i, %if.then282.i.i ]
  %ps_sta_ao_timer.i.i = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %data_buf, i32 0, i32 23
  %311 = ptrtoint ptr %ps_sta_ao_timer.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %ps_sta_ao_timer.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %tobool293.not.i.i = icmp eq i32 %312, 0
  br i1 %tobool293.not.i.i, label %if.end292.i.i.mwifiex_cmd_uap_sys_config.exit_crit_edge, label %if.then294.i.i

if.end292.i.i.mwifiex_cmd_uap_sys_config.exit_crit_edge: ; preds = %if.end292.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mwifiex_cmd_uap_sys_config.exit

if.then294.i.i:                                   ; preds = %if.end292.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %313 = ptrtoint ptr %tlv.addr.14.i.i to i32
  call void @__asan_storeN_noabort(i32 %313, i32 2)
  store i16 31489, ptr %tlv.addr.14.i.i, align 1
  %len298.i.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.addr.14.i.i, i32 0, i32 1
  %314 = ptrtoint ptr %len298.i.i to i32
  call void @__asan_storeN_noabort(i32 %314, i32 2)
  store i16 1024, ptr %len298.i.i, align 1
  %315 = ptrtoint ptr %ps_sta_ao_timer.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %ps_sta_ao_timer.i.i, align 4
  %317 = tail call i32 @llvm.bswap.i32(i32 %316) #6
  %sta_ao_timer300.i.i = getelementptr inbounds %struct.host_cmd_tlv_ageout_timer, ptr %tlv.addr.14.i.i, i32 0, i32 1
  %318 = ptrtoint ptr %sta_ao_timer300.i.i to i32
  call void @__asan_storeN_noabort(i32 %318, i32 4)
  store i32 %317, ptr %sta_ao_timer300.i.i, align 1
  %add302.i.i = add i16 %cmd_size.14.i.i, 8
  br label %mwifiex_cmd_uap_sys_config.exit

sw.bb2.i:                                         ; preds = %sw.bb
  %tobool.not.i19.i = icmp eq ptr %data_buf, null
  br i1 %tobool.not.i19.i, label %sw.bb2.i.cleanup_crit_edge, label %lor.lhs.false.i21.i

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i21.i:                              ; preds = %sw.bb2.i
  %len.i20.i = getelementptr inbounds %struct.mwifiex_ie_list, ptr %data_buf, i32 0, i32 1
  %319 = ptrtoint ptr %len.i20.i to i32
  call void @__asan_loadN_noabort(i32 %319, i32 2)
  %320 = load i16, ptr %len.i20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %320)
  %tobool1.not.i.i = icmp eq i16 %320, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i21.i.cleanup_crit_edge, label %if.end6.i

lor.lhs.false.i21.i.cleanup_crit_edge:            ; preds = %lor.lhs.false.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %lor.lhs.false.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  %321 = tail call i16 @llvm.bswap.i16(i16 %320) #6
  %add4.i.i = add i16 %321, 14
  %322 = ptrtoint ptr %tlv1.i to i32
  call void @__asan_storeN_noabort(i32 %322, i32 2)
  store i16 26881, ptr %tlv1.i, align 1
  %323 = ptrtoint ptr %len.i20.i to i32
  call void @__asan_loadN_noabort(i32 %323, i32 2)
  %324 = load i16, ptr %len.i20.i, align 1
  %len7.i.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 2
  %325 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_storeN_noabort(i32 %325, i32 2)
  store i16 %324, ptr %len7.i.i, align 1
  %add.ptr.i22.i = getelementptr %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 3
  %ie_list.i.i = getelementptr inbounds %struct.mwifiex_ie_list, ptr %data_buf, i32 0, i32 2
  %326 = load i16, ptr %len.i20.i, align 1
  %327 = tail call i16 @llvm.bswap.i16(i16 %326) #6
  %conv9.i.i = zext i16 %327 to i32
  %328 = call ptr @memcpy(ptr %add.ptr.i22.i, ptr %ie_list.i.i, i32 %conv9.i.i)
  br label %mwifiex_cmd_uap_sys_config.exit

mwifiex_cmd_uap_sys_config.exit:                  ; preds = %if.end6.i, %if.then294.i.i, %if.end292.i.i.mwifiex_cmd_uap_sys_config.exit_crit_edge
  %cmd_size.15.i.sink.i = phi i16 [ %add4.i.i, %if.end6.i ], [ %cmd_size.14.i.i, %if.end292.i.i.mwifiex_cmd_uap_sys_config.exit_crit_edge ], [ %add302.i.i, %if.then294.i.i ]
  %329 = tail call i16 @llvm.bswap.i16(i16 %cmd_size.15.i.sink.i) #6
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge27, %entry.sw.bb1_crit_edge28, %entry.sw.bb1_crit_edge29
  %330 = tail call i16 @llvm.bswap.i16(i16 %cmd_no)
  %331 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %331, i32 2)
  store i16 %330, ptr %cmd_buf, align 1
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %params.i23 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %332 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %332, i32 2)
  store i16 -19200, ptr %cmd_buf, align 1
  %333 = call ptr @memcpy(ptr %params.i23, ptr %data_buf, i32 6)
  %reason.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 3
  %334 = ptrtoint ptr %reason.i to i32
  call void @__asan_storeN_noabort(i32 %334, i32 2)
  store i16 768, ptr %reason.i, align 1
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %entry
  %call8 = tail call i32 @mwifiex_cmd_issue_chan_report_request(ptr noundef %priv, ptr noundef %cmd_buf, ptr noundef %data_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %sw.bb7.sw.epilog_crit_edge, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %cmd_no to i32
  %335 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %336, i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv) #6
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %sw.bb2, %sw.bb1, %mwifiex_cmd_uap_sys_config.exit
  %.sink = phi i16 [ %329, %mwifiex_cmd_uap_sys_config.exit ], [ 4096, %sw.bb2 ], [ 2048, %sw.bb1 ]
  %size.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %337 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %337, i32 2)
  store i16 %.sink, ptr %size.i, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb7.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %sw.bb7.cleanup_crit_edge, %lor.lhs.false.i21.i.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.default ], [ 0, %sw.epilog ], [ -1, %sw.bb7.cleanup_crit_edge ], [ -1, %sw.bb.cleanup_crit_edge ], [ -1, %lor.lhs.false.i21.i.cleanup_crit_edge ], [ -1, %sw.bb2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_issue_chan_report_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_uap_set_channel(ptr noundef %priv, ptr nocapture noundef %bss_cfg, [7 x i32] %chandef.coerce) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chandef.coerce.fca.0.extract = extractvalue [7 x i32] %chandef.coerce, 0
  %0 = inttoptr i32 %chandef.coerce.fca.0.extract to ptr
  %chandef.coerce.fca.1.extract = extractvalue [7 x i32] %chandef.coerce, 1
  %chandef.coerce.fca.2.extract = extractvalue [7 x i32] %chandef.coerce, 2
  %chandef.coerce.fca.3.extract = extractvalue [7 x i32] %chandef.coerce, 3
  %chandef.coerce.fca.4.extract = extractvalue [7 x i32] %chandef.coerce, 4
  %chandef.coerce.fca.5.extract = extractvalue [7 x i32] %chandef.coerce, 5
  %chandef.coerce.fca.6.extract = extractvalue [7 x i32] %chandef.coerce, 6
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %config_bands1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 84
  %3 = ptrtoint ptr %config_bands1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config_bands1, align 2
  %bss_chandef = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 139
  %5 = ptrtoint ptr %bss_chandef to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %0, ptr %bss_chandef, align 8
  %chandef.sroa.5.0.bss_chandef.sroa_idx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 139, i32 1
  %6 = ptrtoint ptr %chandef.sroa.5.0.bss_chandef.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %chandef.coerce.fca.1.extract, ptr %chandef.sroa.5.0.bss_chandef.sroa_idx, align 4
  %chandef.sroa.11.0.bss_chandef.sroa_idx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 139, i32 2
  %7 = ptrtoint ptr %chandef.sroa.11.0.bss_chandef.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %chandef.coerce.fca.2.extract, ptr %chandef.sroa.11.0.bss_chandef.sroa_idx, align 8
  %chandef.sroa.13.0.bss_chandef.sroa_idx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 139, i32 3
  %8 = ptrtoint ptr %chandef.sroa.13.0.bss_chandef.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %chandef.coerce.fca.3.extract, ptr %chandef.sroa.13.0.bss_chandef.sroa_idx, align 4
  %chandef.sroa.14.0.bss_chandef.sroa_idx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 139, i32 4
  %9 = ptrtoint ptr %chandef.sroa.14.0.bss_chandef.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %chandef.coerce.fca.4.extract, ptr %chandef.sroa.14.0.bss_chandef.sroa_idx, align 8
  %chandef.sroa.15.0.bss_chandef.sroa_idx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 139, i32 4, i32 1
  %10 = ptrtoint ptr %chandef.sroa.15.0.bss_chandef.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %chandef.coerce.fca.5.extract, ptr %chandef.sroa.15.0.bss_chandef.sroa_idx, align 4
  %chandef.sroa.16.0.bss_chandef.sroa_idx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 139, i32 5
  %11 = ptrtoint ptr %chandef.sroa.16.0.bss_chandef.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %chandef.coerce.fca.6.extract, ptr %chandef.sroa.16.0.bss_chandef.sroa_idx, align 8
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %0, i32 0, i32 1
  %12 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %13, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #6
  %conv = trunc i32 %call.i to i8
  %14 = ptrtoint ptr %bss_cfg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %bss_cfg, align 4
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chandef.coerce.fca.1.extract)
  %cmp4.not = icmp eq i32 %chandef.coerce.fca.1.extract, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select = select i1 %cmp4.not, i8 3, i8 11
  br label %if.end26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select86 = select i1 %cmp4.not, i8 4, i8 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %chandef.coerce.fca.1.extract)
  %cmp19 = icmp ugt i32 %chandef.coerce.fca.1.extract, 2
  %17 = or i8 %spec.select86, 32
  %spec.select87 = select i1 %cmp19, i8 %17, i8 %spec.select86
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then
  %.sink = phi i8 [ 0, %if.then ], [ 1, %if.else ]
  %config_bands.1 = phi i8 [ %spec.select, %if.then ], [ %spec.select87, %if.else ]
  %18 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %bss_cfg, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %18, align 1
  %20 = zext i32 %chandef.coerce.fca.1.extract to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %chandef.coerce.fca.1.extract, label %sw.default [
    i32 6, label %if.end26.sw.epilog_crit_edge
    i32 7, label %if.end26.sw.epilog_crit_edge88
    i32 0, label %if.end26.sw.epilog_crit_edge89
    i32 1, label %if.end26.sw.epilog_crit_edge90
    i32 2, label %sw.bb28
    i32 3, label %if.end26.sw.bb44_crit_edge
    i32 4, label %if.end26.sw.bb44_crit_edge91
    i32 5, label %if.end26.sw.bb44_crit_edge92
  ]

if.end26.sw.bb44_crit_edge92:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb44

if.end26.sw.bb44_crit_edge91:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb44

if.end26.sw.bb44_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb44

if.end26.sw.epilog_crit_edge90:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end26.sw.epilog_crit_edge89:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end26.sw.epilog_crit_edge88:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end26
  %21 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %center_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chandef.coerce.fca.2.extract, i32 %22)
  %cmp31 = icmp ult i32 %chandef.coerce.fca.2.extract, %22
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %18, align 1
  br i1 %cmp31, label %if.then33, label %if.else38

if.then33:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  %25 = or i8 %24, 48
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %18, align 1
  br label %sw.epilog

if.else38:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  %27 = or i8 %24, 16
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %18, align 1
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end26.sw.bb44_crit_edge, %if.end26.sw.bb44_crit_edge91, %if.end26.sw.bb44_crit_edge92
  %conv46 = and i32 %call.i, 255
  %call47 = tail call zeroext i8 @mwifiex_get_sec_chan_offset(i32 noundef %conv46) #6
  %shl = shl i8 %call47, 4
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %18, align 1
  %or51 = or i8 %shl, %30
  store i8 %or51, ptr %18, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %32, i32 noundef 536870912, ptr noundef nonnull @.str.2, i32 noundef %chandef.coerce.fca.1.extract) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb44, %if.else38, %if.then33, %if.end26.sw.epilog_crit_edge, %if.end26.sw.epilog_crit_edge88, %if.end26.sw.epilog_crit_edge89, %if.end26.sw.epilog_crit_edge90
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 8
  %config_bands56 = getelementptr inbounds %struct.mwifiex_adapter, ptr %34, i32 0, i32 84
  %35 = ptrtoint ptr %config_bands56 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %config_bands.1, ptr %config_bands56, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %config_bands.1)
  %cmp59.not = icmp eq i8 %4, %config_bands.1
  br i1 %cmp59.not, label %sw.epilog.if.end64_crit_edge, label %if.then61

sw.epilog.if.end64_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then61:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %wiphy = getelementptr inbounds %struct.mwifiex_adapter, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy, align 4
  %call63 = tail call i32 @mwifiex_send_domain_info_cmd_fw(ptr noundef %39) #6
  tail call void @mwifiex_dnld_txpwr_table(ptr noundef %priv) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %sw.epilog.if.end64_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_get_sec_chan_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_domain_info_cmd_fw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_dnld_txpwr_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_config_start_uap(ptr noundef %priv, ptr noundef %bss_cfg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 176, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %bss_cfg, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.3) #6
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 177, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.4) #6
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %wep_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %4 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wep_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  %curr_pkt_filter8 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 17
  %6 = ptrtoint ptr %curr_pkt_filter8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curr_pkt_filter8, align 4
  %and = and i32 %7, -9
  %masksel = select i1 %tobool6.not, i32 0, i32 8
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %curr_pkt_filter8, align 4
  %curr_pkt_filter10 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 17
  %call11 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 40, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %curr_pkt_filter10, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp ne i32 %call11, 0
  %. = sext i1 %tobool12.not to i32
  br label %return

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then3 ], [ %., %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_vendor_elem(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_cmd.c", i32 471, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_cmd.c", i32 808, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_cmd.c", i32 864, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_cmd.c", i32 884, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_cmd.c", i32 891, i32 3}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i8 0, i8 2}
