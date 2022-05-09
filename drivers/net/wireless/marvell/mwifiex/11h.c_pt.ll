; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/11h.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/11h.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atomic_t = type { i32 }
%struct.mwifiex_tx_aggr = type { i8, i8, i8 }
%struct.mwifiex_add_ba_param = type { i32, i32, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mwifiex_vendor_spec_cfg_ie = type { i16, i16, [256 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.143, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.143 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
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
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ie_types_pwr_capability = type { %struct.mwifiex_ie_types_header, i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.159 }
%union.anon.159 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.mwifiex_chan_desc = type { i16, i8, i8 }
%struct.mwifiex_radar_params = type { ptr, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
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

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CAC timer finished; No radar detected\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"11h: issuing DFS Radar check for channel=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cancelling CAC\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to stop CAC in FW\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Aborting delayed work for CAC.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error in channel report event\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RADAR Detected on channel %d!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"radar detected; indicating kernel\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to stop CAC in FW\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regdomain: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"radar detection type: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"channel switch: AP already stopped\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to start AP after channel switch\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"indicating channel switch completion to kernel\0A\00", [48 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 133, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 162, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 166, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 191, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 193, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 218, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 232, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 261, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 264, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 268, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 270, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 291, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 299, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [46 x i8] c"../drivers/net/wireless/marvell/mwifiex/11h.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 304, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mwifiex_init_11h_params(ptr nocapture noundef writeonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state_11h = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 157
  %0 = ptrtoint ptr %state_11h to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %state_11h, align 8
  %is_11h_active = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 157, i32 1
  %1 = ptrtoint ptr %is_11h_active to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %is_11h_active, align 1
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_is_11h_active(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %is_11h_active = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 157, i32 1
  %0 = ptrtoint ptr %is_11h_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_11h_active, align 1, !range !37
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_11h_activate(ptr noundef %priv, i1 noundef zeroext %flag) local_unnamed_addr #2 align 64 {
entry:
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #6
  %conv = zext i1 %flag to i32
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %enable, align 4
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bss_role, align 1
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp ne i8 %3, 0
  %4 = and i1 %cmp.not, %flag
  br i1 %4, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %conv, 2
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %enable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 22, i16 noundef zeroext 1, i32 noundef 10, ptr noundef nonnull %enable, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_11h_process_join(ptr noundef %priv, ptr noundef %buffer, ptr nocapture noundef %bss_desc) local_unnamed_addr #2 align 64 {
entry:
  %enable.i16 = alloca i32, align 4
  %enable.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensed_11h = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 57
  %0 = ptrtoint ptr %sensed_11h to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensed_11h, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable.i) #6
  %bss_role.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %bss_role.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bss_role.i, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not.i.not = icmp eq i8 %4, 0
  %spec.store.select = select i1 %cmp.not.i.not, i32 1, i32 3
  %5 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.store.select, ptr %enable.i, align 4
  %call.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 22, i16 noundef zeroext 1, i32 noundef 10, ptr noundef nonnull %enable.i, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable.i) #6
  %is_11h_active = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 157, i32 1
  %6 = ptrtoint ptr %is_11h_active to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_11h_active, align 1
  %cap_info_bitmap = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 20
  %7 = ptrtoint ptr %cap_info_bitmap to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cap_info_bitmap, align 8
  %9 = or i16 %8, 256
  store i16 %9, ptr %cap_info_bitmap, align 8
  %tobool.not.i = icmp eq ptr %buffer, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %lor.lhs.false.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %bss_band.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 13
  %12 = ptrtoint ptr %bss_band.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bss_band.i, align 4
  %conv.i = trunc i16 %13 to i8
  %call.i15 = call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %conv.i) #6
  %wdev.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %14 = ptrtoint ptr %wdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wdev.i, align 8
  %idxprom.i = zext i8 %call.i15 to i32
  %arrayidx.i = getelementptr %struct.wiphy, ptr %15, i32 0, i32 53, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 8448, ptr %19, align 1
  %len.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 512, ptr %len.i, align 1
  %min_pwr.i = getelementptr inbounds %struct.mwifiex_ie_types_pwr_capability, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %min_pwr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %min_pwr.i, align 1
  %max_pwr.i = getelementptr inbounds %struct.mwifiex_ie_types_pwr_capability, ptr %19, i32 0, i32 2
  %23 = ptrtoint ptr %max_pwr.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %max_pwr.i, align 1
  %24 = load ptr, ptr %buffer, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 6
  store ptr %add.ptr.i, ptr %buffer, align 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 8192, ptr %add.ptr.i, align 1
  %len6.i = getelementptr i8, ptr %24, i32 8
  %26 = ptrtoint ptr %len6.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 512, ptr %len6.i, align 1
  %channel.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 5
  %27 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel.i, align 8
  %conv7.i = trunc i32 %28 to i8
  %chan.i = getelementptr i8, ptr %24, i32 10
  %29 = ptrtoint ptr %chan.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv7.i, ptr %chan.i, align 1
  %local_constraint.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 58
  %30 = ptrtoint ptr %local_constraint.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %local_constraint.i, align 1
  %constraint8.i = getelementptr i8, ptr %24, i32 11
  %32 = ptrtoint ptr %constraint8.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %constraint8.i, align 1
  %33 = load ptr, ptr %buffer, align 4
  %add.ptr9.i = getelementptr i8, ptr %33, i32 6
  store ptr %add.ptr9.i, ptr %buffer, align 4
  %34 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 2561, ptr %add.ptr9.i, align 1
  %n_channels.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %17, i32 0, i32 3
  %35 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_channels.i, align 4
  %.tr.i = trunc i32 %36 to i16
  %37 = shl i16 %.tr.i, 1
  %conv11.i = add i16 %37, 2
  %38 = call i16 @llvm.bswap.i16(i16 %conv11.i) #6
  %len12.i = getelementptr i8, ptr %33, i32 8
  %39 = ptrtoint ptr %len12.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %len12.i, align 1
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %add.ptr13.i = getelementptr i8, ptr %41, i32 4
  %incdec.ptr.i = getelementptr i8, ptr %41, i32 5
  store ptr %incdec.ptr.i, ptr %buffer, align 4
  %42 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 36, ptr %add.ptr13.i, align 1
  %43 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_channels.i, align 4
  %.tr55.i = trunc i32 %44 to i8
  %conv16.i = shl i8 %.tr55.i, 1
  %45 = load ptr, ptr %buffer, align 4
  %incdec.ptr17.i = getelementptr i8, ptr %45, i32 1
  store ptr %incdec.ptr17.i, ptr %buffer, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv16.i, ptr %45, align 1
  %47 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp56.i = icmp sgt i32 %47, 0
  br i1 %cmp56.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.057.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %48 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %17, align 4
  %center_freq.i = getelementptr %struct.ieee80211_channel, ptr %49, i32 %i.057.i, i32 1
  %50 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %center_freq.i, align 4
  %mul.i.i = mul i32 %51, 1000
  %call.i.i = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i) #6
  %conv22.i = trunc i32 %call.i.i to i8
  %52 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer, align 4
  %incdec.ptr23.i = getelementptr i8, ptr %53, i32 1
  store ptr %incdec.ptr23.i, ptr %buffer, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv22.i, ptr %53, align 1
  %55 = load ptr, ptr %buffer, align 4
  %incdec.ptr24.i = getelementptr i8, ptr %55, i32 1
  store ptr %incdec.ptr24.i, ptr %buffer, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %55, align 1
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %57 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %n_channels.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %58
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable.i16) #6
  %59 = ptrtoint ptr %enable.i16 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %enable.i16, align 4
  %call.i19 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 22, i16 noundef zeroext 1, i32 noundef 10, ptr noundef nonnull %enable.i16, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable.i16) #6
  %is_11h_active4 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 157, i32 1
  %60 = ptrtoint ptr %is_11h_active4 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %is_11h_active4, align 1
  %cap_info_bitmap5 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 20
  %61 = ptrtoint ptr %cap_info_bitmap5 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %cap_info_bitmap5, align 8
  %63 = and i16 %62, -257
  store i16 %63, ptr %cap_info_bitmap5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_dfs_cac_work_queue(ptr nocapture noundef readonly %work) local_unnamed_addr #2 align 64 {
entry:
  %chandef = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef) #6
  %dfs_chandef = getelementptr i8, ptr %work, i32 -32
  %0 = call ptr @memcpy(ptr %chandef, ptr %dfs_chandef, i32 28)
  %cac_started = getelementptr i8, ptr %work, i32 -5723
  %1 = ptrtoint ptr %cac_started to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cac_started, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %work, i32 -11124
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str) #6
  %netdev = getelementptr i8, ptr %work, i32 -11096
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  call void @cfg80211_cac_event(ptr noundef %6, ptr noundef nonnull %chandef, i32 noundef 1, i32 noundef 3264) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cac_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_issue_chan_report_request(ptr nocapture noundef readonly %priv, ptr nocapture noundef %cmd, ptr nocapture noundef readonly %data_buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 -8960, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 4096, ptr %size, align 1
  %2 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -30701, ptr %params, align 1
  %3 = ptrtoint ptr %data_buf to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load ptr, ptr %data_buf, align 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hw_value, align 2
  %conv = trunc i16 %8 to i8
  %chan_num = getelementptr inbounds %struct.mwifiex_chan_desc, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %chan_num to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %chan_num, align 1
  %10 = load ptr, ptr %data_buf, align 1
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 4
  %conv4 = trunc i32 %12 to i8
  %chan_width = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %chan_width to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4, ptr %chan_width, align 1
  %cac_time_ms = getelementptr inbounds %struct.mwifiex_radar_params, ptr %data_buf, i32 0, i32 1
  %14 = ptrtoint ptr %cac_time_ms to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %cac_time_ms, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %msec_dwell_time = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %17 = ptrtoint ptr %msec_dwell_time to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %msec_dwell_time, align 1
  %18 = ptrtoint ptr %cac_time_ms to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %cac_time_ms, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %data_buf to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load ptr, ptr %data_buf, align 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %hw_value9 = getelementptr inbounds %struct.ieee80211_channel, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %hw_value9 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hw_value9, align 2
  %conv10 = zext i16 %27 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %conv10) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 1, ptr noundef nonnull @.str.2) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_stop_radar_detection(ptr noundef %priv, ptr noundef %chandef) local_unnamed_addr #2 align 64 {
entry:
  %radar_params = alloca %struct.mwifiex_radar_params, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %radar_params) #6
  %0 = getelementptr inbounds %struct.mwifiex_radar_params, ptr %radar_params, i32 0, i32 1
  %1 = ptrtoint ptr %radar_params to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %chandef, ptr %radar_params, align 8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %0, align 4
  %call = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 221, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %radar_params, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %radar_params) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_abort_cac(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  %radar_params.i = alloca %struct.mwifiex_radar_params, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cac_started = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103, i32 36
  %0 = ptrtoint ptr %cac_started to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cac_started, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %dfs_chandef = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %radar_params.i) #6
  %2 = getelementptr inbounds %struct.mwifiex_radar_params, ptr %radar_params.i, i32 0, i32 1
  %3 = ptrtoint ptr %radar_params.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dfs_chandef, ptr %radar_params.i, align 8
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %2, align 4
  %call.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 221, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %radar_params.i, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %radar_params.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 4, ptr noundef nonnull @.str.3) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @.str.4) #6
  %dfs_cac_work = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 152
  %call4 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dfs_cac_work) #6
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  call void @cfg80211_cac_event(ptr noundef %10, ptr noundef %dfs_chandef, i32 noundef 2, i32 noundef 3264) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_11h_handle_chanrpt_ready(ptr noundef %priv, ptr nocapture noundef readonly %skb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %conv = add i32 %7, 65516
  %tlvbuf = getelementptr i8, ptr %1, i32 20
  %conv237 = and i32 %conv, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv237)
  %cmp338 = icmp ugt i32 %conv237, 3
  br i1 %cmp338, label %while.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %len6 = getelementptr i8, ptr %1, i32 22
  %map = getelementptr i8, ptr %1, i32 24
  %dfs_chandef = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 150
  %dfs_cac_work = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 152
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %conv239 = phi i32 [ %conv237, %while.body.lr.ph ], [ %conv2, %sw.epilog.while.body_crit_edge ]
  %8 = ptrtoint ptr %len6 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %len6, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = ptrtoint ptr %tlvbuf to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %tlvbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 23297, i16 %12)
  %cond = icmp eq i16 %12, 23297
  br i1 %cond, label %sw.bb, label %while.body.sw.epilog_crit_edge

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %map, align 1
  %14 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then9

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %17 = ptrtoint ptr %dfs_chandef to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dfs_chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hw_value, align 2
  %conv11 = zext i16 %20 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %conv11) #6
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dfs_cac_work) #6
  %21 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev, align 4
  tail call void @cfg80211_cac_event(ptr noundef %22, ptr noundef %dfs_chandef, i32 noundef 0, i32 noundef 3264) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then9, %sw.bb.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge
  %conv14 = zext i16 %10 to i32
  %add.neg = add nuw nsw i32 %conv239, 65532
  %sub19 = sub nuw nsw i32 %add.neg, %conv14
  %conv2 = and i32 %sub19, 65535
  %cmp3 = icmp ugt i32 %conv2, 3
  br i1 %cmp3, label %sw.epilog.while.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_11h_handle_radar_detected(ptr noundef %priv, ptr nocapture noundef readonly %skb) local_unnamed_addr #2 align 64 {
entry:
  %radar_params.i = alloca %struct.mwifiex_radar_params, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.7) #6
  %dfs_chandef = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %radar_params.i) #6
  %4 = getelementptr inbounds %struct.mwifiex_radar_params, ptr %radar_params.i, i32 0, i32 1
  %5 = ptrtoint ptr %radar_params.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dfs_chandef, ptr %radar_params.i, align 8
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %4, align 4
  %call.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 221, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %radar_params.i, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %radar_params.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 4, ptr noundef nonnull @.str.8) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %wiphy = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 4
  call void @__cfg80211_radar_event(ptr noundef %12, ptr noundef %dfs_chandef, i1 noundef zeroext false, i32 noundef 3264) #6
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %reg_domain = getelementptr i8, ptr %1, i32 8
  %15 = ptrtoint ptr %reg_domain to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg_domain, align 1
  %conv = zext i8 %16 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %conv) #6
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %det_type = getelementptr i8, ptr %1, i32 9
  %19 = ptrtoint ptr %det_type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %det_type, align 1
  %conv6 = zext i8 %20 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %conv6) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_dfs_chan_sw_work_queue(ptr noundef %work) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -11276
  %beacon_period = getelementptr i8, ptr %work, i32 -680
  %0 = ptrtoint ptr %beacon_period to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %beacon_period, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.11) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %bss_cfg1 = getelementptr i8, ptr %work, i32 -728
  %dfs_chandef = getelementptr i8, ptr %work, i32 -184
  %4 = ptrtoint ptr %dfs_chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %dfs_chandef, align 4
  %5 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.elt21 = getelementptr i8, ptr %work, i32 -180
  %6 = ptrtoint ptr %.elt21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack22 = load i32, ptr %.elt21, align 4
  %7 = insertvalue [7 x i32] %5, i32 %.unpack22, 1
  %.elt23 = getelementptr i8, ptr %work, i32 -176
  %8 = ptrtoint ptr %.elt23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack24 = load i32, ptr %.elt23, align 4
  %9 = insertvalue [7 x i32] %7, i32 %.unpack24, 2
  %.elt25 = getelementptr i8, ptr %work, i32 -172
  %10 = ptrtoint ptr %.elt25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack26 = load i32, ptr %.elt25, align 4
  %11 = insertvalue [7 x i32] %9, i32 %.unpack26, 3
  %.elt27 = getelementptr i8, ptr %work, i32 -168
  %12 = ptrtoint ptr %.elt27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack28 = load i32, ptr %.elt27, align 4
  %13 = insertvalue [7 x i32] %11, i32 %.unpack28, 4
  %.elt29 = getelementptr i8, ptr %work, i32 -164
  %14 = ptrtoint ptr %.elt29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack30 = load i32, ptr %.elt29, align 4
  %15 = insertvalue [7 x i32] %13, i32 %.unpack30, 5
  %.elt31 = getelementptr i8, ptr %work, i32 -160
  %16 = ptrtoint ptr %.elt31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack32 = load i32, ptr %.elt31, align 4
  %17 = insertvalue [7 x i32] %15, i32 %.unpack32, 6
  tail call void @mwifiex_uap_set_channel(ptr noundef %add.ptr, ptr noundef %bss_cfg1, [7 x i32] %17) #6
  %call2 = tail call i32 @mwifiex_config_start_uap(ptr noundef %add.ptr, ptr noundef %bss_cfg1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 4, ptr noundef nonnull @.str.12) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.13) #6
  %netdev = getelementptr i8, ptr %work, i32 -11248
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 4
  tail call void @cfg80211_ch_switch_notify(ptr noundef %21, ptr noundef %dfs_chandef) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_uap_set_channel(ptr noundef, ptr noundef, [7 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_config_start_uap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ch_switch_notify(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_radar_event(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/11h.c", i32 133, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/11h.c", i32 162, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/mwifiex/11h.c", i32 166, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/mwifiex/11h.c", i32 191, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/11h.c", i32 193, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/mwifiex/11h.c", i32 218, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/mwifiex/11h.c", i32 232, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/mwifiex/11h.c", i32 261, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/mwifiex/11h.c", i32 264, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/11h.c", i32 268, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/11h.c", i32 270, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/mwifiex/11h.c", i32 291, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/mwifiex/11h.c", i32 299, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/mwifiex/11h.c", i32 304, i32 2}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
