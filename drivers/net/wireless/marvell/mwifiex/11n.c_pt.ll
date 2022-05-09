; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/11n.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/11n.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
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
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
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
%struct.mwifiex_tx_aggr = type { i8, i8, i8 }
%struct.mwifiex_add_ba_param = type { i32, i32, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mwifiex_vendor_spec_cfg_ie = type { i16, i16, [256 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.143, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.143 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.144 }
%union.anon.144 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_edmg = type { i8, i32 }
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
%struct.mwifiex_uap_bss_param = type <{ i8, i8, i16, i16, i8, i8, %struct.mwifiex_802_11_ssid, i8, i8, i8, i8, i16, i16, i16, i16, i16, [2 x i8], %struct.wpa_param, [4 x %struct.wep_key], %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, [14 x i8], i32, i32, i8, i8, %struct.mwifiex_types_wmm_info, [2 x i8] }>
%struct.mwifiex_802_11_ssid = type { i32, [32 x i8] }
%struct.wpa_param = type { i8, i8, i8, i32, [64 x i8] }
%struct.wep_key = type { i8, i8, i16, [13 x i8] }
%struct.mwifiex_types_wmm_info = type { [4 x i8], i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.148, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.148 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
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
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.159 }
%union.anon.159 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.host_cmd_ds_11n_delba = type <{ i8, [6 x i8], i16, i16, i8 }>
%struct.mwifiex_tx_ba_stream_tbl = type { %struct.list_head, i32, [6 x i8], i32, i8 }
%struct.host_cmd_ds_11n_addba_req = type { i8, [6 x i8], i8, i16, i16, i16 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.mwifiex_ra_list_tbl = type { %struct.list_head, %struct.sk_buff_head, [6 x i8], i32, i16, i16, i8, i32, i8, i16, i8, i8 }
%struct.host_cmd_ds_11n_addba_rsp = type { i8, [6 x i8], i8, i16, i16, i16, i16 }
%struct.mwifiex_ds_11n_tx_cfg = type { i16, i16, i16 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ie_types_htinfo = type { %struct.mwifiex_ie_types_header, %struct.ieee80211_ht_operation }
%struct.mwifiex_ie_types_chan_list_param_set = type <{ %struct.mwifiex_ie_types_header, [1 x %struct.mwifiex_chan_scan_param_set] }>
%struct.mwifiex_chan_scan_param_set = type <{ i8, i8, i8, i16, i16 }>
%struct.mwifiex_ie_types_extcap = type { %struct.mwifiex_ie_types_header, [0 x i8] }
%struct.mwifiex_rx_reorder_tbl = type { %struct.list_head, i32, [6 x i8], i32, i32, i32, ptr, %struct.reorder_tmr_cnxt, i8, i8 }
%struct.reorder_tmr_cnxt = type { %struct.timer_list, ptr, ptr, i8 }
%struct.mwifiex_ds_rx_reorder_tbl = type { i16, [6 x i8], i32, i32, [64 x i32] }
%struct.mwifiex_ds_tx_ba_stream_tbl = type { i16, [6 x i8], i8 }

@mwifiex_fill_cap_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/marvell/mwifiex/11n.c\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid radio type!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"info: BA stream complete\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BA stream not created\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmd: set tx_buf=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"info: tx_ba_tsr_tbl %p\0A\00", [40 x i8] zeroinitializer }, align 32
@mwifiex_send_addba.dialog_tok = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cmd: %s: tid %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.mwifiex_send_addba = private unnamed_addr constant [19 x i8] c"mwifiex_send_addba\00", align 1
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BA setup with unknown TDLS peer %pM!\0A\00", [58 x i8] zeroinitializer }, align 32
@mwifiex_11n_delba.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str, ptr @.str.10, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mwifiex\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mwifiex_11n_delba\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Send delba to tid=%d, %pM\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"data: %s tid=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.mwifiex_get_tx_ba_stream_tbl = private unnamed_addr constant [29 x i8] c"mwifiex_get_tx_ba_stream_tbl\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mwifiex_send_delba_txbastream_tbl.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.12, ptr @.str, ptr @.str.13, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mwifiex_send_delba_txbastream_tbl\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Tx:Send delba to tid=%d, %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [26 x i64] [i64 24, i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 56, i64 60, i64 64, i64 100, i64 104, i64 108, i64 112, i64 116, i64 120, i64 124, i64 128, i64 132, i64 136, i64 140, i64 144, i64 149, i64 153, i64 157, i64 161]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 44, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 45, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 187, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 200, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 227, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 502, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"dialog_tok\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 594, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 598, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 612, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 688, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 763, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [46 x i8] c"../drivers/net/wireless/marvell/mwifiex/11n.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 877, i32 5 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mwifiex_send_addba.dialog_tok, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_send_addba.dialog_tok to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_fill_cap_info(ptr nocapture noundef readonly %priv, i8 noundef zeroext %radio_type, ptr nocapture noundef %ht_cap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %extended_ht_cap_info = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_cap, i32 0, i32 3
  %0 = ptrtoint ptr %extended_ht_cap_info to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %extended_ht_cap_info, align 1
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %2 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdev, align 8
  %idxprom = zext i8 %radio_type to i32
  %arrayidx = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b93 = load i1, ptr @mwifiex_fill_cap_info.__already_done, align 1
  br i1 %.b93, label %land.rhs.if.then38_crit_edge, label %if.then, !prof !41

land.rhs.if.then38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mwifiex_fill_cap_info.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #10
  br label %if.then38

if.then38:                                        ; preds = %if.then, %land.rhs.if.then38_crit_edge
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end39:                                         ; preds = %entry
  %ht_cap40 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ampdu_factor, align 1
  %10 = and i8 %9, 3
  %ampdu_density = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ampdu_density, align 4
  %shl = shl i8 %12, 2
  %and43 = and i8 %shl, 28
  %or = or i8 %and43, %10
  %ampdu_params_info = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_cap, i32 0, i32 1
  %13 = ptrtoint ptr %ampdu_params_info to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or, ptr %ampdu_params_info, align 1
  %mcs = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_cap, i32 0, i32 2
  %mcs46 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5, i32 4
  %14 = call ptr @memcpy(ptr %mcs, ptr %mcs46, i32 16)
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %15 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bss_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp eq i32 %16, 2
  br i1 %cmp, label %if.end39.if.then56_crit_edge, label %lor.lhs.false

if.end39.if.then56_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

lor.lhs.false:                                    ; preds = %if.end39
  %17 = ptrtoint ptr %ht_cap40 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ht_cap40, align 4
  %19 = and i16 %18, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool51.not = icmp eq i16 %19, 0
  br i1 %tobool51.not, label %lor.lhs.false.if.end62_crit_edge, label %land.lhs.true

lor.lhs.false.if.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

land.lhs.true:                                    ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %sec_chan_offset = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 117
  %22 = ptrtoint ptr %sec_chan_offset to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sec_chan_offset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp54.not = icmp eq i8 %23, 0
  br i1 %cmp54.not, label %land.lhs.true.if.end62_crit_edge, label %land.lhs.true.if.then56_crit_edge

land.lhs.true.if.then56_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then56:                                        ; preds = %land.lhs.true.if.then56_crit_edge, %if.end39.if.then56_crit_edge
  %arrayidx58 = getelementptr %struct.ieee80211_ht_cap, ptr %ht_cap, i32 0, i32 2, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx58, align 1
  %26 = or i8 %25, 1
  store i8 %26, ptr %arrayidx58, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %land.lhs.true.if.end62_crit_edge, %lor.lhs.false.if.end62_crit_edge
  %27 = and i16 %1, -9
  %28 = ptrtoint ptr %ht_cap40 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ht_cap40, align 4
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %31 = ptrtoint ptr %ht_cap to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %ht_cap, align 1
  %32 = ptrtoint ptr %extended_ht_cap_info to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %27, ptr %extended_ht_cap_info, align 1
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 8
  %hw_dot_11n_dev_cap = getelementptr inbounds %struct.mwifiex_adapter, ptr %34, i32 0, i32 113
  %35 = ptrtoint ptr %hw_dot_11n_dev_cap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hw_dot_11n_dev_cap, align 4
  %and70 = and i32 %36, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end62.cleanup_crit_edge, label %if.then72

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then72:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %tx_BF_cap_info = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_cap, i32 0, i32 4
  %37 = ptrtoint ptr %tx_BF_cap_info to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 148955401, ptr %tx_BF_cap_info, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.end62.cleanup_crit_edge, %if.then38
  %retval.0 = phi i32 [ -22, %if.then38 ], [ 0, %if.then72 ], [ 0, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_11n_delba(ptr noundef %priv, ptr noundef %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %del_ba_param_set1 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %params, i32 0, i32 2
  %0 = ptrtoint ptr %del_ba_param_set1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %del_ba_param_set1, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %3 = lshr i32 %conv, 12
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %params, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %peer_mac_addr = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %params, i32 0, i32 1
  %and = lshr i32 %conv, 11
  %shr5 = and i32 %and, 1
  tail call void @mwifiex_del_ba_tbl(ptr noundef %priv, i32 noundef %3, ptr noundef %peer_mac_addr, i8 noundef zeroext 1, i32 noundef %shr5) #10
  %tx_ba_stream_tbl_lock.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ba_stream_tbl_lock.i) #10
  %tx_ba_stream_tbl_ptr.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 83
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then
  %tx_ba_tsr_tbl.0.in.i = phi ptr [ %tx_ba_stream_tbl_ptr.i, %if.then ], [ %tx_ba_tsr_tbl.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %tx_ba_tsr_tbl.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %tx_ba_tsr_tbl.0.i = load ptr, ptr %tx_ba_tsr_tbl.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tx_ba_tsr_tbl.0.i, %tx_ba_stream_tbl_ptr.i
  br i1 %cmp.not.i, label %mwifiex_get_ba_status.exit.thread, label %for.body.i

mwifiex_get_ba_status.exit.thread:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock.i) #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %ba_status2.i = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.0.i, i32 0, i32 3
  %7 = ptrtoint ptr %ba_status2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ba_status2.i, align 4
  %cmp3.i = icmp eq i32 %8, 1
  br i1 %cmp3.i, label %mwifiex_get_ba_status.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

mwifiex_get_ba_status.exit:                       ; preds = %for.body.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock.i) #10
  %tobool.not = icmp eq ptr %tx_ba_tsr_tbl.0.i, null
  br i1 %tobool.not, label %mwifiex_get_ba_status.exit.cleanup_crit_edge, label %if.then6

mwifiex_get_ba_status.exit.cleanup_crit_edge:     ; preds = %mwifiex_get_ba_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %mwifiex_get_ba_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  %tid7 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %tid7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tid7, align 4
  %ra = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.0.i, i32 0, i32 2
  %call9 = tail call i32 @mwifiex_send_addba(ptr noundef %priv, i32 noundef %10, ptr noundef %ra)
  br label %cleanup

if.else:                                          ; preds = %entry
  %11 = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %if.else.cleanup_crit_edge, label %if.end15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.else
  %peer_mac_addr16 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %params, i32 0, i32 1
  tail call void @mwifiex_create_ba_tbl(ptr noundef %priv, ptr noundef %peer_mac_addr16, i32 noundef %3, i32 noundef 1)
  %tx_ba_stream_tbl_lock.i45 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ba_stream_tbl_lock.i45) #10
  %tx_ba_stream_tbl_ptr.i46 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 83
  br label %for.cond.i50

for.cond.i50:                                     ; preds = %for.body.i53.for.cond.i50_crit_edge, %if.end15
  %tx_ba_tsr_tbl.0.in.i47 = phi ptr [ %tx_ba_stream_tbl_ptr.i46, %if.end15 ], [ %tx_ba_tsr_tbl.0.i48, %for.body.i53.for.cond.i50_crit_edge ]
  %12 = ptrtoint ptr %tx_ba_tsr_tbl.0.in.i47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %tx_ba_tsr_tbl.0.i48 = load ptr, ptr %tx_ba_tsr_tbl.0.in.i47, align 4
  %cmp.not.i49 = icmp eq ptr %tx_ba_tsr_tbl.0.i48, %tx_ba_stream_tbl_ptr.i46
  br i1 %cmp.not.i49, label %mwifiex_get_ba_status.exit55.thread, label %for.body.i53

mwifiex_get_ba_status.exit55.thread:              ; preds = %for.cond.i50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock.i45) #10
  br label %cleanup

for.body.i53:                                     ; preds = %for.cond.i50
  %ba_status2.i51 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.0.i48, i32 0, i32 3
  %13 = ptrtoint ptr %ba_status2.i51 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ba_status2.i51, align 4
  %cmp3.i52 = icmp eq i32 %14, 1
  br i1 %cmp3.i52, label %mwifiex_get_ba_status.exit55, label %for.body.i53.for.cond.i50_crit_edge

for.body.i53.for.cond.i50_crit_edge:              ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i50

mwifiex_get_ba_status.exit55:                     ; preds = %for.body.i53
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock.i45) #10
  %tobool19.not = icmp eq ptr %tx_ba_tsr_tbl.0.i48, null
  br i1 %tobool19.not, label %mwifiex_get_ba_status.exit55.cleanup_crit_edge, label %if.then20

mwifiex_get_ba_status.exit55.cleanup_crit_edge:   ; preds = %mwifiex_get_ba_status.exit55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then20:                                        ; preds = %mwifiex_get_ba_status.exit55
  call void @__sanitizer_cov_trace_pc() #12
  %tid21 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.0.i48, i32 0, i32 1
  %15 = ptrtoint ptr %tid21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tid21, align 4
  %ra22 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.0.i48, i32 0, i32 2
  tail call void @mwifiex_del_ba_tbl(ptr noundef %priv, i32 noundef %16, ptr noundef %ra22, i8 noundef zeroext 1, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %mwifiex_get_ba_status.exit55.cleanup_crit_edge, %mwifiex_get_ba_status.exit55.thread, %if.else.cleanup_crit_edge, %if.then6, %mwifiex_get_ba_status.exit.cleanup_crit_edge, %mwifiex_get_ba_status.exit.thread
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_ba_tbl(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_send_addba(ptr noundef %priv, i32 noundef %tid, ptr noundef %peer_mac) local_unnamed_addr #0 align 64 {
entry:
  %add_ba_req = alloca %struct.host_cmd_ds_11n_addba_req, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %add_ba_req) #10
  %0 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %add_ba_req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %add_ba_req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %add_ba_req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %add_ba_req, i32 0, i32 4
  %add_ba_param = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86
  %4 = ptrtoint ptr %add_ba_param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add_ba_param, align 4
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mwifiex_send_addba, i32 noundef %tid) #10
  %8 = call ptr @memset(ptr %add_ba_req, i32 0, i32 14)
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %9 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bss_role, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %13, i32 0, i32 47
  %14 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_cap_info, align 4
  %and4 = and i32 %15, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true5

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true5:                                   ; preds = %land.lhs.true
  %is_hw_11ac_capable = getelementptr inbounds %struct.mwifiex_adapter, ptr %13, i32 0, i32 128
  %16 = ptrtoint ptr %is_hw_11ac_capable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %is_hw_11ac_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %land.lhs.true5.if.end19_crit_edge, label %land.lhs.true8

land.lhs.true5.if.end19_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %cfg_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 112
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %cfg_bssid, ptr noundef dereferenceable(6) %peer_mac, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool9.not = icmp eq i32 %bcmp, 0
  br i1 %tobool9.not, label %land.lhs.true8.if.end19_crit_edge, label %if.then

land.lhs.true8.if.end19_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then:                                          ; preds = %land.lhs.true8
  %sta_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_list_spinlock) #10
  %call10 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %peer_mac) #10
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #10
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef %peer_mac) #10
  br label %cleanup44

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %is_11ac_enabled = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call10, i32 0, i32 4
  %20 = ptrtoint ptr %is_11ac_enabled to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_11ac_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool15.not = icmp eq i8 %21, 0
  %spec.select = select i1 %tobool15.not, i32 %5, i32 64
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #10
  br label %if.end19

if.end19:                                         ; preds = %cleanup, %land.lhs.true8.if.end19_crit_edge, %land.lhs.true5.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %entry.if.end19_crit_edge
  %tx_win_size.2 = phi i32 [ %spec.select, %cleanup ], [ %5, %land.lhs.true8.if.end19_crit_edge ], [ %5, %land.lhs.true5.if.end19_crit_edge ], [ %5, %land.lhs.true.if.end19_crit_edge ], [ %5, %entry.if.end19_crit_edge ]
  %shl = shl i32 %tid, 2
  %shl20 = shl i32 %tx_win_size.2, 6
  %or = or i32 %shl20, %shl
  %22 = trunc i32 %or to i16
  %conv22 = or i16 %22, 2
  %tx_amsdu = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86, i32 3
  %23 = ptrtoint ptr %tx_amsdu to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tx_amsdu, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool25.not = icmp eq i8 %24, 0
  br i1 %tobool25.not, label %if.end19.if.end34_crit_edge, label %land.lhs.true26

if.end19.if.end34_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true26:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %amsdu = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 %tid, i32 2
  %25 = ptrtoint ptr %amsdu to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %amsdu, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp28.not = icmp eq i8 %26, -1
  %27 = or i16 %22, 3
  %spec.select69 = select i1 %cmp28.not, i16 %conv22, i16 %27
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true26, %if.end19.if.end34_crit_edge
  %block_ack_param_set.0 = phi i16 [ %conv22, %if.end19.if.end34_crit_edge ], [ %spec.select69, %land.lhs.true26 ]
  %28 = tail call i16 @llvm.bswap.i16(i16 %block_ack_param_set.0)
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %2, align 1
  %timeout = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86, i32 2
  %30 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timeout, align 4
  %conv37 = trunc i32 %31 to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv37)
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %3, align 1
  %34 = load i8, ptr @mwifiex_send_addba.dialog_tok, align 1
  %inc = add i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %cmp39 = icmp eq i8 %inc, 0
  %spec.store.select = select i1 %cmp39, i8 1, i8 %inc
  store i8 %spec.store.select, ptr @mwifiex_send_addba.dialog_tok, align 1
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %spec.store.select, ptr %1, align 1
  %36 = call ptr @memcpy(ptr %0, ptr %peer_mac, i32 6)
  %call43 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 206, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %add_ba_req, i1 noundef zeroext false) #10
  br label %cleanup44

cleanup44:                                        ; preds = %if.end34, %cleanup.thread
  %retval.1 = phi i32 [ %call43, %if.end34 ], [ -1, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %add_ba_req) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_create_ba_tbl(ptr noundef %priv, ptr noundef %ra, i32 noundef %tid, i32 noundef %ba_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ba_stream_tbl_lock.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ba_stream_tbl_lock.i) #10
  %tx_ba_stream_tbl_ptr.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 83
  %0 = ptrtoint ptr %tx_ba_stream_tbl_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %tx_ba_tsr_tbl.021.i = load ptr, ptr %tx_ba_stream_tbl_ptr.i, align 4
  %cmp.not22.i = icmp eq ptr %tx_ba_tsr_tbl.021.i, %tx_ba_stream_tbl_ptr.i
  br i1 %cmp.not22.i, label %entry.mwifiex_get_ba_tbl.exit.thread_crit_edge, label %for.body.lr.ph.i

entry.mwifiex_get_ba_tbl.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mwifiex_get_ba_tbl.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %1 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ra, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %ra, i32 4
  %3 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr1.i.i.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tx_ba_tsr_tbl.023.i = phi ptr [ %tx_ba_tsr_tbl.021.i, %for.body.lr.ph.i ], [ %tx_ba_tsr_tbl.0.i, %for.inc.i.for.body.i_crit_edge ]
  %ra2.i = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.023.i, i32 0, i32 2
  %5 = ptrtoint ptr %ra2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ra2.i, align 4
  %xor.i.i.i = xor i32 %6, %2
  %add.ptr.i.i.i = getelementptr %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.023.i, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor37.i.i.i = xor i16 %8, %4
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %tid3.i = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.023.i, i32 0, i32 1
  %9 = ptrtoint ptr %tid3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tid3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %tid)
  %cmp4.i = icmp eq i32 %10, %tid
  br i1 %cmp4.i, label %mwifiex_get_ba_tbl.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %tx_ba_tsr_tbl.023.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %tx_ba_tsr_tbl.0.i = load ptr, ptr %tx_ba_tsr_tbl.023.i, align 4
  %cmp.not.i = icmp eq ptr %tx_ba_tsr_tbl.0.i, %tx_ba_stream_tbl_ptr.i
  br i1 %cmp.not.i, label %for.inc.i.mwifiex_get_ba_tbl.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.mwifiex_get_ba_tbl.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mwifiex_get_ba_tbl.exit.thread

mwifiex_get_ba_tbl.exit.thread:                   ; preds = %for.inc.i.mwifiex_get_ba_tbl.exit.thread_crit_edge, %entry.mwifiex_get_ba_tbl.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock.i) #10
  br label %if.then

mwifiex_get_ba_tbl.exit:                          ; preds = %land.lhs.true.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock.i) #10
  %tobool.not = icmp eq ptr %tx_ba_tsr_tbl.023.i, null
  br i1 %tobool.not, label %mwifiex_get_ba_tbl.exit.if.then_crit_edge, label %mwifiex_get_ba_tbl.exit.cleanup_crit_edge

mwifiex_get_ba_tbl.exit.cleanup_crit_edge:        ; preds = %mwifiex_get_ba_tbl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mwifiex_get_ba_tbl.exit.if.then_crit_edge:        ; preds = %mwifiex_get_ba_tbl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %mwifiex_get_ba_tbl.exit.if.then_crit_edge, %mwifiex_get_ba_tbl.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2848, i32 noundef 28) #14
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call4 = tail call zeroext i8 @mwifiex_wmm_downgrade_tid(ptr noundef %priv, i32 noundef %tid) #10
  %call6 = tail call ptr @mwifiex_wmm_get_ralist_node(ptr noundef %priv, i8 noundef zeroext %call4, ptr noundef %ra) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ba_status9 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call6, i32 0, i32 7
  %13 = ptrtoint ptr %ba_status9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ba_status, ptr %ba_status9, align 4
  %amsdu_in_ampdu = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call6, i32 0, i32 8
  %14 = ptrtoint ptr %amsdu_in_ampdu to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %amsdu_in_ampdu, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %tid11 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %tid11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %tid, ptr %tid11, align 8
  %ba_status12 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %ba_status12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ba_status, ptr %ba_status12, align 4
  %ra13 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %call7.i.i, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %ra13, ptr %ra, i32 6)
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ba_stream_tbl_lock.i) #10
  %prev.i36 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 83, i32 1
  %20 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i36, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %21, ptr noundef %tx_ba_stream_tbl_ptr.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_add_tail.exit_crit_edge

if.end10.list_add_tail.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %prev.i36, align 4
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tx_ba_stream_tbl_ptr.i, ptr %call7.i.i, align 8
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call7.i.i, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end10.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then.cleanup_crit_edge, %mwifiex_get_ba_tbl.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_11n_addba_req(ptr noundef %priv, ptr noundef %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %block_ack_param_set1 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %block_ack_param_set1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %block_ack_param_set1, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %ssn = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 4
  %3 = ptrtoint ptr %ssn to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %ssn, align 1
  %5 = and i16 %4, -3841
  store i16 %5, ptr %ssn, align 1
  %conv4 = zext i16 %2 to i32
  %and5 = lshr i32 %conv4, 2
  %6 = and i32 %and5, 15
  %call = tail call zeroext i8 @mwifiex_wmm_downgrade_tid(ptr noundef %priv, i32 noundef %6) #10
  %peer_mac_addr = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, ptr %params, i32 0, i32 1
  %call8 = tail call ptr @mwifiex_wmm_get_ralist_node(ptr noundef %priv, i8 noundef zeroext %call, ptr noundef %peer_mac_addr) #10
  %status_code = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %status_code to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %status_code, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.not = icmp eq i16 %8, 0
  br i1 %cmp.not, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then11

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %ba_status = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call8, i32 0, i32 7
  %9 = ptrtoint ptr %ba_status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ba_status, align 4
  %amsdu_in_ampdu = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call8, i32 0, i32 8
  %10 = ptrtoint ptr %amsdu_in_ampdu to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %amsdu_in_ampdu, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then.if.end_crit_edge
  tail call void @mwifiex_del_ba_tbl(ptr noundef %priv, i32 noundef %6, ptr noundef %peer_mac_addr, i8 noundef zeroext 1, i32 noundef 1) #10
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %params, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp15.not = icmp eq i8 %12, 2
  br i1 %cmp15.not, label %if.end.cleanup_crit_edge, label %if.then17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ampdu_ap = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 %6, i32 1
  %13 = ptrtoint ptr %ampdu_ap to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %ampdu_ap, align 1
  br label %cleanup

if.end19:                                         ; preds = %entry
  %tx_ba_stream_tbl_lock.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ba_stream_tbl_lock.i) #10
  %tx_ba_stream_tbl_ptr.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 83
  %14 = ptrtoint ptr %tx_ba_stream_tbl_ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %tx_ba_tsr_tbl.021.i = load ptr, ptr %tx_ba_stream_tbl_ptr.i, align 4
  %cmp.not22.i = icmp eq ptr %tx_ba_tsr_tbl.021.i, %tx_ba_stream_tbl_ptr.i
  br i1 %cmp.not22.i, label %if.end19.mwifiex_get_ba_tbl.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end19.mwifiex_get_ba_tbl.exit.thread_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %mwifiex_get_ba_tbl.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end19
  %15 = ptrtoint ptr %peer_mac_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %peer_mac_addr, align 4
  %add.ptr1.i.i.i = getelementptr %struct.host_cmd_ds_11n_addba_rsp, ptr %params, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i.i.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tx_ba_tsr_tbl.023.i = phi ptr [ %tx_ba_tsr_tbl.021.i, %for.body.lr.ph.i ], [ %tx_ba_tsr_tbl.0.i, %for.inc.i.for.body.i_crit_edge ]
  %ra2.i = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.023.i, i32 0, i32 2
  %19 = ptrtoint ptr %ra2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ra2.i, align 4
  %xor.i.i.i = xor i32 %20, %16
  %add.ptr.i.i.i = getelementptr %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.023.i, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor37.i.i.i = xor i16 %22, %18
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %tid3.i = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.023.i, i32 0, i32 1
  %23 = ptrtoint ptr %tid3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tid3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %6)
  %cmp4.i = icmp eq i32 %24, %6
  br i1 %cmp4.i, label %mwifiex_get_ba_tbl.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %25 = ptrtoint ptr %tx_ba_tsr_tbl.023.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %tx_ba_tsr_tbl.0.i = load ptr, ptr %tx_ba_tsr_tbl.023.i, align 4
  %cmp.not.i = icmp eq ptr %tx_ba_tsr_tbl.0.i, %tx_ba_stream_tbl_ptr.i
  br i1 %cmp.not.i, label %for.inc.i.mwifiex_get_ba_tbl.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.mwifiex_get_ba_tbl.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mwifiex_get_ba_tbl.exit.thread

mwifiex_get_ba_tbl.exit.thread:                   ; preds = %for.inc.i.mwifiex_get_ba_tbl.exit.thread_crit_edge, %if.end19.mwifiex_get_ba_tbl.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock.i) #10
  br label %if.else47

mwifiex_get_ba_tbl.exit:                          ; preds = %land.lhs.true.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock.i) #10
  %tobool23.not = icmp eq ptr %tx_ba_tsr_tbl.023.i, null
  br i1 %tobool23.not, label %mwifiex_get_ba_tbl.exit.if.else47_crit_edge, label %if.then24

mwifiex_get_ba_tbl.exit.if.else47_crit_edge:      ; preds = %mwifiex_get_ba_tbl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else47

if.then24:                                        ; preds = %mwifiex_get_ba_tbl.exit
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %27, i32 noundef 32, ptr noundef nonnull @.str.2) #10
  %ba_status25 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.023.i, i32 0, i32 3
  %28 = ptrtoint ptr %ba_status25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %ba_status25, align 4
  %and27 = and i32 %conv4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then24.if.else_crit_edge, label %land.lhs.true

if.then24.if.else_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.then24
  %tx_amsdu = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86, i32 3
  %29 = ptrtoint ptr %tx_amsdu to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tx_amsdu, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool30.not = icmp eq i8 %30, 0
  br i1 %tobool30.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true31

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true31:                                  ; preds = %land.lhs.true
  %amsdu = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 %6, i32 2
  %31 = ptrtoint ptr %amsdu to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %amsdu, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp35.not = icmp eq i8 %32, -1
  br i1 %cmp35.not, label %land.lhs.true31.if.else_crit_edge, label %land.lhs.true31.if.end40_crit_edge

land.lhs.true31.if.end40_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

land.lhs.true31.if.else_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %land.lhs.true31.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then24.if.else_crit_edge
  br label %if.end40

if.end40:                                         ; preds = %if.else, %land.lhs.true31.if.end40_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true31.if.end40_crit_edge ]
  %amsdu39 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.023.i, i32 0, i32 4
  %33 = ptrtoint ptr %amsdu39 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.sink, ptr %amsdu39, align 4
  %tobool41.not = icmp eq ptr %call8, null
  br i1 %tobool41.not, label %if.end40.cleanup_crit_edge, label %if.then42

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %amsdu43 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.023.i, i32 0, i32 4
  %34 = ptrtoint ptr %amsdu43 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %amsdu43, align 4
  %amsdu_in_ampdu44 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call8, i32 0, i32 8
  %36 = ptrtoint ptr %amsdu_in_ampdu44 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %amsdu_in_ampdu44, align 4
  %ba_status45 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call8, i32 0, i32 7
  %37 = ptrtoint ptr %ba_status45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %ba_status45, align 4
  br label %cleanup

if.else47:                                        ; preds = %mwifiex_get_ba_tbl.exit.if.else47_crit_edge, %mwifiex_get_ba_tbl.exit.thread
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %39, i32 noundef 4, ptr noundef nonnull @.str.3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else47, %if.then42, %if.end40.cleanup_crit_edge, %if.then17, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_wmm_downgrade_tid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_wmm_get_ralist_node(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mwifiex_get_ba_tbl(ptr noundef %priv, i32 noundef %tid, ptr nocapture noundef readonly %ra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ba_stream_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ba_stream_tbl_lock) #10
  %tx_ba_stream_tbl_ptr = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 83
  %0 = ptrtoint ptr %tx_ba_stream_tbl_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %tx_ba_tsr_tbl.021 = load ptr, ptr %tx_ba_stream_tbl_ptr, align 4
  %cmp.not22 = icmp eq ptr %tx_ba_tsr_tbl.021, %tx_ba_stream_tbl_ptr
  br i1 %cmp.not22, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ra, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %ra, i32 4
  %3 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr1.i.i, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tx_ba_tsr_tbl.023 = phi ptr [ %tx_ba_tsr_tbl.021, %for.body.lr.ph ], [ %tx_ba_tsr_tbl.0, %for.inc.for.body_crit_edge ]
  %ra2 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.023, i32 0, i32 2
  %5 = ptrtoint ptr %ra2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ra2, align 4
  %xor.i.i = xor i32 %2, %6
  %add.ptr.i.i = getelementptr %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.023, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %4, %8
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %tid3 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.023, i32 0, i32 1
  %9 = ptrtoint ptr %tid3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tid3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %tid)
  %cmp4 = icmp eq i32 %10, %tid
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %tx_ba_tsr_tbl.023 to i32
  call void @__asan_load4_noabort(i32 %11)
  %tx_ba_tsr_tbl.0 = load ptr, ptr %tx_ba_tsr_tbl.023, align 4
  %cmp.not = icmp eq ptr %tx_ba_tsr_tbl.0, %tx_ba_stream_tbl_ptr
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %tx_ba_tsr_tbl.023, %land.lhs.true.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_recfg_tx_buf(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %cmd, i32 noundef %cmd_action, ptr nocapture noundef readonly %buf_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %conv = trunc i32 %cmd_action to i16
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 -9984, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 4096, ptr %size, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %3 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %params, align 1
  %conv2 = and i32 %cmd_action, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv2)
  %cond = icmp eq i32 %conv2, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %6 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buf_size, align 2
  %conv3 = zext i16 %7 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %conv3) #10
  %8 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %buf_size, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %.sink = phi i16 [ %10, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %.sink, ptr %11, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_amsdu_aggr_ctrl(ptr nocapture noundef writeonly %cmd, i32 noundef %cmd_action, ptr nocapture noundef readonly %aa_ctrl) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %conv = trunc i32 %cmd_action to i16
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 -8448, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 3584, ptr %size, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %3 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %params, align 1
  %conv2 = and i32 %cmd_action, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv2)
  %cond = icmp eq i32 %conv2, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %aa_ctrl to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %aa_ctrl, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %enable3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %enable3 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %enable3, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 0, ptr %8, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_11n_cfg(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %cmd, i16 noundef zeroext %cmd_action, ptr nocapture noundef readonly %txcfg) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 -13056, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 4096, ptr %size, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %cmd_action)
  %3 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %params, align 1
  %4 = ptrtoint ptr %txcfg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %txcfg, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %ht_tx_cap = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %ht_tx_cap to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %ht_tx_cap, align 1
  %tx_htinfo = getelementptr inbounds %struct.mwifiex_ds_11n_tx_cfg, ptr %txcfg, i32 0, i32 1
  %8 = ptrtoint ptr %tx_htinfo to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tx_htinfo, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %ht_tx_info = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %11 = ptrtoint ptr %ht_tx_info to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %ht_tx_info, align 1
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %is_hw_11ac_capable = getelementptr inbounds %struct.mwifiex_adapter, ptr %13, i32 0, i32 128
  %14 = ptrtoint ptr %is_hw_11ac_capable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %is_hw_11ac_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %misc_config = getelementptr inbounds %struct.mwifiex_ds_11n_tx_cfg, ptr %txcfg, i32 0, i32 2
  %16 = ptrtoint ptr %misc_config to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %misc_config, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %misc_config1 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %19 = ptrtoint ptr %misc_config1 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %misc_config1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_append_11n_tlv(ptr nocapture noundef %priv, ptr nocapture noundef readonly %bss_desc, ptr noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buffer, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bss_band = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 13
  %2 = ptrtoint ptr %bss_band to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bss_band, align 4
  %conv = trunc i16 %3 to i8
  %call = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %conv) #10
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %4 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wdev, align 8
  %idxprom = zext i8 %call to i32
  %arrayidx = getelementptr %struct.wiphy, ptr %5, i32 0, i32 53, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %bcn_ht_cap = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 24
  %8 = ptrtoint ptr %bcn_ht_cap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bcn_ht_cap, align 8
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end54_crit_edge, label %if.then3

if.end.if.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then3:                                         ; preds = %if.end
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %12 = getelementptr inbounds i8, ptr %11, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 26)
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 11520, ptr %11, align 1
  %len = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 6656, ptr %len, align 1
  %add.ptr = getelementptr i8, ptr %11, i32 4
  %16 = ptrtoint ptr %bcn_ht_cap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bcn_ht_cap, align 8
  %18 = call ptr @memcpy(ptr %add.ptr, ptr %17, i32 26)
  %call10 = tail call i32 @mwifiex_fill_cap_info(ptr noundef %priv, i8 noundef zeroext %call, ptr noundef %add.ptr)
  %bcn_ht_oper = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 27
  %19 = ptrtoint ptr %bcn_ht_oper to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bcn_ht_oper, align 8
  %tobool11.not = icmp eq ptr %20, null
  br i1 %tobool11.not, label %if.then3.if.end52_crit_edge, label %if.then12

if.then3.if.end52_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then12:                                        ; preds = %if.then3
  %ht_param14 = getelementptr inbounds %struct.ieee80211_ht_operation, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ht_param14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ht_param14, align 1
  %23 = ptrtoint ptr %bss_band to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %bss_band, align 4
  %conv16 = trunc i16 %24 to i8
  %call17 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %conv16) #10
  %channel = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 5
  %25 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel, align 8
  %conv18 = zext i8 %call17 to i32
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %26, i32 noundef %conv18) #10
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %wiphy20 = getelementptr inbounds %struct.mwifiex_adapter, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %wiphy20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy20, align 4
  %31 = urem i32 %call.i, 1000
  %mul.i = sub i32 %call.i, %31
  %call.i251 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %30, i32 noundef %mul.i) #10
  %32 = and i8 %22, 3
  %and = zext i8 %32 to i32
  %33 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.then12.if.end52_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb36
  ]

if.then12.if.end52_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

sw.bb:                                            ; preds = %if.then12
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i251, i32 0, i32 4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and23 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %sw.bb.if.end52_crit_edge, label %sw.bb.if.end52.sink.split_crit_edge

sw.bb.if.end52.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.sink.split

sw.bb.if.end52_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

sw.bb36:                                          ; preds = %if.then12
  %flags37 = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i251, i32 0, i32 4
  %36 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags37, align 4
  %and38 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %sw.bb36.if.end52_crit_edge, label %sw.bb36.if.end52.sink.split_crit_edge

sw.bb36.if.end52.sink.split_crit_edge:            ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.sink.split

sw.bb36.if.end52_crit_edge:                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.end52.sink.split:                              ; preds = %sw.bb36.if.end52.sink.split_crit_edge, %sw.bb.if.end52.sink.split_crit_edge
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %add.ptr, align 1
  %40 = and i16 %39, -16897
  store i16 %40, ptr %add.ptr, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %sw.bb36.if.end52_crit_edge, %sw.bb.if.end52_crit_edge, %if.then12.if.end52_crit_edge, %if.then3.if.end52_crit_edge
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer, align 4
  %add.ptr53 = getelementptr i8, ptr %42, i32 30
  store ptr %add.ptr53, ptr %buffer, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end52, %if.end.if.end54_crit_edge
  %ret_len.0 = phi i32 [ 30, %if.end52 ], [ 0, %if.end.if.end54_crit_edge ]
  %bcn_ht_oper55 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 27
  %43 = ptrtoint ptr %bcn_ht_oper55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bcn_ht_oper55, align 8
  %tobool56.not = icmp eq ptr %44, null
  br i1 %tobool56.not, label %if.end54.if.end117_crit_edge, label %if.then57

if.end54.if.end117_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

if.then57:                                        ; preds = %if.end54
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %45 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bss_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp = icmp eq i32 %46, 1
  br i1 %cmp, label %if.then59, label %if.then57.if.end81_crit_edge

if.then57.if.end81_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then59:                                        ; preds = %if.then57
  %47 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buffer, align 4
  %49 = getelementptr inbounds i8, ptr %48, i32 4
  %50 = call ptr @memset(ptr %49, i32 0, i32 22)
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 15616, ptr %48, align 1
  %len63 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %48, i32 0, i32 1
  %52 = ptrtoint ptr %len63 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 5632, ptr %len63, align 1
  %add.ptr64 = getelementptr i8, ptr %48, i32 4
  %53 = ptrtoint ptr %bcn_ht_oper55 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bcn_ht_oper55, align 8
  %55 = call ptr @memcpy(ptr %add.ptr64, ptr %54, i32 22)
  %ht_cap69 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %7, i32 0, i32 5
  %56 = ptrtoint ptr %ht_cap69 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %ht_cap69, align 4
  %58 = and i16 %57, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool72.not = icmp eq i16 %58, 0
  br i1 %tobool72.not, label %if.then73, label %if.then59.if.end78_crit_edge

if.then59.if.end78_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then73:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %ht_param74 = getelementptr inbounds %struct.mwifiex_ie_types_htinfo, ptr %48, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %ht_param74 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ht_param74, align 1
  %61 = and i8 %60, -8
  store i8 %61, ptr %ht_param74, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %if.then59.if.end78_crit_edge
  %62 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buffer, align 4
  %add.ptr79 = getelementptr i8, ptr %63, i32 26
  store ptr %add.ptr79, ptr %buffer, align 4
  %add80 = add nuw nsw i32 %ret_len.0, 26
  br label %if.end81

if.end81:                                         ; preds = %if.end78, %if.then57.if.end81_crit_edge
  %ret_len.1 = phi i32 [ %add80, %if.end78 ], [ %ret_len.0, %if.then57.if.end81_crit_edge ]
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer, align 4
  %66 = getelementptr inbounds i8, ptr %65, i32 4
  %67 = call ptr @memset(ptr %66, i32 0, i32 7)
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 257, ptr %65, align 1
  %len85 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %65, i32 0, i32 1
  %69 = ptrtoint ptr %len85 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 1792, ptr %len85, align 1
  %70 = ptrtoint ptr %bcn_ht_oper55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bcn_ht_oper55, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 1
  %chan_scan_param = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %65, i32 0, i32 1
  %chan_number = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %65, i32 0, i32 1, i32 0, i32 1
  %74 = ptrtoint ptr %chan_number to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %chan_number, align 1
  %75 = ptrtoint ptr %bss_band to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %bss_band, align 4
  %conv89 = trunc i16 %76 to i8
  %call90 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %conv89) #10
  %77 = ptrtoint ptr %chan_scan_param to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %call90, ptr %chan_scan_param, align 1
  %ht_cap94 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %7, i32 0, i32 5
  %78 = ptrtoint ptr %ht_cap94 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ht_cap94, align 4
  %80 = and i16 %79, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool98.not = icmp eq i16 %80, 0
  br i1 %tobool98.not, label %if.end81.if.end114_crit_edge, label %land.lhs.true

if.end81.if.end114_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

land.lhs.true:                                    ; preds = %if.end81
  %81 = ptrtoint ptr %bcn_ht_oper55 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bcn_ht_oper55, align 8
  %ht_param100 = getelementptr inbounds %struct.ieee80211_ht_operation, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %ht_param100 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ht_param100, align 1
  %85 = and i8 %84, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool103.not = icmp eq i8 %85, 0
  br i1 %tobool103.not, label %land.lhs.true.if.end114_crit_edge, label %if.then104

land.lhs.true.if.end114_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then104:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %and108 = shl i8 %84, 4
  %shl = and i8 %and108, 48
  %or = or i8 %shl, %call90
  %86 = ptrtoint ptr %chan_scan_param to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %or, ptr %chan_scan_param, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.then104, %land.lhs.true.if.end114_crit_edge, %if.end81.if.end114_crit_edge
  %87 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buffer, align 4
  %add.ptr115 = getelementptr i8, ptr %88, i32 11
  store ptr %add.ptr115, ptr %buffer, align 4
  %add116 = add nuw nsw i32 %ret_len.1, 11
  br label %if.end117

if.end117:                                        ; preds = %if.end114, %if.end54.if.end117_crit_edge
  %ret_len.2 = phi i32 [ %add116, %if.end114 ], [ %ret_len.0, %if.end54.if.end117_crit_edge ]
  %bcn_bss_co_2040 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 30
  %89 = ptrtoint ptr %bcn_bss_co_2040 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bcn_bss_co_2040, align 8
  %tobool118.not = icmp eq ptr %90, null
  br i1 %tobool118.not, label %if.end117.if.end132_crit_edge, label %if.then119

if.end117.if.end132_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then119:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %buffer, align 4
  %93 = getelementptr inbounds i8, ptr %92, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %93, align 1
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 2)
  store i16 18432, ptr %92, align 1
  %len123 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %92, i32 0, i32 1
  %96 = ptrtoint ptr %len123 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 2)
  store i16 256, ptr %len123, align 1
  %add.ptr124 = getelementptr i8, ptr %92, i32 4
  %97 = ptrtoint ptr %bcn_bss_co_2040 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bcn_bss_co_2040, align 8
  %add.ptr126 = getelementptr i8, ptr %98, i32 2
  %99 = ptrtoint ptr %add.ptr126 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %add.ptr126, align 1
  %101 = ptrtoint ptr %add.ptr124 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %add.ptr124, align 1
  %102 = load ptr, ptr %buffer, align 4
  %add.ptr130 = getelementptr i8, ptr %102, i32 5
  store ptr %add.ptr130, ptr %buffer, align 4
  %add131 = add nuw nsw i32 %ret_len.2, 5
  br label %if.end132

if.end132:                                        ; preds = %if.then119, %if.end117.if.end132_crit_edge
  %ret_len.3 = phi i32 [ %add131, %if.then119 ], [ %ret_len.2, %if.end117.if.end132_crit_edge ]
  %bcn_ext_cap = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 33
  %103 = ptrtoint ptr %bcn_ext_cap to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bcn_ext_cap, align 8
  %tobool133.not = icmp eq ptr %104, null
  br i1 %tobool133.not, label %if.end132.cleanup_crit_edge, label %if.then134

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then134:                                       ; preds = %if.end132
  %105 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %buffer, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 2130706432, ptr %106, align 1
  %len138 = getelementptr inbounds %struct.ieee_types_header, ptr %104, i32 0, i32 1
  %108 = ptrtoint ptr %len138 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %len138, align 1
  %conv139 = zext i8 %109 to i16
  %110 = shl nuw i16 %conv139, 8
  %len141 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %106, i32 0, i32 1
  %111 = ptrtoint ptr %len141 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 %110, ptr %len141, align 1
  %ext_capab = getelementptr inbounds %struct.mwifiex_ie_types_extcap, ptr %106, i32 0, i32 1
  %112 = ptrtoint ptr %bcn_ext_cap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bcn_ext_cap, align 8
  %add.ptr143 = getelementptr i8, ptr %113, i32 2
  %conv146 = zext i8 %109 to i32
  %114 = call ptr @memcpy(ptr %ext_capab, ptr %add.ptr143, i32 %conv146)
  %115 = load i8, ptr %len138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %115)
  %cmp149 = icmp ugt i8 %115, 3
  br i1 %cmp149, label %land.lhs.true151, label %if.then134.if.else_crit_edge

if.then134.if.else_crit_edge:                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true151:                                 ; preds = %if.then134
  %arrayidx153 = getelementptr [0 x i8], ptr %ext_capab, i32 0, i32 3
  %116 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx153, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %117)
  %tobool156.not = icmp sgt i8 %117, -1
  br i1 %tobool156.not, label %land.lhs.true151.if.else_crit_edge, label %land.lhs.true151.if.end159_crit_edge

land.lhs.true151.if.end159_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

land.lhs.true151.if.else_crit_edge:               ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %land.lhs.true151.if.else_crit_edge, %if.then134.if.else_crit_edge
  br label %if.end159

if.end159:                                        ; preds = %if.else, %land.lhs.true151.if.end159_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true151.if.end159_crit_edge ]
  %hs2_enabled158 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 136
  %118 = ptrtoint ptr %hs2_enabled158 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %.sink, ptr %hs2_enabled158, align 1
  %119 = ptrtoint ptr %len138 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %len138, align 1
  %conv161 = zext i8 %120 to i32
  %add162 = add nuw nsw i32 %conv161, 4
  %121 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %buffer, align 4
  %add.ptr163 = getelementptr i8, ptr %122, i32 %add162
  store ptr %add.ptr163, ptr %buffer, align 4
  %123 = load i8, ptr %len138, align 1
  %conv165 = zext i8 %123 to i32
  %add166 = add nuw nsw i32 %ret_len.3, 4
  %add167 = add nuw nsw i32 %add166, %conv165
  br label %cleanup

cleanup:                                          ; preds = %if.end159, %if.end132.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %add167, %if.end159 ], [ %ret_len.3, %if.end132.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_delete_tx_ba_stream_tbl_entry(ptr noundef readonly %priv, ptr noundef %tx_ba_tsr_tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tx_ba_tsr_tbl, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tx_ba_stream_tbl_ptr.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 83
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %land.lhs.true
  %tx_ba_tsr_tbl.0.in.i = phi ptr [ %tx_ba_stream_tbl_ptr.i, %land.lhs.true ], [ %tx_ba_tsr_tbl.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %tx_ba_tsr_tbl.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %tx_ba_tsr_tbl.0.i = load ptr, ptr %tx_ba_tsr_tbl.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tx_ba_tsr_tbl.0.i, %tx_ba_stream_tbl_ptr.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %cmp2.i = icmp eq ptr %tx_ba_tsr_tbl.0.i, null
  br i1 %cmp2.i, label %for.body.i.return_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1073741824, ptr noundef nonnull @.str.5, ptr noundef %tx_ba_tsr_tbl) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tx_ba_tsr_tbl) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tx_ba_tsr_tbl, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %tx_ba_tsr_tbl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_ba_tsr_tbl, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %tx_ba_tsr_tbl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %tx_ba_tsr_tbl, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tx_ba_tsr_tbl, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tx_ba_tsr_tbl) #10
  br label %return

return:                                           ; preds = %list_del.exit, %for.body.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_delete_all_tx_ba_stream_tbl(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ba_stream_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ba_stream_tbl_lock) #10
  %tx_ba_stream_tbl_ptr = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 83
  %0 = ptrtoint ptr %tx_ba_stream_tbl_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ba_stream_tbl_ptr, align 8
  %cmp.not34 = icmp eq ptr %1, %tx_ba_stream_tbl_ptr
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %del_tbl_ptr.035 = phi ptr [ %tmp_node.0, %mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %del_tbl_ptr.035 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp_node.0 = load ptr, ptr %del_tbl_ptr.035, align 4
  %tobool.not.i = icmp eq ptr %del_tbl_ptr.035, null
  br i1 %tobool.not.i, label %for.body.for.cond.i.i_crit_edge, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.for.cond.i.i_crit_edge:                  ; preds = %for.body
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.for.cond.i.i_crit_edge
  %tx_ba_tsr_tbl.0.in.i.i = phi ptr [ %tx_ba_tsr_tbl.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %tx_ba_stream_tbl_ptr, %for.body.for.cond.i.i_crit_edge ]
  %3 = ptrtoint ptr %tx_ba_tsr_tbl.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %tx_ba_tsr_tbl.0.i.i = load ptr, ptr %tx_ba_tsr_tbl.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %tx_ba_tsr_tbl.0.i.i, %tx_ba_stream_tbl_ptr
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %cmp2.i.i = icmp eq ptr %tx_ba_tsr_tbl.0.i.i, null
  br i1 %cmp2.i.i, label %for.body.i.i.mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

for.body.i.i.mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit

if.end.i:                                         ; preds = %for.cond.i.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 1073741824, ptr noundef nonnull @.str.5, ptr noundef %del_tbl_ptr.035) #10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %del_tbl_ptr.035) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %del_tbl_ptr.035, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %del_tbl_ptr.035 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %del_tbl_ptr.035, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %del_tbl_ptr.035 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %del_tbl_ptr.035, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %del_tbl_ptr.035, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %del_tbl_ptr.035) #10
  br label %mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit

mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit:   ; preds = %list_del.exit.i, %for.body.i.i.mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit_crit_edge
  %cmp.not = icmp eq ptr %tmp_node.0, %tx_ba_stream_tbl_ptr
  br i1 %cmp.not, label %mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit.for.end_crit_edge, label %mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit.for.body_crit_edge

mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit.for.body_crit_edge: ; preds = %mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit.for.end_crit_edge: ; preds = %mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %mwifiex_11n_delete_tx_ba_stream_tbl_entry.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock) #10
  %14 = ptrtoint ptr %tx_ba_stream_tbl_ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %tx_ba_stream_tbl_ptr, ptr %tx_ba_stream_tbl_ptr, align 4
  %prev.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 83, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tx_ba_stream_tbl_ptr, ptr %prev.i, align 4
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %ampdu_ap = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 0, i32 1
  %18 = ptrtoint ptr %ampdu_ap to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %ampdu_ap, align 1
  %arrayidx.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.1, align 1
  %ampdu_ap.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 1, i32 1
  %21 = ptrtoint ptr %ampdu_ap.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %ampdu_ap.1, align 1
  %arrayidx.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.2, align 1
  %ampdu_ap.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 2, i32 1
  %24 = ptrtoint ptr %ampdu_ap.2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %ampdu_ap.2, align 1
  %arrayidx.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.3, align 1
  %ampdu_ap.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 3, i32 1
  %27 = ptrtoint ptr %ampdu_ap.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %ampdu_ap.3, align 1
  %arrayidx.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.4, align 1
  %ampdu_ap.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 4, i32 1
  %30 = ptrtoint ptr %ampdu_ap.4 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %ampdu_ap.4, align 1
  %arrayidx.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.5, align 1
  %ampdu_ap.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 5, i32 1
  %33 = ptrtoint ptr %ampdu_ap.5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %ampdu_ap.5, align 1
  %arrayidx.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 6
  %34 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.6, align 1
  %ampdu_ap.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 6, i32 1
  %36 = ptrtoint ptr %ampdu_ap.6 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %ampdu_ap.6, align 1
  %arrayidx.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 7
  %37 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.7, align 1
  %ampdu_ap.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 7, i32 1
  %39 = ptrtoint ptr %ampdu_ap.7 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %ampdu_ap.7, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_send_delba(ptr noundef %priv, i32 noundef %tid, ptr nocapture noundef readonly %peer_mac, i32 noundef %initiator) local_unnamed_addr #0 align 64 {
entry:
  %delba = alloca %struct.host_cmd_ds_11n_delba, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %delba) #10
  %0 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %delba, i32 0, i32 1
  %1 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %delba, i32 0, i32 2
  %2 = call ptr @memset(ptr %delba, i32 0, i32 12)
  %tid.tr = trunc i32 %tid to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %initiator)
  %tobool.not = icmp eq i32 %initiator, 0
  %3 = shl i16 %tid.tr, 4
  %4 = and i16 %3, 240
  %5 = or i16 %4, 8
  %6 = select i1 %tobool.not, i16 %4, i16 %5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %1, align 1
  %8 = call ptr @memcpy(ptr %0, ptr %peer_mac, i32 6)
  %call = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 208, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %delba, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %delba) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_delba(ptr noundef %priv, i32 noundef %tid) local_unnamed_addr #0 align 64 {
entry:
  %delba.i = alloca %struct.host_cmd_ds_11n_delba, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_reorder_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock) #10
  %rx_reorder_tbl_ptr = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 89
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %rx_reor_tbl_ptr.0.in = phi ptr [ %rx_reorder_tbl_ptr, %entry ], [ %rx_reor_tbl_ptr.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %rx_reor_tbl_ptr.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %rx_reor_tbl_ptr.0 = load ptr, ptr %rx_reor_tbl_ptr.0.in, align 4
  %cmp.not = icmp eq ptr %rx_reor_tbl_ptr.0, %rx_reorder_tbl_ptr
  br i1 %cmp.not, label %for.cond.exit_crit_edge, label %for.body

for.cond.exit_crit_edge:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

for.body:                                         ; preds = %for.cond
  %tid2 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %rx_reor_tbl_ptr.0, i32 0, i32 1
  %1 = ptrtoint ptr %tid2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tid2, align 4
  %cmp3 = icmp eq i32 %2, %tid
  br i1 %cmp3, label %do.body, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_11n_delba.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_11n_delba, %if.then8)) #10
          to label %do.end [label %if.then8], !srcloc !42

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %ta = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %rx_reor_tbl_ptr.0, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mwifiex_11n_delba.__UNIQUE_ID_ddebug488, ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef %tid, ptr noundef %ta) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %ta9 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %rx_reor_tbl_ptr.0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %delba.i) #10
  %7 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %delba.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %delba.i, i32 0, i32 2
  %9 = call ptr @memset(ptr %delba.i, i32 0, i32 12)
  %tid.tr.i = trunc i32 %tid to i16
  %10 = shl i16 %tid.tr.i, 4
  %11 = and i16 %10, 240
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %8, align 1
  %13 = call ptr @memcpy(ptr %7, ptr %ta9, i32 6)
  %call.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 208, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %delba.i, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %delba.i) #10
  br label %exit

exit:                                             ; preds = %do.end, %for.cond.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_delete_ba_stream(ptr noundef %priv, ptr noundef %del_ba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %del_ba_param_set1 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %del_ba, i32 0, i32 2
  %0 = ptrtoint ptr %del_ba_param_set1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %del_ba_param_set1, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %3 = lshr i32 %conv, 12
  %peer_mac_addr = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %del_ba, i32 0, i32 1
  %and = lshr i32 %conv, 11
  %shr3 = and i32 %and, 1
  tail call void @mwifiex_del_ba_tbl(ptr noundef %priv, i32 noundef %3, ptr noundef %peer_mac_addr, i8 noundef zeroext 2, i32 noundef %shr3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_rx_reorder_tbl(ptr noundef %priv, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_reorder_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock) #10
  %rx_reorder_tbl_ptr1 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 89
  %0 = ptrtoint ptr %rx_reorder_tbl_ptr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %rx_reorder_tbl_ptr.054 = load ptr, ptr %rx_reorder_tbl_ptr1, align 4
  %cmp.not55 = icmp eq ptr %rx_reorder_tbl_ptr.054, %rx_reorder_tbl_ptr1
  br i1 %cmp.not55, label %entry.for.end27_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end27

for.cond:                                         ; preds = %for.end
  %inc16 = add nuw nsw i32 %count.056, 1
  %incdec.ptr = getelementptr %struct.mwifiex_ds_rx_reorder_tbl, ptr %rx_reo_tbl.057, i32 1
  %1 = ptrtoint ptr %rx_reorder_tbl_ptr.059 to i32
  call void @__asan_load4_noabort(i32 %1)
  %rx_reorder_tbl_ptr.0 = load ptr, ptr %rx_reorder_tbl_ptr.059, align 4
  %cmp.not = icmp eq ptr %rx_reorder_tbl_ptr.0, %rx_reorder_tbl_ptr1
  br i1 %cmp.not, label %for.cond.for.end27_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end27_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end27

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %rx_reorder_tbl_ptr.059 = phi ptr [ %rx_reorder_tbl_ptr.0, %for.cond.for.body_crit_edge ], [ %rx_reorder_tbl_ptr.054, %entry.for.body_crit_edge ]
  %rx_reo_tbl.057 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %count.056 = phi i32 [ %inc16, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tid = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %rx_reorder_tbl_ptr.059, i32 0, i32 1
  %2 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tid, align 4
  %conv = trunc i32 %3 to i16
  %4 = ptrtoint ptr %rx_reo_tbl.057 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %rx_reo_tbl.057, align 4
  %ta = getelementptr inbounds %struct.mwifiex_ds_rx_reorder_tbl, ptr %rx_reo_tbl.057, i32 0, i32 1
  %ta4 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %rx_reorder_tbl_ptr.059, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %ta, ptr %ta4, i32 6)
  %start_win = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %rx_reorder_tbl_ptr.059, i32 0, i32 4
  %6 = ptrtoint ptr %start_win to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start_win, align 4
  %start_win6 = getelementptr inbounds %struct.mwifiex_ds_rx_reorder_tbl, ptr %rx_reo_tbl.057, i32 0, i32 2
  %8 = ptrtoint ptr %start_win6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %start_win6, align 4
  %win_size = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %rx_reorder_tbl_ptr.059, i32 0, i32 5
  %9 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %win_size, align 4
  %win_size7 = getelementptr inbounds %struct.mwifiex_ds_rx_reorder_tbl, ptr %rx_reo_tbl.057, i32 0, i32 3
  %11 = ptrtoint ptr %win_size7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %win_size7, align 4
  %12 = load i32, ptr %win_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1051 = icmp sgt i32 %12, 0
  br i1 %cmp1051, label %for.body12.lr.ph, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body12.lr.ph:                                 ; preds = %for.body
  %rx_reorder_ptr = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %rx_reorder_tbl_ptr.059, i32 0, i32 6
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body12.lr.ph
  %i.052 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc, %for.body12.for.body12_crit_edge ]
  %13 = ptrtoint ptr %rx_reorder_ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_reorder_ptr, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %i.052
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp ne ptr %16, null
  %spec.select = zext i1 %tobool.not to i32
  %17 = getelementptr %struct.mwifiex_ds_rx_reorder_tbl, ptr %rx_reo_tbl.057, i32 0, i32 4, i32 %i.052
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %17, align 4
  %inc = add nuw nsw i32 %i.052, 1
  %19 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %win_size, align 4
  %cmp10 = icmp slt i32 %inc, %20
  br i1 %cmp10, label %for.body12.for.body12_crit_edge, label %for.body12.for.end_crit_edge

for.body12.for.end_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12

for.end:                                          ; preds = %for.body12.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %count.056)
  %exitcond = icmp eq i32 %count.056, 15
  br i1 %exitcond, label %for.end.for.end27_crit_edge, label %for.cond

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end27

for.end27:                                        ; preds = %for.end.for.end27_crit_edge, %for.cond.for.end27_crit_edge, %entry.for.end27_crit_edge
  %count.1 = phi i32 [ 0, %entry.for.end27_crit_edge ], [ %inc16, %for.cond.for.end27_crit_edge ], [ 16, %for.end.for.end27_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock) #10
  ret i32 %count.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_tx_ba_stream_tbl(ptr noundef %priv, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ba_stream_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ba_stream_tbl_lock) #10
  %tx_ba_stream_tbl_ptr = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 83
  %0 = ptrtoint ptr %tx_ba_stream_tbl_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %tx_ba_tsr_tbl.030 = load ptr, ptr %tx_ba_stream_tbl_ptr, align 4
  %cmp.not31 = icmp eq ptr %tx_ba_tsr_tbl.030, %tx_ba_stream_tbl_ptr
  br i1 %cmp.not31, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %tid = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.030, i32 0, i32 1
  %1 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tid, align 4
  %conv = trunc i32 %2 to i16
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %buf, align 2
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %conv4 = and i32 %2, 65535
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 8, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.mwifiex_get_tx_ba_stream_tbl, i32 noundef %conv4) #10
  %ra = getelementptr inbounds %struct.mwifiex_ds_tx_ba_stream_tbl, ptr %buf, i32 0, i32 1
  %ra5 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.030, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %ra, ptr %ra5, i32 6)
  %amsdu = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.030, i32 0, i32 4
  %7 = ptrtoint ptr %amsdu to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %amsdu, align 4
  %amsdu7 = getelementptr inbounds %struct.mwifiex_ds_tx_ba_stream_tbl, ptr %buf, i32 0, i32 2
  %9 = ptrtoint ptr %amsdu7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %amsdu7, align 2
  %10 = ptrtoint ptr %tx_ba_tsr_tbl.030 to i32
  call void @__asan_load4_noabort(i32 %10)
  %tx_ba_tsr_tbl.0 = load ptr, ptr %tx_ba_tsr_tbl.030, align 4
  %cmp.not = icmp eq ptr %tx_ba_tsr_tbl.0, %tx_ba_stream_tbl_ptr
  br i1 %cmp.not, label %for.body.preheader.for.end_crit_edge, label %for.body.1

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr = getelementptr %struct.mwifiex_ds_tx_ba_stream_tbl, ptr %buf, i32 1
  %tid.1 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.0, i32 0, i32 1
  %11 = ptrtoint ptr %tid.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tid.1, align 4
  %conv.1 = trunc i32 %12 to i16
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.1, ptr %incdec.ptr, align 2
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %conv4.1 = and i32 %12, 65535
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %15, i32 noundef 8, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.mwifiex_get_tx_ba_stream_tbl, i32 noundef %conv4.1) #10
  %ra.1 = getelementptr %struct.mwifiex_ds_tx_ba_stream_tbl, ptr %buf, i32 1, i32 1
  %ra5.1 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.0, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %ra.1, ptr %ra5.1, i32 6)
  %amsdu.1 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_tsr_tbl.0, i32 0, i32 4
  %17 = ptrtoint ptr %amsdu.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %amsdu.1, align 4
  %amsdu7.1 = getelementptr %struct.mwifiex_ds_tx_ba_stream_tbl, ptr %buf, i32 1, i32 2
  %19 = ptrtoint ptr %amsdu7.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %amsdu7.1, align 2
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.preheader.for.end_crit_edge, %entry.for.end_crit_edge
  %count.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.body.preheader.for.end_crit_edge ], [ 2, %for.body.1 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock) #10
  ret i32 %count.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_del_tx_ba_stream_tbl_by_ra(ptr noundef %priv, ptr noundef readonly %ra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ra, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_ba_stream_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ba_stream_tbl_lock) #10
  %tx_ba_stream_tbl_ptr = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 83
  %0 = ptrtoint ptr %tx_ba_stream_tbl_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ba_stream_tbl_ptr, align 8
  %cmp.not29 = icmp eq ptr %1, %tx_ba_stream_tbl_ptr
  br i1 %cmp.not29, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %tbl.030 = phi ptr [ %tmp.032, %for.inc.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %tbl.030 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.032 = load ptr, ptr %tbl.030, align 4
  %ra8 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tbl.030, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ra8, ptr noundef nonnull dereferenceable(6) %ra, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool9.not = icmp eq i32 %bcmp, 0
  br i1 %tobool9.not, label %if.then10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10:                                        ; preds = %for.body
  %tobool.not.i = icmp eq ptr %tbl.030, null
  br i1 %tobool.not.i, label %if.then10.for.cond.i.i_crit_edge, label %if.then10.if.end.i_crit_edge

if.then10.if.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then10.for.cond.i.i_crit_edge:                 ; preds = %if.then10
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then10.for.cond.i.i_crit_edge
  %tx_ba_tsr_tbl.0.in.i.i = phi ptr [ %tx_ba_tsr_tbl.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %tx_ba_stream_tbl_ptr, %if.then10.for.cond.i.i_crit_edge ]
  %3 = ptrtoint ptr %tx_ba_tsr_tbl.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %tx_ba_tsr_tbl.0.i.i = load ptr, ptr %tx_ba_tsr_tbl.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %tx_ba_tsr_tbl.0.i.i, %tx_ba_stream_tbl_ptr
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %cmp2.i.i = icmp eq ptr %tx_ba_tsr_tbl.0.i.i, null
  br i1 %cmp2.i.i, label %for.body.i.i.for.inc_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

for.body.i.i.for.inc_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %for.cond.i.i.if.end.i_crit_edge, %if.then10.if.end.i_crit_edge
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 1073741824, ptr noundef nonnull @.str.5, ptr noundef %tbl.030) #10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tbl.030) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %tbl.030, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %tbl.030 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tbl.030, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %tbl.030 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %tbl.030, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tbl.030, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %tbl.030) #10
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit.i, %for.body.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.032, %tx_ba_stream_tbl_ptr
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mwifiex_set_ba_params(ptr nocapture noundef %priv) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86, i32 2
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65535, ptr %timeout, align 4
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bss_role, align 1
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  %spec.select = select i1 %cmp.not, i32 64, i32 32
  %spec.select17 = select i1 %cmp.not, i32 64, i32 16
  %add_ba_param = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86
  %4 = ptrtoint ptr %add_ba_param to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %add_ba_param, align 4
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select17, ptr %5, align 4
  %tx_amsdu = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86, i32 3
  %7 = ptrtoint ptr %tx_amsdu to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %tx_amsdu, align 4
  %rx_amsdu = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86, i32 4
  %8 = ptrtoint ptr %rx_amsdu to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %rx_amsdu, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mwifiex_get_sec_chan_offset(i32 noundef %chan) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %chan to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %chan, label %sw.default [
    i32 36, label %entry.sw.epilog_crit_edge
    i32 44, label %entry.sw.epilog_crit_edge3
    i32 52, label %entry.sw.epilog_crit_edge4
    i32 60, label %entry.sw.epilog_crit_edge5
    i32 100, label %entry.sw.epilog_crit_edge6
    i32 108, label %entry.sw.epilog_crit_edge7
    i32 116, label %entry.sw.epilog_crit_edge8
    i32 124, label %entry.sw.epilog_crit_edge9
    i32 132, label %entry.sw.epilog_crit_edge10
    i32 140, label %entry.sw.epilog_crit_edge11
    i32 149, label %entry.sw.epilog_crit_edge12
    i32 157, label %entry.sw.epilog_crit_edge13
    i32 40, label %entry.sw.bb1_crit_edge
    i32 48, label %entry.sw.bb1_crit_edge14
    i32 56, label %entry.sw.bb1_crit_edge15
    i32 64, label %entry.sw.bb1_crit_edge16
    i32 104, label %entry.sw.bb1_crit_edge17
    i32 112, label %entry.sw.bb1_crit_edge18
    i32 120, label %entry.sw.bb1_crit_edge19
    i32 128, label %entry.sw.bb1_crit_edge20
    i32 136, label %entry.sw.bb1_crit_edge21
    i32 144, label %entry.sw.bb1_crit_edge22
    i32 153, label %entry.sw.bb1_crit_edge23
    i32 161, label %entry.sw.bb1_crit_edge24
  ]

entry.sw.bb1_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.epilog_crit_edge13:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge12:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge11:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge14, %entry.sw.bb1_crit_edge15, %entry.sw.bb1_crit_edge16, %entry.sw.bb1_crit_edge17, %entry.sw.bb1_crit_edge18, %entry.sw.bb1_crit_edge19, %entry.sw.bb1_crit_edge20, %entry.sw.bb1_crit_edge21, %entry.sw.bb1_crit_edge22, %entry.sw.bb1_crit_edge23, %entry.sw.bb1_crit_edge24
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge3, %entry.sw.epilog_crit_edge4, %entry.sw.epilog_crit_edge5, %entry.sw.epilog_crit_edge6, %entry.sw.epilog_crit_edge7, %entry.sw.epilog_crit_edge8, %entry.sw.epilog_crit_edge9, %entry.sw.epilog_crit_edge10, %entry.sw.epilog_crit_edge11, %entry.sw.epilog_crit_edge12, %entry.sw.epilog_crit_edge13
  %sec_offset.0 = phi i8 [ 0, %sw.default ], [ 3, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ], [ 1, %entry.sw.epilog_crit_edge3 ], [ 1, %entry.sw.epilog_crit_edge4 ], [ 1, %entry.sw.epilog_crit_edge5 ], [ 1, %entry.sw.epilog_crit_edge6 ], [ 1, %entry.sw.epilog_crit_edge7 ], [ 1, %entry.sw.epilog_crit_edge8 ], [ 1, %entry.sw.epilog_crit_edge9 ], [ 1, %entry.sw.epilog_crit_edge10 ], [ 1, %entry.sw.epilog_crit_edge11 ], [ 1, %entry.sw.epilog_crit_edge12 ], [ 1, %entry.sw.epilog_crit_edge13 ]
  ret i8 %sec_offset.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_update_ampdu_txwinsize(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  %delba.i.i = alloca %struct.host_cmd_ds_11n_delba, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %0 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp86.not = icmp eq i8 %1, 0
  br i1 %cmp86.not, label %entry.for.end57_crit_edge, label %for.body.lr.ph

entry.for.end57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end57

for.body.lr.ph:                                   ; preds = %entry
  %coex_win_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 155
  %coex_tx_win_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 156
  %2 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %delba.i.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %delba.i.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc55.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i8 [ 0, %for.body.lr.ph ], [ %inc56, %for.inc55.for.body_crit_edge ]
  %conv = zext i8 %i.087 to i32
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc55_crit_edge, label %if.end

for.body.for.inc55_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc55

if.end:                                           ; preds = %for.body
  %add_ba_param = getelementptr inbounds %struct.mwifiex_private, ptr %5, i32 0, i32 86
  %6 = ptrtoint ptr %add_ba_param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add_ba_param, align 4
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bss_type, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %9, label %if.end.if.end22_crit_edge [
    i8 0, label %if.end.if.end30.sink.split_crit_edge
    i8 2, label %if.then19
  ]

if.end.if.end30.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.sink.split

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %add_ba_param to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 64, ptr %add_ba_param, align 4
  %12 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %bss_type, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end.if.end22_crit_edge
  %13 = phi i8 [ %.pr, %if.then19 ], [ %9, %if.end.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp25 = icmp eq i8 %13, 1
  br i1 %cmp25, label %if.end22.if.end30.sink.split_crit_edge, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end22.if.end30.sink.split_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.end22.if.end30.sink.split_crit_edge, %if.end.if.end30.sink.split_crit_edge
  %.sink = phi i32 [ 64, %if.end.if.end30.sink.split_crit_edge ], [ 32, %if.end22.if.end30.sink.split_crit_edge ]
  %14 = ptrtoint ptr %add_ba_param to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %add_ba_param, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.end22.if.end30_crit_edge
  %15 = ptrtoint ptr %coex_win_size to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %coex_win_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool31.not = icmp eq i8 %16, 0
  br i1 %tobool31.not, label %if.end30.if.end40_crit_edge, label %if.then32

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then32:                                        ; preds = %if.end30
  %17 = ptrtoint ptr %coex_tx_win_size to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %coex_tx_win_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool33.not = icmp eq i8 %18, 0
  br i1 %tobool33.not, label %if.then32.if.end40_crit_edge, label %if.then34

if.then32.if.end40_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %conv36 = zext i8 %18 to i32
  %19 = ptrtoint ptr %add_ba_param to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv36, ptr %add_ba_param, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %if.then32.if.end40_crit_edge, %if.end30.if.end40_crit_edge
  %20 = ptrtoint ptr %add_ba_param to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add_ba_param, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %21)
  %cmp43.not = icmp eq i32 %7, %21
  br i1 %cmp43.not, label %if.end40.for.inc55_crit_edge, label %if.then45

if.end40.for.inc55_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc55

if.then45:                                        ; preds = %if.end40
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %5, i32 0, i32 8
  %22 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool46.not = icmp eq i8 %23, 0
  br i1 %tobool46.not, label %if.then45.for.inc55_crit_edge, label %for.cond49.preheader

if.then45.for.inc55_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc55

for.cond49.preheader:                             ; preds = %if.then45
  %tx_ba_stream_tbl_ptr2.i = getelementptr inbounds %struct.mwifiex_private, ptr %5, i32 0, i32 83
  br label %for.body53

for.body53:                                       ; preds = %mwifiex_send_delba_txbastream_tbl.exit.for.body53_crit_edge, %for.cond49.preheader
  %indvars.iv = phi i32 [ 0, %for.cond49.preheader ], [ %indvars.iv.next, %mwifiex_send_delba_txbastream_tbl.exit.for.body53_crit_edge ]
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 8
  %26 = ptrtoint ptr %tx_ba_stream_tbl_ptr2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %tx_ba_stream_tbl_ptr.040.i = load ptr, ptr %tx_ba_stream_tbl_ptr2.i, align 4
  %cmp.not41.i = icmp eq ptr %tx_ba_stream_tbl_ptr.040.i, %tx_ba_stream_tbl_ptr2.i
  br i1 %cmp.not41.i, label %for.body53.mwifiex_send_delba_txbastream_tbl.exit_crit_edge, label %for.body53.for.body.i_crit_edge

for.body53.for.body.i_crit_edge:                  ; preds = %for.body53
  br label %for.body.i

for.body53.mwifiex_send_delba_txbastream_tbl.exit_crit_edge: ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %mwifiex_send_delba_txbastream_tbl.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body53.for.body.i_crit_edge
  %tx_ba_stream_tbl_ptr.042.i = phi ptr [ %tx_ba_stream_tbl_ptr.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tx_ba_stream_tbl_ptr.040.i, %for.body53.for.body.i_crit_edge ]
  %ba_status.i = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_stream_tbl_ptr.042.i, i32 0, i32 3
  %27 = ptrtoint ptr %ba_status.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ba_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp4.i = icmp eq i32 %28, 2
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %tid5.i = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_stream_tbl_ptr.042.i, i32 0, i32 1
  %29 = ptrtoint ptr %tid5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tid5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %indvars.iv)
  %cmp6.i = icmp eq i32 %30, %indvars.iv
  br i1 %cmp6.i, label %do.body.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.body.i:                                        ; preds = %if.then.i
  %tid5.i.le = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_stream_tbl_ptr.042.i, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_send_delba_txbastream_tbl.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_update_ampdu_txwinsize, %if.then13.i)) #10
          to label %do.end.i [label %if.then13.i], !srcloc !42

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %25, i32 0, i32 9
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %ra.i = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_stream_tbl_ptr.042.i, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mwifiex_send_delba_txbastream_tbl.__UNIQUE_ID_ddebug489, ptr noundef %32, ptr noundef nonnull @.str.13, i32 noundef %indvars.iv, ptr noundef %ra.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then13.i, %do.body.i
  %33 = ptrtoint ptr %tid5.i.le to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tid5.i.le, align 4
  %ra16.i = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_ba_stream_tbl_ptr.042.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %delba.i.i) #10
  %35 = call ptr @memset(ptr %delba.i.i, i32 0, i32 12)
  %tid.tr.i.i = trunc i32 %34 to i16
  %36 = shl i16 %tid.tr.i.i, 4
  %37 = and i16 %36, 240
  %38 = or i16 %37, 8
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %3, align 1
  %40 = call ptr @memcpy(ptr %2, ptr %ra16.i, i32 6)
  %call.i.i = call i32 @mwifiex_send_cmd(ptr noundef nonnull %5, i16 noundef zeroext 208, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %delba.i.i, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %delba.i.i) #10
  br label %mwifiex_send_delba_txbastream_tbl.exit

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %41 = ptrtoint ptr %tx_ba_stream_tbl_ptr.042.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %tx_ba_stream_tbl_ptr.0.i = load ptr, ptr %tx_ba_stream_tbl_ptr.042.i, align 4
  %cmp.not.i = icmp eq ptr %tx_ba_stream_tbl_ptr.0.i, %tx_ba_stream_tbl_ptr2.i
  br i1 %cmp.not.i, label %for.inc.i.mwifiex_send_delba_txbastream_tbl.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.mwifiex_send_delba_txbastream_tbl.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mwifiex_send_delba_txbastream_tbl.exit

mwifiex_send_delba_txbastream_tbl.exit:           ; preds = %for.inc.i.mwifiex_send_delba_txbastream_tbl.exit_crit_edge, %do.end.i, %for.body53.mwifiex_send_delba_txbastream_tbl.exit_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %mwifiex_send_delba_txbastream_tbl.exit.for.inc55_crit_edge, label %mwifiex_send_delba_txbastream_tbl.exit.for.body53_crit_edge

mwifiex_send_delba_txbastream_tbl.exit.for.body53_crit_edge: ; preds = %mwifiex_send_delba_txbastream_tbl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body53

mwifiex_send_delba_txbastream_tbl.exit.for.inc55_crit_edge: ; preds = %mwifiex_send_delba_txbastream_tbl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc55

for.inc55:                                        ; preds = %mwifiex_send_delba_txbastream_tbl.exit.for.inc55_crit_edge, %if.then45.for.inc55_crit_edge, %if.end40.for.inc55_crit_edge, %for.body.for.inc55_crit_edge
  %i.2 = phi i8 [ %i.087, %if.then45.for.inc55_crit_edge ], [ %i.087, %if.end40.for.inc55_crit_edge ], [ %i.087, %for.body.for.inc55_crit_edge ], [ 8, %mwifiex_send_delba_txbastream_tbl.exit.for.inc55_crit_edge ]
  %inc56 = add nuw i8 %i.2, 1
  %42 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %priv_num, align 4
  %cmp = icmp ult i8 %inc56, %43
  br i1 %cmp, label %for.inc55.for.body_crit_edge, label %for.inc55.for.end57_crit_edge

for.inc55.for.end57_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end57

for.inc55.for.body_crit_edge:                     ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end57:                                        ; preds = %for.inc55.for.end57_crit_edge, %entry.for.end57_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !23, !24, !25, !27, !28, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/11n.c", i32 44, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/marvell/mwifiex/11n.c", i32 45, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/marvell/mwifiex/11n.c", i32 187, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/marvell/mwifiex/11n.c", i32 200, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/marvell/mwifiex/11n.c", i32 227, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/marvell/mwifiex/11n.c", i32 502, i32 2}
!13 = !{ptr @mwifiex_send_addba.dialog_tok, !14, !"dialog_tok", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/marvell/mwifiex/11n.c", i32 594, i32 12}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/marvell/mwifiex/11n.c", i32 598, i32 2}
!17 = !{ptr @__func__.mwifiex_send_addba, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/11n.c", i32 612, i32 4}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/11n.c", i32 688, i32 4}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mwifiex_11n_delba.__UNIQUE_ID_ddebug488, !21, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/marvell/mwifiex/11n.c", i32 763, i32 3}
!27 = !{ptr @__func__.mwifiex_get_tx_ba_stream_tbl, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/mwifiex/11n.c", i32 877, i32 5}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mwifiex_send_delba_txbastream_tbl.__UNIQUE_ID_ddebug489, !29, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2148377842, i64 2148377847, i64 2148377860, i64 2148377904, i64 2148377938, i64 2148377959}
