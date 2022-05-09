; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/uap_event.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/uap_event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
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
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mwifiex_ie_types_header = type { i16, i16 }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not create station entry!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AP EVENT: event id: %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"event: AMSDU_AGGR_CTRL %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"event: tx_buf_size %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"event: ADDBA Request\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"event: DELBA Request\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"event:  BA Stream timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"event: EXT_SCAN Report\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"event: TX_STATUS Report\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"info: EVENT: SLEEP\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"info: EVENT: AWAKE\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"event: PPS/UAPSD mode activated\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"event: Channel Report\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"event: Radar detected\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event: BT coex wlan param update\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"event: TX DATA PAUSE\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"event: multi-chan info\0A\00", [40 x i8] zeroinitializer }, align 32
@mwifiex_process_uap_event.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mwifiex\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mwifiex_process_uap_event\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/marvell/mwifiex/uap_event.c\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EVENT: RXBA_SYNC\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"event: uap: Remain on channel expired\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"event: unknown event id: %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uap capabilities:\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"info: check uap capabilities:\09wmm parameter set count: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [23 x i64] [i64 21, i64 32, i64 10, i64 11, i64 44, i64 45, i64 46, i64 51, i64 52, i64 55, i64 66, i64 67, i64 68, i64 76, i64 83, i64 84, i64 85, i64 88, i64 89, i64 95, i64 106, i64 116, i64 118]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 16, i64 45, i64 191, i64 221]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 150, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 197, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 212, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 218, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 224, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 231, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 236, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 243, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 249, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 253, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 261, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 265, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 294, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 298, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 302, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 307, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 312, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 316, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 323, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 333, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 41, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [52 x i8] c"../drivers/net/wireless/marvell/mwifiex/uap_event.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 70, i32 4 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_uap_event(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %event_cause = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %event_cause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_cause, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default [
    i32 45, label %sw.bb
    i32 44, label %sw.bb45
    i32 67, label %sw.bb54
    i32 68, label %sw.bb55
    i32 46, label %sw.bb58
    i32 76, label %sw.bb68
    i32 66, label %sw.bb69
    i32 51, label %sw.bb87
    i32 52, label %sw.bb95
    i32 55, label %sw.bb102
    i32 88, label %sw.bb109
    i32 116, label %sw.bb116
    i32 11, label %sw.bb119
    i32 10, label %sw.bb120
    i32 84, label %sw.bb161
    i32 83, label %sw.bb164
    i32 118, label %sw.bb167
    i32 85, label %sw.bb169
    i32 106, label %sw.bb171
    i32 89, label %do.body
    i32 95, label %sw.bb187
  ]

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 208) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %add.ptr = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 2
  %type = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 8
  %6 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 26625, i16 %7)
  %cmp = icmp eq i16 %7, 26625
  br i1 %cmp, label %if.then3, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then3:                                         ; preds = %if.end
  %frame_control = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 12
  %8 = ptrtoint ptr %frame_control to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %frame_control, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %9)
  %cmp.i = icmp ult i16 %9, 1024
  br i1 %cmp.i, label %if.then3.if.then13_crit_edge, label %if.end10

if.then3.if.then13_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.end10:                                         ; preds = %if.then3
  %10 = and i16 %9, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %10)
  %cmp.i343 = icmp eq i16 %10, 8192
  br i1 %cmp.i343, label %if.end10.if.then13_crit_edge, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.then13:                                        ; preds = %if.end10.if.then13_crit_edge, %if.then3.if.then13_crit_edge
  %len.0347 = phi i32 [ 6, %if.end10.if.then13_crit_edge ], [ 0, %if.then3.if.then13_crit_edge ]
  %data = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 18
  %arrayidx = getelementptr [0 x i8], ptr %data, i32 0, i32 %len.0347
  %assoc_req_ies = getelementptr inbounds %struct.station_info, ptr %call7.i.i, i32 0, i32 24
  %11 = ptrtoint ptr %assoc_req_ies to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %assoc_req_ies, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %frame_control to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %len16 = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 10
  %12 = ptrtoint ptr %len16 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %len16, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv17 = zext i16 %14 to i32
  %conv19 = and i32 %sub.ptr.sub, 65535
  %sub = sub nsw i32 %conv17, %conv19
  %assoc_req_ies_len = getelementptr inbounds %struct.station_info, ptr %call7.i.i, i32 0, i32 25
  %15 = ptrtoint ptr %assoc_req_ies_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %assoc_req_ies_len, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %if.end10.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  tail call void @cfg80211_new_sta(ptr noundef %17, ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i, i32 noundef 3264) #4
  %call25 = tail call ptr @mwifiex_add_sta_entry(ptr noundef %priv, ptr noundef %add.ptr) #4
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %ap_11n_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 125
  %18 = ptrtoint ptr %ap_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ap_11n_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool29.not = icmp eq i8 %19, 0
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  %assoc_req_ies32 = getelementptr inbounds %struct.station_info, ptr %call7.i.i, i32 0, i32 24
  %20 = ptrtoint ptr %assoc_req_ies32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %assoc_req_ies32, align 8
  %assoc_req_ies_len33 = getelementptr inbounds %struct.station_info, ptr %call7.i.i, i32 0, i32 25
  %22 = ptrtoint ptr %assoc_req_ies_len33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %assoc_req_ies_len33, align 4
  tail call void @mwifiex_set_sta_ht_cap(ptr noundef %priv, ptr noundef %21, i32 noundef %23, ptr noundef nonnull %call25) #4
  %is_11n_enabled = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 3
  %24 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_11n_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool36.not = icmp eq i8 %25, 0
  br i1 %tobool36.not, label %for.inc.1.thread, label %for.inc.1

for.inc.1.thread:                                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %26 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 0
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %26, align 1
  %28 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %28, align 1
  br label %for.inc.2

for.inc.1:                                        ; preds = %if.end31
  %arrayidx38 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 0
  %30 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx38, align 1
  %32 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 0
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %31, ptr %32, align 1
  %arrayidx38.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 1
  %34 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx38.1, align 1
  %36 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr362 = load i8, ptr %is_11n_enabled, align 1
  %37 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %35, ptr %37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr362)
  %tobool36.not.2 = icmp eq i8 %.pr362, 0
  br i1 %tobool36.not.2, label %for.inc.2.thread, label %if.then37.2

for.inc.2.thread:                                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %39 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %39, align 1
  br label %for.inc.3

if.then37.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx38.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 2
  %41 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx38.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then37.2, %for.inc.1.thread
  %.sink354.ph = phi i8 [ -1, %for.inc.1.thread ], [ %42, %if.then37.2 ]
  %43 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %43)
  %.pr365 = load i8, ptr %is_11n_enabled, align 1
  %44 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink354.ph, ptr %44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr365)
  %tobool36.not.3 = icmp eq i8 %.pr365, 0
  br i1 %tobool36.not.3, label %for.inc.3.thread, label %if.then37.3

for.inc.3.thread:                                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %46 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 3
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %46, align 1
  br label %for.inc.4

if.then37.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx38.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 3
  %48 = ptrtoint ptr %arrayidx38.3 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx38.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then37.3, %for.inc.2.thread
  %.sink355.ph = phi i8 [ -1, %for.inc.2.thread ], [ %49, %if.then37.3 ]
  %50 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %50)
  %.pr368 = load i8, ptr %is_11n_enabled, align 1
  %51 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 3
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %.sink355.ph, ptr %51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr368)
  %tobool36.not.4 = icmp eq i8 %.pr368, 0
  br i1 %tobool36.not.4, label %for.inc.4.thread, label %if.then37.4

for.inc.4.thread:                                 ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  %53 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %53, align 1
  br label %for.inc.5

if.then37.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx38.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 4
  %55 = ptrtoint ptr %arrayidx38.4 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx38.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then37.4, %for.inc.3.thread
  %.sink356.ph = phi i8 [ -1, %for.inc.3.thread ], [ %56, %if.then37.4 ]
  %57 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %57)
  %.pr371 = load i8, ptr %is_11n_enabled, align 1
  %58 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %.sink356.ph, ptr %58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr371)
  %tobool36.not.5 = icmp eq i8 %.pr371, 0
  br i1 %tobool36.not.5, label %for.inc.5.thread, label %if.then37.5

for.inc.5.thread:                                 ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %60 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 5
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %60, align 1
  br label %for.inc.6

if.then37.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx38.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 5
  %62 = ptrtoint ptr %arrayidx38.5 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx38.5, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then37.5, %for.inc.4.thread
  %.sink357.ph = phi i8 [ -1, %for.inc.4.thread ], [ %63, %if.then37.5 ]
  %64 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %64)
  %.pr374 = load i8, ptr %is_11n_enabled, align 1
  %65 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 5
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %.sink357.ph, ptr %65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr374)
  %tobool36.not.6 = icmp eq i8 %.pr374, 0
  br i1 %tobool36.not.6, label %for.inc.6.thread, label %if.then37.6

for.inc.6.thread:                                 ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  %67 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 6
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %67, align 1
  br label %for.inc.7

if.then37.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx38.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 6
  %69 = ptrtoint ptr %arrayidx38.6 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx38.6, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then37.6, %for.inc.5.thread
  %.sink358.ph = phi i8 [ -1, %for.inc.5.thread ], [ %70, %if.then37.6 ]
  %71 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %71)
  %.pr377 = load i8, ptr %is_11n_enabled, align 1
  %72 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 6
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %.sink358.ph, ptr %72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr377)
  %tobool36.not.7 = icmp eq i8 %.pr377, 0
  br i1 %tobool36.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then37.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7

if.then37.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx38.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 7
  %74 = ptrtoint ptr %arrayidx38.7 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx38.7, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then37.7, %for.inc.6.for.inc.7_crit_edge, %for.inc.6.thread
  %.sink359 = phi i8 [ %75, %if.then37.7 ], [ -1, %for.inc.6.thread ], [ -1, %for.inc.6.for.inc.7_crit_edge ]
  %76 = getelementptr %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 5, i32 7
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %.sink359, ptr %76, align 1
  %rx_seq = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call25, i32 0, i32 6
  %78 = call ptr @memset(ptr %rx_seq, i32 255, i32 16)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

sw.bb45:                                          ; preds = %entry
  %add.ptr48 = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 2
  %netdev49 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %79 = ptrtoint ptr %netdev49 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %netdev49, align 4
  tail call void @cfg80211_del_sta_sinfo(ptr noundef %80, ptr noundef %add.ptr48, ptr noundef null, i32 noundef 3264) #4
  %ap_11n_enabled50 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 125
  %81 = ptrtoint ptr %ap_11n_enabled50 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ap_11n_enabled50, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool51.not = icmp eq i8 %82, 0
  br i1 %tobool51.not, label %sw.bb45.if.end53_crit_edge, label %if.then52

sw.bb45.if.end53_crit_edge:                       ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.then52:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mwifiex_11n_del_rx_reorder_tbl_by_ta(ptr noundef %priv, ptr noundef %add.ptr48) #4
  tail call void @mwifiex_del_tx_ba_stream_tbl_by_ra(ptr noundef %priv, ptr noundef %add.ptr48) #4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %sw.bb45.if.end53_crit_edge
  tail call void @mwifiex_wmm_del_peer_ra_list(ptr noundef %priv, ptr noundef %add.ptr48) #4
  tail call void @mwifiex_del_sta_entry(ptr noundef %priv, ptr noundef %add.ptr48) #4
  br label %cleanup

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %83 = ptrtoint ptr %media_connected to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %media_connected, align 8
  %port_open = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 9
  %84 = ptrtoint ptr %port_open to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %port_open, align 1
  tail call void @mwifiex_clean_txrx(ptr noundef %priv) #4
  tail call void @mwifiex_del_all_sta_list(ptr noundef %priv) #4
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %media_connected56 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %85 = ptrtoint ptr %media_connected56 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %media_connected56, align 8
  %port_open57 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 9
  %86 = ptrtoint ptr %port_open57 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %port_open57, align 1
  br label %cleanup

sw.bb58:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 46) #4
  %port_open59 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 9
  %87 = ptrtoint ptr %port_open59 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %port_open59, align 1
  %netdev60 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %88 = ptrtoint ptr %netdev60 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %netdev60, align 4
  %add.ptr63 = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 2
  tail call void @dev_addr_mod(ptr noundef %89, i32 noundef 0, ptr noundef %add.ptr63, i32 noundef 6) #4
  %hist_data = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 149
  %90 = ptrtoint ptr %hist_data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hist_data, align 8
  %tobool64.not = icmp eq ptr %91, null
  br i1 %tobool64.not, label %sw.bb58.if.end66_crit_edge, label %if.then65

sw.bb58.if.end66_crit_edge:                       ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.then65:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mwifiex_hist_data_reset(ptr noundef %priv) #4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %sw.bb58.if.end66_crit_edge
  %event_skb = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %92 = ptrtoint ptr %event_skb to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %event_skb, align 4
  %wmm_enabled.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 74
  %94 = ptrtoint ptr %wmm_enabled.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %wmm_enabled.i, align 1
  %call.i = tail call ptr @skb_pull(ptr noundef %93, i32 noundef 12) #4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 6
  %95 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 19
  %97 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i, align 4
  %99 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %priv, align 8
  %debug_mask.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %102, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end66.do.end.i_crit_edge, label %if.then.i

if.end66.do.end.i_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.then.i:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @print_hex_dump(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %98, i32 noundef %96, i1 noundef zeroext false) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end66.do.end.i_crit_edge
  %call3.i = tail call ptr @skb_push(ptr noundef %93, i32 noundef 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %96)
  %cmp1.i = icmp ugt i32 %96, 3
  br i1 %cmp1.i, label %while.body.lr.ph.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %do.end.i
  %ap_11ac_enabled.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 126
  %ap_11n_enabled.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 125
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %curr.03.i = phi ptr [ %98, %while.body.lr.ph.i ], [ %add.ptr22.i, %sw.epilog.i.while.body.i_crit_edge ]
  %evt_len.02.i = phi i32 [ %96, %while.body.lr.ph.i ], [ %sub.i, %sw.epilog.i.while.body.i_crit_edge ]
  %len4.i = getelementptr %struct.mwifiex_ie_types_header, ptr %curr.03.i, i32 0, i32 1
  %103 = ptrtoint ptr %len4.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %len4.i, align 1
  %105 = tail call i16 @llvm.bswap.i16(i16 %104) #4
  %conv.i = zext i16 %105 to i32
  %add.i = add nuw nsw i32 %conv.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %evt_len.02.i, i32 %add.i)
  %cmp5.i = icmp ult i32 %evt_len.02.i, %add.i
  br i1 %cmp5.i, label %while.body.i.cleanup_crit_edge, label %if.end8.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8.i:                                        ; preds = %while.body.i
  %106 = ptrtoint ptr %curr.03.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %curr.03.i, align 1
  %108 = tail call i16 @llvm.bswap.i16(i16 %107) #4
  %109 = zext i16 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %108, label %if.end8.i.sw.epilog.i_crit_edge [
    i16 45, label %sw.bb.i
    i16 191, label %sw.bb11.i
    i16 221, label %sw.bb12.i
  ]

if.end8.i.sw.epilog.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %110 = ptrtoint ptr %ap_11n_enabled.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %ap_11n_enabled.i, align 2
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %111 = ptrtoint ptr %ap_11ac_enabled.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %ap_11ac_enabled.i, align 1
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv13.i = trunc i16 %105 to i8
  %len14.i = getelementptr i8, ptr %curr.03.i, i32 3
  %112 = ptrtoint ptr %len14.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv13.i, ptr %len14.i, align 1
  %113 = ptrtoint ptr %len4.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -35, ptr %len4.i, align 1
  %114 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %priv, align 8
  %qos_info_bitmap.i = getelementptr i8, ptr %curr.03.i, i32 10
  %116 = ptrtoint ptr %qos_info_bitmap.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %qos_info_bitmap.i, align 1
  %118 = and i8 %117, 15
  %and18.i = zext i8 %118 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %115, i32 noundef 32, ptr noundef nonnull @.str.25, i32 noundef %and18.i) #4
  tail call void @mwifiex_wmm_setup_ac_downgrade(ptr noundef %priv) #4
  %119 = ptrtoint ptr %wmm_enabled.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %wmm_enabled.i, align 1
  tail call void @mwifiex_wmm_setup_queue_priorities(ptr noundef %priv, ptr noundef %len4.i) #4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb12.i, %sw.bb11.i, %sw.bb.i, %if.end8.i.sw.epilog.i_crit_edge
  %add.ptr22.i = getelementptr i8, ptr %curr.03.i, i32 %add.i
  %sub.i = sub i32 %evt_len.02.i, %add.i
  %cmp.i344 = icmp ugt i32 %sub.i, 3
  br i1 %cmp.i344, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 76) #4
  br label %cleanup

sw.bb69:                                          ; preds = %entry
  %event_body70 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  %120 = ptrtoint ptr %event_body70 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 2)
  %121 = load i16, ptr %event_body70, align 1
  %122 = tail call i16 @llvm.bswap.i16(i16 %121) #4
  %conv73 = zext i16 %122 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %conv73) #4
  %media_connected74 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %123 = ptrtoint ptr %media_connected74 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %media_connected74, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool75.not = icmp eq i8 %124, 0
  br i1 %tobool75.not, label %sw.bb69.cleanup_crit_edge, label %if.then76

sw.bb69.cleanup_crit_edge:                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then76:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #6
  %curr_tx_buf_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 40
  %125 = ptrtoint ptr %curr_tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %curr_tx_buf_size, align 4
  %127 = tail call i16 @llvm.umin.i16(i16 %126, i16 %122)
  %tx_buf_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 39
  %128 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %tx_buf_size, align 2
  %conv85 = zext i16 %127 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %conv85) #4
  br label %cleanup

sw.bb87:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.4) #4
  %media_connected88 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %129 = ptrtoint ptr %media_connected88 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %media_connected88, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool89.not = icmp eq i8 %130, 0
  br i1 %tobool89.not, label %sw.bb87.cleanup_crit_edge, label %if.then90

sw.bb87.cleanup_crit_edge:                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then90:                                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #6
  %event_body91 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  %call93 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 207, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %event_body91, i1 noundef zeroext false) #4
  br label %cleanup

sw.bb95:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.5) #4
  %media_connected96 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %131 = ptrtoint ptr %media_connected96 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %media_connected96, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool97.not = icmp eq i8 %132, 0
  br i1 %tobool97.not, label %sw.bb95.cleanup_crit_edge, label %if.then98

sw.bb95.cleanup_crit_edge:                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then98:                                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #6
  %event_body99 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  tail call void @mwifiex_11n_delete_ba_stream(ptr noundef %priv, ptr noundef %event_body99) #4
  br label %cleanup

sw.bb102:                                         ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.6) #4
  %media_connected103 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %133 = ptrtoint ptr %media_connected103 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %media_connected103, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool104.not = icmp eq i8 %134, 0
  br i1 %tobool104.not, label %sw.bb102.cleanup_crit_edge, label %if.then105

sw.bb102.cleanup_crit_edge:                       ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then105:                                       ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #6
  %event_body106 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  tail call void @mwifiex_11n_ba_stream_timeout(ptr noundef %priv, ptr noundef %event_body106) #4
  br label %cleanup

sw.bb109:                                         ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.7) #4
  %ext_scan = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 137
  %135 = ptrtoint ptr %ext_scan to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %ext_scan, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool110.not = icmp eq i8 %136, 0
  br i1 %tobool110.not, label %sw.bb109.cleanup_crit_edge, label %if.then111

sw.bb109.cleanup_crit_edge:                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then111:                                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #6
  %event_skb112 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %137 = ptrtoint ptr %event_skb112 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %event_skb112, align 4
  %data113 = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 19
  %139 = ptrtoint ptr %data113 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data113, align 4
  %call114 = tail call i32 @mwifiex_handle_event_ext_scan_report(ptr noundef %priv, ptr noundef %140) #4
  br label %cleanup

sw.bb116:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.8) #4
  %event_body117 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  tail call void @mwifiex_parse_tx_status_event(ptr noundef %priv, ptr noundef %event_body117) #4
  br label %cleanup

sw.bb119:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.9) #4
  %ps_state = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 90
  %141 = ptrtoint ptr %ps_state to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %ps_state, align 4
  tail call void @mwifiex_check_ps_cond(ptr noundef %1) #4
  br label %cleanup

sw.bb120:                                         ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.10) #4
  %pps_uapsd_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 104
  %142 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %pps_uapsd_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %tobool121.not = icmp eq i16 %143, 0
  br i1 %tobool121.not, label %land.lhs.true, label %if.end130.thread

if.end130.thread:                                 ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #6
  %tx_lock_flag348 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %144 = ptrtoint ptr %tx_lock_flag348 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %tx_lock_flag348, align 4
  br label %land.lhs.true134

land.lhs.true:                                    ; preds = %sw.bb120
  %media_connected122 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %145 = ptrtoint ptr %media_connected122 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %media_connected122, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool124.not = icmp eq i8 %146, 0
  br i1 %tobool124.not, label %land.lhs.true.if.end130_crit_edge, label %land.lhs.true125

land.lhs.true.if.end130_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

land.lhs.true125:                                 ; preds = %land.lhs.true
  %sleep_period = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 88
  %147 = ptrtoint ptr %sleep_period to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %sleep_period, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %tobool127.not = icmp eq i16 %148, 0
  br i1 %tobool127.not, label %land.lhs.true125.if.end130_crit_edge, label %if.then128

land.lhs.true125.if.end130_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

if.then128:                                       ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #6
  %149 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 1, ptr %pps_uapsd_mode, align 2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.11) #4
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %land.lhs.true125.if.end130_crit_edge, %land.lhs.true.if.end130_crit_edge
  %150 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_load2_noabort(i32 %150)
  %.pr = load i16, ptr %pps_uapsd_mode, align 2
  %tx_lock_flag = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %151 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %tx_lock_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool133.not = icmp eq i16 %.pr, 0
  br i1 %tobool133.not, label %if.end130.if.end157_crit_edge, label %if.end130.land.lhs.true134_crit_edge

if.end130.land.lhs.true134_crit_edge:             ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true134

if.end130.if.end157_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end157

land.lhs.true134:                                 ; preds = %if.end130.land.lhs.true134_crit_edge, %if.end130.thread
  %gen_null_pkt = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 103
  %152 = ptrtoint ptr %gen_null_pkt to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %gen_null_pkt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %153)
  %tobool136.not = icmp eq i16 %153, 0
  br i1 %tobool136.not, label %land.lhs.true134.if.end157_crit_edge, label %if.then137

land.lhs.true134.if.end157_crit_edge:             ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end157

if.then137:                                       ; preds = %land.lhs.true134
  %call138 = tail call zeroext i8 @mwifiex_check_last_packet_indication(ptr noundef %priv) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call138)
  %tobool139.not = icmp eq i8 %call138, 0
  br i1 %tobool139.not, label %if.then137.if.end157_crit_edge, label %if.then140

if.then137.if.end157_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end157

if.then140:                                       ; preds = %if.then137
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 53
  %154 = ptrtoint ptr %data_sent to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %data_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool142.not = icmp eq i8 %155, 0
  br i1 %tobool142.not, label %lor.lhs.false, label %if.then140.if.then148_crit_edge

if.then140.if.then148_crit_edge:                  ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then148

lor.lhs.false:                                    ; preds = %if.then140
  %is_port_ready = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 18, i32 27
  %156 = ptrtoint ptr %is_port_ready to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %is_port_ready, align 4
  %tobool143.not = icmp eq ptr %157, null
  br i1 %tobool143.not, label %lor.lhs.false.if.end150_crit_edge, label %land.lhs.true144

lor.lhs.false.if.end150_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end150

land.lhs.true144:                                 ; preds = %lor.lhs.false
  %call147 = tail call zeroext i1 %157(ptr noundef %priv) #4
  br i1 %call147, label %land.lhs.true144.if.end150_crit_edge, label %land.lhs.true144.if.then148_crit_edge

land.lhs.true144.if.then148_crit_edge:            ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then148

land.lhs.true144.if.end150_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end150

if.then148:                                       ; preds = %land.lhs.true144.if.then148_crit_edge, %if.then140.if.then148_crit_edge
  %ps_state149 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 90
  %158 = ptrtoint ptr %ps_state149 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %ps_state149, align 4
  %pm_wakeup_card_req = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 102
  %159 = ptrtoint ptr %pm_wakeup_card_req to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %pm_wakeup_card_req, align 2
  %pm_wakeup_fw_try = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 105
  %160 = ptrtoint ptr %pm_wakeup_fw_try to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %pm_wakeup_fw_try, align 4
  br label %cleanup

if.end150:                                        ; preds = %land.lhs.true144.if.end150_crit_edge, %lor.lhs.false.if.end150_crit_edge
  %call151 = tail call i32 @mwifiex_send_null_packet(ptr noundef %priv, i8 noundef zeroext 9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then153, label %if.end150.cleanup_crit_edge

if.end150.cleanup_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then153:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #6
  %ps_state154 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 90
  %161 = ptrtoint ptr %ps_state154 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 3, ptr %ps_state154, align 4
  br label %cleanup

if.end157:                                        ; preds = %if.then137.if.end157_crit_edge, %land.lhs.true134.if.end157_crit_edge, %if.end130.if.end157_crit_edge
  %ps_state158 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 90
  %162 = ptrtoint ptr %ps_state158 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %ps_state158, align 4
  %pm_wakeup_card_req159 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 102
  %163 = ptrtoint ptr %pm_wakeup_card_req159 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %pm_wakeup_card_req159, align 2
  %pm_wakeup_fw_try160 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 105
  %164 = ptrtoint ptr %pm_wakeup_fw_try160 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %pm_wakeup_fw_try160, align 4
  br label %cleanup

sw.bb161:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.12) #4
  %event_skb162 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %165 = ptrtoint ptr %event_skb162 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %event_skb162, align 4
  %call163 = tail call i32 @mwifiex_11h_handle_chanrpt_ready(ptr noundef %priv, ptr noundef %166) #4
  br label %cleanup

sw.bb164:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.13) #4
  %event_skb165 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %167 = ptrtoint ptr %event_skb165 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %event_skb165, align 4
  %call166 = tail call i32 @mwifiex_11h_handle_radar_detected(ptr noundef %priv, ptr noundef %168) #4
  br label %cleanup

sw.bb167:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.14) #4
  %event_skb168 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %169 = ptrtoint ptr %event_skb168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %event_skb168, align 4
  tail call void @mwifiex_bt_coex_wlan_param_update_event(ptr noundef %priv, ptr noundef %170) #4
  br label %cleanup

sw.bb169:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.15) #4
  %event_skb170 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %171 = ptrtoint ptr %event_skb170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %event_skb170, align 4
  tail call void @mwifiex_process_tx_pause_event(ptr noundef %priv, ptr noundef %172) #4
  br label %cleanup

sw.bb171:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.16) #4
  %event_skb172 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %173 = ptrtoint ptr %event_skb172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %event_skb172, align 4
  tail call void @mwifiex_process_multi_chan_event(ptr noundef %priv, ptr noundef %174) #4
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_process_uap_event.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_process_uap_event, %if.then179)) #4
          to label %do.end [label %if.then179], !srcloc !59

if.then179:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 9
  %175 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mwifiex_process_uap_event.__UNIQUE_ID_ddebug490, ptr noundef %176, ptr noundef nonnull @.str.20) #4
  br label %do.end

do.end:                                           ; preds = %if.then179, %do.body
  %event_body181 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  %event_skb183 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %177 = ptrtoint ptr %event_skb183 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %event_skb183, align 4
  %len184 = getelementptr inbounds %struct.sk_buff, ptr %178, i32 0, i32 6
  %179 = ptrtoint ptr %len184 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %len184, align 4
  %181 = trunc i32 %180 to i16
  %conv186 = add i16 %181, -4
  tail call void @mwifiex_11n_rxba_sync_event(ptr noundef %priv, ptr noundef %event_body181, i16 noundef zeroext %conv186) #4
  br label %cleanup

sw.bb187:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.21) #4
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %roc_cfg = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 129
  %182 = ptrtoint ptr %roc_cfg to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %roc_cfg, align 8
  %chan = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 129, i32 1
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %wdev, i64 noundef %183, ptr noundef %chan, i32 noundef 2592) #4
  %184 = call ptr @memset(ptr %roc_cfg, i32 0, i32 64)
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb187, %do.end, %sw.bb171, %sw.bb169, %sw.bb167, %sw.bb164, %sw.bb161, %if.end157, %if.then153, %if.end150.cleanup_crit_edge, %if.then148, %sw.bb119, %sw.bb116, %if.then111, %sw.bb109.cleanup_crit_edge, %if.then105, %sw.bb102.cleanup_crit_edge, %if.then98, %sw.bb95.cleanup_crit_edge, %if.then90, %sw.bb87.cleanup_crit_edge, %if.then76, %sw.bb69.cleanup_crit_edge, %sw.bb68, %sw.epilog.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %sw.bb55, %sw.bb54, %if.end53, %for.inc.7, %if.then30, %if.then27, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %call114, %if.then111 ], [ -1, %if.then27 ], [ -12, %sw.bb.cleanup_crit_edge ], [ 0, %if.then153 ], [ 0, %if.end150.cleanup_crit_edge ], [ 0, %sw.bb109.cleanup_crit_edge ], [ 0, %sw.bb102.cleanup_crit_edge ], [ 0, %if.then105 ], [ 0, %sw.bb95.cleanup_crit_edge ], [ 0, %if.then98 ], [ 0, %sw.bb87.cleanup_crit_edge ], [ 0, %if.then90 ], [ 0, %sw.bb69.cleanup_crit_edge ], [ 0, %if.then76 ], [ 0, %sw.default ], [ 0, %sw.bb187 ], [ 0, %do.end ], [ 0, %sw.bb171 ], [ 0, %sw.bb169 ], [ 0, %sw.bb167 ], [ 0, %sw.bb164 ], [ 0, %sw.bb161 ], [ 0, %if.end157 ], [ 0, %if.then148 ], [ 0, %sw.bb119 ], [ 0, %sw.bb116 ], [ 0, %sw.bb68 ], [ 0, %sw.bb55 ], [ 0, %sw.bb54 ], [ 0, %if.end53 ], [ 0, %for.inc.7 ], [ 0, %if.then30 ], [ 0, %do.end.i.cleanup_crit_edge ], [ 0, %while.body.i.cleanup_crit_edge ], [ 0, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_new_sta(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_add_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_sta_ht_cap(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_del_rx_reorder_tbl_by_ta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_tx_ba_stream_tbl_by_ra(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_del_peer_ra_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_clean_txrx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_all_sta_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_hist_data_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_delete_ba_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_ba_stream_timeout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_handle_event_ext_scan_report(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_parse_tx_status_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_check_ps_cond(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_check_last_packet_indication(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_null_packet(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11h_handle_chanrpt_ready(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11h_handle_radar_detected(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_bt_coex_wlan_param_update_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_process_tx_pause_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_process_multi_chan_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_rxba_sync_event(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_remain_on_channel_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_uap_del_sta_data(ptr noundef %priv, ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ap_11n_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 125
  %0 = ptrtoint ptr %ap_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ap_11n_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %is_11n_enabled = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 3
  %2 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_11n_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %mac_addr = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 1
  tail call void @mwifiex_11n_del_rx_reorder_tbl_by_ta(ptr noundef %priv, ptr noundef %mac_addr) #4
  tail call void @mwifiex_del_tx_ba_stream_tbl_by_ra(ptr noundef %priv, ptr noundef %mac_addr) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mac_addr5 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 1
  tail call void @mwifiex_del_sta_entry(ptr noundef %priv, ptr noundef %mac_addr5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_del_sta_sinfo(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_setup_ac_downgrade(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_setup_queue_priorities(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !44, !46, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 150, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 197, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 212, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 218, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 224, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 231, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 236, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 243, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 249, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 253, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 261, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 265, i32 5}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 294, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 298, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 302, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 307, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 312, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 316, i32 3}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mwifiex_process_uap_event.__UNIQUE_ID_ddebug490, !35, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 323, i32 3}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 333, i32 3}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 41, i32 2}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_event.c", i32 70, i32 4}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i8 0, i8 2}
!59 = !{i64 2148361283, i64 2148361288, i64 2148361301, i64 2148361345, i64 2148361379, i64 2148361400}
