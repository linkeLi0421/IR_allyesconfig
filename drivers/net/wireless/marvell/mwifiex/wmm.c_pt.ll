; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/wmm.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/wmm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.156 }
%struct.anon.156 = type { [3 x i8], i8 }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
%struct.mwifiex_802_11_security = type { i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.mwifiex_wep_key = type { i32, i32, i32, [16 x i8] }
%struct.host_cmd_ds_802_11_key_material = type { i16, %struct.mwifiex_ie_type_key_param_set }
%struct.mwifiex_ie_type_key_param_set = type { i16, i16, i16, i16, i16, [50 x i8] }
%struct.host_cmd_ds_802_11_key_material_v2 = type { i16, %struct.mwifiex_ie_type_key_param_set_v2 }
%struct.mwifiex_ie_type_key_param_set_v2 = type { i16, i16, [6 x i8], i8, i8, i16, %union.anon.157 }
%union.anon.157 = type { %struct.mwifiex_wapi_param }
%struct.mwifiex_wapi_param = type { [16 x i8], i16, [32 x i8] }
%struct.mwifiex_wmm_desc = type { [8 x %struct.mwifiex_tid_tbl], [8 x i32], [8 x i32], %struct.spinlock, [4 x %struct.mwifiex_wmm_ac_status], [4 x i8], i32, [4 x i8], [8 x i32], %struct.atomic_t, %struct.atomic_t }
%struct.mwifiex_tid_tbl = type { %struct.list_head }
%struct.mwifiex_wmm_ac_status = type { i8, i8, i8 }
%struct.mwifiex_tx_aggr = type { i8, i8, i8 }
%struct.mwifiex_add_ba_param = type { i32, i32, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mwifiex_vendor_spec_cfg_ie = type { i16, i16, [256 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.150, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.150 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.151 }
%union.anon.151 = type { %struct.cfg80211_bss_select_adjust }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
%struct.mwifiex_ra_list_tbl = type { %struct.list_head, %struct.sk_buff_head, [6 x i8], i32, i16, i16, i8, i32, i8, i16, i8, i8 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.mwifiex_802_11d_domain_reg = type { [3 x i8], i8, [83 x %struct.ieee80211_country_ie_triplet] }
%struct.ieee80211_country_ie_triplet = type { %union.anon.153 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i8, i8, i8 }
%struct.mwifiex_sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.mwifiex_sleep_period = type { i16, i16 }
%struct.mwifiex_hs_config_param = type <{ i32, i8, i8 }>
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.159 }
%union.anon.159 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ie_types_wmm_queue_status = type { %struct.mwifiex_ie_types_header, i8, i8, i16, i8, i8, i32 }
%struct.mwifiex_ie_types_wmm_param_set = type <{ %struct.mwifiex_ie_types_header, [1 x i8] }>
%struct.mwifiex_tx_param = type { i32 }
%struct.mwifiex_bss_prio_node = type { %struct.list_head, ptr }
%struct.mwifiex_tx_ba_stream_tbl = type { %struct.list_head, i32, [6 x i8], i32, i8 }

@__param_str_disable_tx_amsdu = internal constant [25 x i8] c"mwifiex.disable_tx_amsdu\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@disable_tx_amsdu = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_tx_amsdu = internal constant %struct.kernel_param { ptr @__param_str_disable_tx_amsdu, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @disable_tx_amsdu } }, section "__param", align 4
@__UNIQUE_ID_disable_tx_amsdutype488 = internal constant [39 x i8] c"mwifiex.parmtype=disable_tx_amsdu:bool\00", section ".modinfo", align 1
@tos_to_tid_inv = dso_local constant { [8 x i8], [24 x i8] } { [8 x i8] c"\02\00\01\03\04\05\06\07", [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"info: created ra_list %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"data: ralist %p: is_11n_enabled=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"info: WMM Parameter IE: version=%d,\09qos_info Parameter Set Count=%d, Reserved=%#x\0A\00", [45 x i8] zeroinitializer }, align 32
@wmm_aci_to_qidx_map = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01\00\02\03", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"info: WMM: CWmax=%d CWmin=%d Avg Back-off=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"info: WMM: AC Priorities:\09BK(0), BE(1), VI(2), VO(3)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"info: WMM: AC PRIO %d maps to %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ac_to_tid = internal constant { [4 x [2 x i8]], [24 x i8] } { [4 x [2 x i8]] [[2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\04\05", [2 x i8] c"\06\07"], [24 x i8] zeroinitializer }, align 32
@tos_to_tid = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\01\02\00\03\04\05\06\07", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"TDLS setup packet for %pM.\09Don't block\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"data: drop packet in disconnect\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"info: WMM: WMM_GET_STATUS cmdresp received: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"info: CMD_RESP: WMM_GET_STATUS:\09QSTATUS TLV: %d, %d, %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"info: CMD_RESP: WMM_GET_STATUS:\09WMM Parameter Set Count: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"info: WMM: process assoc req: bss->wmm_ie=%#x\0A\00", [49 x i8] zeroinitializer }, align 32
@wmm_info_ie = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\DD\07\00P\F2\02\00\01\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"data: WMM: Pkt Delay: %d ms,\09%d ms sent to FW\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"info: allocated ra_list %p\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BK\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BE\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VI\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VO\00", [29 x i8] zeroinitializer }, align 32
@__const.mwifiex_wmm_ac_debug_print.ac_str = private unnamed_addr constant [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], align 4
@mwifiex_wmm_ac_debug_print.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mwifiex\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mwifiex_wmm_ac_debug_print\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/marvell/mwifiex/wmm.c\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"info: WMM AC_%s: ACI=%d, ACM=%d, Aifsn=%d, EcwMin=%d, EcwMax=%d, TxopLimit=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"mwifiex: info: WMM AC_%s: ACI=%d, ACM=%d, Aifsn=%d, EcwMin=%d, EcwMax=%d, TxopLimit=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@mwifiex_wmm_convert_tos_to_ac.tos_to_ac = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\00\00\01\02\02\03\03", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"info: ra_list: freeing buf for tid %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mwifiex_free_ack_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.21, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014mwifiex: Have pending ack frames!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mwifiex_free_ack_frame\00", [41 x i8] zeroinitializer }, align 32
@mwifiex_free_ack_frame._entry_ptr = internal global ptr @mwifiex_free_ack_frame._entry, section ".printk_index", align 4
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"data: tid=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"data: -EBUSY is returned\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"host_to_card failed: %#x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"data: nothing to send\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"data: dequeuing the packet %p %p\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 221, i64 272]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967280, i64 4294967295]
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"disable_tx_amsdu\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 40, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"tos_to_tid_inv\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 47, i32 10 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 160, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 191, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 254, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"wmm_aci_to_qidx_map\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 64, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 271, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 347, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 360, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant [10 x i8] c"ac_to_tid\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 82, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"tos_to_tid\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 70, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 841, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 849, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 939, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 955, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 983, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1038, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"wmm_info_ie\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 59, i32 17 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1090, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 125, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1984, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 90, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 90, i32 33 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 90, i32 39 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 90, i32 45 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 92, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [10 x i8] c"tos_to_ac\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 376, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 567, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 582, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1431, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1376, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1391, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1256, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [46 x i8] c"../drivers/net/wireless/marvell/mwifiex/wmm.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1263, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_disable_tx_amsdutype488, ptr @__param_disable_tx_amsdu, ptr @mwifiex_free_ack_frame._entry, ptr @mwifiex_free_ack_frame._entry_ptr, ptr @disable_tx_amsdu, ptr @tos_to_tid_inv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @wmm_aci_to_qidx_map, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ac_to_tid, ptr @tos_to_tid, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @wmm_info_ie, ptr @.str.12, ptr @.str.13, ptr @skb_queue_head_init.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @mwifiex_wmm_convert_tos_to_ac.tos_to_ac, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_tx_amsdu to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tos_to_tid_inv to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmm_aci_to_qidx_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_to_tid to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tos_to_tid to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmm_info_ie to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_wmm_convert_tos_to_ac.tos_to_ac to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_free_ack_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_ralist_add(ptr noundef %priv, ptr noundef %ra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %bss_mode.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %bss_role.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %bcn_ht_cap = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 24
  %disable_11n = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 22
  %sta_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 80
  %ap_11n_enabled.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 125
  %wmm = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %entry
  %i.0107 = phi i32 [ 0, %entry ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 96) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %mwifiex_wmm_allocate_ralist_node.exit.thread, label %if.end

mwifiex_wmm_allocate_ralist_node.exit.thread:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str, ptr noundef null) #11
  br label %for.end

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %skb_head.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call7.i.i.i, i32 0, i32 1
  %lock.i.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %5 = ptrtoint ptr %skb_head.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %skb_head.i, ptr %skb_head.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %skb_head.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i.i, align 8
  %ra1.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call7.i.i.i, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %ra1.i, ptr %ra, i32 6)
  %total_pkt_count.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call7.i.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %total_pkt_count.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %total_pkt_count.i, align 2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.13, ptr noundef nonnull %call7.i.i.i) #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i.i) #11
  %is_11n_enabled = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %is_11n_enabled, align 8
  %tdls_link = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call7.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %tdls_link to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tdls_link, align 4
  %ba_status = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call7.i.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %ba_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ba_status, align 4
  %amsdu_in_ampdu = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call7.i.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %amsdu_in_ampdu to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %amsdu_in_ampdu, align 8
  %14 = ptrtoint ptr %bss_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bss_mode.i, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.end.if.else27_crit_edge [
    i32 2, label %if.end.land.lhs.true.i_crit_edge
    i32 8, label %if.end.land.lhs.true.i_crit_edge109
  ]

if.end.land.lhs.true.i_crit_edge109:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end.if.else27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else27

land.lhs.true.i:                                  ; preds = %if.end.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge109
  %17 = ptrtoint ptr %bss_role.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bss_role.i, align 1
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp3.i = icmp eq i8 %19, 0
  br i1 %cmp3.i, label %if.then4, label %land.lhs.true.i.if.else27_crit_edge

land.lhs.true.i.if.else27_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else27

if.then4:                                         ; preds = %land.lhs.true.i
  %call5 = tail call i32 @mwifiex_get_tdls_link_status(ptr noundef %priv, ptr noundef %ra) #11
  %conv = trunc i32 %call5 to i8
  %20 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %conv, label %if.else [
    i8 2, label %if.then4.if.then8_crit_edge
    i8 5, label %if.then4.if.then8_crit_edge110
    i8 6, label %if.then4.if.then8_crit_edge111
    i8 7, label %if.then4.if.then8_crit_edge112
  ]

if.then4.if.then8_crit_edge112:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then4.if.then8_crit_edge111:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then4.if.then8_crit_edge110:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then4.if.then8_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %if.then4.if.then8_crit_edge, %if.then4.if.then8_crit_edge110, %if.then4.if.then8_crit_edge111, %if.then4.if.then8_crit_edge112
  %21 = ptrtoint ptr %tdls_link to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %tdls_link, align 4
  %call.i = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %ra) #11
  %tobool.not.i91 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i91, label %if.then8.mwifiex_tdls_peer_11n_enabled.exit_crit_edge, label %if.then.i

if.then8.mwifiex_tdls_peer_11n_enabled.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_tdls_peer_11n_enabled.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %is_11n_enabled.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %is_11n_enabled.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_11n_enabled.i, align 1
  br label %mwifiex_tdls_peer_11n_enabled.exit

mwifiex_tdls_peer_11n_enabled.exit:               ; preds = %if.then.i, %if.then8.mwifiex_tdls_peer_11n_enabled.exit_crit_edge
  %retval.0.i92 = phi i8 [ %23, %if.then.i ], [ 0, %if.then8.mwifiex_tdls_peer_11n_enabled.exit_crit_edge ]
  %conv11 = zext i8 %retval.0.i92 to i32
  %24 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv11, ptr %is_11n_enabled, align 8
  br label %if.end41

if.else:                                          ; preds = %if.then4
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %26, i32 0, i32 84
  %27 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %config_bands, align 2
  %29 = and i8 %28, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %if.else.land.end_crit_edge, label %land.lhs.true

if.else.land.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.lhs.true:                                    ; preds = %if.else
  %31 = ptrtoint ptr %bcn_ht_cap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bcn_ht_cap, align 8
  %tobool21.not = icmp eq ptr %32, null
  br i1 %tobool21.not, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %disable_11n to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %disable_11n, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool24.not = icmp eq i8 %34, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %if.else.land.end_crit_edge
  %35 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ %tobool24.not, %land.rhs ], [ false, %if.else.land.end_crit_edge ]
  %land.ext = zext i1 %35 to i32
  %36 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %land.ext, ptr %is_11n_enabled, align 8
  br label %if.end41

if.else27:                                        ; preds = %land.lhs.true.i.if.else27_crit_edge, %if.end.if.else27_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_list_spinlock) #11
  %call28 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %ra) #11
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.else27.mwifiex_is_sta_11n_enabled.exit.thread_crit_edge, label %lor.lhs.false.i

if.else27.mwifiex_is_sta_11n_enabled.exit.thread_crit_edge: ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_is_sta_11n_enabled.exit.thread

lor.lhs.false.i:                                  ; preds = %if.else27
  %tx_pause = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call28, i32 0, i32 12
  %37 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tx_pause, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool31 = icmp ne i8 %38, 0
  %tx_paused = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call7.i.i.i, i32 0, i32 11
  %frombool = zext i1 %tobool31 to i8
  %39 = ptrtoint ptr %tx_paused to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool, ptr %tx_paused, align 1
  %40 = ptrtoint ptr %bss_role.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bss_role.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp.i = icmp eq i8 %41, 1
  br i1 %cmp.i, label %land.lhs.true.i95, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false3.i

land.lhs.true.i95:                                ; preds = %lor.lhs.false.i
  %42 = ptrtoint ptr %ap_11n_enabled.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ap_11n_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool2.not.i = icmp eq i8 %43, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i95.mwifiex_is_sta_11n_enabled.exit.thread_crit_edge, label %land.lhs.true.i95.lor.lhs.false3.i_crit_edge

land.lhs.true.i95.lor.lhs.false3.i_crit_edge:     ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false3.i

land.lhs.true.i95.mwifiex_is_sta_11n_enabled.exit.thread_crit_edge: ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_is_sta_11n_enabled.exit.thread

lor.lhs.false3.i:                                 ; preds = %land.lhs.true.i95.lor.lhs.false3.i_crit_edge, %lor.lhs.false.i.lor.lhs.false3.i_crit_edge
  %44 = ptrtoint ptr %bss_mode.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bss_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp4.i = icmp eq i32 %45, 1
  br i1 %cmp4.i, label %land.lhs.true6.i, label %lor.lhs.false3.i.mwifiex_is_sta_11n_enabled.exit_crit_edge

lor.lhs.false3.i.mwifiex_is_sta_11n_enabled.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_is_sta_11n_enabled.exit

land.lhs.true6.i:                                 ; preds = %lor.lhs.false3.i
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %adhoc_11n_enabled.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %47, i32 0, i32 116
  %48 = ptrtoint ptr %adhoc_11n_enabled.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %adhoc_11n_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool7.not.i = icmp eq i8 %49, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.mwifiex_is_sta_11n_enabled.exit.thread_crit_edge, label %land.lhs.true6.i.mwifiex_is_sta_11n_enabled.exit_crit_edge

land.lhs.true6.i.mwifiex_is_sta_11n_enabled.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_is_sta_11n_enabled.exit

land.lhs.true6.i.mwifiex_is_sta_11n_enabled.exit.thread_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_is_sta_11n_enabled.exit.thread

mwifiex_is_sta_11n_enabled.exit.thread:           ; preds = %land.lhs.true6.i.mwifiex_is_sta_11n_enabled.exit.thread_crit_edge, %land.lhs.true.i95.mwifiex_is_sta_11n_enabled.exit.thread_crit_edge, %if.else27.mwifiex_is_sta_11n_enabled.exit.thread_crit_edge
  %50 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %is_11n_enabled, align 8
  br label %if.end39

mwifiex_is_sta_11n_enabled.exit:                  ; preds = %land.lhs.true6.i.mwifiex_is_sta_11n_enabled.exit_crit_edge, %lor.lhs.false3.i.mwifiex_is_sta_11n_enabled.exit_crit_edge
  %is_11n_enabled.i97 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call28, i32 0, i32 3
  %51 = ptrtoint ptr %is_11n_enabled.i97 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_11n_enabled.i97, align 1
  %conv8.i = zext i8 %52 to i32
  %53 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv8.i, ptr %is_11n_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool36.not = icmp eq i8 %52, 0
  br i1 %tobool36.not, label %mwifiex_is_sta_11n_enabled.exit.if.end39_crit_edge, label %if.then37

mwifiex_is_sta_11n_enabled.exit.if.end39_crit_edge: ; preds = %mwifiex_is_sta_11n_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then37:                                        ; preds = %mwifiex_is_sta_11n_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  %max_amsdu = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call28, i32 0, i32 7
  %54 = ptrtoint ptr %max_amsdu to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %max_amsdu, align 2
  %max_amsdu38 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call7.i.i.i, i32 0, i32 4
  %56 = ptrtoint ptr %max_amsdu38 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %max_amsdu38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %mwifiex_is_sta_11n_enabled.exit.if.end39_crit_edge, %mwifiex_is_sta_11n_enabled.exit.thread
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #11
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %land.end, %mwifiex_tdls_peer_11n_enabled.exit
  %57 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %is_11n_enabled, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef nonnull %call7.i.i.i, i32 noundef %58) #11
  %59 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %is_11n_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool44.not = icmp eq i32 %60, 0
  br i1 %tobool44.not, label %if.end41.if.end47_crit_edge, label %if.then45

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %ba_pkt_count = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call7.i.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %ba_pkt_count to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %ba_pkt_count, align 2
  %call.i.i = tail call i64 @ktime_get() #11
  %shr.i = lshr i64 %call.i.i, 32
  %shr1.i = lshr i64 %call.i.i, 16
  %add.i = add i64 %shr1.i, %call.i.i
  %add2.i = add i64 %add.i, %shr.i
  %conv.i = trunc i64 %add2.i to i8
  %conv3.i = and i8 %conv.i, 15
  %add4.i = or i8 %conv3.i, 16
  %ba_packet_thr = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call7.i.i.i, i32 0, i32 6
  %62 = ptrtoint ptr %ba_packet_thr to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %add4.i, ptr %ba_packet_thr, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end41.if.end47_crit_edge
  %arrayidx = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm, i32 0, i32 %i.0107
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i, align 4
  %call.i.i100 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %64, ptr noundef %arrayidx) #11
  br i1 %call.i.i100, label %if.end.i.i, label %if.end47.list_add_tail.exit_crit_edge

if.end47.list_add_tail.exit_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i.i, ptr %prev.i, align 4
  %66 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %arrayidx, ptr %call7.i.i.i, align 8
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i.i.i, ptr %64, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end47.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %mwifiex_wmm_allocate_ralist_node.exit.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_tdls_link_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_wmm_setup_queue_priorities(ptr noundef %priv, ptr noundef readonly %wmm_ie) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #11
  %tobool.not = icmp eq ptr %wmm_ie, null
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tmp, align 8
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %wmm_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 74
  %1 = ptrtoint ptr %wmm_enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %wmm_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %queue_priority.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7
  %3 = ptrtoint ptr %queue_priority.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %queue_priority.i, align 4
  %arrayidx3.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %arrayidx3.i, align 1
  %arrayidx6.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 2
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx6.i, align 2
  %arrayidx9.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 3
  %6 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx9.i, align 1
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %version = getelementptr inbounds %struct.ieee_types_wmm_parameter, ptr %wmm_ie, i32 0, i32 2
  %9 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %version, align 1
  %conv = zext i8 %10 to i32
  %qos_info_bitmap = getelementptr inbounds %struct.ieee_types_wmm_parameter, ptr %wmm_ie, i32 0, i32 3
  %11 = ptrtoint ptr %qos_info_bitmap to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %qos_info_bitmap, align 1
  %13 = and i8 %12, 15
  %and = zext i8 %13 to i32
  %reserved = getelementptr inbounds %struct.ieee_types_wmm_parameter, ptr %wmm_ie, i32 0, i32 4
  %14 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reserved, align 1
  %conv3 = zext i8 %15 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 1073741824, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef %and, i32 noundef %conv3) #11
  br label %for.body

for.body:                                         ; preds = %mwifiex_wmm_ac_debug_print.exit.for.body_crit_edge, %if.end
  %num_ac.0182 = phi i32 [ 0, %if.end ], [ %inc, %mwifiex_wmm_ac_debug_print.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ieee_types_wmm_parameter, ptr %wmm_ie, i32 0, i32 5, i32 %num_ac.0182
  %ecw_bitmap = getelementptr %struct.ieee_types_wmm_parameter, ptr %wmm_ie, i32 0, i32 5, i32 %num_ac.0182, i32 1
  %16 = ptrtoint ptr %ecw_bitmap to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ecw_bitmap, align 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %17 to i32
  %and8 = and i32 %conv7, 15
  %notmask = shl nsw i32 -1, %and8
  %conv9 = xor i32 %notmask, -1
  %20 = lshr i32 %conv9, 1
  %conv11 = zext i8 %19 to i32
  %and12 = and i32 %conv11, 15
  %add = add nuw nsw i32 %20, %and12
  %conv13 = trunc i32 %add to i16
  %and15 = lshr i32 %conv11, 5
  %21 = and i32 %and15, 3
  %arrayidx17 = getelementptr [4 x i8], ptr @wmm_aci_to_qidx_map, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx17, align 1
  %idxprom = zext i8 %23 to i32
  %arrayidx18 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx18, align 1
  %arrayidx20 = getelementptr [4 x i16], ptr %tmp, i32 0, i32 %idxprom
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv13, ptr %arrayidx20, align 2
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %28 = lshr i32 %conv7, 4
  %notmask179 = shl nsw i32 -1, %28
  %sub26 = xor i32 %notmask179, -1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %27, i32 noundef 1073741824, ptr noundef nonnull @.str.3, i32 noundef %sub26, i32 noundef %conv9, i32 noundef %add) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_wmm_ac_debug_print.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_wmm_setup_queue_priorities, %if.then.i)) #11
          to label %mwifiex_wmm_ac_debug_print.exit [label %if.then.i], !srcloc !90

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %30 to i32
  %and.i = lshr i32 %conv.i, 5
  %31 = and i32 %and.i, 3
  %arrayidx.i = getelementptr [4 x i8], ptr @wmm_aci_to_qidx_map, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %33 to i32
  %arrayidx3.i180 = getelementptr [4 x ptr], ptr @__const.mwifiex_wmm_ac_debug_print.ac_str, i32 0, i32 %idxprom.i
  %34 = ptrtoint ptr %arrayidx3.i180 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx3.i180, align 4
  %and10.i = lshr i32 %conv.i, 4
  %36 = and i32 %and10.i, 1
  %and14.i = and i32 %conv.i, 15
  %37 = ptrtoint ptr %ecw_bitmap to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ecw_bitmap, align 1
  %conv15.i = zext i8 %38 to i32
  %and16.i = and i32 %conv15.i, 15
  %39 = lshr i32 %conv15.i, 4
  %tx_op_limit.i = getelementptr %struct.ieee_types_wmm_parameter, ptr %wmm_ie, i32 0, i32 5, i32 %num_ac.0182, i32 2
  %40 = ptrtoint ptr %tx_op_limit.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %tx_op_limit.i, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #11
  %conv21.i = zext i16 %42 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_wmm_ac_debug_print.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.23, ptr noundef %35, i32 noundef %31, i32 noundef %36, i32 noundef %and14.i, i32 noundef %and16.i, i32 noundef %39, i32 noundef %conv21.i) #11
  br label %mwifiex_wmm_ac_debug_print.exit

mwifiex_wmm_ac_debug_print.exit:                  ; preds = %if.then.i, %for.body
  %inc = add nuw nsw i32 %num_ac.0182, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %mwifiex_wmm_ac_debug_print.exit.for.body39_crit_edge, label %mwifiex_wmm_ac_debug_print.exit.for.body_crit_edge

mwifiex_wmm_ac_debug_print.exit.for.body_crit_edge: ; preds = %mwifiex_wmm_ac_debug_print.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

mwifiex_wmm_ac_debug_print.exit.for.body39_crit_edge: ; preds = %mwifiex_wmm_ac_debug_print.exit
  br label %for.body39

for.body39:                                       ; preds = %for.inc113.for.body39_crit_edge, %mwifiex_wmm_ac_debug_print.exit.for.body39_crit_edge
  %j.0185 = phi i32 [ %inc114, %for.inc113.for.body39_crit_edge ], [ 1, %mwifiex_wmm_ac_debug_print.exit.for.body39_crit_edge ]
  %sub40 = add nsw i32 %j.0185, -1
  %arrayidx41 = getelementptr [4 x i16], ptr %tmp, i32 0, i32 %sub40
  %43 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx41, align 2
  %arrayidx43 = getelementptr [4 x i16], ptr %tmp, i32 0, i32 %j.0185
  %45 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx43, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %46)
  %cmp45 = icmp ugt i16 %44, %46
  br i1 %cmp45, label %do.body, label %if.else

do.body:                                          ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %arrayidx41, align 2
  %48 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %44, ptr %arrayidx43, align 2
  %arrayidx59 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 %sub40
  %49 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx59, align 1
  %arrayidx62 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 %j.0185
  %51 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx62, align 1
  store i8 %52, ptr %arrayidx59, align 1
  store i8 %50, ptr %arrayidx62, align 1
  br label %for.inc113

if.else:                                          ; preds = %for.body39
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %46)
  %cmp77 = icmp eq i16 %44, %46
  br i1 %cmp77, label %if.then79, label %if.else.for.inc113_crit_edge

if.else.for.inc113_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113

if.then79:                                        ; preds = %if.else
  %arrayidx83 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 %sub40
  %53 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx83, align 1
  %arrayidx87 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 %j.0185
  %55 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx87, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %56)
  %cmp89 = icmp ult i8 %54, %56
  br i1 %cmp89, label %do.body92, label %if.then79.for.inc113_crit_edge

if.then79.for.inc113_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113

do.body92:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx83, align 1
  %58 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %54, ptr %arrayidx87, align 1
  br label %for.inc113

for.inc113:                                       ; preds = %do.body92, %if.then79.for.inc113_crit_edge, %if.else.for.inc113_crit_edge, %do.body
  %inc114 = add nuw nsw i32 %j.0185, 1
  %exitcond188.not = icmp eq i32 %inc114, 4
  br i1 %exitcond188.not, label %for.inc113.for.body39.1_crit_edge, label %for.inc113.for.body39_crit_edge

for.inc113.for.body39_crit_edge:                  ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body39

for.inc113.for.body39.1_crit_edge:                ; preds = %for.inc113
  br label %for.body39.1

for.body39.1:                                     ; preds = %for.inc113.1.for.body39.1_crit_edge, %for.inc113.for.body39.1_crit_edge
  %j.0185.1 = phi i32 [ %inc114.1, %for.inc113.1.for.body39.1_crit_edge ], [ 1, %for.inc113.for.body39.1_crit_edge ]
  %sub40.1 = add nsw i32 %j.0185.1, -1
  %arrayidx41.1 = getelementptr [4 x i16], ptr %tmp, i32 0, i32 %sub40.1
  %59 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx41.1, align 2
  %arrayidx43.1 = getelementptr [4 x i16], ptr %tmp, i32 0, i32 %j.0185.1
  %61 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx43.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %62)
  %cmp45.1 = icmp ugt i16 %60, %62
  br i1 %cmp45.1, label %do.body.1, label %if.else.1

if.else.1:                                        ; preds = %for.body39.1
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %62)
  %cmp77.1 = icmp eq i16 %60, %62
  br i1 %cmp77.1, label %if.then79.1, label %if.else.1.for.inc113.1_crit_edge

if.else.1.for.inc113.1_crit_edge:                 ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.1

if.then79.1:                                      ; preds = %if.else.1
  %arrayidx83.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 %sub40.1
  %63 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx83.1, align 1
  %arrayidx87.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 %j.0185.1
  %65 = ptrtoint ptr %arrayidx87.1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx87.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %66)
  %cmp89.1 = icmp ult i8 %64, %66
  br i1 %cmp89.1, label %do.body92.1, label %if.then79.1.for.inc113.1_crit_edge

if.then79.1.for.inc113.1_crit_edge:               ; preds = %if.then79.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.1

do.body92.1:                                      ; preds = %if.then79.1
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx83.1, align 1
  %68 = ptrtoint ptr %arrayidx87.1 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %64, ptr %arrayidx87.1, align 1
  br label %for.inc113.1

do.body.1:                                        ; preds = %for.body39.1
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %62, ptr %arrayidx41.1, align 2
  %70 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %60, ptr %arrayidx43.1, align 2
  %arrayidx59.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 %sub40.1
  %71 = ptrtoint ptr %arrayidx59.1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx59.1, align 1
  %arrayidx62.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 %j.0185.1
  %73 = ptrtoint ptr %arrayidx62.1 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx62.1, align 1
  store i8 %74, ptr %arrayidx59.1, align 1
  store i8 %72, ptr %arrayidx62.1, align 1
  br label %for.inc113.1

for.inc113.1:                                     ; preds = %do.body.1, %do.body92.1, %if.then79.1.for.inc113.1_crit_edge, %if.else.1.for.inc113.1_crit_edge
  %inc114.1 = add nuw nsw i32 %j.0185.1, 1
  %exitcond188.not.1 = icmp eq i32 %inc114.1, 3
  br i1 %exitcond188.not.1, label %for.inc113.1.for.body39.2_crit_edge, label %for.inc113.1.for.body39.1_crit_edge

for.inc113.1.for.body39.1_crit_edge:              ; preds = %for.inc113.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body39.1

for.inc113.1.for.body39.2_crit_edge:              ; preds = %for.inc113.1
  br label %for.body39.2

for.body39.2:                                     ; preds = %for.inc113.2.for.body39.2_crit_edge, %for.inc113.1.for.body39.2_crit_edge
  %j.0185.2 = phi i32 [ %inc114.2, %for.inc113.2.for.body39.2_crit_edge ], [ 1, %for.inc113.1.for.body39.2_crit_edge ]
  %sub40.2 = add nsw i32 %j.0185.2, -1
  %arrayidx41.2 = getelementptr [4 x i16], ptr %tmp, i32 0, i32 %sub40.2
  %75 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx41.2, align 2
  %arrayidx43.2 = getelementptr [4 x i16], ptr %tmp, i32 0, i32 %j.0185.2
  %77 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx43.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %78)
  %cmp45.2 = icmp ugt i16 %76, %78
  br i1 %cmp45.2, label %do.body.2, label %if.else.2

if.else.2:                                        ; preds = %for.body39.2
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %78)
  %cmp77.2 = icmp eq i16 %76, %78
  br i1 %cmp77.2, label %if.then79.2, label %if.else.2.for.inc113.2_crit_edge

if.else.2.for.inc113.2_crit_edge:                 ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.2

if.then79.2:                                      ; preds = %if.else.2
  %arrayidx83.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 %sub40.2
  %79 = ptrtoint ptr %arrayidx83.2 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx83.2, align 1
  %arrayidx87.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 %j.0185.2
  %81 = ptrtoint ptr %arrayidx87.2 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx87.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %82)
  %cmp89.2 = icmp ult i8 %80, %82
  br i1 %cmp89.2, label %do.body92.2, label %if.then79.2.for.inc113.2_crit_edge

if.then79.2.for.inc113.2_crit_edge:               ; preds = %if.then79.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.2

do.body92.2:                                      ; preds = %if.then79.2
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %arrayidx83.2 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx83.2, align 1
  %84 = ptrtoint ptr %arrayidx87.2 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %80, ptr %arrayidx87.2, align 1
  br label %for.inc113.2

do.body.2:                                        ; preds = %for.body39.2
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %78, ptr %arrayidx41.2, align 2
  %86 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %76, ptr %arrayidx43.2, align 2
  %arrayidx59.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 %sub40.2
  %87 = ptrtoint ptr %arrayidx59.2 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx59.2, align 1
  %arrayidx62.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 %j.0185.2
  %89 = ptrtoint ptr %arrayidx62.2 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx62.2, align 1
  store i8 %90, ptr %arrayidx59.2, align 1
  store i8 %88, ptr %arrayidx62.2, align 1
  br label %for.inc113.2

for.inc113.2:                                     ; preds = %do.body.2, %do.body92.2, %if.then79.2.for.inc113.2_crit_edge, %if.else.2.for.inc113.2_crit_edge
  %inc114.2 = add nuw nsw i32 %j.0185.2, 1
  %exitcond188.not.2 = icmp eq i32 %inc114.2, 2
  br i1 %exitcond188.not.2, label %for.inc116.3, label %for.inc113.2.for.body39.2_crit_edge

for.inc113.2.for.body39.2_crit_edge:              ; preds = %for.inc113.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body39.2

for.inc116.3:                                     ; preds = %for.inc113.2
  call void @__sanitizer_cov_trace_pc() #13
  %queue_priority2.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7
  %91 = ptrtoint ptr %queue_priority2.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %queue_priority2.i, align 1
  %idxprom.i181 = zext i8 %92 to i32
  %arrayidx4.i = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %idxprom.i181, i32 1
  %93 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx4.i, align 1
  store i8 %94, ptr getelementptr inbounds ([8 x i8], ptr @tos_to_tid, i32 0, i32 7), align 1
  %arrayidx8.i = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %idxprom.i181
  %95 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx8.i, align 1
  store i8 %96, ptr getelementptr inbounds ([8 x i8], ptr @tos_to_tid, i32 0, i32 6), align 2
  %arrayidx.1.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 1
  %97 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.1.i, align 1
  %idxprom.1.i = zext i8 %98 to i32
  %arrayidx4.1.i = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %idxprom.1.i, i32 1
  %99 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx4.1.i, align 1
  store i8 %100, ptr getelementptr inbounds ([8 x i8], ptr @tos_to_tid, i32 0, i32 5), align 1
  %arrayidx8.1.i = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %idxprom.1.i
  %101 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx8.1.i, align 1
  store i8 %102, ptr getelementptr inbounds ([8 x i8], ptr @tos_to_tid, i32 0, i32 4), align 4
  %arrayidx.2.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 2
  %103 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.2.i, align 1
  %idxprom.2.i = zext i8 %104 to i32
  %arrayidx4.2.i = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %idxprom.2.i, i32 1
  %105 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx4.2.i, align 1
  store i8 %106, ptr getelementptr inbounds ([8 x i8], ptr @tos_to_tid, i32 0, i32 3), align 1
  %arrayidx8.2.i = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %idxprom.2.i
  %107 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx8.2.i, align 1
  store i8 %108, ptr getelementptr inbounds ([8 x i8], ptr @tos_to_tid, i32 0, i32 2), align 2
  %arrayidx.3.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 7, i32 3
  %109 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.3.i, align 1
  %idxprom.3.i = zext i8 %110 to i32
  %arrayidx4.3.i = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %idxprom.3.i, i32 1
  %111 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx4.3.i, align 1
  store i8 %112, ptr getelementptr inbounds ([8 x i8], ptr @tos_to_tid, i32 0, i32 1), align 1
  %arrayidx8.3.i = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %idxprom.3.i
  %113 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx8.3.i, align 1
  store i8 %114, ptr @tos_to_tid, align 8
  %idxprom17.i = zext i8 %114 to i32
  %arrayidx18.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 88, i32 %idxprom17.i
  %115 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %arrayidx18.i, align 1
  %idxprom17.1.i = zext i8 %112 to i32
  %arrayidx18.1.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 88, i32 %idxprom17.1.i
  %116 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %arrayidx18.1.i, align 1
  %idxprom17.2.i = zext i8 %108 to i32
  %arrayidx18.2.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 88, i32 %idxprom17.2.i
  %117 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 2, ptr %arrayidx18.2.i, align 1
  %idxprom17.3.i = zext i8 %106 to i32
  %arrayidx18.3.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 88, i32 %idxprom17.3.i
  %118 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 3, ptr %arrayidx18.3.i, align 1
  %idxprom17.4.i = zext i8 %102 to i32
  %arrayidx18.4.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 88, i32 %idxprom17.4.i
  %119 = ptrtoint ptr %arrayidx18.4.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 4, ptr %arrayidx18.4.i, align 1
  %idxprom17.5.i = zext i8 %100 to i32
  %arrayidx18.5.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 88, i32 %idxprom17.5.i
  %120 = ptrtoint ptr %arrayidx18.5.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 5, ptr %arrayidx18.5.i, align 1
  %idxprom17.6.i = zext i8 %96 to i32
  %arrayidx18.6.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 88, i32 %idxprom17.6.i
  %121 = ptrtoint ptr %arrayidx18.6.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 6, ptr %arrayidx18.6.i, align 1
  %idxprom17.7.i = zext i8 %94 to i32
  %arrayidx18.7.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 88, i32 %idxprom17.7.i
  %122 = ptrtoint ptr %arrayidx18.7.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 7, ptr %arrayidx18.7.i, align 1
  %highest_queued_prio.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %highest_queued_prio.i, i32 noundef 4) #11
  %123 = ptrtoint ptr %highest_queued_prio.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 7, ptr %highest_queued_prio.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc116.3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_wmm_setup_ac_downgrade(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.4) #11
  %wmm_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 74
  %2 = ptrtoint ptr %wmm_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wmm_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 5, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  br i1 %tobool.not, label %for.body.preheader, label %mwifiex_wmm_eval_downgrade_ac.exit

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 5, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx.1, align 1
  %arrayidx.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 5, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %arrayidx.2, align 1
  %arrayidx.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 5, i32 3
  %7 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %arrayidx.3, align 1
  br label %if.end

mwifiex_wmm_eval_downgrade_ac.exit:               ; preds = %entry
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0) #11
  %arrayidx.i.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.1 = icmp eq i8 %11, 0
  %spec.select = zext i1 %tobool.not.i.1 to i8
  %arrayidx8.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select, ptr %arrayidx8.1, align 1
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %conv13.1 = zext i1 %tobool.not.i.1 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 1073741824, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef %conv13.1) #11
  %arrayidx.i.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.2 = icmp eq i8 %16, 0
  br i1 %tobool.not.i.2, label %mwifiex_wmm_eval_downgrade_ac.exit.mwifiex_wmm_eval_downgrade_ac.exit.2_crit_edge, label %for.inc.i.2

mwifiex_wmm_eval_downgrade_ac.exit.mwifiex_wmm_eval_downgrade_ac.exit.2_crit_edge: ; preds = %mwifiex_wmm_eval_downgrade_ac.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_eval_downgrade_ac.exit.2

for.inc.i.2:                                      ; preds = %mwifiex_wmm_eval_downgrade_ac.exit
  %17 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool7.not.i.2.1 = icmp eq i8 %18, 0
  br i1 %tobool7.not.i.2.1, label %land.lhs.true.i.2.1, label %for.inc.i.2.mwifiex_wmm_eval_downgrade_ac.exit.2_crit_edge

for.inc.i.2.mwifiex_wmm_eval_downgrade_ac.exit.2_crit_edge: ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_eval_downgrade_ac.exit.2

land.lhs.true.i.2.1:                              ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #13
  %flow_required.i.2.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 4, i32 1, i32 1
  %19 = ptrtoint ptr %flow_required.i.2.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flow_required.i.2.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.not.i.2.1 = icmp eq i8 %20, 0
  %spec.select.i.2.1 = zext i1 %tobool8.not.i.2.1 to i8
  br label %mwifiex_wmm_eval_downgrade_ac.exit.2

mwifiex_wmm_eval_downgrade_ac.exit.2:             ; preds = %land.lhs.true.i.2.1, %for.inc.i.2.mwifiex_wmm_eval_downgrade_ac.exit.2_crit_edge, %mwifiex_wmm_eval_downgrade_ac.exit.mwifiex_wmm_eval_downgrade_ac.exit.2_crit_edge
  %retval.0.i.2 = phi i8 [ 2, %mwifiex_wmm_eval_downgrade_ac.exit.mwifiex_wmm_eval_downgrade_ac.exit.2_crit_edge ], [ 0, %for.inc.i.2.mwifiex_wmm_eval_downgrade_ac.exit.2_crit_edge ], [ %spec.select.i.2.1, %land.lhs.true.i.2.1 ]
  %arrayidx8.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 5, i32 2
  %21 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %retval.0.i.2, ptr %arrayidx8.2, align 1
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %conv13.2 = zext i8 %retval.0.i.2 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %23, i32 noundef 1073741824, ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef %conv13.2) #11
  %arrayidx.i.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 4, i32 3
  %24 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.3 = icmp eq i8 %25, 0
  br i1 %tobool.not.i.3, label %mwifiex_wmm_eval_downgrade_ac.exit.2.mwifiex_wmm_eval_downgrade_ac.exit.3_crit_edge, label %for.inc.i.3

mwifiex_wmm_eval_downgrade_ac.exit.2.mwifiex_wmm_eval_downgrade_ac.exit.3_crit_edge: ; preds = %mwifiex_wmm_eval_downgrade_ac.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_eval_downgrade_ac.exit.3

for.inc.i.3:                                      ; preds = %mwifiex_wmm_eval_downgrade_ac.exit.2
  %26 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool7.not.i.3.1 = icmp eq i8 %27, 0
  br i1 %tobool7.not.i.3.1, label %land.lhs.true.i.3.1, label %for.inc.i.3.for.inc.i.3.1_crit_edge

for.inc.i.3.for.inc.i.3.1_crit_edge:              ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.3.1

land.lhs.true.i.3.1:                              ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #13
  %flow_required.i.3.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 4, i32 1, i32 1
  %28 = ptrtoint ptr %flow_required.i.3.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flow_required.i.3.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool8.not.i.3.1 = icmp eq i8 %29, 0
  %spec.select.i.3.1 = zext i1 %tobool8.not.i.3.1 to i8
  br label %for.inc.i.3.1

for.inc.i.3.1:                                    ; preds = %land.lhs.true.i.3.1, %for.inc.i.3.for.inc.i.3.1_crit_edge
  %ret_ac.1.i.3.1 = phi i8 [ 0, %for.inc.i.3.for.inc.i.3.1_crit_edge ], [ %spec.select.i.3.1, %land.lhs.true.i.3.1 ]
  %30 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool7.not.i.3.2 = icmp eq i8 %31, 0
  br i1 %tobool7.not.i.3.2, label %land.lhs.true.i.3.2, label %for.inc.i.3.1.mwifiex_wmm_eval_downgrade_ac.exit.3_crit_edge

for.inc.i.3.1.mwifiex_wmm_eval_downgrade_ac.exit.3_crit_edge: ; preds = %for.inc.i.3.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_eval_downgrade_ac.exit.3

land.lhs.true.i.3.2:                              ; preds = %for.inc.i.3.1
  call void @__sanitizer_cov_trace_pc() #13
  %flow_required.i.3.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 4, i32 2, i32 1
  %32 = ptrtoint ptr %flow_required.i.3.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flow_required.i.3.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool8.not.i.3.2 = icmp eq i8 %33, 0
  %spec.select.i.3.2 = select i1 %tobool8.not.i.3.2, i8 2, i8 %ret_ac.1.i.3.1
  br label %mwifiex_wmm_eval_downgrade_ac.exit.3

mwifiex_wmm_eval_downgrade_ac.exit.3:             ; preds = %land.lhs.true.i.3.2, %for.inc.i.3.1.mwifiex_wmm_eval_downgrade_ac.exit.3_crit_edge, %mwifiex_wmm_eval_downgrade_ac.exit.2.mwifiex_wmm_eval_downgrade_ac.exit.3_crit_edge
  %retval.0.i.3 = phi i8 [ 3, %mwifiex_wmm_eval_downgrade_ac.exit.2.mwifiex_wmm_eval_downgrade_ac.exit.3_crit_edge ], [ %ret_ac.1.i.3.1, %for.inc.i.3.1.mwifiex_wmm_eval_downgrade_ac.exit.3_crit_edge ], [ %spec.select.i.3.2, %land.lhs.true.i.3.2 ]
  %arrayidx8.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 5, i32 3
  %34 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %retval.0.i.3, ptr %arrayidx8.3, align 1
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  %conv13.3 = zext i8 %retval.0.i.3 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %36, i32 noundef 1073741824, ptr noundef nonnull @.str.5, i32 noundef 3, i32 noundef %conv13.3) #11
  br label %if.end

if.end:                                           ; preds = %mwifiex_wmm_eval_downgrade_ac.exit.3, %for.body.preheader
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mwifiex_wmm_downgrade_tid(ptr nocapture noundef readonly %priv, i32 noundef %tid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %tid)
  %cmp.i = icmp ugt i32 %tid, 7
  br i1 %cmp.i, label %entry.mwifiex_wmm_convert_tos_to_ac.exit_crit_edge, label %if.end.i

entry.mwifiex_wmm_convert_tos_to_ac.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_convert_tos_to_ac.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [8 x i8], ptr @mwifiex_wmm_convert_tos_to_ac.tos_to_ac, i32 0, i32 %tid
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %phi.cast = zext i8 %1 to i32
  br label %mwifiex_wmm_convert_tos_to_ac.exit

mwifiex_wmm_convert_tos_to_ac.exit:               ; preds = %if.end.i, %entry.mwifiex_wmm_convert_tos_to_ac.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.end.i ], [ 1, %entry.mwifiex_wmm_convert_tos_to_ac.exit_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 5, i32 %retval.0.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom1 = zext i8 %3 to i32
  %rem = and i32 %tid, 1
  %arrayidx3 = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %idxprom1, i32 %rem
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  ret i8 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_wmm_init(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %0 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp84.not = icmp eq i8 %1, 0
  br i1 %cmp84.not, label %entry.for.end48_crit_edge, label %for.body.lr.ph

entry.for.end48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end48

for.body.lr.ph:                                   ; preds = %entry
  %tx_buf_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 39
  br label %for.body

for.body:                                         ; preds = %for.inc46.for.body_crit_edge, %for.body.lr.ph
  %j.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc47, %for.inc46.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %j.085
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc46_crit_edge, label %for.body6.preheader

for.body.for.inc46_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

for.body6.preheader:                              ; preds = %for.body
  %4 = load i8, ptr @disable_tx_amsdu, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %land.lhs.true, label %for.body6.preheader.if.end17_crit_edge

for.body6.preheader.if.end17_crit_edge:           ; preds = %for.body6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true:                                    ; preds = %for.body6.preheader
  %5 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tx_buf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %6)
  %cmp9 = icmp ugt i16 %6, 2048
  br i1 %cmp9, label %if.then11, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 88, i32 0
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %land.lhs.true.if.end17_crit_edge, %for.body6.preheader.if.end17_crit_edge
  %.sink = phi i8 [ %8, %if.then11 ], [ -1, %land.lhs.true.if.end17_crit_edge ], [ -1, %for.body6.preheader.if.end17_crit_edge ]
  %amsdu16 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 0, i32 2
  %9 = ptrtoint ptr %amsdu16 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %amsdu16, align 1
  %arrayidx19 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 88, i32 0
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 0
  %ampdu_ap = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 0, i32 1
  %12 = ptrtoint ptr %ampdu_ap to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %ampdu_ap, align 1
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %11, ptr %arrayidx21, align 1
  %14 = load i8, ptr @disable_tx_amsdu, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not.1 = icmp eq i8 %14, 0
  br i1 %tobool7.not.1, label %land.lhs.true.1, label %if.end17.if.end17.1_crit_edge

if.end17.if.end17.1_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.1

land.lhs.true.1:                                  ; preds = %if.end17
  %15 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tx_buf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %16)
  %cmp9.1 = icmp ugt i16 %16, 2048
  br i1 %cmp9.1, label %if.then11.1, label %land.lhs.true.1.if.end17.1_crit_edge

land.lhs.true.1.if.end17.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.1

if.then11.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12.1 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 88, i32 1
  %17 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12.1, align 1
  br label %if.end17.1

if.end17.1:                                       ; preds = %if.then11.1, %land.lhs.true.1.if.end17.1_crit_edge, %if.end17.if.end17.1_crit_edge
  %.sink86 = phi i8 [ %18, %if.then11.1 ], [ -1, %land.lhs.true.1.if.end17.1_crit_edge ], [ -1, %if.end17.if.end17.1_crit_edge ]
  %amsdu.1 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 1, i32 2
  %19 = ptrtoint ptr %amsdu.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink86, ptr %amsdu.1, align 1
  %arrayidx19.1 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 88, i32 1
  %20 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx19.1, align 1
  %arrayidx21.1 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 1
  %ampdu_ap.1 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 1, i32 1
  %22 = ptrtoint ptr %ampdu_ap.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %ampdu_ap.1, align 1
  %23 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %21, ptr %arrayidx21.1, align 1
  %24 = load i8, ptr @disable_tx_amsdu, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool7.not.2 = icmp eq i8 %24, 0
  br i1 %tobool7.not.2, label %land.lhs.true.2, label %if.end17.1.if.end17.2_crit_edge

if.end17.1.if.end17.2_crit_edge:                  ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.2

land.lhs.true.2:                                  ; preds = %if.end17.1
  %25 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tx_buf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %26)
  %cmp9.2 = icmp ugt i16 %26, 2048
  br i1 %cmp9.2, label %if.then11.2, label %land.lhs.true.2.if.end17.2_crit_edge

land.lhs.true.2.if.end17.2_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.2

if.then11.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12.2 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 88, i32 2
  %27 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx12.2, align 1
  br label %if.end17.2

if.end17.2:                                       ; preds = %if.then11.2, %land.lhs.true.2.if.end17.2_crit_edge, %if.end17.1.if.end17.2_crit_edge
  %.sink87 = phi i8 [ %28, %if.then11.2 ], [ -1, %land.lhs.true.2.if.end17.2_crit_edge ], [ -1, %if.end17.1.if.end17.2_crit_edge ]
  %amsdu.2 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 2, i32 2
  %29 = ptrtoint ptr %amsdu.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink87, ptr %amsdu.2, align 1
  %arrayidx19.2 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 88, i32 2
  %30 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx19.2, align 1
  %arrayidx21.2 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 2
  %ampdu_ap.2 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 2, i32 1
  %32 = ptrtoint ptr %ampdu_ap.2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %ampdu_ap.2, align 1
  %33 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %31, ptr %arrayidx21.2, align 1
  %34 = load i8, ptr @disable_tx_amsdu, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool7.not.3 = icmp eq i8 %34, 0
  br i1 %tobool7.not.3, label %land.lhs.true.3, label %if.end17.2.if.end17.3_crit_edge

if.end17.2.if.end17.3_crit_edge:                  ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.3

land.lhs.true.3:                                  ; preds = %if.end17.2
  %35 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tx_buf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %36)
  %cmp9.3 = icmp ugt i16 %36, 2048
  br i1 %cmp9.3, label %if.then11.3, label %land.lhs.true.3.if.end17.3_crit_edge

land.lhs.true.3.if.end17.3_crit_edge:             ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.3

if.then11.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12.3 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 88, i32 3
  %37 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx12.3, align 1
  br label %if.end17.3

if.end17.3:                                       ; preds = %if.then11.3, %land.lhs.true.3.if.end17.3_crit_edge, %if.end17.2.if.end17.3_crit_edge
  %.sink88 = phi i8 [ %38, %if.then11.3 ], [ -1, %land.lhs.true.3.if.end17.3_crit_edge ], [ -1, %if.end17.2.if.end17.3_crit_edge ]
  %amsdu.3 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 3, i32 2
  %39 = ptrtoint ptr %amsdu.3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink88, ptr %amsdu.3, align 1
  %arrayidx19.3 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 88, i32 3
  %40 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx19.3, align 1
  %arrayidx21.3 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 3
  %ampdu_ap.3 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 3, i32 1
  %42 = ptrtoint ptr %ampdu_ap.3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %ampdu_ap.3, align 1
  %43 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %41, ptr %arrayidx21.3, align 1
  %44 = load i8, ptr @disable_tx_amsdu, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool7.not.4 = icmp eq i8 %44, 0
  br i1 %tobool7.not.4, label %land.lhs.true.4, label %if.end17.3.if.end17.4_crit_edge

if.end17.3.if.end17.4_crit_edge:                  ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.4

land.lhs.true.4:                                  ; preds = %if.end17.3
  %45 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %tx_buf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %46)
  %cmp9.4 = icmp ugt i16 %46, 2048
  br i1 %cmp9.4, label %if.then11.4, label %land.lhs.true.4.if.end17.4_crit_edge

land.lhs.true.4.if.end17.4_crit_edge:             ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.4

if.then11.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12.4 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 88, i32 4
  %47 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx12.4, align 1
  br label %if.end17.4

if.end17.4:                                       ; preds = %if.then11.4, %land.lhs.true.4.if.end17.4_crit_edge, %if.end17.3.if.end17.4_crit_edge
  %.sink89 = phi i8 [ %48, %if.then11.4 ], [ -1, %land.lhs.true.4.if.end17.4_crit_edge ], [ -1, %if.end17.3.if.end17.4_crit_edge ]
  %amsdu.4 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 4, i32 2
  %49 = ptrtoint ptr %amsdu.4 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink89, ptr %amsdu.4, align 1
  %arrayidx19.4 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 88, i32 4
  %50 = ptrtoint ptr %arrayidx19.4 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx19.4, align 1
  %arrayidx21.4 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 4
  %ampdu_ap.4 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 4, i32 1
  %52 = ptrtoint ptr %ampdu_ap.4 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %ampdu_ap.4, align 1
  %53 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %51, ptr %arrayidx21.4, align 1
  %54 = load i8, ptr @disable_tx_amsdu, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool7.not.5 = icmp eq i8 %54, 0
  br i1 %tobool7.not.5, label %land.lhs.true.5, label %if.end17.4.if.end17.5_crit_edge

if.end17.4.if.end17.5_crit_edge:                  ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.5

land.lhs.true.5:                                  ; preds = %if.end17.4
  %55 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %tx_buf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %56)
  %cmp9.5 = icmp ugt i16 %56, 2048
  br i1 %cmp9.5, label %if.then11.5, label %land.lhs.true.5.if.end17.5_crit_edge

land.lhs.true.5.if.end17.5_crit_edge:             ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.5

if.then11.5:                                      ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12.5 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 88, i32 5
  %57 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx12.5, align 1
  br label %if.end17.5

if.end17.5:                                       ; preds = %if.then11.5, %land.lhs.true.5.if.end17.5_crit_edge, %if.end17.4.if.end17.5_crit_edge
  %.sink90 = phi i8 [ %58, %if.then11.5 ], [ -1, %land.lhs.true.5.if.end17.5_crit_edge ], [ -1, %if.end17.4.if.end17.5_crit_edge ]
  %amsdu.5 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 5, i32 2
  %59 = ptrtoint ptr %amsdu.5 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %.sink90, ptr %amsdu.5, align 1
  %arrayidx19.5 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 88, i32 5
  %60 = ptrtoint ptr %arrayidx19.5 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx19.5, align 1
  %arrayidx21.5 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 5
  %ampdu_ap.5 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 5, i32 1
  %62 = ptrtoint ptr %ampdu_ap.5 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %ampdu_ap.5, align 1
  %63 = ptrtoint ptr %arrayidx21.5 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %61, ptr %arrayidx21.5, align 1
  %64 = load i8, ptr @disable_tx_amsdu, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool7.not.6 = icmp eq i8 %64, 0
  br i1 %tobool7.not.6, label %land.lhs.true.6, label %if.end17.5.if.end17.6_crit_edge

if.end17.5.if.end17.6_crit_edge:                  ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.6

land.lhs.true.6:                                  ; preds = %if.end17.5
  %65 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %tx_buf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %66)
  %cmp9.6 = icmp ugt i16 %66, 2048
  br i1 %cmp9.6, label %if.then11.6, label %land.lhs.true.6.if.end17.6_crit_edge

land.lhs.true.6.if.end17.6_crit_edge:             ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.6

if.then11.6:                                      ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12.6 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 88, i32 6
  %67 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx12.6, align 1
  br label %if.end17.6

if.end17.6:                                       ; preds = %if.then11.6, %land.lhs.true.6.if.end17.6_crit_edge, %if.end17.5.if.end17.6_crit_edge
  %.sink91 = phi i8 [ %68, %if.then11.6 ], [ -1, %land.lhs.true.6.if.end17.6_crit_edge ], [ -1, %if.end17.5.if.end17.6_crit_edge ]
  %amsdu.6 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 6, i32 2
  %69 = ptrtoint ptr %amsdu.6 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %.sink91, ptr %amsdu.6, align 1
  %arrayidx19.6 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 88, i32 6
  %70 = ptrtoint ptr %arrayidx19.6 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx19.6, align 1
  %arrayidx21.6 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 6
  %ampdu_ap.6 = getelementptr %struct.mwifiex_private, ptr %3, i32 0, i32 85, i32 6, i32 1
  %72 = ptrtoint ptr %ampdu_ap.6 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %ampdu_ap.6, align 1
  %73 = ptrtoint ptr %arrayidx21.6 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %71, ptr %arrayidx21.6, align 1
  %74 = call ptr @memset(ptr %arrayidx21.6, i32 255, i32 6)
  tail call void @mwifiex_set_ba_params(ptr noundef nonnull %3) #11
  %rx_seq.i = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 87
  %75 = call ptr @memset(ptr %rx_seq.i, i32 255, i32 16)
  %drv_pkt_delay_max = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 77, i32 6
  %76 = ptrtoint ptr %drv_pkt_delay_max to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 510, ptr %drv_pkt_delay_max, align 4
  %tx_pkts_queued = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 77, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_pkts_queued, i32 noundef 4) #11
  %77 = ptrtoint ptr %tx_pkts_queued to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 0, ptr %tx_pkts_queued, align 4
  %highest_queued_prio = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 77, i32 10
  %call.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %highest_queued_prio, i32 noundef 4) #11
  %78 = ptrtoint ptr %highest_queued_prio to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 7, ptr %highest_queued_prio, align 4
  br label %for.inc46

for.inc46:                                        ; preds = %if.end17.6, %for.body.for.inc46_crit_edge
  %inc47 = add nuw nsw i32 %j.085, 1
  %79 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %priv_num, align 4
  %conv = zext i8 %80 to i32
  %cmp = icmp ult i32 %inc47, %conv
  br i1 %cmp, label %for.inc46.for.body_crit_edge, label %for.inc46.for.end48_crit_edge

for.inc46.for.end48_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end48

for.inc46.for.body_crit_edge:                     ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end48:                                        ; preds = %for.inc46.for.end48_crit_edge, %entry.for.end48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_ba_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_bypass_txlist_empty(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %0 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp22.not = icmp eq i8 %1, 0
  br i1 %cmp22.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %is_port_ready = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.023
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %is_port_ready to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is_port_ready, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %call = tail call zeroext i1 %5(ptr noundef nonnull %3) #11
  br i1 %call, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %bypass_txq = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 160
  %6 = ptrtoint ptr %bypass_txq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bypass_txq, align 4
  %cmp.i.not = icmp eq ptr %7, %bypass_txq
  br i1 %cmp.i.not, label %if.end7.for.inc_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %8 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %priv_num, align 4
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_wmm_lists_empty(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %0 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp30.not = icmp eq i8 %1, 0
  br i1 %cmp30.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %is_port_ready = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.031
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %port_open = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %port_open to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_open, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bss_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp4.not = icmp eq i32 %7, 1
  br i1 %cmp4.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %8 = ptrtoint ptr %is_port_ready to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %is_port_ready, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %land.lhs.true9

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true9:                                   ; preds = %if.end7
  %call = tail call zeroext i1 %9(ptr noundef nonnull %3) #11
  br i1 %call, label %land.lhs.true9.if.end13_crit_edge, label %land.lhs.true9.for.inc_crit_edge

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true9.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %tx_pkts_queued = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 77, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_pkts_queued, i32 noundef 4) #11
  %10 = ptrtoint ptr %tx_pkts_queued to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %tx_pkts_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  br i1 %tobool15.not, label %if.end13.for.inc_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %land.lhs.true9.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %12 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %priv_num, align 4
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_clean_txrx(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mwifiex_11n_cleanup_reorder_tbl(ptr noundef %priv) #11
  %ra_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock) #11
  %wmm.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77
  br label %for.body.i

for.body.i:                                       ; preds = %mwifiex_wmm_del_pkts_in_ralist.exit.i.for.body.i_crit_edge, %entry
  %i.010.i = phi i32 [ 0, %entry ], [ %inc.i, %mwifiex_wmm_del_pkts_in_ralist.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm.i, i32 0, i32 %i.010.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %ra_list.09.i.i = load ptr, ptr %arrayidx.i, align 4
  %cmp.not10.i.i = icmp eq ptr %ra_list.09.i.i, %arrayidx.i
  br i1 %cmp.not10.i.i, label %for.body.i.mwifiex_wmm_del_pkts_in_ralist.exit.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.mwifiex_wmm_del_pkts_in_ralist.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_del_pkts_in_ralist.exit.i

for.body.i.i:                                     ; preds = %mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %ra_list.011.i.i = phi ptr [ %ra_list.0.i.i, %mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i.for.body.i.i_crit_edge ], [ %ra_list.09.i.i, %for.body.i.for.body.i.i_crit_edge ]
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %skb_head.i.i.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.011.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %skb_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb_head.i.i.i, align 4
  %cmp.not12.i.i.i = icmp eq ptr %4, %skb_head.i.i.i
  br i1 %cmp.not12.i.i.i, label %for.body.i.i.mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i_crit_edge, label %for.body.i.i.for.body.i.i.i_crit_edge

for.body.i.i.for.body.i.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.body.i.i.i

for.body.i.i.mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.for.body.i.i.i_crit_edge
  %skb.013.i.i.i = phi ptr [ %tmp.0.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %4, %for.body.i.i.for.body.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %skb.013.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.0.i.i.i = load ptr, ptr %skb.013.i.i.i, align 8
  tail call void @skb_unlink(ptr noundef %skb.013.i.i.i, ptr noundef %skb_head.i.i.i) #11
  %call.i.i9.i = tail call i32 @mwifiex_write_data_complete(ptr noundef %2, ptr noundef %skb.013.i.i.i, i32 noundef 0, i32 noundef -1) #11
  %cmp.not.i.i.i = icmp eq ptr %tmp.0.i.i.i, %skb_head.i.i.i
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.body.i.i.i.mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i

mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i:     ; preds = %for.body.i.i.i.mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i_crit_edge, %for.body.i.i.mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i_crit_edge
  %6 = ptrtoint ptr %ra_list.011.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %ra_list.0.i.i = load ptr, ptr %ra_list.011.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %ra_list.0.i.i, %arrayidx.i
  br i1 %cmp.not.i.i, label %mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i.mwifiex_wmm_del_pkts_in_ralist.exit.i_crit_edge, label %mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i.for.body.i.i_crit_edge

mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i.for.body.i.i_crit_edge: ; preds = %mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i.mwifiex_wmm_del_pkts_in_ralist.exit.i_crit_edge: ; preds = %mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_del_pkts_in_ralist.exit.i

mwifiex_wmm_del_pkts_in_ralist.exit.i:            ; preds = %mwifiex_wmm_del_pkts_in_ralist_node.exit.i.i.mwifiex_wmm_del_pkts_in_ralist.exit.i_crit_edge, %for.body.i.mwifiex_wmm_del_pkts_in_ralist.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %mwifiex_wmm_cleanup_queues.exit, label %mwifiex_wmm_del_pkts_in_ralist.exit.i.for.body.i_crit_edge

mwifiex_wmm_del_pkts_in_ralist.exit.i.for.body.i_crit_edge: ; preds = %mwifiex_wmm_del_pkts_in_ralist.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mwifiex_wmm_cleanup_queues.exit:                  ; preds = %mwifiex_wmm_del_pkts_in_ralist.exit.i
  %tx_pkts_queued.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_pkts_queued.i, i32 noundef 4) #11
  %7 = ptrtoint ptr %tx_pkts_queued.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %tx_pkts_queued.i, align 4
  %highest_queued_prio.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 10
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %highest_queued_prio.i, i32 noundef 4) #11
  %8 = ptrtoint ptr %highest_queued_prio.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 7, ptr %highest_queued_prio.i, align 4
  tail call void @mwifiex_11n_delete_all_tx_ba_stream_tbl(ptr noundef %priv) #11
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %cleanup_mpa_buf = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 18, i32 14
  %11 = ptrtoint ptr %cleanup_mpa_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cleanup_mpa_buf, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %mwifiex_wmm_cleanup_queues.exit.for.body.i75.preheader_crit_edge, label %if.then

mwifiex_wmm_cleanup_queues.exit.for.body.i75.preheader_crit_edge: ; preds = %mwifiex_wmm_cleanup_queues.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i75.preheader

if.then:                                          ; preds = %mwifiex_wmm_cleanup_queues.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %12(ptr noundef %10) #11
  br label %for.body.i75.preheader

for.body.i75.preheader:                           ; preds = %if.then, %mwifiex_wmm_cleanup_queues.exit.for.body.i75.preheader_crit_edge
  br label %for.body.i75

for.body.i75:                                     ; preds = %for.end.i.for.body.i75_crit_edge, %for.body.i75.preheader
  %i.042.i = phi i32 [ %inc.i77, %for.end.i.for.body.i75_crit_edge ], [ 0, %for.body.i75.preheader ]
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 1073741824, ptr noundef nonnull @.str.24, i32 noundef %i.042.i) #11
  %arrayidx.i74 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm.i, i32 0, i32 %i.042.i
  %15 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i74, align 4
  %cmp12.not39.i = icmp eq ptr %16, %arrayidx.i74
  br i1 %cmp12.not39.i, label %for.body.i75.for.end.i_crit_edge, label %for.body.i75.for.body13.i_crit_edge

for.body.i75.for.body13.i_crit_edge:              ; preds = %for.body.i75
  br label %for.body13.i

for.body.i75.for.end.i_crit_edge:                 ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body13.i:                                     ; preds = %list_del.exit.i.for.body13.i_crit_edge, %for.body.i75.for.body13.i_crit_edge
  %ra_list.040.i = phi ptr [ %tmp_node.0.i, %list_del.exit.i.for.body13.i_crit_edge ], [ %16, %for.body.i75.for.body13.i_crit_edge ]
  %17 = ptrtoint ptr %ra_list.040.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp_node.0.i = load ptr, ptr %ra_list.040.i, align 4
  %call.i.i.i76 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ra_list.040.i) #11
  br i1 %call.i.i.i76, label %if.end.i.i.i, label %for.body13.i.list_del.exit.i_crit_edge

for.body13.i.list_del.exit.i_crit_edge:           ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ra_list.040.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %ra_list.040.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ra_list.040.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body13.i.list_del.exit.i_crit_edge
  %24 = ptrtoint ptr %ra_list.040.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %ra_list.040.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ra_list.040.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %ra_list.040.i) #11
  %cmp12.not.i = icmp eq ptr %tmp_node.0.i, %arrayidx.i74
  br i1 %cmp12.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body13.i_crit_edge

list_del.exit.i.for.body13.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %for.body.i75.for.end.i_crit_edge
  %26 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx.i74, ptr %arrayidx.i74, align 4
  %prev.i38.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i74, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i38.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx.i74, ptr %prev.i38.i, align 4
  %inc.i77 = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i78 = icmp eq i32 %inc.i77, 8
  br i1 %exitcond.not.i78, label %mwifiex_wmm_delete_all_ralist.exit, label %for.end.i.for.body.i75_crit_edge

for.end.i.for.body.i75_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i75

mwifiex_wmm_delete_all_ralist.exit:               ; preds = %for.end.i
  store i64 72620556943689223, ptr @tos_to_tid, align 8
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %clean_pcie_ring = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 18, i32 22
  %30 = ptrtoint ptr %clean_pcie_ring to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clean_pcie_ring, align 4
  %tobool7.not = icmp eq ptr %31, null
  br i1 %tobool7.not, label %mwifiex_wmm_delete_all_ralist.exit.if.end16_crit_edge, label %land.lhs.true

mwifiex_wmm_delete_all_ralist.exit.if.end16_crit_edge: ; preds = %mwifiex_wmm_delete_all_ralist.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %mwifiex_wmm_delete_all_ralist.exit
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 12
  %32 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %work_flags, align 4
  %and1.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool9.not = icmp eq i32 %and1.i, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 %31(ptr noundef %29) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %land.lhs.true.if.end16_crit_edge, %mwifiex_wmm_delete_all_ralist.exit.if.end16_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock) #11
  %tdls_txq = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 141
  %34 = ptrtoint ptr %tdls_txq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tdls_txq, align 8
  %cmp.not79 = icmp eq ptr %35, %tdls_txq
  br i1 %cmp.not79, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16.for.body_crit_edge
  %skb.080 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %35, %if.end16.for.body_crit_edge ]
  %36 = ptrtoint ptr %skb.080 to i32
  call void @__asan_load4_noabort(i32 %36)
  %tmp.0 = load ptr, ptr %skb.080, align 8
  tail call void @skb_unlink(ptr noundef %skb.080, ptr noundef %tdls_txq) #11
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %call23 = tail call i32 @mwifiex_write_data_complete(ptr noundef %38, ptr noundef %skb.080, i32 noundef 0, i32 noundef -1) #11
  %cmp.not = icmp eq ptr %tmp.0, %tdls_txq
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end16.for.end_crit_edge
  %bypass_txq = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 160
  %39 = ptrtoint ptr %bypass_txq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bypass_txq, align 4
  %cmp29.not81 = icmp eq ptr %40, %bypass_txq
  br i1 %cmp29.not81, label %for.end.for.end36_crit_edge, label %for.end.for.body30_crit_edge

for.end.for.body30_crit_edge:                     ; preds = %for.end
  br label %for.body30

for.end.for.end36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end36

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.end.for.body30_crit_edge
  %skb.182 = phi ptr [ %tmp.1, %for.body30.for.body30_crit_edge ], [ %40, %for.end.for.body30_crit_edge ]
  %41 = ptrtoint ptr %skb.182 to i32
  call void @__asan_load4_noabort(i32 %41)
  %tmp.1 = load ptr, ptr %skb.182, align 8
  tail call void @skb_unlink(ptr noundef %skb.182, ptr noundef %bypass_txq) #11
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 8
  %call33 = tail call i32 @mwifiex_write_data_complete(ptr noundef %43, ptr noundef %skb.182, i32 noundef 0, i32 noundef -1) #11
  %cmp29.not = icmp eq ptr %tmp.1, %bypass_txq
  br i1 %cmp29.not, label %for.body30.for.end36_crit_edge, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body30

for.body30.for.end36_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end36

for.end36:                                        ; preds = %for.body30.for.end36_crit_edge, %for.end.for.end36_crit_edge
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 8
  %bypass_tx_pending = getelementptr inbounds %struct.mwifiex_adapter, ptr %45, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bypass_tx_pending, i32 noundef 4) #11
  %46 = ptrtoint ptr %bypass_tx_pending to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 0, ptr %bypass_tx_pending, align 4
  %ack_status_frames = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 147
  %call38 = tail call i32 @idr_for_each(ptr noundef %ack_status_frames, ptr noundef nonnull @mwifiex_free_ack_frame, ptr noundef null) #11
  tail call void @idr_destroy(ptr noundef %ack_status_frames) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_cleanup_reorder_tbl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_delete_all_tx_ba_stream_tbl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_write_data_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_free_ack_frame(i32 noundef %id, ptr noundef %p, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  tail call void @kfree_skb_reason(ptr noundef %p, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mwifiex_wmm_get_ralist_node(ptr noundef readonly %priv, i8 noundef zeroext %tid, ptr nocapture noundef readonly %ra_addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wmm = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77
  %idxprom = zext i8 %tid to i32
  %arrayidx = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm, i32 0, i32 %idxprom
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ra_list.0.in = phi ptr [ %arrayidx, %entry ], [ %ra_list.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ra_list.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ra_list.0 = load ptr, ptr %ra_list.0.in, align 4
  %cmp.not = icmp eq ptr %ra_list.0, %arrayidx
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %ra = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ra, ptr noundef dereferenceable(6) %ra_addr, i32 6) #16
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %ra_list.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_update_ralist_tx_pause(ptr noundef %priv, ptr nocapture noundef readonly %mac, i8 noundef zeroext %tx_pause) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ra_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock) #11
  %wmm.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_pause)
  %tobool7 = icmp ne i8 %tx_pause, 0
  %frombool = zext i1 %tobool7 to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.068 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %pkt_cnt.067 = phi i32 [ 0, %entry ], [ %pkt_cnt.1, %for.inc.for.body_crit_edge ]
  %arrayidx.i = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm.i, i32 0, i32 %i.068
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %ra_list.0.in.i = phi ptr [ %arrayidx.i, %for.body ], [ %ra_list.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %ra_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %ra_list.0.i = load ptr, ptr %ra_list.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ra_list.0.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.cond.i.for.inc_crit_edge, label %for.body.i

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.i:                                       ; preds = %for.cond.i
  %ra.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ra.i, ptr noundef dereferenceable(6) %mac, i32 6) #17
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %mwifiex_wmm_get_ralist_node.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

mwifiex_wmm_get_ralist_node.exit:                 ; preds = %for.body.i
  %tobool.not = icmp eq ptr %ra_list.0.i, null
  br i1 %tobool.not, label %mwifiex_wmm_get_ralist_node.exit.for.inc_crit_edge, label %land.lhs.true

mwifiex_wmm_get_ralist_node.exit.for.inc_crit_edge: ; preds = %mwifiex_wmm_get_ralist_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %mwifiex_wmm_get_ralist_node.exit
  %tx_paused = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0.i, i32 0, i32 11
  %1 = ptrtoint ptr %tx_paused to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tx_paused, align 1, !range !91
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %tx_pause)
  %cmp4.not = icmp eq i8 %2, %tx_pause
  br i1 %cmp4.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %total_pkt_count = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0.i, i32 0, i32 9
  %3 = ptrtoint ptr %total_pkt_count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %total_pkt_count, align 2
  %conv6 = zext i16 %4 to i32
  %add = add i32 %pkt_cnt.067, %conv6
  %5 = ptrtoint ptr %tx_paused to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %tx_paused, align 1
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 2, i32 %i.068
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = sub nsw i32 0, %conv6
  %sub.sink.p = select i1 %tobool7, i32 %conv6, i32 %8
  %sub.sink = add i32 %7, %sub.sink.p
  store i32 %sub.sink, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %mwifiex_wmm_get_ralist_node.exit.for.inc_crit_edge, %for.cond.i.for.inc_crit_edge
  %pkt_cnt.1 = phi i32 [ %pkt_cnt.067, %land.lhs.true.for.inc_crit_edge ], [ %pkt_cnt.067, %mwifiex_wmm_get_ralist_node.exit.for.inc_crit_edge ], [ %add, %if.then ], [ %pkt_cnt.067, %for.cond.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkt_cnt.1)
  %tobool21.not = icmp eq i32 %pkt_cnt.1, 0
  br i1 %tobool21.not, label %for.end.if.end35_crit_edge, label %if.then22

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %tx_pkts_queued24 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_pkts_queued24, i32 noundef 4) #11
  %9 = ptrtoint ptr %tx_pkts_queued24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %tx_pkts_queued24, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_pause)
  %tobool26.not = icmp eq i8 %tx_pause, 0
  %11 = sub i32 0, %pkt_cnt.1
  %tx_pkts_queued.0.p = select i1 %tobool26.not, i32 %pkt_cnt.1, i32 %11
  %tx_pkts_queued.0 = add i32 %10, %tx_pkts_queued.0.p
  %call.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_pkts_queued24, i32 noundef 4) #11
  %12 = ptrtoint ptr %tx_pkts_queued24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %tx_pkts_queued.0, ptr %tx_pkts_queued24, align 4
  %highest_queued_prio = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 10
  %call.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef %highest_queued_prio, i32 noundef 4) #11
  %13 = ptrtoint ptr %highest_queued_prio to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 7, ptr %highest_queued_prio, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then22, %for.end.if.end35_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_update_ralist_tx_pause_in_tdls_cs(ptr noundef %priv, ptr nocapture noundef readonly %mac, i8 noundef zeroext %tx_pause) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wmm = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77
  %ra_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_pause)
  %tobool16 = icmp ne i8 %tx_pause, 0
  %frombool = zext i1 %tobool16 to i8
  br label %for.body

for.body:                                         ; preds = %for.inc37.for.body_crit_edge, %entry
  %pkt_cnt.092 = phi i32 [ 0, %entry ], [ %pkt_cnt.1.lcssa, %for.inc37.for.body_crit_edge ]
  %i.090 = phi i32 [ 0, %entry ], [ %inc, %for.inc37.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm, i32 0, i32 %i.090
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %ra_list.086 = load ptr, ptr %arrayidx, align 4
  %cmp8.not87 = icmp eq ptr %ra_list.086, %arrayidx
  br i1 %cmp8.not87, label %for.body.for.inc37_crit_edge, label %for.body9.lr.ph

for.body.for.inc37_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc37

for.body9.lr.ph:                                  ; preds = %for.body
  %arrayidx29 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 2, i32 %i.090
  br label %for.body9

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %for.body9.lr.ph
  %ra_list.089 = phi ptr [ %ra_list.086, %for.body9.lr.ph ], [ %ra_list.0, %for.inc.for.body9_crit_edge ]
  %pkt_cnt.188 = phi i32 [ %pkt_cnt.092, %for.body9.lr.ph ], [ %pkt_cnt.2, %for.inc.for.body9_crit_edge ]
  %ra = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.089, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ra, ptr noundef dereferenceable(6) %mac, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %for.body9.for.inc_crit_edge, label %if.end

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body9
  %tx_paused = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.089, i32 0, i32 11
  %1 = ptrtoint ptr %tx_paused to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tx_paused, align 1, !range !91
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %tx_pause)
  %cmp12.not = icmp eq i8 %2, %tx_pause
  br i1 %cmp12.not, label %if.end.for.inc_crit_edge, label %if.then14

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %total_pkt_count = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.089, i32 0, i32 9
  %3 = ptrtoint ptr %total_pkt_count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %total_pkt_count, align 2
  %conv15 = zext i16 %4 to i32
  %add = add i32 %pkt_cnt.188, %conv15
  %5 = ptrtoint ptr %tx_paused to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %tx_paused, align 1
  %6 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx29, align 4
  %8 = sub nsw i32 0, %conv15
  %sub.sink.p = select i1 %tobool16, i32 %conv15, i32 %8
  %sub.sink = add i32 %7, %sub.sink.p
  store i32 %sub.sink, ptr %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end.for.inc_crit_edge, %for.body9.for.inc_crit_edge
  %pkt_cnt.2 = phi i32 [ %pkt_cnt.188, %if.end.for.inc_crit_edge ], [ %pkt_cnt.188, %for.body9.for.inc_crit_edge ], [ %add, %if.then14 ]
  %9 = ptrtoint ptr %ra_list.089 to i32
  call void @__asan_load4_noabort(i32 %9)
  %ra_list.0 = load ptr, ptr %ra_list.089, align 4
  %cmp8.not = icmp eq ptr %ra_list.0, %arrayidx
  br i1 %cmp8.not, label %for.inc.for.inc37_crit_edge, label %for.inc.for.body9_crit_edge

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body9

for.inc.for.inc37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc37

for.inc37:                                        ; preds = %for.inc.for.inc37_crit_edge, %for.body.for.inc37_crit_edge
  %pkt_cnt.1.lcssa = phi i32 [ %pkt_cnt.092, %for.body.for.inc37_crit_edge ], [ %pkt_cnt.2, %for.inc.for.inc37_crit_edge ]
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end38, label %for.inc37.for.body_crit_edge

for.inc37.for.body_crit_edge:                     ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end38:                                        ; preds = %for.inc37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkt_cnt.1.lcssa)
  %tobool39.not = icmp eq i32 %pkt_cnt.1.lcssa, 0
  br i1 %tobool39.not, label %for.end38.if.end53_crit_edge, label %if.then40

for.end38.if.end53_crit_edge:                     ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then40:                                        ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #13
  %tx_pkts_queued42 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_pkts_queued42, i32 noundef 4) #11
  %10 = ptrtoint ptr %tx_pkts_queued42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %tx_pkts_queued42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_pause)
  %tobool44.not = icmp eq i8 %tx_pause, 0
  %12 = sub i32 0, %pkt_cnt.1.lcssa
  %tx_pkts_queued.0.p = select i1 %tobool44.not, i32 %pkt_cnt.1.lcssa, i32 %12
  %tx_pkts_queued.0 = add i32 %11, %tx_pkts_queued.0.p
  %call.i.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_pkts_queued42, i32 noundef 4) #11
  %13 = ptrtoint ptr %tx_pkts_queued42 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %tx_pkts_queued.0, ptr %tx_pkts_queued42, align 4
  %highest_queued_prio = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 10
  %call.i.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %highest_queued_prio, i32 noundef 4) #11
  %14 = ptrtoint ptr %highest_queued_prio to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 7, ptr %highest_queued_prio, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then40, %for.end38.if.end53_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mwifiex_wmm_get_queue_raptr(ptr noundef %priv, i8 noundef zeroext %tid, ptr noundef %ra_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wmm.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77
  %idxprom.i = zext i8 %tid to i32
  %arrayidx.i = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm.i, i32 0, i32 %idxprom.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %ra_list.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %ra_list.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %ra_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %ra_list.0.i = load ptr, ptr %ra_list.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ra_list.0.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %ra.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ra.i, ptr noundef dereferenceable(6) %ra_addr, i32 6) #17
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %mwifiex_wmm_get_ralist_node.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

mwifiex_wmm_get_ralist_node.exit:                 ; preds = %for.body.i
  %tobool.not = icmp eq ptr %ra_list.0.i, null
  br i1 %tobool.not, label %mwifiex_wmm_get_ralist_node.exit.if.end_crit_edge, label %mwifiex_wmm_get_ralist_node.exit.cleanup_crit_edge

mwifiex_wmm_get_ralist_node.exit.cleanup_crit_edge: ; preds = %mwifiex_wmm_get_ralist_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

mwifiex_wmm_get_ralist_node.exit.if.end_crit_edge: ; preds = %mwifiex_wmm_get_ralist_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %mwifiex_wmm_get_ralist_node.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  tail call void @mwifiex_ralist_add(ptr noundef %priv, ptr noundef %ra_addr)
  br label %for.cond.i14

for.cond.i14:                                     ; preds = %for.body.i18.for.cond.i14_crit_edge, %if.end
  %ra_list.0.in.i11 = phi ptr [ %arrayidx.i, %if.end ], [ %ra_list.0.i12, %for.body.i18.for.cond.i14_crit_edge ]
  %1 = ptrtoint ptr %ra_list.0.in.i11 to i32
  call void @__asan_load4_noabort(i32 %1)
  %ra_list.0.i12 = load ptr, ptr %ra_list.0.in.i11, align 4
  %cmp.not.i13 = icmp eq ptr %ra_list.0.i12, %arrayidx.i
  br i1 %cmp.not.i13, label %for.cond.i14.cleanup_crit_edge, label %for.body.i18

for.cond.i14.cleanup_crit_edge:                   ; preds = %for.cond.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i18:                                     ; preds = %for.cond.i14
  %ra.i15 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0.i12, i32 0, i32 2
  %bcmp.i16 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ra.i15, ptr noundef dereferenceable(6) %ra_addr, i32 6) #17
  %tobool.not.i17 = icmp eq i32 %bcmp.i16, 0
  br i1 %tobool.not.i17, label %for.body.i18.cleanup_crit_edge, label %for.body.i18.for.cond.i14_crit_edge

for.body.i18.for.cond.i14_crit_edge:              ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i14

for.body.i18.cleanup_crit_edge:                   ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.i18.cleanup_crit_edge, %for.cond.i14.cleanup_crit_edge, %mwifiex_wmm_get_ralist_node.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %ra_list.0.i, %mwifiex_wmm_get_ralist_node.exit.cleanup_crit_edge ], [ null, %for.cond.i14.cleanup_crit_edge ], [ %ra_list.0.i12, %for.body.i18.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_wmm_del_peer_ra_list(ptr noundef %priv, ptr nocapture noundef readonly %ra_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ra_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock) #11
  %wmm.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77
  %tx_pkts_queued = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.032 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx.i = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm.i, i32 0, i32 %i.032
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %ra_list.0.in.i = phi ptr [ %arrayidx.i, %for.body ], [ %ra_list.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %ra_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %ra_list.0.i = load ptr, ptr %ra_list.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ra_list.0.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.cond.i.for.inc_crit_edge, label %for.body.i

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.i:                                       ; preds = %for.cond.i
  %ra.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ra.i, ptr noundef dereferenceable(6) %ra_addr, i32 6) #17
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %mwifiex_wmm_get_ralist_node.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

mwifiex_wmm_get_ralist_node.exit:                 ; preds = %for.body.i
  %tobool.not = icmp eq ptr %ra_list.0.i, null
  br i1 %tobool.not, label %mwifiex_wmm_get_ralist_node.exit.for.inc_crit_edge, label %if.end

mwifiex_wmm_get_ralist_node.exit.for.inc_crit_edge: ; preds = %mwifiex_wmm_get_ralist_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %mwifiex_wmm_get_ralist_node.exit
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %skb_head.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %skb_head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb_head.i, align 4
  %cmp.not12.i = icmp eq ptr %4, %skb_head.i
  br i1 %cmp.not12.i, label %if.end.mwifiex_wmm_del_pkts_in_ralist_node.exit_crit_edge, label %if.end.for.body.i26_crit_edge

if.end.for.body.i26_crit_edge:                    ; preds = %if.end
  br label %for.body.i26

if.end.mwifiex_wmm_del_pkts_in_ralist_node.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_del_pkts_in_ralist_node.exit

for.body.i26:                                     ; preds = %for.body.i26.for.body.i26_crit_edge, %if.end.for.body.i26_crit_edge
  %skb.013.i = phi ptr [ %tmp.0.i, %for.body.i26.for.body.i26_crit_edge ], [ %4, %if.end.for.body.i26_crit_edge ]
  %5 = ptrtoint ptr %skb.013.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.0.i = load ptr, ptr %skb.013.i, align 8
  tail call void @skb_unlink(ptr noundef %skb.013.i, ptr noundef %skb_head.i) #11
  %call.i = tail call i32 @mwifiex_write_data_complete(ptr noundef %2, ptr noundef %skb.013.i, i32 noundef 0, i32 noundef -1) #11
  %cmp.not.i25 = icmp eq ptr %tmp.0.i, %skb_head.i
  br i1 %cmp.not.i25, label %for.body.i26.mwifiex_wmm_del_pkts_in_ralist_node.exit_crit_edge, label %for.body.i26.for.body.i26_crit_edge

for.body.i26.for.body.i26_crit_edge:              ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i26

for.body.i26.mwifiex_wmm_del_pkts_in_ralist_node.exit_crit_edge: ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_del_pkts_in_ralist_node.exit

mwifiex_wmm_del_pkts_in_ralist_node.exit:         ; preds = %for.body.i26.mwifiex_wmm_del_pkts_in_ralist_node.exit_crit_edge, %if.end.mwifiex_wmm_del_pkts_in_ralist_node.exit_crit_edge
  %tx_paused = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0.i, i32 0, i32 11
  %6 = ptrtoint ptr %tx_paused to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_paused, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  %total_pkt_count5 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0.i, i32 0, i32 9
  %8 = ptrtoint ptr %total_pkt_count5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %total_pkt_count5, align 2
  %conv6 = zext i16 %9 to i32
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %mwifiex_wmm_del_pkts_in_ralist_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 2, i32 %i.032
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %11, %conv6
  store i32 %sub, ptr %arrayidx, align 4
  br label %if.end8

if.else:                                          ; preds = %mwifiex_wmm_del_pkts_in_ralist_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_pkts_queued, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tx_pkts_queued, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_pkts_queued, ptr %tx_pkts_queued, i32 %conv6, ptr elementtype(i32) %tx_pkts_queued) #11, !srcloc !92
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  %call.i.i27 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %ra_list.0.i) #11
  br i1 %call.i.i27, label %if.end.i.i, label %if.end8.list_del.exit_crit_edge

if.end8.list_del.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ra_list.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %ra_list.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ra_list.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end8.list_del.exit_crit_edge
  %19 = ptrtoint ptr %ra_list.0.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %ra_list.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ra_list.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %ra_list.0.i) #11
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %mwifiex_wmm_get_ralist_node.exit.for.inc_crit_edge, %for.cond.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_is_ralist_valid(ptr noundef readonly %priv, ptr noundef readnone %ra_list, i32 noundef %ptr_index) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wmm = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77
  %arrayidx = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm, i32 0, i32 %ptr_index
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %rlist.0.in = phi ptr [ %arrayidx, %entry ], [ %rlist.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %rlist.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %rlist.0 = load ptr, ptr %rlist.0.in, align 4
  %cmp.not = icmp eq ptr %rlist.0, %arrayidx
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %cmp6 = icmp eq ptr %rlist.0, %ra_list
  br i1 %cmp6, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_wmm_add_buf_bypass_txqueue(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bypass_txq = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 160
  tail call void @skb_queue_tail(ptr noundef %bypass_txq, ptr noundef %skb) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_wmm_add_buf_txqueue(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %ra = alloca [6 x i8], align 1
  %list_head.sroa.0 = alloca ptr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ra) #11
  %2 = call ptr @memset(ptr %ra, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list_head.sroa.0)
  %3 = ptrtoint ptr %list_head.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %list_head.sroa.0, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = call ptr @memcpy(ptr %ra, ptr %5, i32 6)
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bss_role, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 47
  %10 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_cap_info, align 4
  %and4 = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end18_crit_edge, label %if.then

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then:                                          ; preds = %land.lhs.true
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30451, i16 %13)
  %cmp6 = icmp eq i16 %13, -30451
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.6, ptr noundef nonnull %ra) #11
  br label %if.end18

if.else:                                          ; preds = %if.then
  %cfg_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 112
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %cfg_bssid, ptr noundef nonnull dereferenceable(6) %ra, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool13.not = icmp eq i32 %bcmp, 0
  br i1 %tobool13.not, label %if.else.if.end18_crit_edge, label %if.then14

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = call i32 @mwifiex_get_tdls_link_status(ptr noundef %priv, ptr noundef nonnull %ra) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.else.if.end18_crit_edge, %if.then8, %land.lhs.true.if.end18_crit_edge, %entry.if.end18_crit_edge
  %tdls_status.0 = phi i32 [ 0, %if.then8 ], [ %call16, %if.then14 ], [ 0, %if.else.if.end18_crit_edge ], [ 0, %land.lhs.true.if.end18_crit_edge ], [ 0, %entry.if.end18_crit_edge ]
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %14 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true20:                                  ; preds = %if.end18
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -452984832, i32 %19)
  %cmp.i = icmp eq i32 %19, -452984832
  br i1 %cmp.i, label %land.lhs.true20.if.end24_crit_edge, label %if.then22

land.lhs.true20.if.end24_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.7) #11
  %call23 = call i32 @mwifiex_write_data_complete(ptr noundef %1, ptr noundef %skb, i32 noundef 0, i32 noundef -1) #11
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true20.if.end24_crit_edge, %if.end18.if.end24_crit_edge
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %20 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %priority, align 4
  %wmm = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77
  %ra_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp.i.i = icmp ugt i32 %21, 7
  br i1 %cmp.i.i, label %if.end24.mwifiex_wmm_downgrade_tid.exit_crit_edge, label %if.end.i.i

if.end24.mwifiex_wmm_downgrade_tid.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_downgrade_tid.exit

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr [8 x i8], ptr @mwifiex_wmm_convert_tos_to_ac.tos_to_ac, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i, align 1
  %phi.cast.i = zext i8 %23 to i32
  br label %mwifiex_wmm_downgrade_tid.exit

mwifiex_wmm_downgrade_tid.exit:                   ; preds = %if.end.i.i, %if.end24.mwifiex_wmm_downgrade_tid.exit_crit_edge
  %retval.0.i.i = phi i32 [ %phi.cast.i, %if.end.i.i ], [ 1, %if.end24.mwifiex_wmm_downgrade_tid.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 5, i32 %retval.0.i.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  %idxprom1.i = zext i8 %25 to i32
  %rem.i = and i32 %21, 1
  %arrayidx3.i = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %idxprom1.i, i32 %rem.i
  %26 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx3.i, align 1
  %bss_mode.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %28 = ptrtoint ptr %bss_mode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bss_mode.i, align 8
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %29, label %mwifiex_wmm_downgrade_tid.exit.if.else44_crit_edge [
    i32 2, label %mwifiex_wmm_downgrade_tid.exit.land.lhs.true.i_crit_edge
    i32 8, label %mwifiex_wmm_downgrade_tid.exit.land.lhs.true.i_crit_edge205
  ]

mwifiex_wmm_downgrade_tid.exit.land.lhs.true.i_crit_edge205: ; preds = %mwifiex_wmm_downgrade_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

mwifiex_wmm_downgrade_tid.exit.land.lhs.true.i_crit_edge: ; preds = %mwifiex_wmm_downgrade_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

mwifiex_wmm_downgrade_tid.exit.if.else44_crit_edge: ; preds = %mwifiex_wmm_downgrade_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else44

land.lhs.true.i:                                  ; preds = %mwifiex_wmm_downgrade_tid.exit.land.lhs.true.i_crit_edge, %mwifiex_wmm_downgrade_tid.exit.land.lhs.true.i_crit_edge205
  %31 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bss_role, align 1
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp3.i = icmp eq i8 %33, 0
  br i1 %cmp3.i, label %land.lhs.true28, label %land.lhs.true.i.if.else44_crit_edge

land.lhs.true.i.if.else44_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else44

land.lhs.true28:                                  ; preds = %land.lhs.true.i
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %35, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -452984832, i32 %37)
  %cmp.i149 = icmp eq i32 %37, -452984832
  br i1 %cmp.i149, label %land.lhs.true28.if.else44_crit_edge, label %if.then30

land.lhs.true28.if.else44_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else44

if.then30:                                        ; preds = %land.lhs.true28
  %38 = zext i32 %tdls_status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %tdls_status.0, label %sw.default [
    i32 2, label %if.then30.sw.bb_crit_edge
    i32 5, label %if.then30.sw.bb_crit_edge206
    i32 6, label %if.then30.sw.bb_crit_edge207
    i32 7, label %if.then30.sw.bb_crit_edge208
    i32 1, label %sw.bb35
  ]

if.then30.sw.bb_crit_edge208:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then30.sw.bb_crit_edge207:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then30.sw.bb_crit_edge206:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then30.sw.bb_crit_edge:                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.then30.sw.bb_crit_edge, %if.then30.sw.bb_crit_edge206, %if.then30.sw.bb_crit_edge207, %if.then30.sw.bb_crit_edge208
  %idxprom.i.i = zext i8 %27 to i32
  %arrayidx.i.i150 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm, i32 0, i32 %idxprom.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %sw.bb
  %ra_list.0.in.i.i = phi ptr [ %arrayidx.i.i150, %sw.bb ], [ %ra_list.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %39 = ptrtoint ptr %ra_list.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %ra_list.0.i.i = load ptr, ptr %ra_list.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %ra_list.0.i.i, %arrayidx.i.i150
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end.i151_crit_edge, label %for.body.i.i

for.cond.i.i.if.end.i151_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i151

for.body.i.i:                                     ; preds = %for.cond.i.i
  %ra.i.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0.i.i, i32 0, i32 2
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %ra.i.i, ptr noundef nonnull dereferenceable(6) %ra, i32 6) #17
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %mwifiex_wmm_get_ralist_node.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

mwifiex_wmm_get_ralist_node.exit.i:               ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %ra_list.0.i.i, null
  br i1 %tobool.not.i, label %mwifiex_wmm_get_ralist_node.exit.i.if.end.i151_crit_edge, label %mwifiex_wmm_get_ralist_node.exit.i.mwifiex_wmm_get_queue_raptr.exit_crit_edge

mwifiex_wmm_get_ralist_node.exit.i.mwifiex_wmm_get_queue_raptr.exit_crit_edge: ; preds = %mwifiex_wmm_get_ralist_node.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_get_queue_raptr.exit

mwifiex_wmm_get_ralist_node.exit.i.if.end.i151_crit_edge: ; preds = %mwifiex_wmm_get_ralist_node.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i151

if.end.i151:                                      ; preds = %mwifiex_wmm_get_ralist_node.exit.i.if.end.i151_crit_edge, %for.cond.i.i.if.end.i151_crit_edge
  call void @mwifiex_ralist_add(ptr noundef %priv, ptr noundef nonnull %ra) #11
  br label %for.cond.i14.i

for.cond.i14.i:                                   ; preds = %for.body.i18.i.for.cond.i14.i_crit_edge, %if.end.i151
  %ra_list.0.in.i11.i = phi ptr [ %arrayidx.i.i150, %if.end.i151 ], [ %ra_list.0.i12.i, %for.body.i18.i.for.cond.i14.i_crit_edge ]
  %40 = ptrtoint ptr %ra_list.0.in.i11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %ra_list.0.i12.i = load ptr, ptr %ra_list.0.in.i11.i, align 4
  %cmp.not.i13.i = icmp eq ptr %ra_list.0.i12.i, %arrayidx.i.i150
  br i1 %cmp.not.i13.i, label %for.cond.i14.i.mwifiex_wmm_get_queue_raptr.exit_crit_edge, label %for.body.i18.i

for.cond.i14.i.mwifiex_wmm_get_queue_raptr.exit_crit_edge: ; preds = %for.cond.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_get_queue_raptr.exit

for.body.i18.i:                                   ; preds = %for.cond.i14.i
  %ra.i15.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0.i12.i, i32 0, i32 2
  %bcmp.i16.i = call i32 @bcmp(ptr noundef dereferenceable(6) %ra.i15.i, ptr noundef nonnull dereferenceable(6) %ra, i32 6) #17
  %tobool.not.i17.i = icmp eq i32 %bcmp.i16.i, 0
  br i1 %tobool.not.i17.i, label %for.body.i18.i.mwifiex_wmm_get_queue_raptr.exit_crit_edge, label %for.body.i18.i.for.cond.i14.i_crit_edge

for.body.i18.i.for.cond.i14.i_crit_edge:          ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i14.i

for.body.i18.i.mwifiex_wmm_get_queue_raptr.exit_crit_edge: ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_get_queue_raptr.exit

mwifiex_wmm_get_queue_raptr.exit:                 ; preds = %for.body.i18.i.mwifiex_wmm_get_queue_raptr.exit_crit_edge, %for.cond.i14.i.mwifiex_wmm_get_queue_raptr.exit_crit_edge, %mwifiex_wmm_get_ralist_node.exit.i.mwifiex_wmm_get_queue_raptr.exit_crit_edge
  %retval.0.i152 = phi ptr [ %ra_list.0.i.i, %mwifiex_wmm_get_ralist_node.exit.i.mwifiex_wmm_get_queue_raptr.exit_crit_edge ], [ %ra_list.0.i12.i, %for.body.i18.i.mwifiex_wmm_get_queue_raptr.exit_crit_edge ], [ null, %for.cond.i14.i.mwifiex_wmm_get_queue_raptr.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags, align 4
  %43 = or i8 %42, 4
  store i8 %43, ptr %flags, align 4
  br label %if.end58

sw.bb35:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %tdls_txq = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 141
  call void @skb_queue_tail(ptr noundef %tdls_txq, ptr noundef %skb) #11
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock) #11
  br label %cleanup

sw.default:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %idxprom = zext i8 %27 to i32
  %arrayidx = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm, i32 0, i32 %idxprom
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  %46 = inttoptr i32 %45 to ptr
  %47 = ptrtoint ptr %list_head.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %list_head.sroa.0, align 8
  %list_head.sroa.0.0.list_head.sroa.0.0.list_head.sroa.0.0. = load volatile ptr, ptr %list_head.sroa.0, align 8
  br label %if.end58

if.else44:                                        ; preds = %land.lhs.true28.if.else44_crit_edge, %land.lhs.true.i.if.else44_crit_edge, %mwifiex_wmm_downgrade_tid.exit.if.else44_crit_edge
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %50 = call ptr @memcpy(ptr %ra, ptr %49, i32 6)
  %51 = ptrtoint ptr %ra to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ra, align 1
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool50.not = icmp eq i8 %53, 0
  br i1 %tobool50.not, label %lor.lhs.false, label %if.else44.if.then53_crit_edge

if.else44.if.then53_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

lor.lhs.false:                                    ; preds = %if.else44
  %54 = ptrtoint ptr %49 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %49, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -452984832, i32 %55)
  %cmp.i154 = icmp eq i32 %55, -452984832
  br i1 %cmp.i154, label %lor.lhs.false.if.then53_crit_edge, label %lor.lhs.false.if.end55_crit_edge

lor.lhs.false.if.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

lor.lhs.false.if.then53_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

if.then53:                                        ; preds = %lor.lhs.false.if.then53_crit_edge, %if.else44.if.then53_crit_edge
  %56 = call ptr @memset(ptr %ra, i32 255, i32 6)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %lor.lhs.false.if.end55_crit_edge
  %idxprom.i.i156 = zext i8 %27 to i32
  %arrayidx.i.i157 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm, i32 0, i32 %idxprom.i.i156
  br label %for.cond.i.i161

for.cond.i.i161:                                  ; preds = %for.body.i.i165.for.cond.i.i161_crit_edge, %if.end55
  %ra_list.0.in.i.i158 = phi ptr [ %arrayidx.i.i157, %if.end55 ], [ %ra_list.0.i.i159, %for.body.i.i165.for.cond.i.i161_crit_edge ]
  %57 = ptrtoint ptr %ra_list.0.in.i.i158 to i32
  call void @__asan_load4_noabort(i32 %57)
  %ra_list.0.i.i159 = load ptr, ptr %ra_list.0.in.i.i158, align 4
  %cmp.not.i.i160 = icmp eq ptr %ra_list.0.i.i159, %arrayidx.i.i157
  br i1 %cmp.not.i.i160, label %for.cond.i.i161.if.end.i168_crit_edge, label %for.body.i.i165

for.cond.i.i161.if.end.i168_crit_edge:            ; preds = %for.cond.i.i161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i168

for.body.i.i165:                                  ; preds = %for.cond.i.i161
  %ra.i.i162 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0.i.i159, i32 0, i32 2
  %bcmp.i.i163 = call i32 @bcmp(ptr noundef dereferenceable(6) %ra.i.i162, ptr noundef nonnull dereferenceable(6) %ra, i32 6) #17
  %tobool.not.i.i164 = icmp eq i32 %bcmp.i.i163, 0
  br i1 %tobool.not.i.i164, label %mwifiex_wmm_get_ralist_node.exit.i167, label %for.body.i.i165.for.cond.i.i161_crit_edge

for.body.i.i165.for.cond.i.i161_crit_edge:        ; preds = %for.body.i.i165
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i161

mwifiex_wmm_get_ralist_node.exit.i167:            ; preds = %for.body.i.i165
  %tobool.not.i166 = icmp eq ptr %ra_list.0.i.i159, null
  br i1 %tobool.not.i166, label %mwifiex_wmm_get_ralist_node.exit.i167.if.end.i168_crit_edge, label %mwifiex_wmm_get_ralist_node.exit.i167.if.end64_crit_edge

mwifiex_wmm_get_ralist_node.exit.i167.if.end64_crit_edge: ; preds = %mwifiex_wmm_get_ralist_node.exit.i167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

mwifiex_wmm_get_ralist_node.exit.i167.if.end.i168_crit_edge: ; preds = %mwifiex_wmm_get_ralist_node.exit.i167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i168

if.end.i168:                                      ; preds = %mwifiex_wmm_get_ralist_node.exit.i167.if.end.i168_crit_edge, %for.cond.i.i161.if.end.i168_crit_edge
  call void @mwifiex_ralist_add(ptr noundef %priv, ptr noundef nonnull %ra) #11
  br label %for.cond.i14.i172

for.cond.i14.i172:                                ; preds = %for.body.i18.i176.for.cond.i14.i172_crit_edge, %if.end.i168
  %ra_list.0.in.i11.i169 = phi ptr [ %arrayidx.i.i157, %if.end.i168 ], [ %ra_list.0.i12.i170, %for.body.i18.i176.for.cond.i14.i172_crit_edge ]
  %58 = ptrtoint ptr %ra_list.0.in.i11.i169 to i32
  call void @__asan_load4_noabort(i32 %58)
  %ra_list.0.i12.i170 = load ptr, ptr %ra_list.0.in.i11.i169, align 4
  %cmp.not.i13.i171 = icmp eq ptr %ra_list.0.i12.i170, %arrayidx.i.i157
  br i1 %cmp.not.i13.i171, label %for.cond.i14.i172.if.then60_crit_edge, label %for.body.i18.i176

for.cond.i14.i172.if.then60_crit_edge:            ; preds = %for.cond.i14.i172
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60

for.body.i18.i176:                                ; preds = %for.cond.i14.i172
  %ra.i15.i173 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0.i12.i170, i32 0, i32 2
  %bcmp.i16.i174 = call i32 @bcmp(ptr noundef dereferenceable(6) %ra.i15.i173, ptr noundef nonnull dereferenceable(6) %ra, i32 6) #17
  %tobool.not.i17.i175 = icmp eq i32 %bcmp.i16.i174, 0
  br i1 %tobool.not.i17.i175, label %for.body.i18.i176.if.end58_crit_edge, label %for.body.i18.i176.for.cond.i14.i172_crit_edge

for.body.i18.i176.for.cond.i14.i172_crit_edge:    ; preds = %for.body.i18.i176
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i14.i172

for.body.i18.i176.if.end58_crit_edge:             ; preds = %for.body.i18.i176
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end58:                                         ; preds = %for.body.i18.i176.if.end58_crit_edge, %sw.default, %mwifiex_wmm_get_queue_raptr.exit
  %ra_list.0 = phi ptr [ %list_head.sroa.0.0.list_head.sroa.0.0.list_head.sroa.0.0., %sw.default ], [ %retval.0.i152, %mwifiex_wmm_get_queue_raptr.exit ], [ %ra_list.0.i12.i170, %for.body.i18.i176.if.end58_crit_edge ]
  %tobool59.not = icmp eq ptr %ra_list.0, null
  br i1 %tobool59.not, label %if.end58.if.then60_crit_edge, label %if.end58.if.end64_crit_edge

if.end58.if.then60_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60

if.end58.if.end64_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = zext i8 %27 to i32
  br label %if.end64

if.then60:                                        ; preds = %if.end58.if.then60_crit_edge, %for.cond.i14.i172.if.then60_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock) #11
  %call63 = call i32 @mwifiex_write_data_complete(ptr noundef %1, ptr noundef %skb, i32 noundef 0, i32 noundef -1) #11
  br label %cleanup

if.end64:                                         ; preds = %if.end58.if.end64_crit_edge, %mwifiex_wmm_get_ralist_node.exit.i167.if.end64_crit_edge
  %idxprom68.pre-phi = phi i32 [ %.pre, %if.end58.if.end64_crit_edge ], [ %idxprom.i.i156, %mwifiex_wmm_get_ralist_node.exit.i167.if.end64_crit_edge ]
  %ra_list.0186 = phi ptr [ %ra_list.0, %if.end58.if.end64_crit_edge ], [ %ra_list.0.i.i159, %mwifiex_wmm_get_ralist_node.exit.i167.if.end64_crit_edge ]
  %skb_head = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0186, i32 0, i32 1
  call void @skb_queue_tail(ptr noundef %skb_head, ptr noundef %skb) #11
  %ba_pkt_count = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0186, i32 0, i32 5
  %59 = ptrtoint ptr %ba_pkt_count to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %ba_pkt_count, align 2
  %inc = add i16 %60, 1
  store i16 %inc, ptr %ba_pkt_count, align 2
  %total_pkt_count = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0186, i32 0, i32 9
  %61 = ptrtoint ptr %total_pkt_count to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %total_pkt_count, align 2
  %inc65 = add i16 %62, 1
  store i16 %inc65, ptr %total_pkt_count, align 2
  %highest_queued_prio = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 10
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %highest_queued_prio, i32 noundef 4) #11
  %63 = ptrtoint ptr %highest_queued_prio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %highest_queued_prio, align 4
  %arrayidx69 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 88, i32 %idxprom68.pre-phi
  %65 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %66 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %conv70)
  %cmp71 = icmp slt i32 %64, %conv70
  br i1 %cmp71, label %if.then73, label %if.end64.if.end80_crit_edge

if.end64.if.end80_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then73:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i146 = call zeroext i1 @__kasan_check_write(ptr noundef %highest_queued_prio, i32 noundef 4) #11
  %67 = ptrtoint ptr %highest_queued_prio to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 %conv70, ptr %highest_queued_prio, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then73, %if.end64.if.end80_crit_edge
  %tx_paused = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0186, i32 0, i32 11
  %68 = ptrtoint ptr %tx_paused to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %tx_paused, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool81.not = icmp eq i8 %69, 0
  br i1 %tobool81.not, label %if.else87, label %if.then82

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx85 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 2, i32 %idxprom68.pre-phi
  %70 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx85, align 4
  %inc86 = add i32 %71, 1
  store i32 %inc86, ptr %arrayidx85, align 4
  br label %if.end89

if.else87:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %tx_pkts_queued = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 9
  %call.i.i147 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_pkts_queued, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %tx_pkts_queued, i32 1, i32 3, i32 1) #11
  %72 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_pkts_queued, ptr %tx_pkts_queued, i32 1, ptr elementtype(i32) %tx_pkts_queued) #11, !srcloc !93
  br label %if.end89

if.end89:                                         ; preds = %if.else87, %if.then82
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.then60, %sw.bb35, %if.then22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list_head.sroa.0)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ra) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_wmm_get_status(ptr noundef %priv, ptr noundef %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %size, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %conv = zext i16 %2 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.8, i32 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %2)
  %cmp80 = icmp ult i16 %2, 4
  br i1 %cmp80, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %wmm_ie = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %wmm_param_ie.085 = phi ptr [ null, %while.body.lr.ph ], [ %wmm_param_ie.1, %sw.epilog.while.body_crit_edge ]
  %resp_len.083 = phi i16 [ %2, %while.body.lr.ph ], [ %conv45, %sw.epilog.while.body_crit_edge ]
  %curr.081 = phi ptr [ %params, %while.body.lr.ph ], [ %add.ptr41, %sw.epilog.while.body_crit_edge ]
  %conv1 = zext i16 %resp_len.083 to i32
  %len = getelementptr %struct.mwifiex_ie_types_header, ptr %curr.081, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %len, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv5 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv5, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv1)
  %cmp6 = icmp ugt i32 %add, %conv1
  br i1 %cmp6, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %curr.081 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %curr.081, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %10, label %if.end.while.end_crit_edge [
    i16 272, label %sw.bb
    i16 221, label %sw.bb21
  ]

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %queue_index = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, ptr %curr.081, i32 0, i32 1
  %14 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %queue_index, align 4
  %conv11 = zext i8 %15 to i32
  %flow_required = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, ptr %curr.081, i32 0, i32 4
  %16 = ptrtoint ptr %flow_required to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flow_required, align 4
  %conv12 = zext i8 %17 to i32
  %disabled = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, ptr %curr.081, i32 0, i32 2
  %18 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %disabled, align 1
  %conv13 = zext i8 %19 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %13, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13) #11
  %20 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %queue_index, align 4
  %idxprom = zext i8 %21 to i32
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 4, i32 %idxprom
  %22 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %disabled, align 1
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx, align 1
  %25 = ptrtoint ptr %flow_required to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flow_required, align 4
  %flow_required19 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 4, i32 %idxprom, i32 1
  %27 = ptrtoint ptr %flow_required19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %flow_required19, align 1
  %flow_created = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, ptr %curr.081, i32 0, i32 5
  %28 = ptrtoint ptr %flow_created to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flow_created, align 1
  %flow_created20 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 4, i32 %idxprom, i32 2
  %30 = ptrtoint ptr %flow_created20 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %flow_created20, align 1
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  %conv22 = trunc i16 %7 to i8
  %len23 = getelementptr i8, ptr %curr.081, i32 3
  %31 = ptrtoint ptr %len23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv22, ptr %len23, align 1
  %32 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -35, ptr %len, align 1
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 8
  %qos_info_bitmap = getelementptr i8, ptr %curr.081, i32 10
  %35 = ptrtoint ptr %qos_info_bitmap to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %qos_info_bitmap, align 1
  %37 = and i8 %36, 15
  %and = zext i8 %37 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %34, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %and) #11
  %38 = ptrtoint ptr %len23 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %len23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %39)
  %cmp31 = icmp ugt i8 %39, 24
  br i1 %cmp31, label %sw.bb21.sw.epilog_crit_edge, label %if.end34

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end34:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  %conv29 = zext i8 %39 to i32
  %add30 = add nuw nsw i32 %conv29, 2
  %40 = call ptr @memcpy(ptr %wmm_ie, ptr %len, i32 %add30)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end34, %sw.bb21.sw.epilog_crit_edge, %sw.bb
  %wmm_param_ie.1 = phi ptr [ %len, %sw.bb21.sw.epilog_crit_edge ], [ %len, %if.end34 ], [ %wmm_param_ie.085, %sw.bb ]
  %add.ptr41 = getelementptr i8, ptr %curr.081, i32 %add
  %41 = trunc i32 %add to i16
  %conv45 = sub i16 %resp_len.083, %41
  %cmp = icmp ult i16 %conv45, 4
  br i1 %cmp, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %wmm_param_ie.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %wmm_param_ie.085, %if.end.while.end_crit_edge ], [ %wmm_param_ie.1, %sw.epilog.while.end_crit_edge ], [ %wmm_param_ie.085, %while.body.while.end_crit_edge ]
  tail call void @mwifiex_wmm_setup_queue_priorities(ptr noundef %priv, ptr noundef %wmm_param_ie.0.lcssa)
  tail call void @mwifiex_wmm_setup_ac_downgrade(ptr noundef %priv)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_wmm_process_association_req(ptr nocapture noundef readonly %priv, ptr noundef %assoc_buf, ptr noundef readonly %wmm_ie, ptr noundef readnone %ht_cap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %assoc_buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %assoc_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %assoc_buf, align 4
  %tobool1.not = icmp eq ptr %1, null
  %tobool4.not = icmp eq ptr %wmm_ie, null
  %or.cond66 = or i1 %tobool4.not, %tobool1.not
  br i1 %or.cond66, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %4 = ptrtoint ptr %wmm_ie to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wmm_ie, align 1
  %conv = zext i8 %5 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.11, i32 noundef %conv) #11
  %wmm_required = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 73
  %6 = ptrtoint ptr %wmm_required to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wmm_required, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end6.land.lhs.true19_crit_edge

if.end6.land.lhs.true19_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true19

lor.lhs.false:                                    ; preds = %if.end6
  %tobool9.not = icmp eq ptr %ht_cap, null
  br i1 %tobool9.not, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 84
  %10 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config_bands, align 2
  %12 = and i8 %11, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.land.lhs.true19_crit_edge

land.lhs.true.land.lhs.true19_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true19:                                  ; preds = %land.lhs.true.land.lhs.true19_crit_edge, %if.end6.land.lhs.true19_crit_edge
  %14 = ptrtoint ptr %wmm_ie to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wmm_ie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %15)
  %cmp = icmp eq i8 %15, -35
  br i1 %cmp, label %if.then24, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true19
  %16 = ptrtoint ptr %assoc_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %assoc_buf, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 -8960, ptr %17, align 1
  %len = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 1792, ptr %len, align 1
  %wmm_ie28 = getelementptr inbounds %struct.mwifiex_ie_types_wmm_param_set, ptr %17, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %wmm_ie28, ptr getelementptr inbounds ([9 x i8], ptr @wmm_info_ie, i32 0, i32 2), i32 7)
  %qos_info_bitmap = getelementptr inbounds %struct.ieee_types_wmm_parameter, ptr %wmm_ie, i32 0, i32 3
  %21 = ptrtoint ptr %qos_info_bitmap to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %qos_info_bitmap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool34.not = icmp sgt i8 %22, -1
  br i1 %tobool34.not, label %if.then24.if.end42_crit_edge, label %if.then35

if.then24.if.end42_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then35:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr41 = getelementptr %struct.mwifiex_ie_types_wmm_param_set, ptr %17, i32 2
  %wmm_qosinfo = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 75
  %23 = ptrtoint ptr %wmm_qosinfo to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %wmm_qosinfo, align 8
  %25 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %add.ptr41, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then35, %if.then24.if.end42_crit_edge
  %26 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %len, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %conv45 = zext i16 %28 to i32
  %add = add nuw nsw i32 %conv45, 4
  %29 = ptrtoint ptr %assoc_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %assoc_buf, align 4
  %add.ptr46 = getelementptr i8, ptr %30, i32 %add
  store ptr %add.ptr46, ptr %assoc_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %land.lhs.true19.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %add, %if.end42 ], [ 0, %land.lhs.true19.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mwifiex_wmm_compute_drv_pkt_delay(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %0, align 8
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %sub.i = sub i64 %call.i.i, %2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i = icmp slt i64 %sub.i, 0
  %3 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #11
  %4 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %3) #18, !srcloc !94
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %3, i64 %4, i32 0) #18, !srcloc !95
  %asmresult10.i.i.i = extractvalue { i64, i32 } %5, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %conv = trunc i64 %cond213.i.i to i32
  %drv_pkt_delay_max = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 6
  %6 = ptrtoint ptr %drv_pkt_delay_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %drv_pkt_delay_max, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %conv)
  %shr = lshr i32 %8, 1
  %conv3 = trunc i32 %shr to i8
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %conv4 = and i32 %shr, 255
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 8, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv4) #11
  ret i8 %conv3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_rotate_priolists(ptr noundef %priv, ptr noundef %ra, i32 noundef %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %bss_prio_tbl = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 35
  %bss_priority = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %bss_priority to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bss_priority, align 2
  %idxprom = zext i8 %3 to i32
  %bss_prio_lock = getelementptr %struct.mwifiex_bss_prio_tbl, ptr %bss_prio_tbl, i32 %idxprom, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %bss_prio_lock) #11
  %4 = ptrtoint ptr %bss_priority to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bss_priority, align 2
  %idxprom4 = zext i8 %5 to i32
  %arrayidx5 = getelementptr %struct.mwifiex_bss_prio_tbl, ptr %bss_prio_tbl, i32 %idxprom4
  %bss_prio_cur = getelementptr %struct.mwifiex_bss_prio_tbl, ptr %bss_prio_tbl, i32 %idxprom4, i32 2
  %6 = ptrtoint ptr %bss_prio_cur to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bss_prio_cur, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx5) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx5, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx5, ptr noundef %7, ptr noundef %15) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx5, ptr %prev1.i.i2.i, align 4
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %arrayidx5, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx5, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %7, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx5, ptr %7, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %20 = ptrtoint ptr %bss_priority to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bss_priority, align 2
  %idxprom10 = zext i8 %21 to i32
  %bss_prio_lock12 = getelementptr %struct.mwifiex_bss_prio_tbl, ptr %bss_prio_tbl, i32 %idxprom10, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %bss_prio_lock12) #11
  %ra_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock) #11
  %wmm.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77
  %arrayidx.i = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm.i, i32 0, i32 %tid
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %list_move.exit
  %rlist.0.in.i = phi ptr [ %arrayidx.i, %list_move.exit ], [ %rlist.0.i, %for.body.i.for.cond.i_crit_edge ]
  %22 = ptrtoint ptr %rlist.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %rlist.0.i = load ptr, ptr %rlist.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %rlist.0.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %cmp6.i = icmp eq ptr %rlist.0.i, %ra
  br i1 %cmp6.i, label %if.then, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then:                                          ; preds = %for.body.i
  %arrayidx15 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 1, i32 %tid
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx15, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %arrayidx15, align 4
  %call.i.i34 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx.i) #11
  br i1 %call.i.i34, label %if.end.i.i37, label %if.then.__list_del_entry.exit.i39_crit_edge

if.then.__list_del_entry.exit.i39_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i39

if.end.i.i37:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i35 = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i35, align 4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %prev1.i.i.i36 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i36, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %__list_del_entry.exit.i39

__list_del_entry.exit.i39:                        ; preds = %if.end.i.i37, %if.then.__list_del_entry.exit.i39_crit_edge
  %31 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ra, align 4
  %call.i.i.i38 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %ra, ptr noundef %32) #11
  br i1 %call.i.i.i38, label %if.end.i.i.i42, label %__list_del_entry.exit.i39.if.end_crit_edge

__list_del_entry.exit.i39.if.end_crit_edge:       ; preds = %__list_del_entry.exit.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i.i42:                                   ; preds = %__list_del_entry.exit.i39
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i2.i40 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i2.i40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx.i, ptr %prev1.i.i2.i40, align 4
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %arrayidx.i, align 4
  %prev3.i.i.i41 = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ra, ptr %prev3.i.i.i41, align 4
  %36 = ptrtoint ptr %ra to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %arrayidx.i, ptr %ra, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i42, %__list_del_entry.exit.i39.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_process_bypass_tx(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %tx_param = alloca %struct.mwifiex_tx_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_param) #11
  %0 = ptrtoint ptr %tx_param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tx_param, align 4, !annotation !96
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %1 = ptrtoint ptr %data_sent to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tx_lock_flag = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 86
  %3 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx_lock_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %5 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp50.not = icmp eq i8 %6, 0
  br i1 %cmp50.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %is_port_ready = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 27
  %bypass_tx_pending = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.051
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %9 = ptrtoint ptr %is_port_ready to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %is_port_ready, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %land.lhs.true

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end8
  %call = call zeroext i1 %10(ptr noundef nonnull %8) #11
  br i1 %call, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end8.if.end13_crit_edge
  %bypass_txq = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 160
  %11 = ptrtoint ptr %bypass_txq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bypass_txq, align 4
  %cmp.i.not = icmp eq ptr %12, %bypass_txq
  br i1 %cmp.i.not, label %if.end13.for.inc_crit_edge, label %if.end17

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end17:                                         ; preds = %if.end13
  %call19 = call ptr @skb_dequeue(ptr noundef %bypass_txq) #11
  %13 = ptrtoint ptr %tx_param to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_param, align 4
  %call21 = call i32 @mwifiex_process_tx(ptr noundef nonnull %8, ptr noundef %call19, ptr noundef nonnull %tx_param) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call21)
  %cmp22 = icmp eq i32 %call21, -16
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void @skb_queue_head(ptr noundef %bypass_txq, ptr noundef %call19) #11
  %flags = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 3, i32 12
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags, align 4
  %16 = or i8 %15, 1
  store i8 %16, ptr %flags, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bypass_tx_pending, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %bypass_tx_pending, i32 1, i32 3, i32 1) #11
  %17 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bypass_tx_pending, ptr %bypass_tx_pending, i32 1, ptr elementtype(i32) %bypass_tx_pending) #11, !srcloc !92
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then24, %if.end13.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  %18 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %priv_num, align 4
  %conv3 = zext i8 %19 to i32
  %cmp = icmp ult i32 %inc, %conv3
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_param) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_wmm_process_tx(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %tx_param.i.i = alloca %struct.mwifiex_tx_param, align 4
  %ra.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_num.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ra.i) #11
  %0 = call ptr @memset(ptr %ra.i, i32 255, i32 6)
  %1 = ptrtoint ptr %priv_num.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %priv_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp167.not.i.i100 = icmp eq i8 %2, 0
  br i1 %cmp167.not.i.i100, label %entry.mwifiex_dequeue_tx_packet.exit_crit_edge, label %for.body.lr.ph.i.i.lr.ph

entry.mwifiex_dequeue_tx_packet.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_dequeue_tx_packet.exit

for.body.lr.ph.i.i.lr.ph:                         ; preds = %entry
  %is_port_ready.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 27
  %tx_buf_size.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 39
  %fw_api_ver.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 138
  %hw_dot_11n_dev_cap.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 113
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %tx_lock_flag = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 86
  %tx_queued = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 72
  br label %for.body.lr.ph.i.i

do.body.loopexit:                                 ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ra.i) #11
  %3 = call ptr @memset(ptr %ra.i, i32 255, i32 6)
  %4 = ptrtoint ptr %priv_num.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv_num.i.i, align 4
  %cmp167.not.i.i = icmp eq i8 %5, 0
  br i1 %cmp167.not.i.i, label %do.body.loopexit.mwifiex_dequeue_tx_packet.exit_crit_edge, label %do.body.loopexit.for.body.lr.ph.i.i_crit_edge

do.body.loopexit.for.body.lr.ph.i.i_crit_edge:    ; preds = %do.body.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph.i.i

do.body.loopexit.mwifiex_dequeue_tx_packet.exit_crit_edge: ; preds = %do.body.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_dequeue_tx_packet.exit

for.body.lr.ph.i.i:                               ; preds = %do.body.loopexit.for.body.lr.ph.i.i_crit_edge, %for.body.lr.ph.i.i.lr.ph
  %6 = phi i8 [ %2, %for.body.lr.ph.i.i.lr.ph ], [ %5, %do.body.loopexit.for.body.lr.ph.i.i_crit_edge ]
  %conv.i.i = zext i8 %6 to i32
  br label %for.body.i.i

for.cond.loopexit.i.i:                            ; preds = %for.inc76.i.i.for.cond.loopexit.i.i_crit_edge, %for.body.i.i.for.cond.loopexit.i.i_crit_edge
  %cmp.i.i = icmp sgt i32 %j.0168.in.i.i, 1
  br i1 %cmp.i.i, label %for.cond.loopexit.i.i.for.body.i.i_crit_edge, label %for.cond.loopexit.i.i.mwifiex_dequeue_tx_packet.exit_crit_edge

for.cond.loopexit.i.i.mwifiex_dequeue_tx_packet.exit_crit_edge: ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_dequeue_tx_packet.exit

for.cond.loopexit.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.loopexit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %j.0168.in.i.i = phi i32 [ %conv.i.i, %for.body.lr.ph.i.i ], [ %j.0168.i.i, %for.cond.loopexit.i.i.for.body.i.i_crit_edge ]
  %j.0168.i.i = add nsw i32 %j.0168.in.i.i, -1
  %arrayidx.i.i = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 35, i32 %j.0168.i.i
  %bss_prio_cur.i.i = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 35, i32 %j.0168.i.i, i32 2
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge164.i.i = load ptr, ptr %arrayidx.i.i, align 4
  %8 = ptrtoint ptr %bss_prio_cur.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %storemerge164.i.i, ptr %bss_prio_cur.i.i, align 4
  %cmp11.not165.i.i = icmp eq ptr %storemerge164.i.i, %arrayidx.i.i
  br i1 %cmp11.not165.i.i, label %for.body.i.i.for.cond.loopexit.i.i_crit_edge, label %for.body.i.i.try_again.i.i_crit_edge

for.body.i.i.try_again.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %try_again.i.i

for.body.i.i.for.cond.loopexit.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i.i

try_again.i.i:                                    ; preds = %try_again.i.i.backedge, %for.body.i.i.try_again.i.i_crit_edge
  %9 = ptrtoint ptr %bss_prio_cur.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bss_prio_cur.i.i, align 4
  %priv17.i.i = getelementptr inbounds %struct.mwifiex_bss_prio_node, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %priv17.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv17.i.i, align 4
  %bss_mode.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %bss_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bss_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp18.not.i.i = icmp eq i32 %14, 1
  br i1 %cmp18.not.i.i, label %try_again.i.i.lor.lhs.false.i.i_crit_edge, label %land.lhs.true.i.i

try_again.i.i.lor.lhs.false.i.i_crit_edge:        ; preds = %try_again.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

land.lhs.true.i.i:                                ; preds = %try_again.i.i
  %port_open.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 9
  %15 = ptrtoint ptr %port_open.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port_open.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.for.inc76.i.i_crit_edge, label %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

land.lhs.true.i.i.for.inc76.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc76.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge, %try_again.i.i.lor.lhs.false.i.i_crit_edge
  %wmm.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 77
  %tx_pkts_queued.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 77, i32 9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %tx_pkts_queued.i.i, i32 noundef 4) #11
  %17 = ptrtoint ptr %tx_pkts_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %tx_pkts_queued.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp20.i.i = icmp eq i32 %18, 0
  br i1 %cmp20.i.i, label %lor.lhs.false.i.i.for.inc76.i.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.for.inc76.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc76.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %19 = ptrtoint ptr %is_port_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %is_port_ready.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %20, null
  br i1 %tobool22.not.i.i, label %if.end.i.i.if.end28.i.i_crit_edge, label %land.lhs.true23.i.i

if.end.i.i.if.end28.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

land.lhs.true23.i.i:                              ; preds = %if.end.i.i
  %call26.i.i = call zeroext i1 %20(ptr noundef %12) #11
  br i1 %call26.i.i, label %land.lhs.true23.i.i.if.end28.i.i_crit_edge, label %land.lhs.true23.i.i.for.inc76.i.i_crit_edge

land.lhs.true23.i.i.for.inc76.i.i_crit_edge:      ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc76.i.i

land.lhs.true23.i.i.if.end28.i.i_crit_edge:       ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %land.lhs.true23.i.i.if.end28.i.i_crit_edge, %if.end.i.i.if.end28.i.i_crit_edge
  %highest_queued_prio.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 77, i32 10
  %call.i.i147.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %highest_queued_prio.i.i, i32 noundef 4) #11
  %21 = ptrtoint ptr %highest_queued_prio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %highest_queued_prio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp32161.i.i = icmp sgt i32 %22, -1
  br i1 %cmp32161.i.i, label %for.body34.lr.ph.i.i, label %if.end28.i.i.for.end64.i.i_crit_edge

if.end28.i.i.for.end64.i.i_crit_edge:             ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end64.i.i

for.body34.lr.ph.i.i:                             ; preds = %if.end28.i.i
  %ra_list_spinlock.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 77, i32 3
  br label %for.body34.i.i

for.body34.i.i:                                   ; preds = %for.end.i.i.for.body34.i.i_crit_edge, %for.body34.lr.ph.i.i
  %i.0162.i.i = phi i32 [ %22, %for.body34.lr.ph.i.i ], [ %dec.i.i, %for.end.i.i.for.body34.i.i_crit_edge ]
  call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock.i.i) #11
  %arrayidx37.i.i = getelementptr [8 x i8], ptr @tos_to_tid, i32 0, i32 %i.0162.i.i
  %23 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx37.i.i, align 1
  %idxprom.i.i = zext i8 %24 to i32
  %arrayidx38.i.i = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm.i.i, i32 0, i32 %idxprom.i.i
  %25 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %ptr.0158.i.i = load ptr, ptr %arrayidx38.i.i, align 4
  %cmp46.not159.i.i = icmp eq ptr %ptr.0158.i.i, %arrayidx38.i.i
  br i1 %cmp46.not159.i.i, label %for.body34.i.i.for.end.i.i_crit_edge, label %for.body34.i.i.for.body49.i.i_crit_edge

for.body34.i.i.for.body49.i.i_crit_edge:          ; preds = %for.body34.i.i
  br label %for.body49.i.i

for.body34.i.i.for.end.i.i_crit_edge:             ; preds = %for.body34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body49.i.i:                                   ; preds = %for.inc.i.i.for.body49.i.i_crit_edge, %for.body34.i.i.for.body49.i.i_crit_edge
  %ptr.0160.i.i = phi ptr [ %ptr.0.i.i, %for.inc.i.i.for.body49.i.i_crit_edge ], [ %ptr.0158.i.i, %for.body34.i.i.for.body49.i.i_crit_edge ]
  %tx_paused.i.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 11
  %26 = ptrtoint ptr %tx_paused.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tx_paused.i.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool50.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool50.not.i.i, label %land.lhs.true51.i.i, label %for.body49.i.i.for.inc.i.i_crit_edge

for.body49.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true51.i.i:                              ; preds = %for.body49.i.i
  %skb_head.i.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %skb_head.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb_head.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %29, %skb_head.i.i
  br i1 %cmp.i.not.i.i, label %land.lhs.true51.i.i.for.inc.i.i_crit_edge, label %found.i.i

land.lhs.true51.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true51.i.i.for.inc.i.i_crit_edge, %for.body49.i.i.for.inc.i.i_crit_edge
  %30 = ptrtoint ptr %ptr.0160.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %ptr.0.i.i = load ptr, ptr %ptr.0160.i.i, align 4
  %cmp46.not.i.i = icmp eq ptr %ptr.0.i.i, %arrayidx38.i.i
  br i1 %cmp46.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body49.i.i_crit_edge

for.inc.i.i.for.body49.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body49.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body34.i.i.for.end.i.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock.i.i) #11
  %dec.i.i = add nsw i32 %i.0162.i.i, -1
  %cmp32.i.i = icmp sgt i32 %i.0162.i.i, 0
  br i1 %cmp32.i.i, label %for.end.i.i.for.body34.i.i_crit_edge, label %for.end.i.i.for.end64.i.i_crit_edge

for.end.i.i.for.end64.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end64.i.i

for.end.i.i.for.body34.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body34.i.i

for.end64.i.i:                                    ; preds = %for.end.i.i.for.end64.i.i_crit_edge, %if.end28.i.i.for.end64.i.i_crit_edge
  %call.i.i148.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %tx_pkts_queued.i.i, i32 noundef 4) #11
  %31 = ptrtoint ptr %tx_pkts_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %tx_pkts_queued.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp68.not.i.i = icmp eq i32 %32, 0
  %call.i.i150.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %highest_queued_prio.i.i, i32 noundef 4) #11
  br i1 %cmp68.not.i.i, label %if.else.i.i, label %if.then70.i.i

if.then70.i.i:                                    ; preds = %for.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %highest_queued_prio.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 7, ptr %highest_queued_prio.i.i, align 4
  br label %try_again.i.i.backedge

try_again.i.i.backedge:                           ; preds = %for.inc76.i.i.try_again.i.i.backedge_crit_edge, %if.then70.i.i
  br label %try_again.i.i

if.else.i.i:                                      ; preds = %for.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %highest_queued_prio.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 -1, ptr %highest_queued_prio.i.i, align 4
  br label %for.inc76.i.i

for.inc76.i.i:                                    ; preds = %if.else.i.i, %land.lhs.true23.i.i.for.inc76.i.i_crit_edge, %lor.lhs.false.i.i.for.inc76.i.i_crit_edge, %land.lhs.true.i.i.for.inc76.i.i_crit_edge
  %35 = ptrtoint ptr %bss_prio_cur.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bss_prio_cur.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %storemerge.i.i = load ptr, ptr %36, align 4
  store ptr %storemerge.i.i, ptr %bss_prio_cur.i.i, align 4
  %cmp11.not.i.i = icmp eq ptr %storemerge.i.i, %arrayidx.i.i
  br i1 %cmp11.not.i.i, label %for.inc76.i.i.for.cond.loopexit.i.i_crit_edge, label %for.inc76.i.i.try_again.i.i.backedge_crit_edge

for.inc76.i.i.try_again.i.i.backedge_crit_edge:   ; preds = %for.inc76.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %try_again.i.i.backedge

for.inc76.i.i.for.cond.loopexit.i.i_crit_edge:    ; preds = %for.inc76.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i.i

found.i.i:                                        ; preds = %land.lhs.true51.i.i
  %call.i.i151.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %highest_queued_prio.i.i, i32 noundef 4) #11
  %38 = ptrtoint ptr %highest_queued_prio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %highest_queued_prio.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %i.0162.i.i)
  %cmp93.i.i = icmp sgt i32 %39, %i.0162.i.i
  br i1 %cmp93.i.i, label %if.then95.i.i, label %found.i.i.mwifiex_wmm_get_highest_priolist_ptr.exit.i_crit_edge

found.i.i.mwifiex_wmm_get_highest_priolist_ptr.exit.i_crit_edge: ; preds = %found.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_wmm_get_highest_priolist_ptr.exit.i

if.then95.i.i:                                    ; preds = %found.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i152.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %highest_queued_prio.i.i, i32 noundef 4) #11
  %40 = ptrtoint ptr %highest_queued_prio.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 %i.0162.i.i, ptr %highest_queued_prio.i.i, align 4
  br label %mwifiex_wmm_get_highest_priolist_ptr.exit.i

mwifiex_wmm_get_highest_priolist_ptr.exit.i:      ; preds = %if.then95.i.i, %found.i.i.mwifiex_wmm_get_highest_priolist_ptr.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock.i.i) #11
  %41 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx37.i.i, align 1
  %conv100.i.i = zext i8 %42 to i32
  %tobool.not.i = icmp eq ptr %ptr.0160.i.i, null
  br i1 %tobool.not.i, label %mwifiex_wmm_get_highest_priolist_ptr.exit.i.mwifiex_dequeue_tx_packet.exit_crit_edge, label %if.end.i

mwifiex_wmm_get_highest_priolist_ptr.exit.i.mwifiex_dequeue_tx_packet.exit_crit_edge: ; preds = %mwifiex_wmm_get_highest_priolist_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_dequeue_tx_packet.exit

if.end.i:                                         ; preds = %mwifiex_wmm_get_highest_priolist_ptr.exit.i
  %43 = ptrtoint ptr %skb_head.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %skb_head.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %44, %skb_head.i.i
  br i1 %cmp.i.i.i, label %if.end.i.mwifiex_get_tid.exit.i_crit_edge, label %if.end.i114.i

if.end.i.mwifiex_get_tid.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_get_tid.exit.i

if.end.i114.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %priority.i.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 15, i32 0, i32 6
  %45 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %priority.i.i, align 4
  br label %mwifiex_get_tid.exit.i

mwifiex_get_tid.exit.i:                           ; preds = %if.end.i114.i, %if.end.i.mwifiex_get_tid.exit.i_crit_edge
  %retval.0.i115.i = phi i32 [ %46, %if.end.i114.i ], [ 0, %if.end.i.mwifiex_get_tid.exit.i_crit_edge ]
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i115.i) #11
  call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock.i.i) #11
  %arrayidx.i117.i = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm.i.i, i32 0, i32 %conv100.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i118.i.for.cond.i.i_crit_edge, %mwifiex_get_tid.exit.i
  %rlist.0.in.i.i = phi ptr [ %arrayidx.i117.i, %mwifiex_get_tid.exit.i ], [ %rlist.0.i.i, %for.body.i118.i.for.cond.i.i_crit_edge ]
  %47 = ptrtoint ptr %rlist.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %rlist.0.i.i = load ptr, ptr %rlist.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %rlist.0.i.i, %arrayidx.i117.i
  br i1 %cmp.not.i.i, label %if.then4.i, label %for.body.i118.i

for.body.i118.i:                                  ; preds = %for.cond.i.i
  %cmp6.i.i = icmp eq ptr %rlist.0.i.i, %ptr.0160.i.i
  br i1 %cmp6.i.i, label %if.end7.i, label %for.body.i118.i.for.cond.i.i_crit_edge

for.body.i118.i.for.cond.i.i_crit_edge:           ; preds = %for.body.i118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

if.then4.i:                                       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock.i.i) #11
  br label %mwifiex_dequeue_tx_packet.exit

if.end7.i:                                        ; preds = %for.body.i118.i
  %48 = ptrtoint ptr %skb_head.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skb_head.i.i, align 4
  %cmp.i.i121.i = icmp eq ptr %49, %skb_head.i.i
  br i1 %cmp.i.i121.i, label %if.end7.i.if.end11.i_crit_edge, label %mwifiex_is_ptr_processed.exit.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

mwifiex_is_ptr_processed.exit.i:                  ; preds = %if.end7.i
  %flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 3, i32 12
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags.i.i, align 4
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool9.not.i = icmp eq i8 %52, 0
  br i1 %tobool9.not.i, label %mwifiex_is_ptr_processed.exit.i.if.end11.i_crit_edge, label %if.end.i127.i

mwifiex_is_ptr_processed.exit.i.if.end11.i_crit_edge: ; preds = %mwifiex_is_ptr_processed.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.end.i127.i:                                    ; preds = %mwifiex_is_ptr_processed.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_param.i.i) #11
  %53 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %12, align 8
  %call3.i.i = call ptr @skb_dequeue(ptr noundef %skb_head.i.i) #11
  %data_sent.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %54, i32 0, i32 53
  %55 = ptrtoint ptr %data_sent.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %data_sent.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool4.not.i.i = icmp eq i8 %56, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i128.i, label %if.end.i127.i.if.then7.i.i_crit_edge

if.end.i127.i.if.then7.i.i_crit_edge:             ; preds = %if.end.i127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i.i

lor.lhs.false.i128.i:                             ; preds = %if.end.i127.i
  %tx_lock_flag.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %54, i32 0, i32 86
  %57 = ptrtoint ptr %tx_lock_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tx_lock_flag.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool6.not.i.i = icmp eq i8 %58, 0
  br i1 %tobool6.not.i.i, label %if.end11.i.i, label %lor.lhs.false.i128.i.if.then7.i.i_crit_edge

lor.lhs.false.i128.i.if.then7.i.i_crit_edge:      ; preds = %lor.lhs.false.i128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %lor.lhs.false.i128.i.if.then7.i.i_crit_edge, %if.end.i127.i.if.then7.i.i_crit_edge
  %total_pkt_count.i.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 9
  %59 = ptrtoint ptr %total_pkt_count.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %total_pkt_count.i.i, align 2
  %dec.i129.i = add i16 %60, -1
  store i16 %dec.i129.i, ptr %total_pkt_count.i.i, align 2
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock.i.i) #11
  %tx_data_q.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %54, i32 0, i32 71
  call void @skb_queue_tail(ptr noundef %tx_data_q.i.i, ptr noundef %call3.i.i) #11
  %call.i.i.i131.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_pkts_queued.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %tx_pkts_queued.i.i, i32 1, i32 3, i32 1) #11
  %61 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_pkts_queued.i.i, ptr %tx_pkts_queued.i.i, i32 1, ptr elementtype(i32) %tx_pkts_queued.i.i) #11, !srcloc !92
  %tx_queued.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %54, i32 0, i32 72
  %call.i.i115.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_queued.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %tx_queued.i.i, i32 1, i32 3, i32 1) #11
  %62 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_queued.i.i, ptr %tx_queued.i.i, i32 1, ptr elementtype(i32) %tx_queued.i.i) #11, !srcloc !93
  br label %mwifiex_send_processed_packet.exit.i

if.end11.i.i:                                     ; preds = %lor.lhs.false.i128.i
  %63 = ptrtoint ptr %skb_head.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %skb_head.i.i, align 4
  %cmp.i117.i.i = icmp eq ptr %64, %skb_head.i.i
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock.i.i) #11
  %tobool22.not.i132.i = icmp eq ptr %64, null
  %or.cond.i.i = or i1 %cmp.i117.i.i, %tobool22.not.i132.i
  br i1 %or.cond.i.i, label %if.end11.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end11.i.i.cond.end.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i.i, align 4
  %add.i.i = add i32 %66, 20
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end11.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %add.i.i, %cond.true.i.i ], [ 0, %if.end11.i.i.cond.end.i.i_crit_edge ]
  %67 = ptrtoint ptr %tx_param.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cond.i.i, ptr %tx_param.i.i, align 4
  %68 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %cmp.i133.i = icmp eq i8 %69, 2
  %host_to_card.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %54, i32 0, i32 18, i32 10
  %70 = ptrtoint ptr %host_to_card.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %host_to_card.i.i, align 4
  br i1 %cmp.i133.i, label %if.then25.i.i, label %cond.end.i.i.if.end31.i.i_crit_edge

cond.end.i.i.if.end31.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i.i

if.then25.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %usb_port.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 10
  %72 = ptrtoint ptr %usb_port.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %usb_port.i.i, align 2
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then25.i.i, %cond.end.i.i.if.end31.i.i_crit_edge
  %.sink.i.i = phi i8 [ %73, %if.then25.i.i ], [ 0, %cond.end.i.i.if.end31.i.i_crit_edge ]
  %call30.i.i = call i32 %71(ptr noundef %54, i8 noundef zeroext %.sink.i.i, ptr noundef %call3.i.i, ptr noundef nonnull %tx_param.i.i) #11
  %74 = zext i32 %call30.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call30.i.i, label %if.end31.i.i.if.then52.i.i_crit_edge [
    i32 -16, label %sw.bb.i.i
    i32 -1, label %sw.bb46.i.i
    i32 0, label %if.end31.i.i.if.then52.sink.split.i.i_crit_edge
  ]

if.end31.i.i.if.then52.sink.split.i.i_crit_edge:  ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52.sink.split.i.i

if.end31.i.i.if.then52.i.i_crit_edge:             ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52.i.i

sw.bb.i.i:                                        ; preds = %if.end31.i.i
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %54, i32 noundef 4, ptr noundef nonnull @.str.28) #11
  call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock.i.i) #11
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %sw.bb.i.i
  %rlist.0.in.i.i.i = phi ptr [ %arrayidx.i117.i, %sw.bb.i.i ], [ %rlist.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %75 = ptrtoint ptr %rlist.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %rlist.0.i.i.i = load ptr, ptr %rlist.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %rlist.0.i.i.i, %arrayidx.i117.i
  br i1 %cmp.not.i.i.i, label %if.then36.i.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %cmp6.i.i.i = icmp eq ptr %rlist.0.i.i.i, %ptr.0160.i.i
  br i1 %cmp6.i.i.i, label %sw.epilog.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.i

if.then36.i.i:                                    ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock.i.i) #11
  %call39.i.i = call i32 @mwifiex_write_data_complete(ptr noundef %54, ptr noundef %call3.i.i, i32 noundef 0, i32 noundef -1) #11
  br label %mwifiex_send_processed_packet.exit.i

sw.bb46.i.i:                                      ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %54, i32 noundef 4, ptr noundef nonnull @.str.29, i32 noundef -1) #11
  %num_tx_host_to_card_failure.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %54, i32 0, i32 118, i32 2
  %76 = ptrtoint ptr %num_tx_host_to_card_failure.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_tx_host_to_card_failure.i.i, align 4
  %inc.i.i = add i32 %77, 1
  store i32 %inc.i.i, ptr %num_tx_host_to_card_failure.i.i, align 4
  br label %if.then52.sink.split.i.i

sw.epilog.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @skb_queue_tail(ptr noundef %skb_head.i.i, ptr noundef %call3.i.i) #11
  %flags.i134.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i.i, i32 0, i32 3, i32 12
  %78 = ptrtoint ptr %flags.i134.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %flags.i134.i, align 4
  %80 = or i8 %79, 1
  store i8 %80, ptr %flags.i134.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock.i.i) #11
  br label %mwifiex_send_processed_packet.exit.i

if.then52.sink.split.i.i:                         ; preds = %sw.bb46.i.i, %if.end31.i.i.if.then52.sink.split.i.i_crit_edge
  %call47.i.i = call i32 @mwifiex_write_data_complete(ptr noundef %54, ptr noundef %call3.i.i, i32 noundef 0, i32 noundef %call30.i.i) #11
  br label %if.then52.i.i

if.then52.i.i:                                    ; preds = %if.then52.sink.split.i.i, %if.end31.i.i.if.then52.i.i_crit_edge
  call void @mwifiex_rotate_priolists(ptr noundef %12, ptr noundef nonnull %ptr.0160.i.i, i32 noundef %conv100.i.i) #11
  %call.i.i116.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_pkts_queued.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %tx_pkts_queued.i.i, i32 1, i32 3, i32 1) #11
  %81 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_pkts_queued.i.i, ptr %tx_pkts_queued.i.i, i32 1, ptr elementtype(i32) %tx_pkts_queued.i.i) #11, !srcloc !92
  call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock.i.i) #11
  %total_pkt_count57.i.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 9
  %82 = ptrtoint ptr %total_pkt_count57.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %total_pkt_count57.i.i, align 2
  %dec58.i.i = add i16 %83, -1
  store i16 %dec58.i.i, ptr %total_pkt_count57.i.i, align 2
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock.i.i) #11
  br label %mwifiex_send_processed_packet.exit.i

mwifiex_send_processed_packet.exit.i:             ; preds = %if.then52.i.i, %sw.epilog.i.i, %if.then36.i.i, %if.then7.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_param.i.i) #11
  br label %if.end

if.end11.i:                                       ; preds = %mwifiex_is_ptr_processed.exit.i.if.end11.i_crit_edge, %if.end7.i.if.end11.i_crit_edge
  %is_11n_enabled.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %is_11n_enabled.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %is_11n_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool12.not.i = icmp eq i32 %85, 0
  br i1 %tobool12.not.i, label %if.end11.i.if.else.i_crit_edge, label %lor.lhs.false.i

if.end11.i.if.else.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

lor.lhs.false.i:                                  ; preds = %if.end11.i
  %ba_status.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 7
  %86 = ptrtoint ptr %ba_status.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ba_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool13.not.i = icmp eq i32 %87, 0
  br i1 %tobool13.not.i, label %lor.lhs.false14.i, label %land.lhs.true21.i

lor.lhs.false14.i:                                ; preds = %lor.lhs.false.i
  %wps.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 113
  %88 = ptrtoint ptr %wps.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %wps.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool15.not.i = icmp eq i8 %89, 0
  br i1 %tobool15.not.i, label %if.else35.i, label %lor.lhs.false14.i.if.else.i_crit_edge

lor.lhs.false14.i.if.else.i_crit_edge:            ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true21.i:                                ; preds = %lor.lhs.false.i
  %amsdu_in_ampdu.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 8
  %90 = ptrtoint ptr %amsdu_in_ampdu.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %amsdu_in_ampdu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool23.not.i = icmp eq i8 %91, 0
  br i1 %tobool23.not.i, label %land.lhs.true21.i.if.else.i_crit_edge, label %land.lhs.true24.i

land.lhs.true21.i.if.else.i_crit_edge:            ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true24.i:                                ; preds = %land.lhs.true21.i
  %amsdu.i.i = getelementptr %struct.mwifiex_private, ptr %12, i32 0, i32 85, i32 %retval.0.i115.i, i32 2
  %92 = ptrtoint ptr %amsdu.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %amsdu.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %93)
  %cmp.not.i135.i = icmp eq i8 %93, -1
  br i1 %cmp.not.i135.i, label %land.lhs.true24.i.if.else.i_crit_edge, label %land.rhs.i.i

land.lhs.true24.i.if.else.i_crit_edge:            ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.rhs.i.i:                                     ; preds = %land.lhs.true24.i
  %is_data_rate_auto.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 33
  %94 = ptrtoint ptr %is_data_rate_auto.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %is_data_rate_auto.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i136.i = icmp eq i8 %95, 0
  br i1 %tobool.not.i136.i, label %mwifiex_is_amsdu_allowed.exit.i, label %land.rhs.i.i.land.lhs.true28.i_crit_edge

land.rhs.i.i.land.lhs.true28.i_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true28.i

mwifiex_is_amsdu_allowed.exit.i:                  ; preds = %land.rhs.i.i
  %arrayidx3.i.i = getelementptr %struct.mwifiex_private, ptr %12, i32 0, i32 30, i32 2
  %96 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx3.i.i, align 2
  %98 = and i16 %97, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool5.not.i.not.i = icmp eq i16 %98, 0
  br i1 %tobool5.not.i.not.i, label %mwifiex_is_amsdu_allowed.exit.i.land.lhs.true28.i_crit_edge, label %mwifiex_is_amsdu_allowed.exit.i.if.else.i_crit_edge

mwifiex_is_amsdu_allowed.exit.i.if.else.i_crit_edge: ; preds = %mwifiex_is_amsdu_allowed.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

mwifiex_is_amsdu_allowed.exit.i.land.lhs.true28.i_crit_edge: ; preds = %mwifiex_is_amsdu_allowed.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true28.i

land.lhs.true28.i:                                ; preds = %mwifiex_is_amsdu_allowed.exit.i.land.lhs.true28.i_crit_edge, %land.rhs.i.i.land.lhs.true28.i_crit_edge
  %99 = ptrtoint ptr %tx_buf_size.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %tx_buf_size.i, align 2
  %conv29.i = zext i16 %100 to i32
  %bss_role.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 2
  %101 = ptrtoint ptr %bss_role.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %bss_role.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %102)
  %cmp.i137.i = icmp eq i8 %102, 1
  br i1 %cmp.i137.i, label %land.lhs.true.i139.i, label %land.lhs.true28.i.for.cond.i145.i_crit_edge

land.lhs.true28.i.for.cond.i145.i_crit_edge:      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i145.i

land.lhs.true.i139.i:                             ; preds = %land.lhs.true28.i
  %ap_11n_enabled.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 125
  %103 = ptrtoint ptr %ap_11n_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %ap_11n_enabled.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i138.i = icmp eq i8 %104, 0
  br i1 %tobool.not.i138.i, label %land.lhs.true.i139.i.for.cond.i145.i_crit_edge, label %if.then.i141.i

land.lhs.true.i139.i.for.cond.i145.i_crit_edge:   ; preds = %land.lhs.true.i139.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i145.i

if.then.i141.i:                                   ; preds = %land.lhs.true.i139.i
  call void @__sanitizer_cov_trace_pc() #13
  %max_amsdu.i.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 4
  %105 = ptrtoint ptr %max_amsdu.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %max_amsdu.i.i, align 4
  %conv5.i.i = zext i16 %106 to i32
  %107 = call i32 @llvm.smin.i32(i32 %conv5.i.i, i32 %conv29.i) #11
  br label %for.cond.i145.i

for.cond.i145.i:                                  ; preds = %if.then.i141.i, %land.lhs.true.i139.i.for.cond.i145.i_crit_edge, %land.lhs.true28.i.for.cond.i145.i_crit_edge
  %max_amsdu_size.0.i.i = phi i32 [ %107, %if.then.i141.i ], [ %conv29.i, %land.lhs.true.i139.i.for.cond.i145.i_crit_edge ], [ %conv29.i, %land.lhs.true28.i.for.cond.i145.i_crit_edge ]
  %108 = ptrtoint ptr %skb_head.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %skb.0.i.i = load ptr, ptr %skb_head.i.i, align 4
  %cmp11.not.i144.i = icmp eq ptr %skb.0.i.i, %skb_head.i.i
  br i1 %cmp11.not.i144.i, label %for.cond.i145.i.if.else.i_crit_edge, label %for.body.i148.i

for.cond.i145.i.if.else.i_crit_edge:              ; preds = %for.cond.i145.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

for.body.i148.i:                                  ; preds = %for.cond.i145.i
  %len.i146.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 6
  %109 = ptrtoint ptr %len.i146.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len.i146.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %max_amsdu_size.0.i.i)
  %cmp13.not.i.i = icmp sge i32 %110, %max_amsdu_size.0.i.i
  br i1 %cmp13.not.i.i, label %for.body.i148.i.mwifiex_is_11n_aggragation_possible.exit.i_crit_edge, label %for.cond.i145.i.1

for.body.i148.i.mwifiex_is_11n_aggragation_possible.exit.i_crit_edge: ; preds = %for.body.i148.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_is_11n_aggragation_possible.exit.i

for.cond.i145.i.1:                                ; preds = %for.body.i148.i
  %111 = ptrtoint ptr %skb.0.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %skb.0.i.i.1 = load ptr, ptr %skb.0.i.i, align 4
  %cmp11.not.i144.i.1 = icmp eq ptr %skb.0.i.i.1, %skb_head.i.i
  br i1 %cmp11.not.i144.i.1, label %for.cond.i145.i.1.if.else.i_crit_edge, label %for.body.i148.i.1

for.cond.i145.i.1.if.else.i_crit_edge:            ; preds = %for.cond.i145.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

for.body.i148.i.1:                                ; preds = %for.cond.i145.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %len.i146.i.1 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i.1, i32 0, i32 6
  %112 = ptrtoint ptr %len.i146.i.1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len.i146.i.1, align 4
  %add.i147.i.1 = add i32 %113, %110
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i147.i.1, i32 %max_amsdu_size.0.i.i)
  %cmp13.not.i.i.1 = icmp sge i32 %add.i147.i.1, %max_amsdu_size.0.i.i
  br label %mwifiex_is_11n_aggragation_possible.exit.i

mwifiex_is_11n_aggragation_possible.exit.i:       ; preds = %for.body.i148.i.1, %for.body.i148.i.mwifiex_is_11n_aggragation_possible.exit.i_crit_edge
  %cmp13.not.i.i.lcssa = phi i1 [ %cmp13.not.i.i, %for.body.i148.i.mwifiex_is_11n_aggragation_possible.exit.i_crit_edge ], [ %cmp13.not.i.i.1, %for.body.i148.i.1 ]
  br i1 %cmp13.not.i.i.lcssa, label %mwifiex_is_11n_aggragation_possible.exit.i.if.else.i_crit_edge, label %if.then32.i

mwifiex_is_11n_aggragation_possible.exit.i.if.else.i_crit_edge: ; preds = %mwifiex_is_11n_aggragation_possible.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then32.i:                                      ; preds = %mwifiex_is_11n_aggragation_possible.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call33.i = call i32 @mwifiex_11n_aggregate_pkt(ptr noundef %12, ptr noundef nonnull %ptr.0160.i.i, i32 noundef %conv100.i.i) #11
  br label %if.end

if.else.i:                                        ; preds = %mwifiex_is_11n_aggragation_possible.exit.i.if.else.i_crit_edge, %for.cond.i145.i.1.if.else.i_crit_edge, %for.cond.i145.i.if.else.i_crit_edge, %mwifiex_is_amsdu_allowed.exit.i.if.else.i_crit_edge, %land.lhs.true24.i.if.else.i_crit_edge, %land.lhs.true21.i.if.else.i_crit_edge, %lor.lhs.false14.i.if.else.i_crit_edge, %if.end11.i.if.else.i_crit_edge
  call fastcc void @mwifiex_send_single_packet(ptr noundef %12, ptr noundef nonnull %ptr.0160.i.i, i32 noundef %conv100.i.i) #11
  br label %if.end

if.else35.i:                                      ; preds = %lor.lhs.false14.i
  %ra.i55 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 2
  %114 = ptrtoint ptr %ra.i55 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %ra.i55, align 2
  %add.ptr1.i.i = getelementptr %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 2, i32 2
  %116 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %117, %115
  %add.ptr3.i.i = getelementptr %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 2, i32 4
  %118 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %119
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i.i56 = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i.i56, label %if.else35.i.if.end62.i_crit_edge, label %if.end.i59

if.else35.i.if.end62.i_crit_edge:                 ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

if.end.i59:                                       ; preds = %if.else35.i
  %bss_role.i57 = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 2
  %120 = ptrtoint ptr %bss_role.i57 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %bss_role.i57, align 1
  %122 = and i8 %121, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp.not.i58 = icmp eq i8 %122, 0
  br i1 %cmp.not.i58, label %if.else.i65, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i59
  %call.i.i60 = call ptr @mwifiex_get_sta_entry(ptr noundef %12, ptr noundef %ra.i55) #11
  %tobool.not.i.i61 = icmp eq ptr %call.i.i60, null
  br i1 %tobool.not.i.i61, label %if.then2.i.if.end62.i_crit_edge, label %if.end.i.i63, !prof !97

if.then2.i.if.end62.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

if.end.i.i63:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i62 = getelementptr %struct.mwifiex_sta_node, ptr %call.i.i60, i32 0, i32 5, i32 %retval.0.i115.i
  br label %mwifiex_is_ampdu_allowed.exit

if.else.i65:                                      ; preds = %if.end.i59
  %tdls_link.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 10
  %123 = ptrtoint ptr %tdls_link.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %tdls_link.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i64 = icmp eq i8 %124, 0
  br i1 %tobool.not.i64, label %if.end6.i, label %if.then4.i66

if.then4.i66:                                     ; preds = %if.else.i65
  %call.i20.i = call ptr @mwifiex_get_sta_entry(ptr noundef %12, ptr noundef %ra.i55) #11
  %tobool.not.i21.i = icmp eq ptr %call.i20.i, null
  br i1 %tobool.not.i21.i, label %if.then4.i66.if.end62.i_crit_edge, label %if.end.i25.i, !prof !97

if.then4.i66.if.end62.i_crit_edge:                ; preds = %if.then4.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

if.end.i25.i:                                     ; preds = %if.then4.i66
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i22.i = getelementptr %struct.mwifiex_sta_node, ptr %call.i20.i, i32 0, i32 5, i32 %retval.0.i115.i
  br label %mwifiex_is_ampdu_allowed.exit

if.end6.i:                                        ; preds = %if.else.i65
  call void @__sanitizer_cov_trace_pc() #13
  %ampdu_ap.i = getelementptr %struct.mwifiex_private, ptr %12, i32 0, i32 85, i32 %retval.0.i115.i, i32 1
  br label %mwifiex_is_ampdu_allowed.exit

mwifiex_is_ampdu_allowed.exit:                    ; preds = %if.end6.i, %if.end.i25.i, %if.end.i.i63
  %arrayidx.i22.sink.i = phi ptr [ %arrayidx.i22.i, %if.end.i25.i ], [ %arrayidx.i.i62, %if.end.i.i63 ], [ %ampdu_ap.i, %if.end6.i ]
  %125 = ptrtoint ptr %arrayidx.i22.sink.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.i22.sink.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %126)
  %cmp.not.i23.i.not = icmp eq i8 %126, -1
  br i1 %cmp.not.i23.i.not, label %mwifiex_is_ampdu_allowed.exit.if.end62.i_crit_edge, label %land.lhs.true39.i

mwifiex_is_ampdu_allowed.exit.if.end62.i_crit_edge: ; preds = %mwifiex_is_ampdu_allowed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

land.lhs.true39.i:                                ; preds = %mwifiex_is_ampdu_allowed.exit
  %ba_pkt_count.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 5
  %127 = ptrtoint ptr %ba_pkt_count.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %ba_pkt_count.i, align 2
  %ba_packet_thr.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 6
  %129 = ptrtoint ptr %ba_packet_thr.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %ba_packet_thr.i, align 4
  %131 = zext i8 %130 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %128, i16 %131)
  %cmp.i = icmp ugt i16 %128, %131
  br i1 %cmp.i, label %if.then43.i, label %land.lhs.true39.i.if.end62.i_crit_edge

land.lhs.true39.i.if.end62.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

if.then43.i:                                      ; preds = %land.lhs.true39.i
  %132 = ptrtoint ptr %priv_num.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %priv_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp23.not.i = icmp eq i8 %133, 0
  br i1 %cmp23.not.i, label %if.then43.i.for.end.i_crit_edge, label %for.body.preheader.i42

if.then43.i.for.end.i_crit_edge:                  ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.preheader.i42:                           ; preds = %if.then43.i
  %wide.trip.count.i = zext i8 %133 to i32
  br label %for.body.i45

for.body.i45:                                     ; preds = %for.inc.i52.for.body.i45_crit_edge, %for.body.preheader.i42
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i42 ], [ %indvars.iv.next.i, %for.inc.i52.for.body.i45_crit_edge ]
  %ba_stream_num.025.i = phi i32 [ 0, %for.body.preheader.i42 ], [ %ba_stream_num.1.i, %for.inc.i52.for.body.i45_crit_edge ]
  %arrayidx.i43 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %indvars.iv.i
  %134 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i43, align 4
  %tobool.not.i44 = icmp eq ptr %135, null
  br i1 %tobool.not.i44, label %for.body.i45.for.inc.i52_crit_edge, label %if.then.i47

for.body.i45.for.inc.i52_crit_edge:               ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i52

if.then.i47:                                      ; preds = %for.body.i45
  %tx_ba_stream_tbl_ptr.i46 = getelementptr inbounds %struct.mwifiex_private, ptr %135, i32 0, i32 83
  br label %for.cond.i.i50

for.cond.i.i50:                                   ; preds = %for.cond.i.i50.for.cond.i.i50_crit_edge, %if.then.i47
  %pos.0.in.i.i = phi ptr [ %tx_ba_stream_tbl_ptr.i46, %if.then.i47 ], [ %pos.0.i.i, %for.cond.i.i50.for.cond.i.i50_crit_edge ]
  %count.0.i.i = phi i32 [ 0, %if.then.i47 ], [ %inc.i.i49, %for.cond.i.i50.for.cond.i.i50_crit_edge ]
  %136 = ptrtoint ptr %pos.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %pos.0.i.i = load ptr, ptr %pos.0.in.i.i, align 4
  %cmp.i.not.i.i48 = icmp eq ptr %pos.0.i.i, %tx_ba_stream_tbl_ptr.i46
  %inc.i.i49 = add i32 %count.0.i.i, 1
  br i1 %cmp.i.not.i.i48, label %mwifiex_wmm_list_len.exit.i, label %for.cond.i.i50.for.cond.i.i50_crit_edge

for.cond.i.i50.for.cond.i.i50_crit_edge:          ; preds = %for.cond.i.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i50

mwifiex_wmm_list_len.exit.i:                      ; preds = %for.cond.i.i50
  call void @__sanitizer_cov_trace_pc() #13
  %add.i51 = add i32 %count.0.i.i, %ba_stream_num.025.i
  br label %for.inc.i52

for.inc.i52:                                      ; preds = %mwifiex_wmm_list_len.exit.i, %for.body.i45.for.inc.i52_crit_edge
  %ba_stream_num.1.i = phi i32 [ %add.i51, %mwifiex_wmm_list_len.exit.i ], [ %ba_stream_num.025.i, %for.body.i45.for.inc.i52_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.inc.i52.for.end.i_crit_edge, label %for.inc.i52.for.body.i45_crit_edge

for.inc.i52.for.body.i45_crit_edge:               ; preds = %for.inc.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i45

for.inc.i52.for.end.i_crit_edge:                  ; preds = %for.inc.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i52.for.end.i_crit_edge, %if.then43.i.for.end.i_crit_edge
  %ba_stream_num.0.lcssa.i = phi i32 [ 0, %if.then43.i.for.end.i_crit_edge ], [ %ba_stream_num.1.i, %for.inc.i52.for.end.i_crit_edge ]
  %137 = ptrtoint ptr %fw_api_ver.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %fw_api_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %138)
  %cmp5.i = icmp eq i8 %138, 15
  br i1 %cmp5.i, label %if.then7.i, label %for.end.i.mwifiex_space_avail_for_new_ba_stream.exit_crit_edge

for.end.i.mwifiex_space_avail_for_new_ba_stream.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_space_avail_for_new_ba_stream.exit

if.then7.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %hw_dot_11n_dev_cap.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %hw_dot_11n_dev_cap.i, align 4
  %shr.i = lshr i32 %140, 18
  %and.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i53 = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool8.not.i53, i32 2, i32 %and.i
  br label %mwifiex_space_avail_for_new_ba_stream.exit

mwifiex_space_avail_for_new_ba_stream.exit:       ; preds = %if.then7.i, %for.end.i.mwifiex_space_avail_for_new_ba_stream.exit_crit_edge
  %ba_stream_max.0.i = phi i32 [ %spec.store.select.i, %if.then7.i ], [ 2, %for.end.i.mwifiex_space_avail_for_new_ba_stream.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ba_stream_num.0.lcssa.i, i32 %ba_stream_max.0.i)
  %cmp12.i.not = icmp ult i32 %ba_stream_num.0.lcssa.i, %ba_stream_max.0.i
  br i1 %cmp12.i.not, label %if.then46.i, label %if.else51.i

if.then46.i:                                      ; preds = %mwifiex_space_avail_for_new_ba_stream.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @mwifiex_create_ba_tbl(ptr noundef %12, ptr noundef %ra.i55, i32 noundef %retval.0.i115.i, i32 noundef 1) #11
  %call50.i = call i32 @mwifiex_send_addba(ptr noundef %12, i32 noundef %retval.0.i115.i, ptr noundef %ra.i55) #11
  br label %if.end62.i

if.else51.i:                                      ; preds = %mwifiex_space_avail_for_new_ba_stream.exit
  %arrayidx.i36 = getelementptr %struct.mwifiex_private, ptr %12, i32 0, i32 85, i32 %retval.0.i115.i
  %141 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.i36, align 1
  %tx_ba_stream_tbl_lock.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 84
  call void @_raw_spin_lock_bh(ptr noundef %tx_ba_stream_tbl_lock.i) #11
  %tx_ba_stream_tbl_ptr.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 83
  %143 = ptrtoint ptr %tx_ba_stream_tbl_ptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %tx_tbl.034.i = load ptr, ptr %tx_ba_stream_tbl_ptr.i, align 4
  %cmp.not35.i = icmp eq ptr %tx_tbl.034.i, %tx_ba_stream_tbl_ptr.i
  br i1 %cmp.not35.i, label %mwifiex_find_stream_to_delete.exit.thread, label %for.body.preheader.i

mwifiex_find_stream_to_delete.exit.thread:        ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock.i) #11
  br label %if.end62.i

for.body.preheader.i:                             ; preds = %if.else51.i
  %conv.i37 = zext i8 %142 to i32
  br label %for.body.i38

for.body.i38:                                     ; preds = %for.inc.i40.for.body.i38_crit_edge, %for.body.preheader.i
  %tid_del.i.0 = phi i32 [ 0, %for.body.preheader.i ], [ %tid_del.i.1, %for.inc.i40.for.body.i38_crit_edge ]
  %tx_tbl.038.i = phi ptr [ %tx_tbl.034.i, %for.body.preheader.i ], [ %tx_tbl.0.i, %for.inc.i40.for.body.i38_crit_edge ]
  %tid.037.i = phi i32 [ %conv.i37, %for.body.preheader.i ], [ %tid.1.i, %for.inc.i40.for.body.i38_crit_edge ]
  %ret.036.i = phi i8 [ 0, %for.body.preheader.i ], [ %ret.1.i, %for.inc.i40.for.body.i38_crit_edge ]
  %tid4.i = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_tbl.038.i, i32 0, i32 1
  %144 = ptrtoint ptr %tid4.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tid4.i, align 4
  %arrayidx5.i = getelementptr %struct.mwifiex_private, ptr %12, i32 0, i32 85, i32 %145
  %146 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx5.i, align 1
  %conv7.i = zext i8 %147 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tid.037.i, i32 %conv7.i)
  %cmp8.i = icmp sgt i32 %tid.037.i, %conv7.i
  br i1 %cmp8.i, label %if.then.i39, label %for.body.i38.for.inc.i40_crit_edge

for.body.i38.for.inc.i40_crit_edge:               ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i40

if.then.i39:                                      ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #13
  %ra16.i = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %tx_tbl.038.i, i32 0, i32 2
  %148 = call ptr @memcpy(ptr %ra.i, ptr %ra16.i, i32 6)
  br label %for.inc.i40

for.inc.i40:                                      ; preds = %if.then.i39, %for.body.i38.for.inc.i40_crit_edge
  %tid_del.i.1 = phi i32 [ %145, %if.then.i39 ], [ %tid_del.i.0, %for.body.i38.for.inc.i40_crit_edge ]
  %ret.1.i = phi i8 [ 1, %if.then.i39 ], [ %ret.036.i, %for.body.i38.for.inc.i40_crit_edge ]
  %tid.1.i = phi i32 [ %conv7.i, %if.then.i39 ], [ %tid.037.i, %for.body.i38.for.inc.i40_crit_edge ]
  %149 = ptrtoint ptr %tx_tbl.038.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %tx_tbl.0.i = load ptr, ptr %tx_tbl.038.i, align 4
  %cmp.not.i = icmp eq ptr %tx_tbl.0.i, %tx_ba_stream_tbl_ptr.i
  br i1 %cmp.not.i, label %mwifiex_find_stream_to_delete.exit, label %for.inc.i40.for.body.i38_crit_edge

for.inc.i40.for.body.i38_crit_edge:               ; preds = %for.inc.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i38

mwifiex_find_stream_to_delete.exit:               ; preds = %for.inc.i40
  call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ret.1.i)
  %tobool54.not.i = icmp eq i8 %ret.1.i, 0
  br i1 %tobool54.not.i, label %mwifiex_find_stream_to_delete.exit.if.end62.i_crit_edge, label %if.then55.i

mwifiex_find_stream_to_delete.exit.if.end62.i_crit_edge: ; preds = %mwifiex_find_stream_to_delete.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

if.then55.i:                                      ; preds = %mwifiex_find_stream_to_delete.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @mwifiex_create_ba_tbl(ptr noundef %12, ptr noundef %ra.i55, i32 noundef %retval.0.i115.i, i32 noundef 1) #11
  %call59.i = call i32 @mwifiex_send_delba(ptr noundef %12, i32 noundef %tid_del.i.1, ptr noundef nonnull %ra.i, i32 noundef 1) #11
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then55.i, %mwifiex_find_stream_to_delete.exit.if.end62.i_crit_edge, %mwifiex_find_stream_to_delete.exit.thread, %if.then46.i, %land.lhs.true39.i.if.end62.i_crit_edge, %mwifiex_is_ampdu_allowed.exit.if.end62.i_crit_edge, %if.then4.i66.if.end62.i_crit_edge, %if.then2.i.if.end62.i_crit_edge, %if.else35.i.if.end62.i_crit_edge
  %amsdu.i150.i = getelementptr %struct.mwifiex_private, ptr %12, i32 0, i32 85, i32 %retval.0.i115.i, i32 2
  %150 = ptrtoint ptr %amsdu.i150.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %amsdu.i150.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %151)
  %cmp.not.i151.i = icmp eq i8 %151, -1
  br i1 %cmp.not.i151.i, label %if.end62.i.if.else73.i_crit_edge, label %land.rhs.i154.i

if.end62.i.if.else73.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else73.i

land.rhs.i154.i:                                  ; preds = %if.end62.i
  %is_data_rate_auto.i152.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 33
  %152 = ptrtoint ptr %is_data_rate_auto.i152.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %is_data_rate_auto.i152.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i153.i = icmp eq i8 %153, 0
  br i1 %tobool.not.i153.i, label %mwifiex_is_amsdu_allowed.exit159.i, label %land.rhs.i154.i.land.lhs.true66.i_crit_edge

land.rhs.i154.i.land.lhs.true66.i_crit_edge:      ; preds = %land.rhs.i154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true66.i

mwifiex_is_amsdu_allowed.exit159.i:               ; preds = %land.rhs.i154.i
  %arrayidx3.i155.i = getelementptr %struct.mwifiex_private, ptr %12, i32 0, i32 30, i32 2
  %154 = ptrtoint ptr %arrayidx3.i155.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %arrayidx3.i155.i, align 2
  %156 = and i16 %155, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool5.not.i156.not.i = icmp eq i16 %156, 0
  br i1 %tobool5.not.i156.not.i, label %mwifiex_is_amsdu_allowed.exit159.i.land.lhs.true66.i_crit_edge, label %mwifiex_is_amsdu_allowed.exit159.i.if.else73.i_crit_edge

mwifiex_is_amsdu_allowed.exit159.i.if.else73.i_crit_edge: ; preds = %mwifiex_is_amsdu_allowed.exit159.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else73.i

mwifiex_is_amsdu_allowed.exit159.i.land.lhs.true66.i_crit_edge: ; preds = %mwifiex_is_amsdu_allowed.exit159.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true66.i

land.lhs.true66.i:                                ; preds = %mwifiex_is_amsdu_allowed.exit159.i.land.lhs.true66.i_crit_edge, %land.rhs.i154.i.land.lhs.true66.i_crit_edge
  %157 = ptrtoint ptr %tx_buf_size.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %tx_buf_size.i, align 2
  %conv68.i = zext i16 %158 to i32
  %bss_role.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 2
  %159 = ptrtoint ptr %bss_role.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %bss_role.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %160)
  %cmp.i29 = icmp eq i8 %160, 1
  br i1 %cmp.i29, label %land.lhs.true.i31, label %land.lhs.true66.i.for.cond.i_crit_edge

land.lhs.true66.i.for.cond.i_crit_edge:           ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

land.lhs.true.i31:                                ; preds = %land.lhs.true66.i
  %ap_11n_enabled.i = getelementptr inbounds %struct.mwifiex_private, ptr %12, i32 0, i32 125
  %161 = ptrtoint ptr %ap_11n_enabled.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %ap_11n_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool.not.i30 = icmp eq i8 %162, 0
  br i1 %tobool.not.i30, label %land.lhs.true.i31.for.cond.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i31.for.cond.i_crit_edge:           ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i31
  %163 = ptrtoint ptr %is_11n_enabled.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %is_11n_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool4.not.i = icmp eq i32 %164, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.for.cond.i_crit_edge, label %if.then.i

land.lhs.true3.i.for.cond.i_crit_edge:            ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  %max_amsdu.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr.0160.i.i, i32 0, i32 4
  %165 = ptrtoint ptr %max_amsdu.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %max_amsdu.i, align 4
  %conv5.i = zext i16 %166 to i32
  %167 = call i32 @llvm.smin.i32(i32 %conv5.i, i32 %conv68.i) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.then.i, %land.lhs.true3.i.for.cond.i_crit_edge, %land.lhs.true.i31.for.cond.i_crit_edge, %land.lhs.true66.i.for.cond.i_crit_edge
  %max_amsdu_size.0.i = phi i32 [ %167, %if.then.i ], [ %conv68.i, %land.lhs.true3.i.for.cond.i_crit_edge ], [ %conv68.i, %land.lhs.true.i31.for.cond.i_crit_edge ], [ %conv68.i, %land.lhs.true66.i.for.cond.i_crit_edge ]
  %168 = ptrtoint ptr %skb_head.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %skb.0.i = load ptr, ptr %skb_head.i.i, align 4
  %cmp11.not.i = icmp eq ptr %skb.0.i, %skb_head.i.i
  br i1 %cmp11.not.i, label %for.cond.i.if.else73.i_crit_edge, label %for.body.i34

for.cond.i.if.else73.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else73.i

for.body.i34:                                     ; preds = %for.cond.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 6
  %169 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %max_amsdu_size.0.i)
  %cmp13.not.i = icmp sge i32 %170, %max_amsdu_size.0.i
  br i1 %cmp13.not.i, label %for.body.i34.mwifiex_is_11n_aggragation_possible.exit_crit_edge, label %for.cond.i.1

for.body.i34.mwifiex_is_11n_aggragation_possible.exit_crit_edge: ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %mwifiex_is_11n_aggragation_possible.exit

for.cond.i.1:                                     ; preds = %for.body.i34
  %171 = ptrtoint ptr %skb.0.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %skb.0.i.1 = load ptr, ptr %skb.0.i, align 4
  %cmp11.not.i.1 = icmp eq ptr %skb.0.i.1, %skb_head.i.i
  br i1 %cmp11.not.i.1, label %for.cond.i.1.if.else73.i_crit_edge, label %for.body.i34.1

for.cond.i.1.if.else73.i_crit_edge:               ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else73.i

for.body.i34.1:                                   ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %len.i.1 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.1, i32 0, i32 6
  %172 = ptrtoint ptr %len.i.1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %len.i.1, align 4
  %add.i.1 = add i32 %173, %170
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.1, i32 %max_amsdu_size.0.i)
  %cmp13.not.i.1 = icmp sge i32 %add.i.1, %max_amsdu_size.0.i
  br label %mwifiex_is_11n_aggragation_possible.exit

mwifiex_is_11n_aggragation_possible.exit:         ; preds = %for.body.i34.1, %for.body.i34.mwifiex_is_11n_aggragation_possible.exit_crit_edge
  %cmp13.not.i.lcssa = phi i1 [ %cmp13.not.i, %for.body.i34.mwifiex_is_11n_aggragation_possible.exit_crit_edge ], [ %cmp13.not.i.1, %for.body.i34.1 ]
  br i1 %cmp13.not.i.lcssa, label %mwifiex_is_11n_aggragation_possible.exit.if.else73.i_crit_edge, label %if.then71.i

mwifiex_is_11n_aggragation_possible.exit.if.else73.i_crit_edge: ; preds = %mwifiex_is_11n_aggragation_possible.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else73.i

if.then71.i:                                      ; preds = %mwifiex_is_11n_aggragation_possible.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call72.i = call i32 @mwifiex_11n_aggregate_pkt(ptr noundef %12, ptr noundef nonnull %ptr.0160.i.i, i32 noundef %conv100.i.i) #11
  br label %if.end

if.else73.i:                                      ; preds = %mwifiex_is_11n_aggragation_possible.exit.if.else73.i_crit_edge, %for.cond.i.1.if.else73.i_crit_edge, %for.cond.i.if.else73.i_crit_edge, %mwifiex_is_amsdu_allowed.exit159.i.if.else73.i_crit_edge, %if.end62.i.if.else73.i_crit_edge
  call fastcc void @mwifiex_send_single_packet(ptr noundef %12, ptr noundef nonnull %ptr.0160.i.i, i32 noundef %conv100.i.i) #11
  br label %if.end

mwifiex_dequeue_tx_packet.exit:                   ; preds = %if.then4.i, %mwifiex_wmm_get_highest_priolist_ptr.exit.i.mwifiex_dequeue_tx_packet.exit_crit_edge, %for.cond.loopexit.i.i.mwifiex_dequeue_tx_packet.exit_crit_edge, %do.body.loopexit.mwifiex_dequeue_tx_packet.exit_crit_edge, %entry.mwifiex_dequeue_tx_packet.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ra.i) #11
  br label %do.end

if.end:                                           ; preds = %if.else73.i, %if.then71.i, %if.else.i, %if.then32.i, %mwifiex_send_processed_packet.exit.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ra.i) #11
  %174 = ptrtoint ptr %adapter to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %adapter, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %cmp.not = icmp eq i8 %175, 0
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %176 = ptrtoint ptr %data_sent to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %data_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool4.not = icmp eq i8 %177, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then2.do.end_crit_edge

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then2
  %178 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %tx_lock_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool6.not = icmp eq i8 %179, 0
  br i1 %tobool6.not, label %lor.lhs.false.do.cond_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false.do.cond_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

if.else:                                          ; preds = %if.end
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %tx_queued, i32 noundef 4) #11
  %180 = ptrtoint ptr %tx_queued to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %tx_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %181)
  %cmp10 = icmp sgt i32 %181, 15
  br i1 %cmp10, label %if.else.do.end_crit_edge, label %if.else.do.cond_crit_edge

if.else.do.cond_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.cond:                                          ; preds = %if.else.do.cond_crit_edge, %lor.lhs.false.do.cond_crit_edge
  %182 = ptrtoint ptr %priv_num.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %priv_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %cmp30.not.i = icmp eq i8 %183, 0
  br i1 %cmp30.not.i, label %do.cond.do.end_crit_edge, label %do.cond.for.body.i_crit_edge

do.cond.for.body.i_crit_edge:                     ; preds = %do.cond
  br label %for.body.i

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.cond.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.cond.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.031.i
  %184 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i22 = icmp eq ptr %185, null
  br i1 %tobool.not.i22, label %for.body.i.for.inc.i_crit_edge, label %if.end.i23

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i23:                                       ; preds = %for.body.i
  %port_open.i = getelementptr inbounds %struct.mwifiex_private, ptr %185, i32 0, i32 9
  %186 = ptrtoint ptr %port_open.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %port_open.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool3.not.i = icmp eq i8 %187, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i24, label %if.end.i23.if.end7.i25_crit_edge

if.end.i23.if.end7.i25_crit_edge:                 ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i25

land.lhs.true.i24:                                ; preds = %if.end.i23
  %bss_mode.i = getelementptr inbounds %struct.mwifiex_private, ptr %185, i32 0, i32 18
  %188 = ptrtoint ptr %bss_mode.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %bss_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %189)
  %cmp4.not.i = icmp eq i32 %189, 1
  br i1 %cmp4.not.i, label %land.lhs.true.i24.if.end7.i25_crit_edge, label %land.lhs.true.i24.for.inc.i_crit_edge

land.lhs.true.i24.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i24.if.end7.i25_crit_edge:          ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i25

if.end7.i25:                                      ; preds = %land.lhs.true.i24.if.end7.i25_crit_edge, %if.end.i23.if.end7.i25_crit_edge
  %190 = ptrtoint ptr %is_port_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %is_port_ready.i.i, align 4
  %tobool8.not.i = icmp eq ptr %191, null
  br i1 %tobool8.not.i, label %if.end7.i25.if.end13.i_crit_edge, label %land.lhs.true9.i

if.end7.i25.if.end13.i_crit_edge:                 ; preds = %if.end7.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

land.lhs.true9.i:                                 ; preds = %if.end7.i25
  %call.i = call zeroext i1 %191(ptr noundef nonnull %185) #11
  br i1 %call.i, label %land.lhs.true9.i.if.end13.i_crit_edge, label %land.lhs.true9.i.for.inc.i_crit_edge

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true9.i.if.end13.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true9.i.if.end13.i_crit_edge, %if.end7.i25.if.end13.i_crit_edge
  %tx_pkts_queued.i = getelementptr inbounds %struct.mwifiex_private, ptr %185, i32 0, i32 77, i32 9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %tx_pkts_queued.i, i32 noundef 4) #11
  %192 = ptrtoint ptr %tx_pkts_queued.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %tx_pkts_queued.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool15.not.i26 = icmp eq i32 %193, 0
  br i1 %tobool15.not.i26, label %if.end13.i.for.inc.i_crit_edge, label %do.body.loopexit

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i.for.inc.i_crit_edge, %land.lhs.true9.i.for.inc.i_crit_edge, %land.lhs.true.i24.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %194 = ptrtoint ptr %priv_num.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %priv_num.i.i, align 4
  %conv.i = zext i8 %195 to i32
  %cmp.i27 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i27, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end_crit_edge

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %do.cond.do.end_crit_edge, %if.else.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.then2.do.end_crit_edge, %mwifiex_dequeue_tx_packet.exit
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11n_aggregate_pkt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_send_single_packet(ptr noundef %priv, ptr noundef %ptr, i32 noundef %ptr_index) unnamed_addr #0 align 64 {
entry:
  %tx_param = alloca %struct.mwifiex_tx_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_param) #11
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %skb_head = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %skb_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb_head, align 4
  %cmp.i.not = icmp eq ptr %3, %skb_head
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ra_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock) #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @skb_dequeue(ptr noundef %skb_head) #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.31, ptr noundef %ptr, ptr noundef %call3) #11
  %total_pkt_count = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr, i32 0, i32 9
  %4 = ptrtoint ptr %total_pkt_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %total_pkt_count, align 2
  %dec = add i16 %5, -1
  store i16 %dec, ptr %total_pkt_count, align 2
  %6 = ptrtoint ptr %skb_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb_head, align 4
  %cmp.i66 = icmp eq ptr %7, %skb_head
  %ra_list_spinlock1370 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock1370) #11
  %tobool14.not = icmp eq ptr %7, null
  %or.cond = or i1 %cmp.i66, %tobool14.not
  br i1 %or.cond, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %add = add i32 %9, 20
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %10 = ptrtoint ptr %tx_param to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %tx_param, align 4
  %call15 = call i32 @mwifiex_process_tx(ptr noundef %priv, ptr noundef %call3, ptr noundef nonnull %tx_param) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call15)
  %cmp = icmp eq i32 %call15, -16
  br i1 %cmp, label %if.then16, label %if.else32

if.then16:                                        ; preds = %cond.end
  call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock1370) #11
  %wmm.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77
  %arrayidx.i = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm.i, i32 0, i32 %ptr_index
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then16
  %rlist.0.in.i = phi ptr [ %arrayidx.i, %if.then16 ], [ %rlist.0.i, %for.body.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %rlist.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %rlist.0.i = load ptr, ptr %rlist.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %rlist.0.i, %arrayidx.i
  br i1 %cmp.not.i, label %if.then21, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %cmp6.i = icmp eq ptr %rlist.0.i, %ptr
  br i1 %cmp6.i, label %if.end25, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then21:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock1370) #11
  %call24 = call i32 @mwifiex_write_data_complete(ptr noundef %1, ptr noundef %call3, i32 noundef 0, i32 noundef -1) #11
  br label %cleanup

if.end25:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @skb_queue_tail(ptr noundef %skb_head, ptr noundef %call3) #11
  %12 = ptrtoint ptr %total_pkt_count to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %total_pkt_count, align 2
  %inc = add i16 %13, 1
  store i16 %inc, ptr %total_pkt_count, align 2
  %ba_pkt_count = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ptr, i32 0, i32 5
  %14 = ptrtoint ptr %ba_pkt_count to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ba_pkt_count, align 2
  %inc28 = add i16 %15, 1
  store i16 %inc28, ptr %ba_pkt_count, align 2
  %flags = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags, align 4
  %18 = or i8 %17, 1
  store i8 %18, ptr %flags, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock1370) #11
  br label %cleanup

if.else32:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @mwifiex_rotate_priolists(ptr noundef %priv, ptr noundef %ptr, i32 noundef %ptr_index)
  %tx_pkts_queued = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_pkts_queued, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %tx_pkts_queued, i32 1, i32 3, i32 1) #11
  %19 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_pkts_queued, ptr %tx_pkts_queued, i32 1, ptr elementtype(i32) %tx_pkts_queued) #11, !srcloc !92
  br label %cleanup

cleanup:                                          ; preds = %if.else32, %if.end25, %if.then21, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_param) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_create_ba_tbl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_addba(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_delba(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !55, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__param_disable_tx_amsdu, !1, !"__param_disable_tx_amsdu", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_disable_tx_amsdutype488, !1, !"__UNIQUE_ID_disable_tx_amsdutype488", i1 false, i1 false}
!3 = !{ptr @tos_to_tid_inv, !4, !"tos_to_tid_inv", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 47, i32 10}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 160, i32 3}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 191, i32 3}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 254, i32 2}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 271, i32 3}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 347, i32 2}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 360, i32 4}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 841, i32 4}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 849, i32 3}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 939, i32 2}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 955, i32 4}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 983, i32 4}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 1038, i32 2}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 1090, i32 2}
!31 = !{ptr @disable_tx_amsdu, !32, !"disable_tx_amsdu", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 40, i32 13}
!33 = !{ptr @__param_str_disable_tx_amsdu, !1, !"__param_str_disable_tx_amsdu", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 125, i32 2}
!36 = !{ptr @skb_queue_head_init.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @wmm_aci_to_qidx_map, !40, !"wmm_aci_to_qidx_map", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 64, i32 17}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 90, i32 27}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 90, i32 33}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 90, i32 39}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 90, i32 45}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 92, i32 2}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mwifiex_wmm_ac_debug_print.__UNIQUE_ID_ddebug489, !50, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!55 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mwifiex_wmm_convert_tos_to_ac.tos_to_ac, !57, !"tos_to_ac", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 376, i32 37}
!58 = !{ptr @ac_to_tid, !59, !"ac_to_tid", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 82, i32 11}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 567, i32 3}
!62 = !{ptr @tos_to_tid, !63, !"tos_to_tid", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 70, i32 11}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 582, i32 2}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mwifiex_free_ack_frame._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @mwifiex_free_ack_frame._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @wmm_info_ie, !70, !"wmm_info_ie", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 59, i32 17}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 1431, i32 2}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 1376, i32 3}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 1391, i32 3}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 1256, i32 3}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/marvell/mwifiex/wmm.c", i32 1263, i32 2}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2148392752, i64 2148392757, i64 2148392770, i64 2148392814, i64 2148392848, i64 2148392869}
!91 = !{i8 0, i8 2}
!92 = !{i64 2148570619, i64 2148570645, i64 2148570674, i64 2148570708, i64 2148570739, i64 2148570762}
!93 = !{i64 2148568154, i64 2148568180, i64 2148568209, i64 2148568243, i64 2148568274, i64 2148568297}
!94 = !{i64 932108, i64 932135}
!95 = !{i64 932803, i64 932830, i64 932863, i64 932884, i64 932911, i64 932937}
!96 = !{!"auto-init"}
!97 = !{!"branch_weights", i32 1, i32 2000}
