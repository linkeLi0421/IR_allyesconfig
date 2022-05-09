; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
%struct.mwifiex_rx_reorder_tbl = type { %struct.list_head, i32, [6 x i8], i32, i32, i32, ptr, %struct.reorder_tmr_cnxt, i8, i8 }
%struct.reorder_tmr_cnxt = type { %struct.timer_list, ptr, ptr, i8 }
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
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.159 }
%union.anon.159 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.host_cmd_ds_11n_addba_req = type { i8, [6 x i8], i8, i16, i16, i16 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.host_cmd_ds_11n_addba_rsp = type { i8, [6 x i8], i8, i16, i16, i16, i16 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
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
%struct.rxpd = type <{ i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, [3 x i8], i8 }>
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.mwifiex_ra_list_tbl = type { %struct.list_head, %struct.sk_buff_head, [6 x i8], i32, i16, i16, i8, i32, i8, i16, i8, i8 }
%struct.host_cmd_ds_11n_delba = type <{ i8, [6 x i8], i16, i16, i8 }>
%struct.host_cmd_ds_11n_batimeout = type { i8, [6 x i8], i8 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ie_types_rxba_sync = type <{ %struct.mwifiex_ie_types_header, [6 x i8], i8, i8, i16, i16, [1 x i8] }>

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BA setup with unknown TDLS peer %pM!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RXREOR_FORCE_NO_DROP when HS is activated\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Sender TID sequence number reset %d->%d for SSN %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"event: DELBA: %pM tid=%d initiator=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"event: TID, TA not found in table\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"event: TID, RA not found in table\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADDBA RSP: failed %pM tid=%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"cmd: ADDBA RSP: %pM tid=%d ssn=%d win_size=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RXBA_SYNC event:\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wrong TLV id=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%pM tid=%d seq_num=%d bitmap_len=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can not find rx_reorder_tbl!\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drop packet,seq=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Fail to drop packet\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"info: last_seq=%d start_win=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to alloc reorder_ptr\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.mwifiex_11n_create_rx_reorder_tbl = private unnamed_addr constant [34 x i8] c"mwifiex_11n_create_rx_reorder_tbl\00", align 1
@mwifiex_11n_create_rx_reorder_tbl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(&new_node->timer_context.timer)\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"info: flush data %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"info: fw drop data\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Rx of A-MSDU failed\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mwifiex_update_ampdu_rxwinsize.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, i8 0, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mwifiex\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mwifiex_update_ampdu_rxwinsize\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Update rxwinsize %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 485, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 591, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 596, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 686, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 693, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 701, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 741, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 766, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 931, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 937, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 944, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 953, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 964, i32 6 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 973, i32 7 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 386, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 402, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 411, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 324, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 86, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 67, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [56 x i8] c"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 846, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @mwifiex_11n_create_rx_reorder_tbl.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_11n_create_rx_reorder_tbl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mwifiex_11n_get_rx_reorder_tbl(ptr noundef %priv, i32 noundef %tid, ptr nocapture noundef readonly %ta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_reorder_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  %rx_reorder_tbl_ptr = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 89
  %0 = ptrtoint ptr %rx_reorder_tbl_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %tbl.021 = load ptr, ptr %rx_reorder_tbl_ptr, align 4
  %cmp.not22 = icmp eq ptr %tbl.021, %rx_reorder_tbl_ptr
  br i1 %cmp.not22, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tbl.023 = phi ptr [ %tbl.0, %for.inc.for.body_crit_edge ], [ %tbl.021, %entry.for.body_crit_edge ]
  %ta2 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ta2, ptr noundef dereferenceable(6) %ta, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %tid3 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023, i32 0, i32 1
  %1 = ptrtoint ptr %tid3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tid3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %tid)
  %cmp4 = icmp eq i32 %2, %tid
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %3 = ptrtoint ptr %tbl.023 to i32
  call void @__asan_load4_noabort(i32 %3)
  %tbl.0 = load ptr, ptr %tbl.023, align 4
  %cmp.not = icmp eq ptr %tbl.0, %rx_reorder_tbl_ptr
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %tbl.023, %land.lhs.true.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_del_rx_reorder_tbl_by_ta(ptr noundef %priv, ptr noundef readonly %ta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_reorder_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  %rx_reorder_tbl_ptr = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 89
  %0 = ptrtoint ptr %rx_reorder_tbl_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_reorder_tbl_ptr, align 4
  %cmp.not33 = icmp eq ptr %1, %rx_reorder_tbl_ptr
  br i1 %cmp.not33, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %tbl.034 = phi ptr [ %tmp.035, %for.inc.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %tbl.034 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.035 = load ptr, ptr %tbl.034, align 4
  %ta8 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.034, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ta8, ptr noundef nonnull dereferenceable(6) %ta, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool9.not = icmp eq i32 %bcmp, 0
  br i1 %tobool9.not, label %if.then10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  tail call fastcc void @mwifiex_del_rx_reorder_entry(ptr noundef %priv, ptr noundef %tbl.034)
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.035, %rx_reorder_tbl_ptr
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_del_rx_reorder_entry(ptr noundef %priv, ptr noundef %tbl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tbl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rx_proc_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 70
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_proc_lock) #8
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %rx_locked = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %rx_locked to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %rx_locked, align 1
  %5 = load ptr, ptr %priv, align 8
  %rx_processing = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 31
  %6 = ptrtoint ptr %rx_processing to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_processing, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  %rx_proc_lock9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 70
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_proc_lock9) #8
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %rx_workqueue = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %rx_workqueue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %11) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.end.if.end10_crit_edge
  %start_win11 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl, i32 0, i32 4
  %12 = ptrtoint ptr %start_win11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start_win11, align 4
  %win_size = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl, i32 0, i32 5
  %14 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %win_size, align 4
  %add = add i32 %15, %13
  %and = and i32 %add, 4095
  tail call fastcc void @mwifiex_11n_dispatch_pkt_until_start_win(ptr noundef %priv, ptr noundef nonnull %tbl, i32 noundef %and)
  %timer_context = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl, i32 0, i32 7
  %call = tail call i32 @del_timer_sync(ptr noundef %timer_context) #8
  %timer_is_set = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %timer_is_set to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %timer_is_set, align 4
  %rx_reorder_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %tbl) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_del.exit_crit_edge

if.end10.list_del.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tbl, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tbl, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end10.list_del.exit_crit_edge
  %23 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %tbl, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tbl, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  %rx_reorder_ptr = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl, i32 0, i32 6
  %25 = ptrtoint ptr %rx_reorder_ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_reorder_ptr, align 4
  tail call void @kfree(ptr noundef %26) #8
  tail call void @kfree(ptr noundef nonnull %tbl) #8
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %rx_proc_lock15 = getelementptr inbounds %struct.mwifiex_adapter, ptr %28, i32 0, i32 70
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_proc_lock15) #8
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  %rx_locked17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %30, i32 0, i32 33
  %31 = ptrtoint ptr %rx_locked17 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %rx_locked17, align 1
  %32 = load ptr, ptr %priv, align 8
  %rx_proc_lock19 = getelementptr inbounds %struct.mwifiex_adapter, ptr %32, i32 0, i32 70
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_proc_lock19) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_11n_addba_req(ptr nocapture noundef writeonly %cmd, ptr nocapture noundef readonly %data_buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 -12800, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 5632, ptr %size, align 1
  %2 = call ptr @memcpy(ptr %params, ptr %data_buf, i32 14)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_11n_addba_rsp_gen(ptr noundef %priv, ptr nocapture noundef writeonly %cmd, ptr noundef %cmd_addba_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %rx_win_size1 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86, i32 1
  %0 = ptrtoint ptr %rx_win_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_win_size1, align 4
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bss_role, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %6, i32 0, i32 47
  %7 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_cap_info, align 4
  %and3 = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true4

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true4:                                   ; preds = %land.lhs.true
  %is_hw_11ac_capable = getelementptr inbounds %struct.mwifiex_adapter, ptr %6, i32 0, i32 128
  %9 = ptrtoint ptr %is_hw_11ac_capable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %is_hw_11ac_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %land.lhs.true4.if.end23_crit_edge, label %land.lhs.true7

land.lhs.true4.if.end23_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %cfg_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 112
  %peer_mac_addr = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %cmd_addba_req, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %cfg_bssid, ptr noundef dereferenceable(6) %peer_mac_addr, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool9.not = icmp eq i32 %bcmp, 0
  br i1 %tobool9.not, label %land.lhs.true7.if.end23_crit_edge, label %if.then

land.lhs.true7.if.end23_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then:                                          ; preds = %land.lhs.true7
  %sta_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_list_spinlock) #8
  %call12 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %peer_mac_addr) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #8
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str, ptr noundef %peer_mac_addr) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %is_11ac_enabled = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call12, i32 0, i32 4
  %13 = ptrtoint ptr %is_11ac_enabled to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_11ac_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool19.not = icmp eq i8 %14, 0
  %spec.select = select i1 %tobool19.not, i32 %1, i32 64
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end, %land.lhs.true7.if.end23_crit_edge, %land.lhs.true4.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %entry.if.end23_crit_edge
  %rx_win_size.1 = phi i32 [ %spec.select, %if.end ], [ %1, %land.lhs.true7.if.end23_crit_edge ], [ %1, %land.lhs.true4.if.end23_crit_edge ], [ %1, %land.lhs.true.if.end23_crit_edge ], [ %1, %entry.if.end23_crit_edge ]
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 -12544, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 6144, ptr %size, align 1
  %peer_mac_addr24 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, ptr %params, i32 0, i32 1
  %peer_mac_addr26 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %cmd_addba_req, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %peer_mac_addr24, ptr %peer_mac_addr26, i32 6)
  %dialog_token = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %cmd_addba_req, i32 0, i32 2
  %18 = ptrtoint ptr %dialog_token to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dialog_token, align 1
  %dialog_token28 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, ptr %params, i32 0, i32 2
  %20 = ptrtoint ptr %dialog_token28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %dialog_token28, align 1
  %block_ack_tmo = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %cmd_addba_req, i32 0, i32 4
  %21 = ptrtoint ptr %block_ack_tmo to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %block_ack_tmo, align 1
  %block_ack_tmo29 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %block_ack_tmo29 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %block_ack_tmo29, align 1
  %ssn = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %cmd_addba_req, i32 0, i32 5
  %24 = ptrtoint ptr %ssn to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %ssn, align 1
  %ssn30 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %ssn30 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %ssn30, align 1
  %block_ack_param_set31 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %cmd_addba_req, i32 0, i32 3
  %27 = ptrtoint ptr %block_ack_param_set31 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %block_ack_param_set31, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %30 = trunc i16 %29 to i8
  %31 = lshr i8 %30, 2
  %conv34 = and i8 %31, 15
  %status_code = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %status_code to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 0, ptr %status_code, align 1
  %rx_amsdu = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86, i32 4
  %33 = ptrtoint ptr %rx_amsdu to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rx_amsdu, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool39.not = icmp eq i8 %34, 0
  br i1 %tobool39.not, label %if.end23.if.then43_crit_edge, label %lor.lhs.false

if.end23.if.then43_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %.pre106 = zext i8 %conv34 to i32
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end23
  %35 = and i16 %29, 63
  %idxprom = zext i8 %conv34 to i32
  %amsdu = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 %idxprom, i32 2
  %36 = ptrtoint ptr %amsdu to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %amsdu, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp41 = icmp eq i8 %37, -1
  br i1 %cmp41, label %lor.lhs.false.if.then43_crit_edge, label %lor.lhs.false.if.end47_crit_edge

lor.lhs.false.if.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.end23.if.then43_crit_edge
  %.pre.pre-phi = phi i32 [ %.pre106, %if.end23.if.then43_crit_edge ], [ %idxprom, %lor.lhs.false.if.then43_crit_edge ]
  %38 = and i16 %29, 62
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %lor.lhs.false.if.end47_crit_edge
  %conv58.pre-phi = phi i32 [ %.pre.pre-phi, %if.then43 ], [ %idxprom, %lor.lhs.false.if.end47_crit_edge ]
  %block_ack_param_set.0 = phi i16 [ %38, %if.then43 ], [ %35, %lor.lhs.false.if.end47_crit_edge ]
  %rx_win_size.1.tr = trunc i32 %rx_win_size.1 to i16
  %39 = shl i16 %rx_win_size.1.tr, 6
  %conv49 = or i16 %block_ack_param_set.0, %39
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv49)
  %block_ack_param_set50 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %block_ack_param_set50 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %block_ack_param_set50, align 1
  %42 = and i32 %rx_win_size.1, 1023
  %43 = ptrtoint ptr %block_ack_param_set31 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %40, ptr %block_ack_param_set31, align 1
  %44 = ptrtoint ptr %ssn to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %ssn, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %conv60 = zext i16 %46 to i32
  %rx_reorder_tbl_lock.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock.i.i) #8
  %rx_reorder_tbl_ptr.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 89
  %47 = ptrtoint ptr %rx_reorder_tbl_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %tbl.021.i.i = load ptr, ptr %rx_reorder_tbl_ptr.i.i, align 4
  %cmp.not22.i.i = icmp eq ptr %tbl.021.i.i, %rx_reorder_tbl_ptr.i.i
  br i1 %cmp.not22.i.i, label %if.end47.mwifiex_11n_get_rx_reorder_tbl.exit.thread.i_crit_edge, label %if.end47.for.body.i.i_crit_edge

if.end47.for.body.i.i_crit_edge:                  ; preds = %if.end47
  br label %for.body.i.i

if.end47.mwifiex_11n_get_rx_reorder_tbl.exit.thread.i_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_get_rx_reorder_tbl.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end47.for.body.i.i_crit_edge
  %tbl.023.i.i = phi ptr [ %tbl.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %tbl.021.i.i, %if.end47.for.body.i.i_crit_edge ]
  %ta2.i.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i.i, i32 0, i32 2
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ta2.i.i, ptr noundef dereferenceable(6) %peer_mac_addr26, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %tid3.i.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %tid3.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tid3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv58.pre-phi)
  %cmp4.i.i = icmp eq i32 %49, %conv58.pre-phi
  br i1 %cmp4.i.i, label %mwifiex_11n_get_rx_reorder_tbl.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %50 = ptrtoint ptr %tbl.023.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %tbl.0.i.i = load ptr, ptr %tbl.023.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %tbl.0.i.i, %rx_reorder_tbl_ptr.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_get_rx_reorder_tbl.exit.thread.i

mwifiex_11n_get_rx_reorder_tbl.exit.thread.i:     ; preds = %for.inc.i.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread.i_crit_edge, %if.end47.mwifiex_11n_get_rx_reorder_tbl.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i.i) #8
  br label %if.end.i

mwifiex_11n_get_rx_reorder_tbl.exit.i:            ; preds = %land.lhs.true.i.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i.i) #8
  %tobool.not.i = icmp eq ptr %tbl.023.i.i, null
  br i1 %tobool.not.i, label %mwifiex_11n_get_rx_reorder_tbl.exit.i.if.end.i_crit_edge, label %if.then.i

mwifiex_11n_get_rx_reorder_tbl.exit.i.if.end.i_crit_edge: ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mwifiex_11n_dispatch_pkt_until_start_win(ptr noundef %priv, ptr noundef nonnull %tbl.023.i.i, i32 noundef %conv60) #8
  br label %cleanup

if.end.i:                                         ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit.i.if.end.i_crit_edge, %mwifiex_11n_get_rx_reorder_tbl.exit.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 100) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %52 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %tid5.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %call7.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %tid5.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv58.pre-phi, ptr %tid5.i, align 8
  %ta6.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %call7.i.i.i, i32 0, i32 2
  %55 = call ptr @memcpy(ptr %ta6.i, ptr %peer_mac_addr26, i32 6)
  %start_win.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %call7.i.i.i, i32 0, i32 4
  %56 = ptrtoint ptr %start_win.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv60, ptr %start_win.i, align 8
  %init_win.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %call7.i.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %init_win.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv60, ptr %init_win.i, align 4
  %flags.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %call7.i.i.i, i32 0, i32 9
  %58 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %flags.i, align 1
  %sta_list_spinlock.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_list_spinlock.i) #8
  %bss_mode.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %59 = ptrtoint ptr %bss_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bss_mode.i.i, align 8
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i32 %60, label %if.then9.ithread-pre-split [
    i32 2, label %if.end4.i.land.lhs.true.i120.i_crit_edge
    i32 8, label %if.end4.i.land.lhs.true.i120.i_crit_edge111
  ]

if.end4.i.land.lhs.true.i120.i_crit_edge111:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i120.i

if.end4.i.land.lhs.true.i120.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i120.i

land.lhs.true.i120.i:                             ; preds = %if.end4.i.land.lhs.true.i120.i_crit_edge, %if.end4.i.land.lhs.true.i120.i_crit_edge111
  %62 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bss_role, align 1
  %64 = and i8 %63, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp3.i.i = icmp eq i8 %64, 0
  br i1 %cmp3.i.i, label %if.else.i, label %land.lhs.true.i120.i.if.then9.i_crit_edge

land.lhs.true.i120.i.if.then9.i_crit_edge:        ; preds = %land.lhs.true.i120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

if.then9.ithread-pre-split:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %65)
  %.pr = load i8, ptr %bss_role, align 1
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.then9.ithread-pre-split, %land.lhs.true.i120.i.if.then9.i_crit_edge
  %66 = phi i8 [ %.pr, %if.then9.ithread-pre-split ], [ %63, %land.lhs.true.i120.i.if.then9.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %66)
  %cmp.i = icmp eq i8 %66, 1
  br i1 %cmp.i, label %if.then11.i, label %if.then9.i.if.end26.i_crit_edge

if.then9.i.if.end26.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then11.i:                                      ; preds = %if.then9.i
  %call12.i = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %peer_mac_addr26) #8
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.then11.i.if.end26.i_crit_edge, label %if.then14.i

if.then11.i.if.end26.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.mwifiex_sta_node, ptr %call12.i, i32 0, i32 6, i32 %conv58.pre-phi
  br label %if.end26.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i120.i
  %call17.i = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %peer_mac_addr26) #8
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %if.else22.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx21.i = getelementptr %struct.mwifiex_sta_node, ptr %call17.i, i32 0, i32 6, i32 %conv58.pre-phi
  br label %if.end26.sink.split.i

if.else22.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx24.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 87, i32 %conv58.pre-phi
  br label %if.end26.sink.split.i

if.end26.sink.split.i:                            ; preds = %if.else22.i, %if.then19.i, %if.then14.i
  %arrayidx21.sink.i = phi ptr [ %arrayidx21.i, %if.then19.i ], [ %arrayidx24.i, %if.else22.i ], [ %arrayidx.i, %if.then14.i ]
  %67 = ptrtoint ptr %arrayidx21.sink.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx21.sink.i, align 2
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end26.sink.split.i, %if.then11.i.if.end26.i_crit_edge, %if.then9.i.if.end26.i_crit_edge
  %last_seq.0.i = phi i16 [ 0, %if.then11.i.if.end26.i_crit_edge ], [ 0, %if.then9.i.if.end26.i_crit_edge ], [ %68, %if.end26.sink.split.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock.i) #8
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 8
  %conv28.i = zext i16 %last_seq.0.i to i32
  %71 = ptrtoint ptr %start_win.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %start_win.i, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %70, i32 noundef 1073741824, ptr noundef nonnull @.str.15, i32 noundef %conv28.i, i32 noundef %72) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %last_seq.0.i)
  %cmp31.not.i = icmp eq i16 %last_seq.0.i, -1
  br i1 %cmp31.not.i, label %if.end26.i.if.end43.i_crit_edge, label %land.lhs.true.i

if.end26.i.if.end43.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

land.lhs.true.i:                                  ; preds = %if.end26.i
  %73 = ptrtoint ptr %start_win.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %start_win.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %conv28.i)
  %cmp35.not.i = icmp sgt i32 %74, %conv28.i
  br i1 %cmp35.not.i, label %land.lhs.true.i.if.end43.i_crit_edge, label %if.then37.i

land.lhs.true.i.if.end43.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then37.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %conv28.i, 1
  %75 = ptrtoint ptr %start_win.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add.i, ptr %start_win.i, align 8
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %flags.i, align 1
  %78 = or i8 %77, 2
  store i8 %78, ptr %flags.i, align 1
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then37.i, %land.lhs.true.i.if.end43.i_crit_edge, %if.end26.i.if.end43.i_crit_edge
  %win_size44.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %call7.i.i.i, i32 0, i32 5
  %79 = ptrtoint ptr %win_size44.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %42, ptr %win_size44.i, align 4
  %80 = shl nuw nsw i32 %42, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %80, i32 noundef 3520) #14
  %rx_reorder_ptr.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %call7.i.i.i, i32 0, i32 6
  %81 = ptrtoint ptr %rx_reorder_ptr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call8.i.i.i, ptr %rx_reorder_ptr.i, align 8
  %tobool47.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool47.not.i, label %if.then48.i, label %if.end50.i

if.then48.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  %82 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %83, i32 noundef 4, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.mwifiex_11n_create_rx_reorder_tbl) #8
  br label %cleanup

if.end50.i:                                       ; preds = %if.end43.i
  %timer_context.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %call7.i.i.i, i32 0, i32 7
  %ptr.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %84 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call7.i.i.i, ptr %ptr.i, align 4
  %priv52.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %85 = ptrtoint ptr %priv52.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %priv, ptr %priv52.i, align 8
  %timer_is_set.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  %86 = ptrtoint ptr %timer_is_set.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %timer_is_set.i, align 4
  tail call void @init_timer_key(ptr noundef %timer_context.i, ptr noundef nonnull @mwifiex_flush_data, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @mwifiex_11n_create_rx_reorder_tbl.__key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp55137.not.i = icmp eq i32 %42, 0
  br i1 %cmp55137.not.i, label %if.end50.i.for.end.i_crit_edge, label %if.end50.i.for.body.i_crit_edge

if.end50.i.for.body.i_crit_edge:                  ; preds = %if.end50.i
  br label %for.body.i

if.end50.i.for.end.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end50.i.for.body.i_crit_edge
  %i.0138.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end50.i.for.body.i_crit_edge ]
  %87 = ptrtoint ptr %rx_reorder_ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rx_reorder_ptr.i, align 8
  %arrayidx58.i = getelementptr ptr, ptr %88, i32 %i.0138.i
  %89 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %arrayidx58.i, align 4
  %inc.i = add nuw nsw i32 %i.0138.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %42
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end50.i.for.end.i_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock.i.i) #8
  %prev.i122.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 89, i32 1
  %90 = ptrtoint ptr %prev.i122.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i122.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i.i, ptr noundef %91, ptr noundef %rx_reorder_tbl_ptr.i.i) #8
  br i1 %call.i.i.i, label %if.end.i.i123.i, label %for.end.i.list_add_tail.exit.i_crit_edge

for.end.i.list_add_tail.exit.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i123.i:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %prev.i122.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call7.i.i.i, ptr %prev.i122.i, align 4
  %93 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %rx_reorder_tbl_ptr.i.i, ptr %call7.i.i.i, align 8
  %94 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev.i.i, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %call7.i.i.i, ptr %91, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i123.i, %for.end.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %if.then48.i, %if.end.i.cleanup_crit_edge, %if.then.i, %if.then14
  %retval.0 = phi i32 [ -1, %if.then14 ], [ 0, %if.then.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then48.i ], [ 0, %list_add_tail.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_11n_delba(ptr nocapture noundef writeonly %cmd, ptr nocapture noundef readonly %data_buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 -12288, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 5120, ptr %size, align 1
  %2 = call ptr @memcpy(ptr %params, ptr %data_buf, i32 12)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_11n_rx_reorder_pkt(ptr noundef %priv, i16 noundef zeroext %seq_num, i16 noundef zeroext %tid, ptr nocapture noundef readonly %ta, i8 noundef zeroext %pkt_type, ptr noundef %payload) local_unnamed_addr #0 align 64 {
entry:
  %list.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %tid to i32
  %rx_reorder_tbl_lock.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  %rx_reorder_tbl_ptr.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 89
  %0 = ptrtoint ptr %rx_reorder_tbl_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %tbl.021.i = load ptr, ptr %rx_reorder_tbl_ptr.i, align 4
  %cmp.not22.i = icmp eq ptr %tbl.021.i, %rx_reorder_tbl_ptr.i
  br i1 %cmp.not22.i, label %entry.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_get_rx_reorder_tbl.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %tbl.023.i = phi ptr [ %tbl.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tbl.021.i, %entry.for.body.i_crit_edge ]
  %ta2.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ta2.i, ptr noundef dereferenceable(6) %ta, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %tid3.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 1
  %1 = ptrtoint ptr %tid3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tid3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp4.i = icmp eq i32 %2, %conv
  br i1 %cmp4.i, label %mwifiex_11n_get_rx_reorder_tbl.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %3 = ptrtoint ptr %tbl.023.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %tbl.0.i = load ptr, ptr %tbl.023.i, align 4
  %cmp.not.i = icmp eq ptr %tbl.0.i, %rx_reorder_tbl_ptr.i
  br i1 %cmp.not.i, label %for.inc.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_get_rx_reorder_tbl.exit.thread

mwifiex_11n_get_rx_reorder_tbl.exit.thread:       ; preds = %for.inc.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge, %entry.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  br label %if.then

mwifiex_11n_get_rx_reorder_tbl.exit:              ; preds = %land.lhs.true.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  %tobool.not = icmp eq ptr %tbl.023.i, null
  br i1 %tobool.not, label %mwifiex_11n_get_rx_reorder_tbl.exit.if.then_crit_edge, label %if.end5

mwifiex_11n_get_rx_reorder_tbl.exit.if.then_crit_edge: ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit.if.then_crit_edge, %mwifiex_11n_get_rx_reorder_tbl.exit.thread
  call void @__sanitizer_cov_trace_const_cmp1(i8 -25, i8 %pkt_type)
  %cmp.not = icmp eq i8 %pkt_type, -25
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mwifiex_11n_dispatch_pkt(ptr noundef %priv, ptr noundef %payload)
  br label %cleanup

if.end5:                                          ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 -26, i8 %pkt_type)
  %cmp7 = icmp eq i8 %pkt_type, -26
  br i1 %cmp7, label %land.lhs.true, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end5
  %amsdu = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 8
  %4 = ptrtoint ptr %amsdu to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %amsdu, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mwifiex_11n_dispatch_pkt(ptr noundef %priv, ptr noundef %payload)
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %start_win13 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 4
  %6 = ptrtoint ptr %start_win13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start_win13, align 4
  %win_size14 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 5
  %8 = ptrtoint ptr %win_size14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %win_size14, align 4
  %add = add i32 %7, 4095
  %flags = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not = icmp eq i8 %12, 0
  br i1 %tobool17.not, label %if.end23, label %if.end23.thread

if.end23:                                         ; preds = %if.end12
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool27.not = icmp eq i8 %15, 0
  br i1 %tobool27.not, label %if.end23.if.else52_crit_edge, label %if.end23.if.then28_crit_edge

if.end23.if.then28_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.end23.if.else52_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else52

if.end23.thread:                                  ; preds = %if.end12
  %and21 = and i8 %11, -3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %and21, ptr %flags, align 1
  %17 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool27.not253 = icmp eq i8 %17, 0
  br i1 %tobool27.not253, label %land.lhs.true35, label %if.end23.thread.if.then28_crit_edge

if.end23.thread.if.then28_crit_edge:              ; preds = %if.end23.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %if.end23.thread.if.then28_crit_edge, %if.end23.if.then28_crit_edge
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 1073741824, ptr noundef nonnull @.str.1) #8
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags, align 1
  %22 = and i8 %21, -2
  store i8 %22, ptr %flags, align 1
  br label %if.end80

land.lhs.true35:                                  ; preds = %if.end23.thread
  %conv36 = zext i16 %seq_num to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv36)
  %cmp37 = icmp sgt i32 %7, %conv36
  br i1 %cmp37, label %land.lhs.true39, label %land.lhs.true35.if.else52_crit_edge

land.lhs.true35.if.else52_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else52

land.lhs.true39:                                  ; preds = %land.lhs.true35
  %init_win = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 3
  %23 = ptrtoint ptr %init_win to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %init_win, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv36)
  %cmp41.not = icmp sgt i32 %24, %conv36
  br i1 %cmp41.not, label %land.lhs.true39.if.else52_crit_edge, label %if.then43

land.lhs.true39.if.else52_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else52

if.then43:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %26, i32 noundef 1073741824, ptr noundef nonnull @.str.2, i32 noundef %7, i32 noundef %conv36, i32 noundef %24) #8
  %27 = ptrtoint ptr %start_win13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv36, ptr %start_win13, align 4
  %add49 = add nsw i32 %conv36, -1
  br label %if.end80

if.else52:                                        ; preds = %land.lhs.true39.if.else52_crit_edge, %land.lhs.true35.if.else52_crit_edge, %if.end23.if.else52_crit_edge
  %add53 = add i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add53)
  %cmp54 = icmp sgt i32 %add53, 4095
  %conv57 = zext i16 %seq_num to i32
  br i1 %cmp54, label %if.then56, label %if.else68

if.then56:                                        ; preds = %if.else52
  %and59 = and i32 %add53, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and59, i32 %conv57)
  %cmp60.not = icmp ule i32 %and59, %conv57
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv57)
  %cmp64 = icmp ugt i32 %7, %conv57
  %or.cond = select i1 %cmp60.not, i1 %cmp64, i1 false
  br i1 %or.cond, label %if.then56.done_crit_edge, label %if.then56.if.end80_crit_edge

if.then56.if.end80_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then56.done_crit_edge:                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.else68:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv57)
  %cmp70 = icmp sle i32 %7, %conv57
  call void @__sanitizer_cov_trace_cmp4(i32 %add53, i32 %conv57)
  %cmp74.not = icmp sgt i32 %add53, %conv57
  %or.cond241 = and i1 %cmp70, %cmp74.not
  br i1 %or.cond241, label %if.else68.if.end80_crit_edge, label %if.else68.done_crit_edge

if.else68.done_crit_edge:                         ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.else68.if.end80_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.end80:                                         ; preds = %if.else68.if.end80_crit_edge, %if.then56.if.end80_crit_edge, %if.then43, %if.then28
  %start_win.0 = phi i32 [ %7, %if.then28 ], [ %conv36, %if.then43 ], [ %7, %if.then56.if.end80_crit_edge ], [ %7, %if.else68.if.end80_crit_edge ]
  %add.pn = phi i32 [ %add, %if.then28 ], [ %add49, %if.then43 ], [ %add, %if.then56.if.end80_crit_edge ], [ %add, %if.else68.if.end80_crit_edge ]
  %end_win.0.in = add i32 %add.pn, %9
  %end_win.0 = and i32 %end_win.0.in, 4095
  call void @__sanitizer_cov_trace_const_cmp1(i8 -25, i8 %pkt_type)
  %cmp82 = icmp eq i8 %pkt_type, -25
  %28 = trunc i32 %9 to i16
  %29 = add i16 %seq_num, 4095
  %30 = add i16 %29, %28
  %conv89 = and i16 %30, 4095
  %seq_num.addr.0 = select i1 %cmp82, i16 %conv89, i16 %seq_num
  call void @__sanitizer_cov_trace_cmp4(i32 %end_win.0, i32 %start_win.0)
  %cmp91 = icmp slt i32 %end_win.0, %start_win.0
  br i1 %cmp91, label %land.lhs.true93, label %if.end80.lor.lhs.false101_crit_edge

if.end80.lor.lhs.false101_crit_edge:              ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false101

land.lhs.true93:                                  ; preds = %if.end80
  %conv94 = zext i16 %seq_num.addr.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %start_win.0, i32 %conv94)
  %cmp95 = icmp sgt i32 %start_win.0, %conv94
  call void @__sanitizer_cov_trace_cmp4(i32 %end_win.0, i32 %conv94)
  %cmp99 = icmp ult i32 %end_win.0, %conv94
  %or.cond242 = select i1 %cmp95, i1 %cmp99, i1 false
  br i1 %or.cond242, label %land.lhs.true93.if.then112_crit_edge, label %land.lhs.true93.lor.lhs.false101_crit_edge

land.lhs.true93.lor.lhs.false101_crit_edge:       ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false101

land.lhs.true93.if.then112_crit_edge:             ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

lor.lhs.false101:                                 ; preds = %land.lhs.true93.lor.lhs.false101_crit_edge, %if.end80.lor.lhs.false101_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %end_win.0, i32 %start_win.0)
  %cmp102 = icmp sgt i32 %end_win.0, %start_win.0
  br i1 %cmp102, label %land.lhs.true104, label %lor.lhs.false101.if.end126_crit_edge

lor.lhs.false101.if.end126_crit_edge:             ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

land.lhs.true104:                                 ; preds = %lor.lhs.false101
  %conv105 = zext i16 %seq_num.addr.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %end_win.0, i32 %conv105)
  %cmp106 = icmp ult i32 %end_win.0, %conv105
  call void @__sanitizer_cov_trace_cmp4(i32 %start_win.0, i32 %conv105)
  %cmp110 = icmp sgt i32 %start_win.0, %conv105
  %or.cond243 = select i1 %cmp106, i1 true, i1 %cmp110
  br i1 %or.cond243, label %land.lhs.true104.if.then112_crit_edge, label %land.lhs.true104.if.end126_crit_edge

land.lhs.true104.if.end126_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

land.lhs.true104.if.then112_crit_edge:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.then112:                                       ; preds = %land.lhs.true104.if.then112_crit_edge, %land.lhs.true93.if.then112_crit_edge
  %conv113.pre-phi = phi i32 [ %conv94, %land.lhs.true93.if.then112_crit_edge ], [ %conv105, %land.lhs.true104.if.then112_crit_edge ]
  %sub114 = sub i32 %conv113.pre-phi, %9
  %add115 = add i32 %sub114, 1
  %add124 = add i32 %sub114, 4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add115)
  %cmp116259 = icmp slt i32 %add115, 0
  %start_win.1 = select i1 %cmp116259, i32 %add124, i32 %add115
  tail call fastcc void @mwifiex_11n_dispatch_pkt_until_start_win(ptr noundef %priv, ptr noundef nonnull %tbl.023.i, i32 noundef %start_win.1)
  br label %if.end126

if.end126:                                        ; preds = %if.then112, %land.lhs.true104.if.end126_crit_edge, %lor.lhs.false101.if.end126_crit_edge
  %start_win.2 = phi i32 [ %start_win.1, %if.then112 ], [ %start_win.0, %lor.lhs.false101.if.end126_crit_edge ], [ %start_win.0, %land.lhs.true104.if.end126_crit_edge ]
  br i1 %cmp82, label %if.end126.if.end150_crit_edge, label %if.then130

if.end126.if.end150_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

if.then130:                                       ; preds = %if.end126
  %conv131 = zext i16 %seq_num.addr.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %start_win.2, i32 %conv131)
  %cmp132.not = icmp sgt i32 %start_win.2, %conv131
  %add140 = add nuw nsw i32 %conv131, 4096
  %conv131.pn = select i1 %cmp132.not, i32 %add140, i32 %conv131
  %pkt_index.0.in = sub i32 %conv131.pn, %start_win.2
  %rx_reorder_ptr = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 6
  %31 = ptrtoint ptr %rx_reorder_ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_reorder_ptr, align 4
  %idxprom = and i32 %pkt_index.0.in, 65535
  %arrayidx = getelementptr ptr, ptr %32, i32 %idxprom
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %tobool144.not = icmp eq ptr %34, null
  br i1 %tobool144.not, label %if.end146, label %if.then130.done_crit_edge

if.then130.done_crit_edge:                        ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end146:                                        ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %payload, ptr %arrayidx, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.end146, %if.end126.if.end150_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list.i) #8
  %36 = getelementptr inbounds i8, ptr %list.i, i32 12
  %37 = call ptr @memset(ptr %36, i32 255, i32 44)
  %38 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.79, ptr %list.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %list.i, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list.i, i32 0, i32 1
  %40 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %qlen.i.i, align 4
  call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  %rx_reorder_ptr.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 6
  %41 = ptrtoint ptr %win_size14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %win_size14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp53.i = icmp sgt i32 %42, 0
  br i1 %cmp53.i, label %for.body.i246.preheader, label %if.end150.if.end21.i_crit_edge

if.end150.if.end21.i_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

for.body.i246.preheader:                          ; preds = %if.end150
  %43 = ptrtoint ptr %rx_reorder_ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_reorder_ptr.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool.not.i245264 = icmp eq ptr %46, null
  br i1 %tobool.not.i245264, label %for.body.i246.preheader.if.end21.i_crit_edge, label %for.body.i246.preheader.if.end.i_crit_edge

for.body.i246.preheader.if.end.i_crit_edge:       ; preds = %for.body.i246.preheader
  br label %if.end.i

for.body.i246.preheader.if.end21.i_crit_edge:     ; preds = %for.body.i246.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

for.body.i246:                                    ; preds = %if.end.i
  %47 = ptrtoint ptr %rx_reorder_ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_reorder_ptr.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %48, i32 %inc.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i245 = icmp eq ptr %50, null
  br i1 %tobool.not.i245, label %for.body.i246.if.then6.i_crit_edge, label %for.body.i246.if.end.i_crit_edge

for.body.i246.if.end.i_crit_edge:                 ; preds = %for.body.i246
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.body.i246.if.then6.i_crit_edge:               ; preds = %for.body.i246
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

if.end.i:                                         ; preds = %for.body.i246.if.end.i_crit_edge, %for.body.i246.preheader.if.end.i_crit_edge
  %51 = phi ptr [ %50, %for.body.i246.if.end.i_crit_edge ], [ %46, %for.body.i246.preheader.if.end.i_crit_edge ]
  %i.054.i265 = phi i32 [ %inc.i, %for.body.i246.if.end.i_crit_edge ], [ 0, %for.body.i246.preheader.if.end.i_crit_edge ]
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %list.i, ptr %51, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %51, i32 0, i32 1
  %55 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %51, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %51, ptr %53, align 4
  %57 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i = add i32 %58, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i, align 4
  %59 = ptrtoint ptr %rx_reorder_ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_reorder_ptr.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %60, i32 %i.054.i265
  %61 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %arrayidx4.i, align 4
  %inc.i = add nuw nsw i32 %i.054.i265, 1
  %62 = ptrtoint ptr %win_size14 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %win_size14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %inc.i)
  %cmp.i = icmp sgt i32 %63, %inc.i
  br i1 %cmp.i, label %for.body.i246, label %if.end.i.if.then6.i_crit_edge

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i.if.then6.i_crit_edge, %for.body.i246.if.then6.i_crit_edge
  %sub.i = sub i32 %63, %inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp958.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp958.i, label %if.then6.i.for.body10.i_crit_edge, label %if.then6.i.if.end21.i_crit_edge

if.then6.i.if.end21.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then6.i.for.body10.i_crit_edge:                ; preds = %if.then6.i
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %if.then6.i.for.body10.i_crit_edge
  %j.059.i = phi i32 [ %inc19.i, %for.body10.i.for.body10.i_crit_edge ], [ 0, %if.then6.i.for.body10.i_crit_edge ]
  %64 = ptrtoint ptr %rx_reorder_ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_reorder_ptr.i, align 4
  %add.i = add nuw i32 %j.059.i, %inc.i
  %arrayidx12.i = getelementptr ptr, ptr %65, i32 %add.i
  %66 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx12.i, align 4
  %arrayidx14.i = getelementptr ptr, ptr %65, i32 %j.059.i
  %68 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %arrayidx14.i, align 4
  %69 = load ptr, ptr %rx_reorder_ptr.i, align 4
  %arrayidx17.i = getelementptr ptr, ptr %69, i32 %add.i
  %70 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %arrayidx17.i, align 4
  %inc19.i = add nuw nsw i32 %j.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc19.i, %sub.i
  br i1 %exitcond.not.i, label %for.body10.i.if.end21.i_crit_edge, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i

for.body10.i.if.end21.i_crit_edge:                ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %for.body10.i.if.end21.i_crit_edge, %if.then6.i.if.end21.i_crit_edge, %for.body.i246.preheader.if.end21.i_crit_edge, %if.end150.if.end21.i_crit_edge
  %i.0.lcssa66.i = phi i32 [ %inc.i, %if.then6.i.if.end21.i_crit_edge ], [ 0, %if.end150.if.end21.i_crit_edge ], [ 0, %for.body.i246.preheader.if.end21.i_crit_edge ], [ %inc.i, %for.body10.i.if.end21.i_crit_edge ]
  %71 = ptrtoint ptr %start_win13 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %start_win13, align 4
  %add22.i = add i32 %72, %i.0.lcssa66.i
  %and.i = and i32 %add22.i, 4095
  store i32 %and.i, ptr %start_win13, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  %73 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %list.i, align 4
  %cmp.i.i60.i = icmp eq ptr %74, %list.i
  %tobool.not.i5261.i = icmp eq ptr %74, null
  %tobool.not.i62.i = or i1 %cmp.i.i60.i, %tobool.not.i5261.i
  br i1 %tobool.not.i62.i, label %if.end21.i.mwifiex_11n_scan_and_dispatch.exit_crit_edge, label %if.end21.i.while.body.i_crit_edge

if.end21.i.while.body.i_crit_edge:                ; preds = %if.end21.i
  br label %while.body.i

if.end21.i.mwifiex_11n_scan_and_dispatch.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_scan_and_dispatch.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end21.i.while.body.i_crit_edge
  %75 = phi ptr [ %85, %while.body.i.while.body.i_crit_edge ], [ %74, %if.end21.i.while.body.i_crit_edge ]
  %76 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i.i = add i32 %77, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i, align 4
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %75, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %75, i32 0, i32 1
  %80 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %75, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %79, i32 0, i32 1
  %82 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %81, ptr %prev17.i.i.i, align 4
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %79, ptr %81, align 8
  call fastcc void @mwifiex_11n_dispatch_pkt(ptr noundef %priv, ptr noundef nonnull %75) #8
  %84 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %list.i, align 4
  %cmp.i.i.i = icmp eq ptr %85, %list.i
  %tobool.not.i52.i = icmp eq ptr %85, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i52.i
  br i1 %tobool.not.i.i, label %while.body.i.mwifiex_11n_scan_and_dispatch.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.mwifiex_11n_scan_and_dispatch.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_scan_and_dispatch.exit

mwifiex_11n_scan_and_dispatch.exit:               ; preds = %while.body.i.mwifiex_11n_scan_and_dispatch.exit_crit_edge, %if.end21.i.mwifiex_11n_scan_and_dispatch.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list.i) #8
  br label %done

done:                                             ; preds = %mwifiex_11n_scan_and_dispatch.exit, %if.then130.done_crit_edge, %if.else68.done_crit_edge, %if.then56.done_crit_edge
  %ret.0 = phi i32 [ 0, %mwifiex_11n_scan_and_dispatch.exit ], [ -1, %if.then56.done_crit_edge ], [ -1, %if.else68.done_crit_edge ], [ -1, %if.then130.done_crit_edge ]
  %timer_is_set = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 7, i32 3
  %86 = ptrtoint ptr %timer_is_set to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %timer_is_set, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool151.not = icmp eq i8 %87, 0
  br i1 %tobool151.not, label %done.if.then156_crit_edge, label %lor.lhs.false152

done.if.then156_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then156

lor.lhs.false152:                                 ; preds = %done
  %88 = ptrtoint ptr %start_win13 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %start_win13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %89)
  %cmp154.not = icmp eq i32 %7, %89
  br i1 %cmp154.not, label %lor.lhs.false152.cleanup_crit_edge, label %lor.lhs.false152.if.then156_crit_edge

lor.lhs.false152.if.then156_crit_edge:            ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then156

lor.lhs.false152.cleanup_crit_edge:               ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then156:                                       ; preds = %lor.lhs.false152.if.then156_crit_edge, %done.if.then156_crit_edge
  %90 = ptrtoint ptr %win_size14 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %win_size14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %91)
  %cmp.i248 = icmp sgt i32 %91, 31
  %..i = select i1 %cmp.i248, i32 15, i32 50
  %mul.i = mul i32 %..i, %91
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %mul.i) #8
  %timer_context.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 7
  %add.i250 = add i32 %call2.i.i, %92
  %call2.i = call i32 @mod_timer(ptr noundef %timer_context.i, i32 noundef %add.i250) #8
  %93 = ptrtoint ptr %timer_is_set to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %timer_is_set, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then156, %lor.lhs.false152.cleanup_crit_edge, %if.then10, %if.then3, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %if.then3 ], [ 0, %if.then.cleanup_crit_edge ], [ %ret.0, %if.then156 ], [ %ret.0, %lor.lhs.false152.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_11n_dispatch_pkt(ptr noundef %priv, ptr noundef %payload) unnamed_addr #0 align 64 {
entry:
  %list.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %payload, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %payload, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %rx_pkt_type.i = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %rx_pkt_type.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %rx_pkt_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -6656, i16 %5)
  %cmp.i = icmp eq i16 %5, -6656
  br i1 %cmp.i, label %if.then.i, label %if.end3

if.then.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list.i) #8
  %6 = getelementptr inbounds i8, ptr %list.i, i32 12
  %7 = call ptr @memset(ptr %6, i32 255, i32 44)
  %8 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.79, ptr %list.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list.i, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list.i, i32 0, i32 1
  %10 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i, align 4
  %rx_pkt_offset.i = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %rx_pkt_offset.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %rx_pkt_offset.i, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12) #8
  %conv2.i = zext i16 %13 to i32
  %call.i = call ptr @skb_pull(ptr noundef nonnull %payload, i32 noundef %conv2.i) #8
  %rx_pkt_length.i = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %rx_pkt_length.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %rx_pkt_length.i, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15) #8
  %conv3.i = zext i16 %16 to i32
  call void @skb_trim(ptr noundef nonnull %payload, i32 noundef %conv3.i) #8
  %curr_addr.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 7
  %iftype.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103, i32 1
  %17 = ptrtoint ptr %iftype.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iftype.i, align 4
  call void @ieee80211_amsdu_to_8023s(ptr noundef nonnull %payload, ptr noundef nonnull %list.i, ptr noundef %curr_addr.i, i32 noundef %18, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %19 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list.i, align 4
  %cmp.i42.i = icmp eq ptr %20, %list.i
  br i1 %cmp.i42.i, label %if.then.i.mwifiex_11n_dispatch_amsdu_pkt.exit.thread_crit_edge, label %while.body.lr.ph.i

if.then.i.mwifiex_11n_dispatch_amsdu_pkt.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_dispatch_amsdu_pkt.exit.thread

while.body.lr.ph.i:                               ; preds = %if.then.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %payload, i32 0, i32 6
  %bss_role.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end23.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %21 = phi ptr [ %20, %while.body.lr.ph.i ], [ %45, %if.end23.i.while.body.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %while.body.i.__skb_dequeue.exit.i_crit_edge, label %if.then.i.i

while.body.i.__skb_dequeue.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_dequeue.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %21, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %prev17.i.i.i, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %25, ptr %27, align 8
  br label %__skb_dequeue.exit.i

__skb_dequeue.exit.i:                             ; preds = %if.then.i.i, %while.body.i.__skb_dequeue.exit.i_crit_edge
  %data6.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 19
  %30 = ptrtoint ptr %data6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data6.i, align 4
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %fw_cap_info.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %33, i32 0, i32 47
  %34 = ptrtoint ptr %fw_cap_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fw_cap_info.i, align 4
  %and.i = and i32 %35, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %__skb_dequeue.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

__skb_dequeue.exit.i.if.end.i_crit_edge:          ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %__skb_dequeue.exit.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %31, i32 0, i32 2
  %36 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30451, i16 %37)
  %cmp9.i = icmp eq i16 %37, -30451
  br i1 %cmp9.i, label %if.then11.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  call void @mwifiex_process_tdls_action_frame(ptr noundef %priv, ptr noundef %31, i32 noundef %39) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then11.i, %land.lhs.true.i.if.end.i_crit_edge, %__skb_dequeue.exit.i.if.end.i_crit_edge
  %40 = ptrtoint ptr %bss_role.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bss_role.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp13.i = icmp eq i8 %41, 1
  br i1 %cmp13.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = call i32 @mwifiex_uap_recv_packet(ptr noundef %priv, ptr noundef %21) #8
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i = call i32 @mwifiex_recv_packet(ptr noundef %priv, ptr noundef %21) #8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then15.i
  %ret.0.i = phi i32 [ %call16.i, %if.then15.i ], [ %call17.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp19.i = icmp eq i32 %ret.0.i, -1
  br i1 %cmp19.i, label %if.then21.i, label %if.end18.i.if.end23.i_crit_edge

if.end18.i.if.end23.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %43, i32 noundef 4, ptr noundef nonnull @.str.20) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end23.i_crit_edge
  %44 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %list.i, align 4
  %cmp.i.i = icmp eq ptr %45, %list.i
  br i1 %cmp.i.i, label %if.end23.i.mwifiex_11n_dispatch_amsdu_pkt.exit.thread_crit_edge, label %if.end23.i.while.body.i_crit_edge

if.end23.i.while.body.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end23.i.mwifiex_11n_dispatch_amsdu_pkt.exit.thread_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_dispatch_amsdu_pkt.exit.thread

mwifiex_11n_dispatch_amsdu_pkt.exit.thread:       ; preds = %if.end23.i.mwifiex_11n_dispatch_amsdu_pkt.exit.thread_crit_edge, %if.then.i.mwifiex_11n_dispatch_amsdu_pkt.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list.i) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %46 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bss_role, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp = icmp eq i8 %47, 1
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @mwifiex_handle_uap_rx_forward(ptr noundef %priv, ptr noundef nonnull %payload) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @mwifiex_process_rx_packet(ptr noundef %priv, ptr noundef nonnull %payload) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %mwifiex_11n_dispatch_amsdu_pkt.exit.thread, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_11n_dispatch_pkt_until_start_win(ptr noundef %priv, ptr nocapture noundef %tbl, i32 noundef %start_win) unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #8
  %0 = getelementptr inbounds i8, ptr %list, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.79, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %rx_reorder_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 90
  call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  %start_win1 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl, i32 0, i32 4
  %5 = ptrtoint ptr %start_win1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start_win1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %start_win)
  %cmp = icmp slt i32 %6, %start_win
  br i1 %cmp, label %cond.true, label %cond.false5

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %start_win, %6
  %win_size = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl, i32 0, i32 5
  %7 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %win_size, align 4
  %9 = call i32 @llvm.smin.i32(i32 %sub, i32 %8)
  br label %cond.end7

cond.false5:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %win_size6 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl, i32 0, i32 5
  %10 = ptrtoint ptr %win_size6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %win_size6, align 4
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false5, %cond.true
  %cond8 = phi i32 [ %9, %cond.true ], [ %11, %cond.false5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond8)
  %cmp966 = icmp sgt i32 %cond8, 0
  br i1 %cmp966, label %for.body.lr.ph, label %cond.end7.for.cond14.preheader_crit_edge

cond.end7.for.cond14.preheader_crit_edge:         ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond14.preheader

for.body.lr.ph:                                   ; preds = %cond.end7
  %rx_reorder_ptr = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl, i32 0, i32 6
  br label %for.body

for.cond14.preheader:                             ; preds = %for.inc.for.cond14.preheader_crit_edge, %cond.end7.for.cond14.preheader_crit_edge
  %win_size15 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl, i32 0, i32 5
  %12 = ptrtoint ptr %win_size15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %win_size15, align 4
  %sub1669 = sub i32 %13, %cond8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1669)
  %cmp1770 = icmp sgt i32 %sub1669, 0
  br i1 %cmp1770, label %for.body18.lr.ph, label %for.cond14.preheader.for.end28_crit_edge

for.cond14.preheader.for.end28_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28

for.body18.lr.ph:                                 ; preds = %for.cond14.preheader
  %rx_reorder_ptr19 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl, i32 0, i32 6
  br label %for.body18

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %rx_reorder_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_reorder_ptr, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.067
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list, ptr %17, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %prev10.i.i.i, align 4
  store volatile ptr %17, ptr %prev.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %17, ptr %19, align 4
  %23 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  %25 = ptrtoint ptr %rx_reorder_ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_reorder_ptr, align 4
  %arrayidx13 = getelementptr ptr, ptr %26, i32 %i.067
  %27 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, %cond8
  br i1 %exitcond.not, label %for.inc.for.cond14.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.cond14.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond14.preheader

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.body18.lr.ph
  %i.171 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc27, %for.body18.for.body18_crit_edge ]
  %28 = ptrtoint ptr %rx_reorder_ptr19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_reorder_ptr19, align 4
  %add = add i32 %i.171, %cond8
  %arrayidx20 = getelementptr ptr, ptr %29, i32 %add
  %30 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx20, align 4
  %arrayidx22 = getelementptr ptr, ptr %29, i32 %i.171
  %32 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arrayidx22, align 4
  %33 = load ptr, ptr %rx_reorder_ptr19, align 4
  %arrayidx25 = getelementptr ptr, ptr %33, i32 %add
  %34 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx25, align 4
  %inc27 = add nuw nsw i32 %i.171, 1
  %35 = ptrtoint ptr %win_size15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %win_size15, align 4
  %sub16 = sub i32 %36, %cond8
  %cmp17 = icmp slt i32 %inc27, %sub16
  br i1 %cmp17, label %for.body18.for.body18_crit_edge, label %for.body18.for.end28_crit_edge

for.body18.for.end28_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18

for.end28:                                        ; preds = %for.body18.for.end28_crit_edge, %for.cond14.preheader.for.end28_crit_edge
  %37 = ptrtoint ptr %start_win1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %start_win, ptr %start_win1, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  %38 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %list, align 4
  %cmp.i.i72 = icmp eq ptr %39, %list
  %tobool.not.i6573 = icmp eq ptr %39, null
  %tobool.not.i74 = or i1 %cmp.i.i72, %tobool.not.i6573
  br i1 %tobool.not.i74, label %for.end28.while.end_crit_edge, label %for.end28.while.body_crit_edge

for.end28.while.body_crit_edge:                   ; preds = %for.end28
  br label %while.body

for.end28.while.end_crit_edge:                    ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end28.while.body_crit_edge
  %40 = phi ptr [ %50, %while.body.while.body_crit_edge ], [ %39, %for.end28.while.body_crit_edge ]
  %41 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %40, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %46, ptr %prev17.i.i, align 4
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %44, ptr %46, align 8
  call fastcc void @mwifiex_11n_dispatch_pkt(ptr noundef %priv, ptr noundef nonnull %40)
  %49 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %50, %list
  %tobool.not.i65 = icmp eq ptr %50, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i65
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end28.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_del_ba_tbl(ptr noundef %priv, i32 noundef %tid, ptr noundef %peer_mac, i8 noundef zeroext %type, i32 noundef %initiator) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type)
  %cmp = icmp eq i8 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %initiator)
  %tobool.not = icmp ne i32 %initiator, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %initiator)
  %tobool3.not = icmp eq i32 %initiator, 0
  %cleanup_rx_reorder_tbl.0.in = select i1 %cmp, i1 %tobool.not, i1 %tobool3.not
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %peer_mac, i32 noundef %tid, i32 noundef %initiator) #8
  br i1 %cleanup_rx_reorder_tbl.0.in, label %if.then7, label %if.else12

if.then7:                                         ; preds = %entry
  %rx_reorder_tbl_lock.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  %rx_reorder_tbl_ptr.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 89
  %2 = ptrtoint ptr %rx_reorder_tbl_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tbl.021.i = load ptr, ptr %rx_reorder_tbl_ptr.i, align 4
  %cmp.not22.i = icmp eq ptr %tbl.021.i, %rx_reorder_tbl_ptr.i
  br i1 %cmp.not22.i, label %if.then7.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge, label %if.then7.for.body.i_crit_edge

if.then7.for.body.i_crit_edge:                    ; preds = %if.then7
  br label %for.body.i

if.then7.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_get_rx_reorder_tbl.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then7.for.body.i_crit_edge
  %tbl.023.i = phi ptr [ %tbl.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tbl.021.i, %if.then7.for.body.i_crit_edge ]
  %ta2.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ta2.i, ptr noundef dereferenceable(6) %peer_mac, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %tid3.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 1
  %3 = ptrtoint ptr %tid3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tid3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %tid)
  %cmp4.i = icmp eq i32 %4, %tid
  br i1 %cmp4.i, label %mwifiex_11n_get_rx_reorder_tbl.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %5 = ptrtoint ptr %tbl.023.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tbl.0.i = load ptr, ptr %tbl.023.i, align 4
  %cmp.not.i = icmp eq ptr %tbl.0.i, %rx_reorder_tbl_ptr.i
  br i1 %cmp.not.i, label %for.inc.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_get_rx_reorder_tbl.exit.thread

mwifiex_11n_get_rx_reorder_tbl.exit.thread:       ; preds = %for.inc.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge, %if.then7.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  br label %if.then9

mwifiex_11n_get_rx_reorder_tbl.exit:              ; preds = %land.lhs.true.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  %tobool8.not = icmp eq ptr %tbl.023.i, null
  br i1 %tobool8.not, label %mwifiex_11n_get_rx_reorder_tbl.exit.if.then9_crit_edge, label %if.end11

mwifiex_11n_get_rx_reorder_tbl.exit.if.then9_crit_edge: ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then9:                                         ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit.if.then9_crit_edge, %mwifiex_11n_get_rx_reorder_tbl.exit.thread
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end11:                                         ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mwifiex_del_rx_reorder_entry(ptr noundef %priv, ptr noundef nonnull %tbl.023.i)
  br label %cleanup

if.else12:                                        ; preds = %entry
  %call13 = tail call ptr @mwifiex_get_ba_tbl(ptr noundef %priv, i32 noundef %tid, ptr noundef %peer_mac) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end17:                                         ; preds = %if.else12
  %call18 = tail call zeroext i8 @mwifiex_wmm_downgrade_tid(ptr noundef %priv, i32 noundef %tid) #8
  %call21 = tail call ptr @mwifiex_wmm_get_ralist_node(ptr noundef %priv, i8 noundef zeroext %call18, ptr noundef %peer_mac) #8
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end17.if.end24_crit_edge, label %if.then23

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %amsdu_in_ampdu = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call21, i32 0, i32 8
  %10 = ptrtoint ptr %amsdu_in_ampdu to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %amsdu_in_ampdu, align 4
  %ba_status = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call21, i32 0, i32 7
  %11 = ptrtoint ptr %ba_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ba_status, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end17.if.end24_crit_edge
  %tx_ba_stream_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_ba_stream_tbl_lock) #8
  tail call void @mwifiex_11n_delete_tx_ba_stream_tbl_entry(ptr noundef %priv, ptr noundef nonnull %call13) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_ba_stream_tbl_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then15, %if.end11, %if.then9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_ba_tbl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_wmm_downgrade_tid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_wmm_get_ralist_node(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_delete_tx_ba_stream_tbl_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_11n_addba_resp(ptr noundef %priv, ptr noundef %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %block_ack_param_set1 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %block_ack_param_set1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %block_ack_param_set1, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %and = lshr i32 %conv, 2
  %3 = and i32 %and, 15
  %status_code = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %status_code to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %status_code, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %peer_mac_addr = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, ptr %params, i32 0, i32 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str.6, ptr noundef %peer_mac_addr, i32 noundef %3) #8
  %rx_reorder_tbl_lock.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  %rx_reorder_tbl_ptr.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 89
  %8 = ptrtoint ptr %rx_reorder_tbl_ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tbl.021.i = load ptr, ptr %rx_reorder_tbl_ptr.i, align 4
  %cmp.not22.i = icmp eq ptr %tbl.021.i, %rx_reorder_tbl_ptr.i
  br i1 %cmp.not22.i, label %if.then.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_get_rx_reorder_tbl.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %tbl.023.i = phi ptr [ %tbl.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tbl.021.i, %if.then.for.body.i_crit_edge ]
  %ta2.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ta2.i, ptr noundef dereferenceable(6) %peer_mac_addr, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %tid3.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 1
  %9 = ptrtoint ptr %tid3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tid3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp4.i = icmp eq i32 %10, %3
  br i1 %cmp4.i, label %mwifiex_11n_get_rx_reorder_tbl.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %tbl.023.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %tbl.0.i = load ptr, ptr %tbl.023.i, align 4
  %cmp.not.i = icmp eq ptr %tbl.0.i, %rx_reorder_tbl_ptr.i
  br i1 %cmp.not.i, label %for.inc.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_get_rx_reorder_tbl.exit.thread

mwifiex_11n_get_rx_reorder_tbl.exit.thread:       ; preds = %for.inc.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge, %if.then.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  br label %cleanup

mwifiex_11n_get_rx_reorder_tbl.exit:              ; preds = %land.lhs.true.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  %tobool.not = icmp eq ptr %tbl.023.i, null
  br i1 %tobool.not, label %mwifiex_11n_get_rx_reorder_tbl.exit.cleanup_crit_edge, label %if.then6

mwifiex_11n_get_rx_reorder_tbl.exit.cleanup_crit_edge: ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mwifiex_del_rx_reorder_entry(ptr noundef %priv, ptr noundef nonnull %tbl.023.i)
  br label %cleanup

if.end7:                                          ; preds = %entry
  %12 = lshr i32 %conv, 6
  %peer_mac_addr11 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, ptr %params, i32 0, i32 1
  %rx_reorder_tbl_lock.i60 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock.i60) #8
  %rx_reorder_tbl_ptr.i61 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 89
  %13 = ptrtoint ptr %rx_reorder_tbl_ptr.i61 to i32
  call void @__asan_load4_noabort(i32 %13)
  %tbl.021.i62 = load ptr, ptr %rx_reorder_tbl_ptr.i61, align 4
  %cmp.not22.i63 = icmp eq ptr %tbl.021.i62, %rx_reorder_tbl_ptr.i61
  br i1 %cmp.not22.i63, label %if.end7.mwifiex_11n_get_rx_reorder_tbl.exit76.thread_crit_edge, label %if.end7.for.body.i68_crit_edge

if.end7.for.body.i68_crit_edge:                   ; preds = %if.end7
  br label %for.body.i68

if.end7.mwifiex_11n_get_rx_reorder_tbl.exit76.thread_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_get_rx_reorder_tbl.exit76.thread

for.body.i68:                                     ; preds = %for.inc.i74.for.body.i68_crit_edge, %if.end7.for.body.i68_crit_edge
  %tbl.023.i64 = phi ptr [ %tbl.0.i72, %for.inc.i74.for.body.i68_crit_edge ], [ %tbl.021.i62, %if.end7.for.body.i68_crit_edge ]
  %ta2.i65 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i64, i32 0, i32 2
  %bcmp.i66 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ta2.i65, ptr noundef dereferenceable(6) %peer_mac_addr11, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i66)
  %tobool.not.i67 = icmp eq i32 %bcmp.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i71, label %for.body.i68.for.inc.i74_crit_edge

for.body.i68.for.inc.i74_crit_edge:               ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i74

land.lhs.true.i71:                                ; preds = %for.body.i68
  %tid3.i69 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i64, i32 0, i32 1
  %14 = ptrtoint ptr %tid3.i69 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tid3.i69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %3)
  %cmp4.i70 = icmp eq i32 %15, %3
  br i1 %cmp4.i70, label %mwifiex_11n_get_rx_reorder_tbl.exit76, label %land.lhs.true.i71.for.inc.i74_crit_edge

land.lhs.true.i71.for.inc.i74_crit_edge:          ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i74

for.inc.i74:                                      ; preds = %land.lhs.true.i71.for.inc.i74_crit_edge, %for.body.i68.for.inc.i74_crit_edge
  %16 = ptrtoint ptr %tbl.023.i64 to i32
  call void @__asan_load4_noabort(i32 %16)
  %tbl.0.i72 = load ptr, ptr %tbl.023.i64, align 4
  %cmp.not.i73 = icmp eq ptr %tbl.0.i72, %rx_reorder_tbl_ptr.i61
  br i1 %cmp.not.i73, label %for.inc.i74.mwifiex_11n_get_rx_reorder_tbl.exit76.thread_crit_edge, label %for.inc.i74.for.body.i68_crit_edge

for.inc.i74.for.body.i68_crit_edge:               ; preds = %for.inc.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i68

for.inc.i74.mwifiex_11n_get_rx_reorder_tbl.exit76.thread_crit_edge: ; preds = %for.inc.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_get_rx_reorder_tbl.exit76.thread

mwifiex_11n_get_rx_reorder_tbl.exit76.thread:     ; preds = %for.inc.i74.mwifiex_11n_get_rx_reorder_tbl.exit76.thread_crit_edge, %if.end7.mwifiex_11n_get_rx_reorder_tbl.exit76.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i60) #8
  br label %if.end29

mwifiex_11n_get_rx_reorder_tbl.exit76:            ; preds = %land.lhs.true.i71
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i60) #8
  %tobool14.not = icmp eq ptr %tbl.023.i64, null
  br i1 %tobool14.not, label %mwifiex_11n_get_rx_reorder_tbl.exit76.if.end29_crit_edge, label %if.then15

mwifiex_11n_get_rx_reorder_tbl.exit76.if.end29_crit_edge: ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then15:                                        ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit76
  %and17 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then15.if.else_crit_edge, label %land.lhs.true

if.then15.if.else_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then15
  %rx_amsdu = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86, i32 4
  %17 = ptrtoint ptr %rx_amsdu to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rx_amsdu, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool20.not = icmp eq i8 %18, 0
  br i1 %tobool20.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true21

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true21:                                  ; preds = %land.lhs.true
  %amsdu = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 %3, i32 2
  %19 = ptrtoint ptr %amsdu to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %amsdu, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp23.not = icmp eq i8 %20, -1
  br i1 %cmp23.not, label %land.lhs.true21.if.else_crit_edge, label %if.then25

land.lhs.true21.if.else_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then25:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  %amsdu26 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i64, i32 0, i32 8
  %21 = ptrtoint ptr %amsdu26 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %amsdu26, align 4
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true21.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then15.if.else_crit_edge
  %amsdu27 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i64, i32 0, i32 8
  %22 = ptrtoint ptr %amsdu27 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %amsdu27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then25, %mwifiex_11n_get_rx_reorder_tbl.exit76.if.end29_crit_edge, %mwifiex_11n_get_rx_reorder_tbl.exit76.thread
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %ssn = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %ssn to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %ssn, align 1
  %conv33 = zext i16 %26 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %24, i32 noundef 16, ptr noundef nonnull @.str.7, ptr noundef %peer_mac_addr11, i32 noundef %3, i32 noundef %conv33, i32 noundef %12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then6, %mwifiex_11n_get_rx_reorder_tbl.exit.cleanup_crit_edge, %mwifiex_11n_get_rx_reorder_tbl.exit.thread
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_ba_stream_timeout(ptr noundef %priv, ptr nocapture noundef readonly %event) local_unnamed_addr #0 align 64 {
entry:
  %delba = alloca %struct.host_cmd_ds_11n_delba, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %delba) #8
  %0 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %delba, i32 0, i32 1
  %1 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %delba, i32 0, i32 2
  %2 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %delba, i32 0, i32 3
  %3 = call ptr @memset(ptr %delba, i32 0, i32 12)
  %peer_mac_addr1 = getelementptr inbounds %struct.host_cmd_ds_11n_batimeout, ptr %event, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %0, ptr %peer_mac_addr1, i32 6)
  %5 = ptrtoint ptr %event to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %event, align 1
  %conv3 = zext i8 %6 to i16
  %7 = shl nuw nsw i16 %conv3, 4
  %8 = and i16 %7, 240
  %origninator = getelementptr inbounds %struct.host_cmd_ds_11n_batimeout, ptr %event, i32 0, i32 2
  %9 = ptrtoint ptr %origninator to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %origninator, align 1
  %conv9 = zext i8 %10 to i16
  %11 = shl nuw nsw i16 %conv9, 3
  %12 = and i16 %11, 248
  %or15 = or i16 %12, %8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %or15, ptr %1, align 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 9984, ptr %2, align 1
  %call = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 208, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %delba, i1 noundef zeroext false) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %delba) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_cleanup_reorder_tbl(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_reorder_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  %rx_reorder_tbl_ptr = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 89
  %0 = ptrtoint ptr %rx_reorder_tbl_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_reorder_tbl_ptr, align 4
  %cmp.not27 = icmp eq ptr %1, %rx_reorder_tbl_ptr
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %del_tbl_ptr.028 = phi ptr [ %tmp_node.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %del_tbl_ptr.028 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp_node.0 = load ptr, ptr %del_tbl_ptr.028, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  tail call fastcc void @mwifiex_del_rx_reorder_entry(ptr noundef %priv, ptr noundef %del_tbl_ptr.028)
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  %cmp.not = icmp eq ptr %tmp_node.0, %rx_reorder_tbl_ptr
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %3 = ptrtoint ptr %rx_reorder_tbl_ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %rx_reorder_tbl_ptr, ptr %rx_reorder_tbl_ptr, align 4
  %prev.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 89, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rx_reorder_tbl_ptr, ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  %rx_seq.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 87
  %5 = call ptr @memset(ptr %rx_seq.i, i32 255, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_update_rxreor_flags(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %0 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp30.not = icmp eq i8 %1, 0
  br i1 %cmp30.not, label %entry.for.end16_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end16

for.body:                                         ; preds = %for.inc15.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.inc15.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.031
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc15_crit_edge, label %if.end

for.body.for.inc15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc15

if.end:                                           ; preds = %for.body
  %rx_reorder_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  %rx_reorder_tbl_ptr = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %rx_reorder_tbl_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %tbl.026 = load ptr, ptr %rx_reorder_tbl_ptr, align 4
  %cmp5.not27 = icmp eq ptr %tbl.026, %rx_reorder_tbl_ptr
  br i1 %cmp5.not27, label %if.end.for.end_crit_edge, label %if.end.for.body7_crit_edge

if.end.for.body7_crit_edge:                       ; preds = %if.end
  br label %for.body7

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %if.end.for.body7_crit_edge
  %tbl.028 = phi ptr [ %tbl.0, %for.body7.for.body7_crit_edge ], [ %tbl.026, %if.end.for.body7_crit_edge ]
  %flags8 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.028, i32 0, i32 9
  %5 = ptrtoint ptr %flags8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %flags, ptr %flags8, align 1
  %6 = ptrtoint ptr %tbl.028 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tbl.0 = load ptr, ptr %tbl.028, align 4
  %cmp5.not = icmp eq ptr %tbl.0, %rx_reorder_tbl_ptr
  br i1 %cmp5.not, label %for.body7.for.end_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body7.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock) #8
  br label %for.inc15

for.inc15:                                        ; preds = %for.end, %for.body.for.inc15_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %7 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %priv_num, align 4
  %conv = zext i8 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc15.for.body_crit_edge, label %for.inc15.for.end16_crit_edge

for.inc15.for.end16_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end16

for.inc15.for.body_crit_edge:                     ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end16:                                        ; preds = %for.inc15.for.end16_crit_edge, %entry.for.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_coex_ampdu_rxwinsize(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %0 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp61.not = icmp eq i8 %1, 0
  br i1 %cmp61.not, label %entry.if.end36_crit_edge, label %for.body.preheader

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i8 %1 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %count.063 = phi i8 [ 0, %for.body.preheader ], [ %count.254, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bss_role, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp8 = icmp eq i8 %6, 0
  br i1 %cmp8, label %if.end13.thread, label %if.then19

if.end13.thread:                                  ; preds = %if.then
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %if.end13.thread.for.inc_crit_edge, label %if.end13.thread.if.end25_crit_edge

if.end13.thread.if.end25_crit_edge:               ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end13.thread.for.inc_crit_edge:                ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then19:                                        ; preds = %if.then
  %bss_started = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %bss_started to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bss_started, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool20.not = icmp eq i8 %10, 0
  br i1 %tobool20.not, label %if.then19.for.inc_crit_edge, label %if.then19.if.end25_crit_edge

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end25:                                         ; preds = %if.then19.if.end25_crit_edge, %if.end13.thread.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %count.063)
  %cmp27.not = icmp eq i8 %count.063, 0
  br i1 %cmp27.not, label %if.end25.for.inc_crit_edge, label %if.end25.if.end36_crit_edge

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end25.for.inc_crit_edge, %if.then19.for.inc_crit_edge, %if.end13.thread.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %count.254 = phi i8 [ 1, %if.end25.for.inc_crit_edge ], [ %count.063, %for.body.for.inc_crit_edge ], [ %count.063, %if.then19.for.inc_crit_edge ], [ %count.063, %if.end13.thread.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.if.end36_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end36_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end36:                                         ; preds = %for.inc.if.end36_crit_edge, %if.end25.if.end36_crit_edge, %entry.if.end36_crit_edge
  %.sink = phi i1 [ false, %entry.if.end36_crit_edge ], [ true, %if.end25.if.end36_crit_edge ], [ false, %for.inc.if.end36_crit_edge ]
  tail call fastcc void @mwifiex_update_ampdu_rxwinsize(ptr noundef %adapter, i1 noundef zeroext %.sink)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_update_ampdu_rxwinsize(ptr nocapture noundef readonly %adapter, i1 noundef zeroext %coex_flag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_update_ampdu_rxwinsize.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_update_ampdu_rxwinsize, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 9
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %conv = zext i1 %coex_flag to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mwifiex_update_ampdu_rxwinsize.__UNIQUE_ID_ddebug490, ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %2 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp130.not = icmp eq i8 %3, 0
  br i1 %cmp130.not, label %do.end.for.end93_crit_edge, label %for.body.lr.ph

do.end.for.end93_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end93

for.body.lr.ph:                                   ; preds = %do.end
  %coex_win_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 155
  %coex_rx_win_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 157
  br label %for.body

for.body:                                         ; preds = %for.inc91.for.body_crit_edge, %for.body.lr.ph
  %i.0131 = phi i8 [ 0, %for.body.lr.ph ], [ %inc92, %for.inc91.for.body_crit_edge ]
  %conv5 = zext i8 %i.0131 to i32
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %conv5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %for.body.for.inc91_crit_edge, label %if.end11

for.body.for.inc91_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc91

if.end11:                                         ; preds = %for.body
  %rx_win_size15 = getelementptr inbounds %struct.mwifiex_private, ptr %5, i32 0, i32 86, i32 1
  %6 = ptrtoint ptr %rx_win_size15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_win_size15, align 4
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bss_type, align 4
  br i1 %coex_flag, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end11
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %9, label %if.then17.if.end32_crit_edge [
    i8 0, label %if.then17.if.end65.sink.split_crit_edge
    i8 2, label %if.then29
  ]

if.then17.if.end65.sink.split_crit_edge:          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.sink.split

if.then17.if.end32_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then29:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %rx_win_size15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %rx_win_size15, align 4
  %12 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %bss_type, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then17.if.end32_crit_edge
  %13 = phi i8 [ %.pr, %if.then29 ], [ %9, %if.then17.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp35 = icmp eq i8 %13, 1
  br i1 %cmp35, label %if.end32.if.end65.sink.split_crit_edge, label %if.end32.if.end65_crit_edge

if.end32.if.end65_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.end32.if.end65.sink.split_crit_edge:           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.sink.split

if.else:                                          ; preds = %if.end11
  %14 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %9, label %if.else.if.end56_crit_edge [
    i8 0, label %if.else.if.end65.sink.split_crit_edge
    i8 2, label %if.then53
  ]

if.else.if.end65.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.sink.split

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %rx_win_size15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 64, ptr %rx_win_size15, align 4
  %16 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr127 = load i8, ptr %bss_type, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.else.if.end56_crit_edge
  %17 = phi i8 [ %.pr127, %if.then53 ], [ %9, %if.else.if.end56_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp59 = icmp eq i8 %17, 1
  br i1 %cmp59, label %if.end56.if.end65.sink.split_crit_edge, label %if.end56.if.end65_crit_edge

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.end56.if.end65.sink.split_crit_edge:           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.sink.split

if.end65.sink.split:                              ; preds = %if.end56.if.end65.sink.split_crit_edge, %if.else.if.end65.sink.split_crit_edge, %if.end32.if.end65.sink.split_crit_edge, %if.then17.if.end65.sink.split_crit_edge
  %.sink = phi i32 [ 16, %if.then17.if.end65.sink.split_crit_edge ], [ 16, %if.end32.if.end65.sink.split_crit_edge ], [ 64, %if.else.if.end65.sink.split_crit_edge ], [ 16, %if.end56.if.end65.sink.split_crit_edge ]
  %18 = ptrtoint ptr %rx_win_size15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %rx_win_size15, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %if.end56.if.end65_crit_edge, %if.end32.if.end65_crit_edge
  %19 = ptrtoint ptr %coex_win_size to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %coex_win_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool67.not = icmp eq i8 %20, 0
  br i1 %tobool67.not, label %if.end65.if.end75_crit_edge, label %land.lhs.true

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

land.lhs.true:                                    ; preds = %if.end65
  %21 = ptrtoint ptr %coex_rx_win_size to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %coex_rx_win_size, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool69.not = icmp eq i8 %22, 0
  br i1 %tobool69.not, label %land.lhs.true.if.end75_crit_edge, label %if.then70

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then70:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %conv68 = zext i8 %22 to i32
  %23 = ptrtoint ptr %rx_win_size15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv68, ptr %rx_win_size15, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %land.lhs.true.if.end75_crit_edge, %if.end65.if.end75_crit_edge
  %24 = ptrtoint ptr %rx_win_size15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_win_size15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %25)
  %cmp78.not = icmp eq i32 %7, %25
  br i1 %cmp78.not, label %if.end75.for.inc91_crit_edge, label %if.then80

if.end75.for.inc91_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc91

if.then80:                                        ; preds = %if.end75
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %5, i32 0, i32 8
  %26 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool81.not = icmp eq i8 %27, 0
  br i1 %tobool81.not, label %if.then80.for.inc91_crit_edge, label %for.body88.preheader

if.then80.for.inc91_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc91

for.body88.preheader:                             ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %5, i32 noundef 0) #8
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %5, i32 noundef 1) #8
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %5, i32 noundef 2) #8
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %5, i32 noundef 3) #8
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %5, i32 noundef 4) #8
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %5, i32 noundef 5) #8
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %5, i32 noundef 6) #8
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %5, i32 noundef 7) #8
  br label %for.inc91

for.inc91:                                        ; preds = %for.body88.preheader, %if.then80.for.inc91_crit_edge, %if.end75.for.inc91_crit_edge, %for.body.for.inc91_crit_edge
  %i.2 = phi i8 [ %i.0131, %if.then80.for.inc91_crit_edge ], [ %i.0131, %if.end75.for.inc91_crit_edge ], [ %i.0131, %for.body.for.inc91_crit_edge ], [ 8, %for.body88.preheader ]
  %inc92 = add nuw i8 %i.2, 1
  %28 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %priv_num, align 4
  %cmp = icmp ult i8 %inc92, %29
  br i1 %cmp, label %for.inc91.for.body_crit_edge, label %for.inc91.for.end93_crit_edge

for.inc91.for.end93_crit_edge:                    ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end93

for.inc91.for.body_crit_edge:                     ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end93:                                        ; preds = %for.inc91.for.end93_crit_edge, %do.end.for.end93_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_rxba_sync_event(ptr noundef %priv, ptr noundef %event_buf, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %len to i32
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %debug_mask = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %event_buf, i32 noundef %conv, i1 noundef zeroext false) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %len)
  %cmp122 = icmp ugt i16 %len, 16
  br i1 %cmp122, label %while.body.lr.ph, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %do.end
  %rx_reorder_tbl_lock.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 90
  %rx_reorder_tbl_ptr.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 89
  br label %while.body

while.body:                                       ; preds = %for.end59.while.body_crit_edge, %while.body.lr.ph
  %tlv_buf_left.0125 = phi i32 [ %conv, %while.body.lr.ph ], [ %sub, %for.end59.while.body_crit_edge ]
  %tlv_rxba.0123 = phi ptr [ %event_buf, %while.body.lr.ph ], [ %add.ptr63, %for.end59.while.body_crit_edge ]
  %4 = ptrtoint ptr %tlv_rxba.0123 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %tlv_rxba.0123, align 1
  %len4 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_rxba.0123, i32 0, i32 1
  %6 = ptrtoint ptr %len4 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %len4, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26367, i16 %5)
  %cmp6.not = icmp eq i16 %5, -26367
  br i1 %cmp6.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv5 = zext i16 %9 to i32
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %conv5) #8
  br label %cleanup

if.end11:                                         ; preds = %while.body
  %seq_num12 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, ptr %tlv_rxba.0123, i32 0, i32 4
  %12 = ptrtoint ptr %seq_num12 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %seq_num12, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %bitmap_len = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, ptr %tlv_rxba.0123, i32 0, i32 5
  %15 = ptrtoint ptr %bitmap_len to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %bitmap_len, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %mac = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, ptr %tlv_rxba.0123, i32 0, i32 1
  %tid = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, ptr %tlv_rxba.0123, i32 0, i32 2
  %20 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tid, align 1
  %conv14 = zext i8 %21 to i32
  %conv15 = zext i16 %14 to i32
  %conv16 = zext i16 %17 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 1073741824, ptr noundef nonnull @.str.11, ptr noundef %mac, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %conv16) #8
  %22 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tid, align 1
  %conv18 = zext i8 %23 to i32
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  %24 = ptrtoint ptr %rx_reorder_tbl_ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %tbl.021.i = load ptr, ptr %rx_reorder_tbl_ptr.i, align 4
  %cmp.not22.i = icmp eq ptr %tbl.021.i, %rx_reorder_tbl_ptr.i
  br i1 %cmp.not22.i, label %if.end11.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge, label %if.end11.for.body.i_crit_edge

if.end11.for.body.i_crit_edge:                    ; preds = %if.end11
  br label %for.body.i

if.end11.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_get_rx_reorder_tbl.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end11.for.body.i_crit_edge
  %tbl.023.i = phi ptr [ %tbl.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tbl.021.i, %if.end11.for.body.i_crit_edge ]
  %ta2.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ta2.i, ptr noundef dereferenceable(6) %mac, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %tid3.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %tbl.023.i, i32 0, i32 1
  %25 = ptrtoint ptr %tid3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tid3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv18)
  %cmp4.i = icmp eq i32 %26, %conv18
  br i1 %cmp4.i, label %mwifiex_11n_get_rx_reorder_tbl.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %27 = ptrtoint ptr %tbl.023.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %tbl.0.i = load ptr, ptr %tbl.023.i, align 4
  %cmp.not.i = icmp eq ptr %tbl.0.i, %rx_reorder_tbl_ptr.i
  br i1 %cmp.not.i, label %for.inc.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_11n_get_rx_reorder_tbl.exit.thread

mwifiex_11n_get_rx_reorder_tbl.exit.thread:       ; preds = %for.inc.i.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge, %if.end11.mwifiex_11n_get_rx_reorder_tbl.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  br label %if.then22

mwifiex_11n_get_rx_reorder_tbl.exit:              ; preds = %land.lhs.true.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  %tobool21.not = icmp eq ptr %tbl.023.i, null
  br i1 %tobool21.not, label %mwifiex_11n_get_rx_reorder_tbl.exit.if.then22_crit_edge, label %for.cond.preheader

mwifiex_11n_get_rx_reorder_tbl.exit.if.then22_crit_edge: ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

for.cond.preheader:                               ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp27119.not = icmp eq i16 %16, 0
  br i1 %cmp27119.not, label %for.cond.preheader.for.end59_crit_edge, label %for.cond.preheader.for.cond29.preheader_crit_edge

for.cond.preheader.for.cond29.preheader_crit_edge: ; preds = %for.cond.preheader
  br label %for.cond29.preheader

for.cond.preheader.for.end59_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end59

if.then22:                                        ; preds = %mwifiex_11n_get_rx_reorder_tbl.exit.if.then22_crit_edge, %mwifiex_11n_get_rx_reorder_tbl.exit.thread
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %29, i32 noundef 4, ptr noundef nonnull @.str.12) #8
  br label %cleanup

for.cond29.preheader:                             ; preds = %for.inc57.for.cond29.preheader_crit_edge, %for.cond.preheader.for.cond29.preheader_crit_edge
  %conv25121 = phi i32 [ %conv25, %for.inc57.for.cond29.preheader_crit_edge ], [ 0, %for.cond.preheader.for.cond29.preheader_crit_edge ]
  %i.0120 = phi i8 [ %inc58, %for.inc57.for.cond29.preheader_crit_edge ], [ 0, %for.cond.preheader.for.cond29.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_ie_types_rxba_sync, ptr %tlv_rxba.0123, i32 0, i32 6, i32 %conv25121
  %mul = shl nuw nsw i32 %conv25121, 3
  %add = add nuw nsw i32 %mul, %conv15
  br label %for.body33

for.body33:                                       ; preds = %for.inc.for.body33_crit_edge, %for.cond29.preheader
  %indvars.iv = phi i32 [ 0, %for.cond29.preheader ], [ %indvars.iv.next, %for.inc.for.body33_crit_edge ]
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv34 = zext i8 %31 to i32
  %shl = shl nuw i32 1, %indvars.iv
  %and36 = and i32 %shl, %conv34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %for.body33.for.inc_crit_edge, label %if.then38

for.body33.for.inc_crit_edge:                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then38:                                        ; preds = %for.body33
  %add42 = add nuw nsw i32 %add, %indvars.iv
  %32 = trunc i32 %add42 to i16
  %conv44 = and i16 %32, 4095
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 8
  %conv46 = zext i16 %conv44 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %34, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %conv46) #8
  %35 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tid, align 1
  %conv48 = zext i8 %36 to i16
  %call51 = tail call i32 @mwifiex_11n_rx_reorder_pkt(ptr noundef %priv, i16 noundef zeroext %conv44, i16 noundef zeroext %conv48, ptr noundef %mac, i8 noundef zeroext 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then38.for.inc_crit_edge, label %if.then53

if.then38.for.inc_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then53:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %38, i32 noundef 4, ptr noundef nonnull @.str.14) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then53, %if.then38.for.inc_crit_edge, %for.body33.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.inc57, label %for.inc.for.body33_crit_edge

for.inc.for.body33_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body33

for.inc57:                                        ; preds = %for.inc
  %inc58 = add i8 %i.0120, 1
  %conv25 = zext i8 %inc58 to i32
  %cmp27 = icmp ult i32 %conv25, %conv16
  br i1 %cmp27, label %for.inc57.for.cond29.preheader_crit_edge, label %for.inc57.for.end59_crit_edge

for.inc57.for.end59_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end59

for.inc57.for.cond29.preheader_crit_edge:         ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond29.preheader

for.end59:                                        ; preds = %for.inc57.for.end59_crit_edge, %for.cond.preheader.for.end59_crit_edge
  %conv60 = zext i16 %8 to i32
  %add61.neg = add i32 %tlv_buf_left.0125, -17
  %sub = sub i32 %add61.neg, %conv60
  %add.ptr = getelementptr i8, ptr %tlv_rxba.0123, i32 17
  %add.ptr63 = getelementptr i8, ptr %add.ptr, i32 %conv60
  %cmp = icmp ugt i32 %sub, 16
  br i1 %cmp, label %for.end59.while.body_crit_edge, label %for.end59.cleanup_crit_edge

for.end59.cleanup_crit_edge:                      ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end59.while.body_crit_edge:                   ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup:                                          ; preds = %for.end59.cleanup_crit_edge, %if.then22, %if.then8, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_flush_data(ptr nocapture noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_is_set = getelementptr inbounds %struct.reorder_tmr_cnxt, ptr %t, i32 0, i32 3
  %0 = ptrtoint ptr %timer_is_set to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %timer_is_set, align 4
  %ptr.i = getelementptr inbounds %struct.reorder_tmr_cnxt, ptr %t, i32 0, i32 1
  %1 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr.i, align 4
  %priv1.i = getelementptr inbounds %struct.reorder_tmr_cnxt, ptr %t, i32 0, i32 2
  %3 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1.i, align 4
  %rx_reorder_tbl_lock.i = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  %win_size.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %win_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %win_size.i, align 4
  %rx_reorder_ptr.i = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %2, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %i.0.in.i = phi i32 [ %6, %entry ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i)
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %mwifiex_11n_find_last_seq_num.exit.thread

mwifiex_11n_find_last_seq_num.exit.thread:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %7 = ptrtoint ptr %rx_reorder_ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_reorder_ptr.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %i.0.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.end

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_reorder_tbl_lock.i) #8
  %11 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv1.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 1073741824, ptr noundef nonnull @.str.18, i32 noundef %i.0.i) #8
  %15 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptr.i, align 4
  %start_win1 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %start_win1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_win1, align 4
  %add2 = add i32 %18, %i.0.in.i
  %and = and i32 %add2, 4095
  %19 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv1.i, align 4
  tail call fastcc void @mwifiex_11n_dispatch_pkt_until_start_win(ptr noundef %20, ptr noundef %16, i32 noundef %and)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mwifiex_11n_find_last_seq_num.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_handle_uap_rx_forward(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_rx_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_amsdu_to_8023s(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_process_tdls_action_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_uap_recv_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_recv_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_delba(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !37, !39, !41, !43, !45, !46, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 485, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 591, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 596, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 686, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 693, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 701, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 741, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 766, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 931, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 937, i32 4}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 944, i32 3}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 953, i32 4}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 964, i32 6}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 973, i32 7}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 386, i32 2}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 402, i32 3}
!33 = !{ptr @__func__.mwifiex_11n_create_rx_reorder_tbl, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mwifiex_11n_create_rx_reorder_tbl.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 411, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 324, i32 2}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 86, i32 3}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 67, i32 5}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c", i32 846, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mwifiex_update_ampdu_rxwinsize.__UNIQUE_ID_ddebug490, !44, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
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
!59 = !{i64 2148378721, i64 2148378726, i64 2148378739, i64 2148378783, i64 2148378817, i64 2148378838}
