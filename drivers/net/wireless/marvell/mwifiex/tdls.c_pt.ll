; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/tdls.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/tdls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ieee80211_tdls_lnkie = type { i8, i8, [6 x i8], [6 x i8], [6 x i8] }
%struct.ieee80211_tdls_data = type { [6 x i8], [6 x i8], i16, i8, i8, i8, %union.anon.159 }
%union.anon.159 = type <{ %struct.anon.163, [3 x i8] }>
%struct.anon.163 = type { i16, [0 x i8] }
%struct.anon.160 = type <{ i8, i16, [0 x i8] }>
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_bss_co_2040 = type { %struct.ieee_types_header, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_wmm_param_ie = type { i8, i8, [3 x i8], i8, i8, i8, i8, i8, [4 x %struct.ieee80211_wmm_ac_param] }
%struct.ieee80211_wmm_ac_param = type { i8, i8, i16 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.168 }
%union.anon.168 = type { %struct.anon.174, [16 x i8] }
%struct.anon.174 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.181 = type { i8, %union.anon.182 }
%union.anon.182 = type <{ %struct.anon.187, [17 x i8] }>
%struct.anon.187 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.mwifiex_ds_tdls_oper = type { i16, [6 x i8], i16, i8, ptr, i8, ptr, i8, ptr }
%struct.mwifiex_tdls_config_cs_params = type { i8, i8, i8 }
%struct.mwifiex_tdls_config = type { i16 }
%struct.mwifiex_auto_tdls_peer = type { %struct.list_head, [6 x i8], i8, i32, i32, i8, i8, i8 }
%struct.mwifiex_ra_list_tbl = type { %struct.list_head, %struct.sk_buff_head, [6 x i8], i32, i16, i16, i8, i32, i8, i16, i8, i8 }
%struct.tdls_peer_info = type { [6 x i8] }
%struct.mwifiex_tdls_stop_cs_params = type { [6 x i8] }
%struct.mwifiex_tdls_init_cs_params = type <{ [6 x i8], i8, i8, i8, i16, i16, i8, i8 }>

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"allocate skb failed for management frame\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rx:tdls action: peer=%pM, action=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown TDLS frame type.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Disable link failed for TDLS peer %pM\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"setup TDLS link, peer=%pM rssi=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Add auto TDLS peer= %pM to list\0A\00", [63 x i8] zeroinitializer }, align 32
@mwifiex_check_auto_tdls.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/marvell/mwifiex/tdls.c\00", [52 x i8] zeroinitializer }, align 32
@mwifiex_check_auto_tdls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 1422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013mwifiex: mwifiex: %s: adapter or private structure is NULL\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mwifiex_check_auto_tdls\00", [40 x i8] zeroinitializer }, align 32
@mwifiex_check_auto_tdls._entry_ptr = internal global ptr @mwifiex_check_auto_tdls._entry, section ".printk_index", align 4
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"auto TDLS timer inactive; return\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"teardown TDLS link,peer=%pM rssi=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"check TDLS with peer=%pM\09rssi=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@mwifiex_setup_auto_tdls_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&priv->auto_tdls_timer)\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Insufficient space while adding rates\0A\00", [57 x i8] zeroinitializer }, align 32
@__const.mwifiex_tdls_add_oper_class.rc_list = private unnamed_addr constant [16 x i8] c"\01\01\02\03\04\0C\16\17\18\19\1B\1C\1D\1E !", align 1
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TDLS peer station not found in list\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TDLS peer doesn't support vht capabilities\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"TDLS peer doesn't support wider bandwidth\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"TDLS peer doesn't support ht capabilities\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unknown TDLS action frame type\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tdls: enable link %pM success\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tdls: enable link %pM failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Setup already in progress for peer %pM\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: %pM\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.mwifiex_hold_tdls_packets = private unnamed_addr constant [26 x i8] c"mwifiex_hold_tdls_packets\00", align 1
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"link absent for peer %pM; cannot config\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.mwifiex_restore_tdls_packets = private unnamed_addr constant [29 x i8] c"mwifiex_restore_tdls_packets\00", align 1
@tos_to_tid_inv = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 10]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [13 x i64] [i64 11, i64 8, i64 1, i64 45, i64 46, i64 48, i64 50, i64 61, i64 72, i64 127, i64 191, i64 192, i64 197]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 255]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 5, i64 6, i64 7]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 662, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 909, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 941, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1275, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1298, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1364, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1420, i32 6 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1421, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1430, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1450, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1466, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1480, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 131, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 252, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 258, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 266, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 204, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 803, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1142, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1177, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1088, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 93, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [47 x i8] c"../drivers/net/wireless/marvell/mwifiex/tdls.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1067, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @mwifiex_check_auto_tdls._entry, ptr @mwifiex_check_auto_tdls._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mwifiex_setup_auto_tdls_timer.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_check_auto_tdls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_setup_auto_tdls_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_send_tdls_data_frame(ptr noundef %priv, ptr noundef %peer, i8 noundef zeroext %action_code, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, ptr nocapture noundef readonly %extra_ies, i32 noundef %extra_ies_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %is_hw_11ac_capable = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 128
  %2 = ptrtoint ptr %is_hw_11ac_capable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %is_hw_11ac_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select.v = select i1 %tobool.not, i32 304, i32 329
  %spec.select = add i32 %spec.select.v, %extra_ies_len
  %conv4 = and i32 %spec.select, 65535
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv4, i32 noundef 2592) #8
  %tobool5.not = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 100
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 100
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %10 = zext i8 %action_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %action_code, label %if.end8.sw.default_crit_edge [
    i8 0, label %if.end8.sw.bb_crit_edge
    i8 2, label %if.end8.sw.bb_crit_edge106
    i8 3, label %if.end8.sw.bb_crit_edge107
    i8 10, label %if.end8.sw.bb_crit_edge108
    i8 1, label %sw.bb19
  ]

if.end8.sw.bb_crit_edge108:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end8.sw.bb_crit_edge107:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end8.sw.bb_crit_edge106:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end8.sw.bb_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end8.sw.default_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.bb:                                            ; preds = %if.end8.sw.bb_crit_edge, %if.end8.sw.bb_crit_edge106, %if.end8.sw.bb_crit_edge107, %if.end8.sw.bb_crit_edge108
  %call10 = tail call fastcc i32 @mwifiex_prep_tdls_encap_data(ptr noundef %priv, ptr noundef %peer, i8 noundef zeroext %action_code, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  br label %cleanup

if.end13:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_ies_len)
  %tobool14.not = icmp eq i32 %extra_ies_len, 0
  br i1 %tobool14.not, label %if.end13.sw.epilog_crit_edge, label %if.then15

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %extra_ies_len) #8
  %11 = call ptr @memcpy(ptr %call.i, ptr %extra_ies, i32 %extra_ies_len)
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end8
  %call20 = tail call fastcc i32 @mwifiex_prep_tdls_encap_data(ptr noundef %priv, ptr noundef %peer, i8 noundef zeroext 1, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  br label %cleanup

if.end23:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_ies_len)
  %tobool24.not = icmp eq i32 %extra_ies_len, 0
  br i1 %tobool24.not, label %if.end23.sw.epilog.thread_crit_edge, label %if.then25

if.end23.sw.epilog.thread_crit_edge:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %call.i98 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %extra_ies_len) #8
  %12 = call ptr @memcpy(ptr %call.i98, ptr %extra_ies, i32 %extra_ies_len)
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %if.then25, %if.end23.sw.epilog.thread_crit_edge
  %curr_addr28 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 7
  %cfg_bssid30 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 112
  %call.i99 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #8
  %13 = ptrtoint ptr %call.i99 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 101, ptr %call.i99, align 1
  %ie_len.i100 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i99, i32 0, i32 1
  %14 = ptrtoint ptr %ie_len.i100 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 18, ptr %ie_len.i100, align 1
  %bssid1.i101 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i99, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %bssid1.i101, ptr %cfg_bssid30, i32 6)
  %init_sta.i102 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i99, i32 0, i32 3
  %16 = call ptr @memcpy(ptr %init_sta.i102, ptr %peer, i32 6)
  %resp_sta.i103 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i99, i32 0, i32 4
  %17 = call ptr @memcpy(ptr %resp_sta.i103, ptr %curr_addr28, i32 6)
  br label %sw.epilog35

sw.epilog:                                        ; preds = %if.then15, %if.end13.sw.epilog_crit_edge
  %curr_addr = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 7
  %cfg_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 112
  %call.i97 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #8
  %18 = ptrtoint ptr %call.i97 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 101, ptr %call.i97, align 1
  %ie_len.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i97, i32 0, i32 1
  %19 = ptrtoint ptr %ie_len.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 18, ptr %ie_len.i, align 1
  %bssid1.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i97, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %bssid1.i, ptr %cfg_bssid, i32 6)
  %init_sta.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i97, i32 0, i32 3
  %21 = call ptr @memcpy(ptr %init_sta.i, ptr %curr_addr, i32 6)
  %resp_sta.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i97, i32 0, i32 4
  %22 = call ptr @memcpy(ptr %resp_sta.i, ptr %peer, i32 6)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %action_code)
  %switch = icmp ult i8 %action_code, 2
  br i1 %switch, label %sw.epilog.sw.epilog35_crit_edge, label %sw.epilog.sw.default_crit_edge

sw.epilog.sw.default_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.epilog.sw.epilog35_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog35

sw.default:                                       ; preds = %sw.epilog.sw.default_crit_edge, %if.end8.sw.default_crit_edge
  br label %sw.epilog35

sw.epilog35:                                      ; preds = %sw.default, %sw.epilog.sw.epilog35_crit_edge, %sw.epilog.thread
  %.sink = phi i32 [ 5, %sw.default ], [ 2, %sw.epilog.thread ], [ 2, %sw.epilog.sw.epilog35_crit_edge ]
  %priority34 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %23 = ptrtoint ptr %priority34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %priority34, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 24)
  %bss_num = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 4
  %26 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bss_num, align 1
  %bss_num37 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 13
  %28 = ptrtoint ptr %bss_num37 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %bss_num37, align 1
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %29 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bss_type, align 4
  %bss_type38 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 14
  %31 = ptrtoint ptr %bss_type38 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %bss_type38, align 2
  %call.i.i104 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %call.i.i104, ptr %32, align 8
  %call39 = tail call i32 @mwifiex_queue_tx_pkt(ptr noundef %priv, ptr noundef nonnull %call.i.i) #8
  %34 = and i8 %action_code, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %switch96 = icmp eq i8 %34, 2
  br i1 %switch96, label %if.then45, label %sw.epilog35.cleanup_crit_edge

sw.epilog35.cleanup_crit_edge:                    ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 @msleep_interruptible(i32 noundef 10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %sw.epilog35.cleanup_crit_edge, %if.then22, %if.then12, %if.then6
  %retval.0 = phi i32 [ %call20, %if.then22 ], [ %call10, %if.then12 ], [ -12, %if.then6 ], [ 0, %sw.epilog35.cleanup_crit_edge ], [ 0, %if.then45 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_prep_tdls_encap_data(ptr noundef %priv, ptr noundef %peer, i8 noundef zeroext %action_code, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_info_bitmap = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 20
  %0 = ptrtoint ptr %cap_info_bitmap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cap_info_bitmap, align 8
  %call = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 17) #8
  %2 = call ptr @memcpy(ptr %call, ptr %peer, i32 6)
  %sa = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 1
  %curr_addr = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 7
  %3 = call ptr @memcpy(ptr %sa, ptr %curr_addr, i32 6)
  %ether_type = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %ether_type to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 -30451, ptr %ether_type, align 1
  %payload_type = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %payload_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %payload_type, align 1
  %6 = zext i8 %action_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %action_code, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb23
    i8 2, label %sw.bb56
    i8 3, label %sw.bb81
    i8 10, label %sw.bb86
  ]

sw.bb:                                            ; preds = %entry
  %category = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %category to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 12, ptr %category, align 1
  %action_code3 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %action_code3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %action_code3, align 1
  %call4 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 3) #8
  %u = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %dialog_token, ptr %u, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %1)
  %capability = getelementptr inbounds %struct.anon.160, ptr %u, i32 0, i32 1
  %11 = ptrtoint ptr %capability to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %capability, align 1
  %call7 = tail call fastcc i32 @mwifiex_tdls_append_rates_ie(ptr noundef %priv, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %call8 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 28) #8
  %incdec.ptr = getelementptr i8, ptr %call8, i32 1
  %12 = ptrtoint ptr %call8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 45, ptr %call8, align 1
  %incdec.ptr9 = getelementptr i8, ptr %call8, i32 2
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 26, ptr %incdec.ptr, align 1
  %band = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 3
  %14 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %band, align 2
  %call11 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %15) #8
  %call12 = tail call i32 @mwifiex_fill_cap_info(ptr noundef %priv, i8 noundef zeroext %call11, ptr noundef %incdec.ptr9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %is_hw_11ac_capable = getelementptr inbounds %struct.mwifiex_adapter, ptr %17, i32 0, i32 128
  %18 = ptrtoint ptr %is_hw_11ac_capable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %is_hw_11ac_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool16.not = icmp eq i32 %19, 0
  br i1 %tobool16.not, label %if.end15.if.end22_crit_edge, label %if.then17

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mwifiex_tdls_add_vht_capab(ptr noundef %priv, ptr noundef %skb)
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 4) #8
  %incdec.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -59, ptr %call.i, align 1
  %incdec.ptr1.i = getelementptr i8, ptr %call.i, i32 2
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %incdec.ptr.i, align 1
  %a_id.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 91, i32 4
  %22 = ptrtoint ptr %a_id.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %a_id.i, align 1
  %24 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %incdec.ptr1.i, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end15.if.end22_crit_edge
  %call.i212 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 10) #8
  %25 = ptrtoint ptr %call.i212 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 127, ptr %call.i212, align 1
  %len.i = getelementptr inbounds %struct.ieee_types_header, ptr %call.i212, i32 0, i32 1
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 8, ptr %len.i, align 1
  %ext_capab.i = getelementptr inbounds %struct.ieee_types_extcap, ptr %call.i212, i32 0, i32 1
  %27 = ptrtoint ptr %ext_capab.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 275414777856, ptr %ext_capab.i, align 1
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %is_hw_11ac_capable.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 128
  %30 = ptrtoint ptr %is_hw_11ac_capable.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %is_hw_11ac_capable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.end22.mwifiex_tdls_add_ext_capab.exit_crit_edge, label %if.then.i

if.end22.mwifiex_tdls_add_ext_capab.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_tdls_add_ext_capab.exit

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10.i = getelementptr %struct.ieee_types_extcap, ptr %call.i212, i32 0, i32 1, i32 7
  %32 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx10.i, align 1
  %34 = or i8 %33, 32
  store i8 %34, ptr %arrayidx10.i, align 1
  br label %mwifiex_tdls_add_ext_capab.exit

mwifiex_tdls_add_ext_capab.exit:                  ; preds = %if.then.i, %if.end22.mwifiex_tdls_add_ext_capab.exit_crit_edge
  %call.i213 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 3) #8
  %35 = ptrtoint ptr %call.i213 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 72, ptr %call.i213, align 1
  %len.i214 = getelementptr inbounds %struct.ieee_types_header, ptr %call.i213, i32 0, i32 1
  %36 = ptrtoint ptr %len.i214 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %len.i214, align 1
  %bss_2040co.i = getelementptr inbounds %struct.ieee_types_bss_co_2040, ptr %call.i213, i32 0, i32 1
  %37 = ptrtoint ptr %bss_2040co.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %bss_2040co.i, align 1
  %call.i215 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 4) #8
  %38 = ptrtoint ptr %call.i215 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 36, ptr %call.i215, align 1
  %len.i216 = getelementptr inbounds %struct.ieee_types_header, ptr %call.i215, i32 0, i32 1
  %39 = ptrtoint ptr %len.i216 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %len.i216, align 1
  %data.i = getelementptr inbounds %struct.ieee_types_generic, ptr %call.i215, i32 0, i32 1
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 267, ptr %data.i, align 1
  %call.i217 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 18) #8
  %41 = ptrtoint ptr %call.i217 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 59, ptr %call.i217, align 1
  %len.i218 = getelementptr inbounds %struct.ieee_types_header, ptr %call.i217, i32 0, i32 1
  %42 = ptrtoint ptr %len.i218 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 16, ptr %len.i218, align 1
  %data.i219 = getelementptr inbounds %struct.ieee_types_generic, ptr %call.i217, i32 0, i32 1
  %43 = call ptr @memcpy(ptr %data.i219, ptr @__const.mwifiex_tdls_add_oper_class.rc_list, i32 16)
  %call.i220 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 9) #8
  %incdec.ptr.i221 = getelementptr i8, ptr %call.i220, i32 1
  %44 = ptrtoint ptr %call.i220 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -35, ptr %call.i220, align 1
  %incdec.ptr1.i222 = getelementptr i8, ptr %call.i220, i32 2
  %45 = ptrtoint ptr %incdec.ptr.i221 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 7, ptr %incdec.ptr.i221, align 1
  %incdec.ptr2.i = getelementptr i8, ptr %call.i220, i32 3
  %46 = ptrtoint ptr %incdec.ptr1.i222 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %incdec.ptr1.i222, align 1
  %incdec.ptr3.i = getelementptr i8, ptr %call.i220, i32 4
  %47 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 80, ptr %incdec.ptr2.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %call.i220, i32 5
  %48 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -14, ptr %incdec.ptr3.i, align 1
  %incdec.ptr5.i = getelementptr i8, ptr %call.i220, i32 6
  %49 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %incdec.ptr4.i, align 1
  %incdec.ptr6.i = getelementptr i8, ptr %call.i220, i32 7
  %50 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %incdec.ptr5.i, align 1
  %incdec.ptr7.i = getelementptr i8, ptr %call.i220, i32 8
  %51 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %incdec.ptr6.i, align 1
  %52 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %incdec.ptr7.i, align 1
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %category24 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 4
  %53 = ptrtoint ptr %category24 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 12, ptr %category24, align 1
  %action_code25 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 5
  %54 = ptrtoint ptr %action_code25 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %action_code25, align 1
  %call26 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 5) #8
  %55 = tail call i16 @llvm.bswap.i16(i16 %status_code)
  %u27 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 6
  %56 = ptrtoint ptr %u27 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %55, ptr %u27, align 1
  %dialog_token30 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 6, i32 1
  %57 = ptrtoint ptr %dialog_token30 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %dialog_token, ptr %dialog_token30, align 1
  %58 = tail call i16 @llvm.bswap.i16(i16 %1)
  %capability32 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 6, i32 1, i32 1
  %59 = ptrtoint ptr %capability32 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %58, ptr %capability32, align 1
  %call33 = tail call fastcc i32 @mwifiex_tdls_append_rates_ie(ptr noundef %priv, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end36:                                         ; preds = %sw.bb23
  %call37 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 28) #8
  %incdec.ptr38 = getelementptr i8, ptr %call37, i32 1
  %60 = ptrtoint ptr %call37 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 45, ptr %call37, align 1
  %incdec.ptr39 = getelementptr i8, ptr %call37, i32 2
  %61 = ptrtoint ptr %incdec.ptr38 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 26, ptr %incdec.ptr38, align 1
  %band41 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 3
  %62 = ptrtoint ptr %band41 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %band41, align 2
  %call42 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %63) #8
  %call43 = tail call i32 @mwifiex_fill_cap_info(ptr noundef %priv, i8 noundef zeroext %call42, ptr noundef %incdec.ptr39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end36
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 8
  %is_hw_11ac_capable48 = getelementptr inbounds %struct.mwifiex_adapter, ptr %65, i32 0, i32 128
  %66 = ptrtoint ptr %is_hw_11ac_capable48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %is_hw_11ac_capable48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool49.not = icmp eq i32 %67, 0
  br i1 %tobool49.not, label %if.end46.if.end55_crit_edge, label %if.then50

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mwifiex_tdls_add_vht_capab(ptr noundef %priv, ptr noundef %skb)
  %call.i223 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 4) #8
  %incdec.ptr.i224 = getelementptr i8, ptr %call.i223, i32 1
  %68 = ptrtoint ptr %call.i223 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -59, ptr %call.i223, align 1
  %incdec.ptr1.i225 = getelementptr i8, ptr %call.i223, i32 2
  %69 = ptrtoint ptr %incdec.ptr.i224 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %incdec.ptr.i224, align 1
  %a_id.i226 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 91, i32 4
  %70 = ptrtoint ptr %a_id.i226 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %a_id.i226, align 1
  %72 = ptrtoint ptr %incdec.ptr1.i225 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 %71, ptr %incdec.ptr1.i225, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %if.end46.if.end55_crit_edge
  %call.i227 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 10) #8
  %73 = ptrtoint ptr %call.i227 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 127, ptr %call.i227, align 1
  %len.i228 = getelementptr inbounds %struct.ieee_types_header, ptr %call.i227, i32 0, i32 1
  %74 = ptrtoint ptr %len.i228 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 8, ptr %len.i228, align 1
  %ext_capab.i229 = getelementptr inbounds %struct.ieee_types_extcap, ptr %call.i227, i32 0, i32 1
  %75 = ptrtoint ptr %ext_capab.i229 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 8)
  store i64 275414777856, ptr %ext_capab.i229, align 1
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 8
  %is_hw_11ac_capable.i230 = getelementptr inbounds %struct.mwifiex_adapter, ptr %77, i32 0, i32 128
  %78 = ptrtoint ptr %is_hw_11ac_capable.i230 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %is_hw_11ac_capable.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i231 = icmp eq i32 %79, 0
  br i1 %tobool.not.i231, label %if.end55.mwifiex_tdls_add_ext_capab.exit234_crit_edge, label %if.then.i233

if.end55.mwifiex_tdls_add_ext_capab.exit234_crit_edge: ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_tdls_add_ext_capab.exit234

if.then.i233:                                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10.i232 = getelementptr %struct.ieee_types_extcap, ptr %call.i227, i32 0, i32 1, i32 7
  %80 = ptrtoint ptr %arrayidx10.i232 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx10.i232, align 1
  %82 = or i8 %81, 32
  store i8 %82, ptr %arrayidx10.i232, align 1
  br label %mwifiex_tdls_add_ext_capab.exit234

mwifiex_tdls_add_ext_capab.exit234:               ; preds = %if.then.i233, %if.end55.mwifiex_tdls_add_ext_capab.exit234_crit_edge
  %call.i235 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 3) #8
  %83 = ptrtoint ptr %call.i235 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 72, ptr %call.i235, align 1
  %len.i236 = getelementptr inbounds %struct.ieee_types_header, ptr %call.i235, i32 0, i32 1
  %84 = ptrtoint ptr %len.i236 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %len.i236, align 1
  %bss_2040co.i237 = getelementptr inbounds %struct.ieee_types_bss_co_2040, ptr %call.i235, i32 0, i32 1
  %85 = ptrtoint ptr %bss_2040co.i237 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %bss_2040co.i237, align 1
  %call.i238 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 4) #8
  %86 = ptrtoint ptr %call.i238 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 36, ptr %call.i238, align 1
  %len.i239 = getelementptr inbounds %struct.ieee_types_header, ptr %call.i238, i32 0, i32 1
  %87 = ptrtoint ptr %len.i239 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 2, ptr %len.i239, align 1
  %data.i240 = getelementptr inbounds %struct.ieee_types_generic, ptr %call.i238, i32 0, i32 1
  %88 = ptrtoint ptr %data.i240 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 267, ptr %data.i240, align 1
  %call.i241 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 18) #8
  %89 = ptrtoint ptr %call.i241 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 59, ptr %call.i241, align 1
  %len.i242 = getelementptr inbounds %struct.ieee_types_header, ptr %call.i241, i32 0, i32 1
  %90 = ptrtoint ptr %len.i242 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 16, ptr %len.i242, align 1
  %data.i243 = getelementptr inbounds %struct.ieee_types_generic, ptr %call.i241, i32 0, i32 1
  %91 = call ptr @memcpy(ptr %data.i243, ptr @__const.mwifiex_tdls_add_oper_class.rc_list, i32 16)
  %call.i244 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 9) #8
  %incdec.ptr.i245 = getelementptr i8, ptr %call.i244, i32 1
  %92 = ptrtoint ptr %call.i244 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -35, ptr %call.i244, align 1
  %incdec.ptr1.i246 = getelementptr i8, ptr %call.i244, i32 2
  %93 = ptrtoint ptr %incdec.ptr.i245 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 7, ptr %incdec.ptr.i245, align 1
  %incdec.ptr2.i247 = getelementptr i8, ptr %call.i244, i32 3
  %94 = ptrtoint ptr %incdec.ptr1.i246 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %incdec.ptr1.i246, align 1
  %incdec.ptr3.i248 = getelementptr i8, ptr %call.i244, i32 4
  %95 = ptrtoint ptr %incdec.ptr2.i247 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 80, ptr %incdec.ptr2.i247, align 1
  %incdec.ptr4.i249 = getelementptr i8, ptr %call.i244, i32 5
  %96 = ptrtoint ptr %incdec.ptr3.i248 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -14, ptr %incdec.ptr3.i248, align 1
  %incdec.ptr5.i250 = getelementptr i8, ptr %call.i244, i32 6
  %97 = ptrtoint ptr %incdec.ptr4.i249 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 2, ptr %incdec.ptr4.i249, align 1
  %incdec.ptr6.i251 = getelementptr i8, ptr %call.i244, i32 7
  %98 = ptrtoint ptr %incdec.ptr5.i250 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %incdec.ptr5.i250, align 1
  %incdec.ptr7.i252 = getelementptr i8, ptr %call.i244, i32 8
  %99 = ptrtoint ptr %incdec.ptr6.i251 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %incdec.ptr6.i251, align 1
  %100 = ptrtoint ptr %incdec.ptr7.i252 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %incdec.ptr7.i252, align 1
  br label %cleanup

sw.bb56:                                          ; preds = %entry
  %category57 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 4
  %101 = ptrtoint ptr %category57 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 12, ptr %category57, align 1
  %action_code58 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 5
  %102 = ptrtoint ptr %action_code58 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 2, ptr %action_code58, align 1
  %call59 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 3) #8
  %103 = tail call i16 @llvm.bswap.i16(i16 %status_code)
  %u60 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 6
  %104 = ptrtoint ptr %u60 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 %103, ptr %u60, align 1
  %dialog_token63 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 6, i32 1
  %105 = ptrtoint ptr %dialog_token63 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %dialog_token, ptr %dialog_token63, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 26) #8
  %106 = getelementptr inbounds i8, ptr %call.i.i, i32 9
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %106, align 1
  %108 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -35, ptr %call.i.i, align 1
  %len.i253 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %len.i253 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 24, ptr %len.i253, align 1
  %oui.i = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i.i, i32 0, i32 2
  %110 = ptrtoint ptr %oui.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %oui.i, align 1
  %arrayidx2.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i, i32 0, i32 2, i32 1
  %111 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 80, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i, i32 0, i32 2, i32 2
  %112 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -14, ptr %arrayidx4.i, align 1
  %oui_type.i = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i.i, i32 0, i32 3
  %113 = ptrtoint ptr %oui_type.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 2, ptr %oui_type.i, align 1
  %oui_subtype.i = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %oui_subtype.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %oui_subtype.i, align 1
  %version.i = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i.i, i32 0, i32 5
  %115 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %version.i, align 1
  %qos_info.i = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i.i, i32 0, i32 6
  %116 = ptrtoint ptr %qos_info.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %qos_info.i, align 1
  %ac.i = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i.i, i32 0, i32 8
  %117 = ptrtoint ptr %ac.i to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 61079552, ptr %ac.i, align 1
  %arrayidx7.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i, i32 0, i32 8, i32 1
  %118 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 665059328, ptr %arrayidx7.i, align 1
  %arrayidx10.i254 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i, i32 0, i32 8, i32 2
  %119 = ptrtoint ptr %arrayidx10.i254 to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 1111711232, ptr %arrayidx10.i254, align 1
  %arrayidx13.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i, i32 0, i32 8, i32 3
  %120 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 1647456000, ptr %arrayidx13.i, align 1
  %121 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %priv, align 8
  %is_hw_11ac_capable65 = getelementptr inbounds %struct.mwifiex_adapter, ptr %122, i32 0, i32 128
  %123 = ptrtoint ptr %is_hw_11ac_capable65 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %is_hw_11ac_capable65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool66.not = icmp eq i32 %124, 0
  br i1 %tobool66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %sw.bb56
  %call.i255 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %peer) #8
  %tobool.not.i256 = icmp eq ptr %call.i255, null
  br i1 %tobool.not.i256, label %if.then70, label %if.end.i, !prof !63

if.end.i:                                         ; preds = %if.then67
  %vhtcap.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call.i255, i32 0, i32 10, i32 11
  %125 = ptrtoint ptr %vhtcap.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %vhtcap.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool5.not.i = icmp eq i32 %126, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %122, i32 noundef 536870912, ptr noundef nonnull @.str.15) #8
  br label %if.end71

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call zeroext i1 @mwifiex_is_bss_in_11ac_mode(ptr noundef %priv) #8
  br i1 %call8.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end7.i
  %arrayidx.i = getelementptr %struct.mwifiex_sta_node, ptr %call.i255, i32 0, i32 10, i32 9, i32 1, i32 7
  %127 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx.i, align 1
  %129 = and i8 %128, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool11.not.i = icmp eq i8 %129, 0
  br i1 %tobool11.not.i, label %if.then9.i.if.end14.i_crit_edge, label %if.then12.i

if.then9.i.if.end14.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %122, i32 noundef 536870912, ptr noundef nonnull @.str.16) #8
  br label %if.end71

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %bcn_vht_cap.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 36
  %130 = ptrtoint ptr %bcn_vht_cap.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bcn_vht_cap.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.then9.i.if.end14.i_crit_edge
  %ap_vht_cap.0.i = phi ptr [ %131, %if.else.i ], [ null, %if.then9.i.if.end14.i_crit_edge ]
  %call15.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 7) #8
  %incdec.ptr.i258 = getelementptr i8, ptr %call15.i, i32 1
  %132 = ptrtoint ptr %call15.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -64, ptr %call15.i, align 1
  %incdec.ptr16.i = getelementptr i8, ptr %call15.i, i32 2
  %133 = ptrtoint ptr %incdec.ptr.i258 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 5, ptr %incdec.ptr.i258, align 1
  %bss_band.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 13
  %134 = ptrtoint ptr %bss_band.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %bss_band.i, align 4
  %136 = and i16 %135, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %tobool19.not.i = icmp eq i16 %136, 0
  %usr_dot_11ac_dev_cap_a.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %122, i32 0, i32 132
  %usr_dot_11ac_dev_cap_bg.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %122, i32 0, i32 131
  %usr_vht_cap_info.0.in.i = select i1 %tobool19.not.i, ptr %usr_dot_11ac_dev_cap_bg.i, ptr %usr_dot_11ac_dev_cap_a.i
  %137 = ptrtoint ptr %usr_vht_cap_info.0.in.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %usr_vht_cap_info.0.i = load i32, ptr %usr_vht_cap_info.0.in.i, align 4
  %138 = lshr i32 %usr_vht_cap_info.0.i, 2
  %conv26.i = and i32 %138, 3
  %139 = ptrtoint ptr %vhtcap.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %vhtcap.i, align 1
  %141 = lshr i32 %140, 26
  %conv30.i = and i32 %141, 3
  %142 = tail call i32 @llvm.umin.i32(i32 %conv26.i, i32 %conv30.i) #8
  %tobool37.not.i = icmp eq ptr %ap_vht_cap.0.i, null
  br i1 %tobool37.not.i, label %if.end14.i.if.end62.i_crit_edge, label %land.lhs.true.i

if.end14.i.if.end62.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

land.lhs.true.i:                                  ; preds = %if.end14.i
  %arrayidx41.i = getelementptr %struct.mwifiex_sta_node, ptr %call.i255, i32 0, i32 10, i32 9, i32 1, i32 7
  %143 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx41.i, align 1
  %145 = and i8 %144, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool44.not.i = icmp eq i8 %145, 0
  br i1 %tobool44.not.i, label %land.lhs.true.i.if.end62.i_crit_edge, label %if.then45.i

land.lhs.true.i.if.end62.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.then45.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %ap_vht_cap.0.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %ap_vht_cap.0.i, align 1
  %148 = lshr i32 %147, 26
  %conv49.i = and i32 %148, 3
  %149 = tail call i32 @llvm.umin.i32(i32 %142, i32 %conv49.i) #8
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then45.i, %land.lhs.true.i.if.end62.i_crit_edge, %if.end14.i.if.end62.i_crit_edge
  %supp_chwd_set.0.i = phi i32 [ %149, %if.then45.i ], [ %142, %land.lhs.true.i.if.end62.i_crit_edge ], [ %142, %if.end14.i.if.end62.i_crit_edge ]
  %trunc.i = trunc i32 %supp_chwd_set.0.i to i8
  %switch.tableidx = add i8 %trunc.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %150 = icmp ult i8 %switch.tableidx, 3
  %.sink.i = select i1 %150, i8 %trunc.i, i8 0
  %151 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %.sink.i, ptr %incdec.ptr16.i, align 1
  %usr_dot_11ac_mcs_support.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %122, i32 0, i32 133
  %152 = ptrtoint ptr %usr_dot_11ac_mcs_support.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %usr_dot_11ac_mcs_support.i, align 4
  %supp_mcs.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call.i255, i32 0, i32 10, i32 11, i32 1
  %154 = ptrtoint ptr %supp_mcs.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %supp_mcs.i, align 1
  %156 = tail call i16 @llvm.bswap.i16(i16 %155) #8
  %conv79.i = zext i16 %156 to i32
  %conv78.i = and i32 %153, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv78.i)
  %cmp87.i = icmp eq i32 %conv78.i, 3
  br i1 %cmp87.i, label %if.end62.i.for.inc.i_crit_edge, label %lor.lhs.false.i

if.end62.i.for.inc.i_crit_edge:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv85.i = and i32 %conv79.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv85.i)
  %cmp90.i = icmp eq i32 %conv85.i, 3
  %157 = tail call i32 @llvm.umin.i32(i32 %conv78.i, i32 %conv85.i) #8
  %158 = trunc i32 %157 to i16
  %phi.cast.i = select i1 %cmp90.i, i16 3, i16 %158
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i, %if.end62.i.for.inc.i_crit_edge
  %.pn187.i = phi i16 [ 3, %if.end62.i.for.inc.i_crit_edge ], [ %phi.cast.i, %lor.lhs.false.i ]
  %shr76.1.i = lshr i32 %153, 2
  %conv78.1.i = and i32 %shr76.1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv78.1.i)
  %cmp87.1.i = icmp eq i32 %conv78.1.i, 3
  br i1 %cmp87.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %lor.lhs.false.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

lor.lhs.false.1.i:                                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr83.1.i = lshr i32 %conv79.i, 2
  %conv85.1.i = and i32 %shr83.1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv85.1.i)
  %cmp90.1.i = icmp eq i32 %conv85.1.i, 3
  %159 = tail call i32 @llvm.umin.i32(i32 %conv78.1.i, i32 %conv85.1.i) #8
  %.tr.i = trunc i32 %159 to i16
  %160 = shl nuw nsw i16 %.tr.i, 2
  %phi.cast190.i = select i1 %cmp90.1.i, i16 12, i16 %160
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %lor.lhs.false.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %.pn187.1.i = phi i16 [ 12, %for.inc.i.for.inc.1.i_crit_edge ], [ %phi.cast190.i, %lor.lhs.false.1.i ]
  %mcs_map_result.1.1.i = or i16 %.pn187.1.i, %.pn187.i
  %shr76.2.i = lshr i32 %153, 4
  %conv78.2.i = and i32 %shr76.2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv78.2.i)
  %cmp87.2.i = icmp eq i32 %conv78.2.i, 3
  br i1 %cmp87.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %lor.lhs.false.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

lor.lhs.false.2.i:                                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr83.2.i = lshr i32 %conv79.i, 4
  %conv85.2.i = and i32 %shr83.2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv85.2.i)
  %cmp90.2.i = icmp eq i32 %conv85.2.i, 3
  %161 = tail call i32 @llvm.umin.i32(i32 %conv78.2.i, i32 %conv85.2.i) #8
  %.tr192.i = trunc i32 %161 to i16
  %162 = shl nuw nsw i16 %.tr192.i, 4
  %phi.cast191.i = select i1 %cmp90.2.i, i16 48, i16 %162
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %lor.lhs.false.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %.pn187.2.i = phi i16 [ 48, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %phi.cast191.i, %lor.lhs.false.2.i ]
  %mcs_map_result.1.2.i = or i16 %mcs_map_result.1.1.i, %.pn187.2.i
  %shr76.3.i = lshr i32 %153, 6
  %conv78.3.i = and i32 %shr76.3.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv78.3.i)
  %cmp87.3.i = icmp eq i32 %conv78.3.i, 3
  br i1 %cmp87.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %lor.lhs.false.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i

lor.lhs.false.3.i:                                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr83.3.i = lshr i32 %conv79.i, 6
  %conv85.3.i = and i32 %shr83.3.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv85.3.i)
  %cmp90.3.i = icmp eq i32 %conv85.3.i, 3
  %163 = tail call i32 @llvm.umin.i32(i32 %conv78.3.i, i32 %conv85.3.i) #8
  %.tr194.i = trunc i32 %163 to i16
  %164 = shl nuw nsw i16 %.tr194.i, 6
  %phi.cast193.i = select i1 %cmp90.3.i, i16 192, i16 %164
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %lor.lhs.false.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %.pn187.3.i = phi i16 [ 192, %for.inc.2.i.for.inc.3.i_crit_edge ], [ %phi.cast193.i, %lor.lhs.false.3.i ]
  %mcs_map_result.1.3.i = or i16 %mcs_map_result.1.2.i, %.pn187.3.i
  %shr76.4.i = lshr i32 %153, 8
  %conv78.4.i = and i32 %shr76.4.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv78.4.i)
  %cmp87.4.i = icmp eq i32 %conv78.4.i, 3
  br i1 %cmp87.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %lor.lhs.false.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i

lor.lhs.false.4.i:                                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr83.4.i = lshr i32 %conv79.i, 8
  %conv85.4.i = and i32 %shr83.4.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv85.4.i)
  %cmp90.4.i = icmp eq i32 %conv85.4.i, 3
  %165 = tail call i32 @llvm.umin.i32(i32 %conv78.4.i, i32 %conv85.4.i) #8
  %.tr196.i = trunc i32 %165 to i16
  %166 = shl nuw nsw i16 %.tr196.i, 8
  %phi.cast195.i = select i1 %cmp90.4.i, i16 768, i16 %166
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %lor.lhs.false.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %.pn187.4.i = phi i16 [ 768, %for.inc.3.i.for.inc.4.i_crit_edge ], [ %phi.cast195.i, %lor.lhs.false.4.i ]
  %mcs_map_result.1.4.i = or i16 %mcs_map_result.1.3.i, %.pn187.4.i
  %shr76.5.i = lshr i32 %153, 10
  %conv78.5.i = and i32 %shr76.5.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv78.5.i)
  %cmp87.5.i = icmp eq i32 %conv78.5.i, 3
  br i1 %cmp87.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %lor.lhs.false.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5.i

lor.lhs.false.5.i:                                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr83.5.i = lshr i32 %conv79.i, 10
  %conv85.5.i = and i32 %shr83.5.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv85.5.i)
  %cmp90.5.i = icmp eq i32 %conv85.5.i, 3
  %167 = tail call i32 @llvm.umin.i32(i32 %conv78.5.i, i32 %conv85.5.i) #8
  %.tr198.i = trunc i32 %167 to i16
  %168 = shl nuw nsw i16 %.tr198.i, 10
  %phi.cast197.i = select i1 %cmp90.5.i, i16 3072, i16 %168
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %lor.lhs.false.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %.pn187.5.i = phi i16 [ 3072, %for.inc.4.i.for.inc.5.i_crit_edge ], [ %phi.cast197.i, %lor.lhs.false.5.i ]
  %mcs_map_result.1.5.i = or i16 %mcs_map_result.1.4.i, %.pn187.5.i
  %shr76.6.i = lshr i32 %153, 12
  %conv78.6.i = and i32 %shr76.6.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv78.6.i)
  %cmp87.6.i = icmp eq i32 %conv78.6.i, 3
  br i1 %cmp87.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %lor.lhs.false.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6.i

lor.lhs.false.6.i:                                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr83.6.i = lshr i32 %conv79.i, 12
  %conv85.6.i = and i32 %shr83.6.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv85.6.i)
  %cmp90.6.i = icmp eq i32 %conv85.6.i, 3
  %169 = tail call i32 @llvm.umin.i32(i32 %conv78.6.i, i32 %conv85.6.i) #8
  %.tr200.i = trunc i32 %169 to i16
  %170 = shl nuw nsw i16 %.tr200.i, 12
  %phi.cast199.i = select i1 %cmp90.6.i, i16 12288, i16 %170
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %lor.lhs.false.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %.pn187.6.i = phi i16 [ 12288, %for.inc.5.i.for.inc.6.i_crit_edge ], [ %phi.cast199.i, %lor.lhs.false.6.i ]
  %mcs_map_result.1.6.i = or i16 %mcs_map_result.1.5.i, %.pn187.6.i
  %conv74.i = lshr i32 %153, 14
  %shr76.7.i = and i32 %conv74.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr76.7.i)
  %cmp87.7.i = icmp eq i32 %shr76.7.i, 3
  br i1 %cmp87.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %lor.lhs.false.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7.i

lor.lhs.false.7.i:                                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr83.7.i = lshr i32 %conv79.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr83.7.i)
  %cmp90.7.i = icmp eq i32 %shr83.7.i, 3
  %171 = tail call i32 @llvm.umin.i32(i32 %shr76.7.i, i32 %shr83.7.i) #8
  %.tr202.i = trunc i32 %171 to i16
  %172 = shl nuw i16 %.tr202.i, 14
  %phi.cast201.i = select i1 %cmp90.7.i, i16 -16384, i16 %172
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %lor.lhs.false.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %.pn187.7.i = phi i16 [ -16384, %for.inc.6.i.for.inc.7.i_crit_edge ], [ %phi.cast201.i, %lor.lhs.false.7.i ]
  %mcs_map_result.1.7.i = or i16 %mcs_map_result.1.6.i, %.pn187.7.i
  %173 = tail call i16 @llvm.bswap.i16(i16 %mcs_map_result.1.7.i) #8
  %basic_mcs_set.i = getelementptr i8, ptr %call15.i, i32 5
  %174 = ptrtoint ptr %basic_mcs_set.i to i32
  call void @__asan_storeN_noabort(i32 %174, i32 2)
  store i16 %173, ptr %basic_mcs_set.i, align 1
  %175 = shl i8 %.sink.i, 3
  %176 = and i8 %175, 24
  %177 = xor i8 %176, 16
  %switch.shiftamt = zext i8 %177 to i32
  %switch.downshift = lshr i32 16777474, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %channel.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 5
  %178 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %channel.i, align 8
  %call126.i = tail call zeroext i8 @mwifiex_get_center_freq_index(ptr noundef %priv, i8 noundef zeroext 32, i32 noundef %179, i8 noundef zeroext %switch.masked) #8
  %center_freq_seg0_idx.i = getelementptr i8, ptr %call15.i, i32 3
  %180 = ptrtoint ptr %center_freq_seg0_idx.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %call126.i, ptr %center_freq_seg0_idx.i, align 1
  br label %if.end71

if.then70:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %122, i32 noundef 4, ptr noundef nonnull @.str.14) #8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end71:                                         ; preds = %for.inc.7.i, %if.then12.i, %if.then6.i
  %call72 = tail call fastcc i32 @mwifiex_tdls_add_ht_oper(ptr noundef %priv, ptr noundef %peer, i8 noundef zeroext 1, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end71.cleanup_crit_edge, label %if.then74

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.else:                                          ; preds = %sw.bb56
  %call76 = tail call fastcc i32 @mwifiex_tdls_add_ht_oper(ptr noundef %priv, ptr noundef %peer, i8 noundef zeroext 0, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.else.cleanup_crit_edge, label %if.then78

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then78:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

sw.bb81:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %category82 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 4
  %181 = ptrtoint ptr %category82 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 12, ptr %category82, align 1
  %action_code83 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 5
  %182 = ptrtoint ptr %action_code83 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 3, ptr %action_code83, align 1
  %call84 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 2) #8
  %183 = tail call i16 @llvm.bswap.i16(i16 %status_code)
  %u85 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 6
  %184 = ptrtoint ptr %u85 to i32
  call void @__asan_storeN_noabort(i32 %184, i32 2)
  store i16 %183, ptr %u85, align 1
  br label %cleanup

sw.bb86:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %category87 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 4
  %185 = ptrtoint ptr %category87 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 12, ptr %category87, align 1
  %action_code88 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 5
  %186 = ptrtoint ptr %action_code88 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 10, ptr %action_code88, align 1
  %call89 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #8
  %u90 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call, i32 0, i32 6
  %187 = ptrtoint ptr %u90 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %dialog_token, ptr %u90, align 1
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %188 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %189, i32 noundef 4, ptr noundef nonnull @.str.2) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb86, %sw.bb81, %if.then78, %if.else.cleanup_crit_edge, %if.then74, %if.end71.cleanup_crit_edge, %if.then70, %mwifiex_tdls_add_ext_capab.exit234, %if.then45, %if.then35, %mwifiex_tdls_add_ext_capab.exit, %if.then14, %if.then
  %retval.0 = phi i32 [ -22, %sw.default ], [ -1, %if.then70 ], [ -1, %if.then74 ], [ %call76, %if.then78 ], [ %call33, %if.then35 ], [ %call43, %if.then45 ], [ %call7, %if.then ], [ %call12, %if.then14 ], [ 0, %if.end71.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %sw.bb86 ], [ 0, %sw.bb81 ], [ 0, %mwifiex_tdls_add_ext_capab.exit234 ], [ 0, %mwifiex_tdls_add_ext_capab.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_queue_tx_pkt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_send_tdls_action_frame(ptr noundef %priv, ptr nocapture noundef readonly %peer, i8 noundef zeroext %action_code, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, ptr nocapture noundef readonly %extra_ies, i32 noundef %extra_ies_len) local_unnamed_addr #0 align 64 {
entry:
  %vht_cap.i.i = alloca %struct.ieee80211_vht_cap, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %is_hw_11ac_capable = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 128
  %2 = ptrtoint ptr %is_hw_11ac_capable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %is_hw_11ac_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select.v = select i1 %tobool.not, i32 262, i32 287
  %spec.select = add i32 %spec.select.v, %extra_ies_len
  %conv6 = and i32 %spec.select, 65535
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv6, i32 noundef 2592) #8
  %tobool7.not = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end10:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 100
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 100
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 10) #8
  %10 = getelementptr inbounds i8, ptr %call.i, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 0, ptr %10, align 1
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 229, ptr %call.i, align 1
  %add.ptr = getelementptr i8, ptr %call.i, i32 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 0, ptr %add.ptr, align 1
  %cap_info_bitmap.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 20
  %14 = ptrtoint ptr %cap_info_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cap_info_bitmap.i, align 8
  %call.i63 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #8
  %16 = call ptr @memset(ptr %call.i63, i32 0, i32 24)
  %da.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i63, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %da.i, ptr %peer, i32 6)
  %sa.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i63, i32 0, i32 3
  %curr_addr.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 7
  %18 = call ptr @memcpy(ptr %sa.i, ptr %curr_addr.i, i32 6)
  %bssid.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i63, i32 0, i32 4
  %cfg_bssid.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 112
  %19 = call ptr @memcpy(ptr %bssid.i, ptr %cfg_bssid.i, i32 6)
  %20 = ptrtoint ptr %call.i63 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -12288, ptr %call.i63, align 2
  %call5.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %action_code)
  %cond.i = icmp eq i8 %action_code, 14
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end10
  %call6.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 5) #8
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i63, i32 0, i32 6
  %21 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %u.i, align 2
  %u8.i = getelementptr inbounds %struct.anon.181, ptr %u.i, i32 0, i32 1
  %22 = ptrtoint ptr %u8.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 14, ptr %u8.i, align 1
  %dialog_token12.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i63, i32 0, i32 6, i32 0, i32 1
  %23 = ptrtoint ptr %dialog_token12.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %dialog_token, ptr %dialog_token12.i, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %15) #8
  %capability.i = getelementptr inbounds %struct.anon.181, ptr %u.i, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %capability.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %capability.i, align 1
  %add.ptr.i64 = getelementptr i8, ptr %call5.i, i32 6
  %26 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %u.i, align 2
  %28 = ptrtoint ptr %add.ptr.i64 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %add.ptr.i64, align 1
  %29 = call ptr @memset(ptr %call5.i, i32 255, i32 6)
  %call17.i = tail call fastcc i32 @mwifiex_tdls_append_rates_ie(ptr noundef %priv, ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  br label %if.then14

if.end.i:                                         ; preds = %sw.bb.i
  %call18.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 28) #8
  %incdec.ptr.i = getelementptr i8, ptr %call18.i, i32 1
  %30 = ptrtoint ptr %call18.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 45, ptr %call18.i, align 1
  %incdec.ptr19.i = getelementptr i8, ptr %call18.i, i32 2
  %31 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 26, ptr %incdec.ptr.i, align 1
  %band.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 3
  %32 = ptrtoint ptr %band.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %band.i, align 2
  %call21.i = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %33) #8
  %call22.i = tail call i32 @mwifiex_fill_cap_info(ptr noundef %priv, i8 noundef zeroext %call21.i, ptr noundef %incdec.ptr19.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  br label %if.then14

if.end25.i:                                       ; preds = %if.end.i
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 8
  %is_hw_11ac_capable.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %35, i32 0, i32 128
  %36 = ptrtoint ptr %is_hw_11ac_capable.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %is_hw_11ac_capable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool26.not.i = icmp eq i32 %37, 0
  br i1 %tobool26.not.i, label %if.end25.i.if.end32.i_crit_edge, label %if.then27.i

if.end25.i.if.end32.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vht_cap.i.i) #8
  %call.i.i65 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 14) #8
  %incdec.ptr.i.i = getelementptr i8, ptr %call.i.i65, i32 1
  %38 = ptrtoint ptr %call.i.i65 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -65, ptr %call.i.i65, align 1
  %incdec.ptr1.i.i = getelementptr i8, ptr %call.i.i65, i32 2
  %39 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 12, ptr %incdec.ptr.i.i, align 1
  %40 = call ptr @memset(ptr %vht_cap.i.i, i32 0, i32 12)
  %41 = ptrtoint ptr %band.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %band.i, align 2
  call void @mwifiex_fill_vht_cap_tlv(ptr noundef %priv, ptr noundef nonnull %vht_cap.i.i, i8 noundef zeroext %42) #8
  %43 = call ptr @memcpy(ptr %incdec.ptr1.i.i, ptr %vht_cap.i.i, i32 12)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vht_cap.i.i) #8
  %call.i1.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #8
  %incdec.ptr.i2.i = getelementptr i8, ptr %call.i1.i, i32 1
  %44 = ptrtoint ptr %call.i1.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -59, ptr %call.i1.i, align 1
  %incdec.ptr1.i3.i = getelementptr i8, ptr %call.i1.i, i32 2
  %45 = ptrtoint ptr %incdec.ptr.i2.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %incdec.ptr.i2.i, align 1
  %a_id.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 91, i32 4
  %46 = ptrtoint ptr %a_id.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %a_id.i.i, align 1
  %48 = ptrtoint ptr %incdec.ptr1.i3.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %incdec.ptr1.i3.i, align 1
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then27.i, %if.end25.i.if.end32.i_crit_edge
  %call.i4.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 10) #8
  %49 = ptrtoint ptr %call.i4.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 127, ptr %call.i4.i, align 1
  %len.i.i = getelementptr inbounds %struct.ieee_types_header, ptr %call.i4.i, i32 0, i32 1
  %50 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 8, ptr %len.i.i, align 1
  %ext_capab.i.i = getelementptr inbounds %struct.ieee_types_extcap, ptr %call.i4.i, i32 0, i32 1
  %51 = ptrtoint ptr %ext_capab.i.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 275414777856, ptr %ext_capab.i.i, align 1
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 8
  %is_hw_11ac_capable.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %53, i32 0, i32 128
  %54 = ptrtoint ptr %is_hw_11ac_capable.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %is_hw_11ac_capable.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i, label %if.end32.i.if.end15_crit_edge, label %if.then.i.i

if.end32.i.if.end15_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then.i.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10.i.i = getelementptr %struct.ieee_types_extcap, ptr %call.i4.i, i32 0, i32 1, i32 7
  %56 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx10.i.i, align 1
  %58 = or i8 %57, 32
  store i8 %58, ptr %arrayidx10.i.i, align 1
  br label %if.end15

sw.default.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %60, i32 noundef 4, ptr noundef nonnull @.str.18) #8
  br label %if.then14

if.then14:                                        ; preds = %sw.default.i, %if.then24.i, %if.then.i
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  br label %cleanup

if.end15:                                         ; preds = %if.then.i.i, %if.end32.i.if.end15_crit_edge
  %call.i5.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 3) #8
  %61 = ptrtoint ptr %call.i5.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 72, ptr %call.i5.i, align 1
  %len.i6.i = getelementptr inbounds %struct.ieee_types_header, ptr %call.i5.i, i32 0, i32 1
  %62 = ptrtoint ptr %len.i6.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %len.i6.i, align 1
  %bss_2040co.i.i = getelementptr inbounds %struct.ieee_types_bss_co_2040, ptr %call.i5.i, i32 0, i32 1
  %63 = ptrtoint ptr %bss_2040co.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %bss_2040co.i.i, align 1
  %call.i7.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #8
  %64 = ptrtoint ptr %call.i7.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 36, ptr %call.i7.i, align 1
  %len.i8.i = getelementptr inbounds %struct.ieee_types_header, ptr %call.i7.i, i32 0, i32 1
  %65 = ptrtoint ptr %len.i8.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 2, ptr %len.i8.i, align 1
  %data.i.i = getelementptr inbounds %struct.ieee_types_generic, ptr %call.i7.i, i32 0, i32 1
  %66 = ptrtoint ptr %data.i.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 267, ptr %data.i.i, align 1
  %call.i9.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 3) #8
  %incdec.ptr.i10.i = getelementptr i8, ptr %call.i9.i, i32 1
  %67 = ptrtoint ptr %call.i9.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 46, ptr %call.i9.i, align 1
  %incdec.ptr1.i11.i = getelementptr i8, ptr %call.i9.i, i32 2
  %68 = ptrtoint ptr %incdec.ptr.i10.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %incdec.ptr.i10.i, align 1
  %69 = ptrtoint ptr %incdec.ptr1.i11.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 15, ptr %incdec.ptr1.i11.i, align 1
  %call.i12.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 18) #8
  %70 = ptrtoint ptr %call.i12.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 59, ptr %call.i12.i, align 1
  %len.i13.i = getelementptr inbounds %struct.ieee_types_header, ptr %call.i12.i, i32 0, i32 1
  %71 = ptrtoint ptr %len.i13.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 16, ptr %len.i13.i, align 1
  %data.i14.i = getelementptr inbounds %struct.ieee_types_generic, ptr %call.i12.i, i32 0, i32 1
  %72 = call ptr @memcpy(ptr %data.i14.i, ptr @__const.mwifiex_tdls_add_oper_class.rc_list, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_ies_len)
  %tobool16.not = icmp eq i32 %extra_ies_len, 0
  br i1 %tobool16.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call.i66 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %extra_ies_len) #8
  %73 = call ptr @memcpy(ptr %call.i66, ptr %extra_ies, i32 %extra_ies_len)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %call.i67 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #8
  %74 = ptrtoint ptr %call.i67 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 101, ptr %call.i67, align 1
  %ie_len.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i67, i32 0, i32 1
  %75 = ptrtoint ptr %ie_len.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 18, ptr %ie_len.i, align 1
  %bssid1.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i67, i32 0, i32 2
  %76 = call ptr @memcpy(ptr %bssid1.i, ptr %cfg_bssid.i, i32 6)
  %init_sta.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i67, i32 0, i32 3
  %77 = call ptr @memcpy(ptr %init_sta.i, ptr %peer, i32 6)
  %resp_sta.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i67, i32 0, i32 4
  %78 = call ptr @memcpy(ptr %resp_sta.i, ptr %curr_addr.i, i32 6)
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %79 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 5, ptr %priority, align 4
  %80 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %81 = call ptr @memset(ptr %80, i32 0, i32 24)
  %bss_num = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 4
  %82 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bss_num, align 1
  %bss_num22 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 13
  %84 = ptrtoint ptr %bss_num22 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %bss_num22, align 1
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %85 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bss_type, align 4
  %bss_type23 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 14
  %87 = ptrtoint ptr %bss_type23 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %bss_type23, align 2
  %flags = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %88 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 4, ptr %flags, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %89 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len, align 4
  %91 = trunc i32 %90 to i16
  %conv27 = add i16 %91, -10
  %92 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i, align 4
  %add.ptr28 = getelementptr i8, ptr %93, i32 8
  %94 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %conv27, ptr %add.ptr28, align 1
  %call.i.i68 = call i64 @ktime_get_with_offset(i32 noundef 0) #8
  %95 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 2
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %call.i.i68, ptr %95, align 8
  %call29 = call i32 @mwifiex_queue_tx_pkt(ptr noundef %priv, ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then14, %if.then8
  %retval.0 = phi i32 [ -22, %if.then14 ], [ 0, %if.end19 ], [ -12, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_process_tdls_action_frame(ptr noundef %priv, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %len)
  %cmp = icmp ult i32 %len, 17
  br i1 %cmp, label %entry.cleanup239_crit_edge, label %if.end

entry.cleanup239_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %buf, i32 14
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp1.not = icmp eq i8 %1, 2
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup239_crit_edge

if.end.cleanup239_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end4:                                          ; preds = %if.end
  %add.ptr6 = getelementptr i8, ptr %buf, i32 15
  %2 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %3)
  %cmp8.not = icmp eq i8 %3, 12
  br i1 %cmp8.not, label %if.end11, label %if.end4.cleanup239_crit_edge

if.end4.cleanup239_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end11:                                         ; preds = %if.end4
  %add.ptr12 = getelementptr i8, ptr %buf, i32 6
  %add.ptr14 = getelementptr i8, ptr %buf, i32 16
  %4 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr14, align 1
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %conv15 = zext i8 %5 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef %add.ptr12, i32 noundef %conv15) #8
  %8 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %5, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb25
    i8 2, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %len)
  %cmp17 = icmp ult i32 %len, 20
  br i1 %cmp17, label %sw.bb.cleanup239_crit_edge, label %if.end20

sw.bb.cleanup239_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end20:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr22 = getelementptr i8, ptr %buf, i32 18
  %9 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr22, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #8
  %sub23 = add i32 %len, -20
  %add.ptr24 = getelementptr i8, ptr %buf, i32 20
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %len)
  %cmp26 = icmp ult i32 %len, 22
  br i1 %cmp26, label %sw.bb25.cleanup239_crit_edge, label %if.end29

sw.bb25.cleanup239_crit_edge:                     ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end29:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr31 = getelementptr i8, ptr %buf, i32 20
  %12 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %add.ptr31, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #8
  %sub34 = add i32 %len, -22
  %add.ptr35 = getelementptr i8, ptr %buf, i32 22
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %len)
  %cmp37 = icmp ult i32 %len, 20
  br i1 %cmp37, label %sw.bb36.cleanup239_crit_edge, label %if.end40

sw.bb36.cleanup239_crit_edge:                     ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end40:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42 = getelementptr i8, ptr %buf, i32 20
  %sub44 = add i32 %len, -20
  br label %sw.epilog

sw.default:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 4, ptr noundef nonnull @.str.2) #8
  br label %cleanup239

sw.epilog:                                        ; preds = %if.end40, %if.end29, %if.end20
  %pos.0 = phi ptr [ %add.ptr42, %if.end40 ], [ %add.ptr35, %if.end29 ], [ %add.ptr24, %if.end20 ]
  %cap.0 = phi i16 [ 0, %if.end40 ], [ %14, %if.end29 ], [ %11, %if.end20 ]
  %ies_len.0 = phi i32 [ %sub44, %if.end40 ], [ %sub34, %if.end29 ], [ %sub23, %if.end20 ]
  %call46 = tail call ptr @mwifiex_add_sta_entry(ptr noundef %priv, ptr noundef %add.ptr12) #8
  %tobool.not = icmp eq ptr %call46, null
  br i1 %tobool.not, label %sw.epilog.cleanup239_crit_edge, label %if.end48

sw.epilog.cleanup239_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end48:                                         ; preds = %sw.epilog
  %17 = tail call i16 @llvm.bswap.i16(i16 %cap.0)
  %tdls_cap = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 10
  %18 = ptrtoint ptr %tdls_cap to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %tdls_cap, align 2
  %add.ptr49 = getelementptr i8, ptr %pos.0, i32 %ies_len.0
  %rates_len85 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 10, i32 2
  %add.ptr50346 = getelementptr i8, ptr %pos.0, i32 1
  %cmp51347 = icmp ult ptr %add.ptr50346, %add.ptr49
  br i1 %cmp51347, label %for.body.lr.ph, label %if.end48.cleanup239_crit_edge

if.end48.cleanup239_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

for.body.lr.ph:                                   ; preds = %if.end48
  %aid = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 10, i32 6
  %vhtcap = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 10, i32 11
  %is_11ac_enabled = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 4
  %vhtoper = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 10, i32 12
  %qos_info = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 10, i32 3
  %rsn_ie = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 10, i32 10
  %extcap = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 10, i32 9
  %coex_2040 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 10, i32 4
  %ht_oper = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 10, i32 8
  %ht_capb = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 10, i32 7
  %is_11n_enabled = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc233.for.body_crit_edge, %for.body.lr.ph
  %add.ptr50352 = phi ptr [ %add.ptr50346, %for.body.lr.ph ], [ %add.ptr50, %for.inc233.for.body_crit_edge ]
  %pos.1348 = phi ptr [ %pos.0, %for.body.lr.ph ], [ %add.ptr237, %for.inc233.for.body_crit_edge ]
  %19 = ptrtoint ptr %add.ptr50352 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr50352, align 1
  %add.ptr53 = getelementptr i8, ptr %pos.1348, i32 2
  %conv54 = zext i8 %20 to i32
  %add.ptr55 = getelementptr i8, ptr %add.ptr53, i32 %conv54
  %cmp56 = icmp ugt ptr %add.ptr55, %add.ptr49
  br i1 %cmp56, label %for.body.cleanup239_crit_edge, label %if.end59

for.body.cleanup239_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end59:                                         ; preds = %for.body
  %21 = ptrtoint ptr %pos.1348 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pos.1348, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %22, label %if.end59.for.inc233_crit_edge [
    i8 1, label %sw.bb61
    i8 50, label %sw.bb78
    i8 45, label %sw.bb117
    i8 61, label %sw.bb125
    i8 72, label %sw.bb133
    i8 127, label %sw.bb141
    i8 48, label %sw.bb160
    i8 46, label %sw.bb184
    i8 -64, label %sw.bb192
    i8 -65, label %sw.bb204
    i8 -59, label %sw.bb217
  ]

if.end59.for.inc233_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc233

sw.bb61:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %20)
  %cmp63 = icmp ugt i8 %20, 32
  br i1 %cmp63, label %sw.bb61.cleanup239_crit_edge, label %if.end66

sw.bb61.cleanup239_crit_edge:                     ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end66:                                         ; preds = %sw.bb61
  %24 = ptrtoint ptr %rates_len85 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %20, ptr %rates_len85, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp71344.not = icmp eq i8 %20, 0
  br i1 %cmp71344.not, label %if.end66.for.inc233_crit_edge, label %if.end66.for.body73_crit_edge

if.end66.for.body73_crit_edge:                    ; preds = %if.end66
  br label %for.body73

if.end66.for.inc233_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc233

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %if.end66.for.body73_crit_edge
  %indvars.iv357 = phi i32 [ %indvars.iv.next358, %for.body73.for.body73_crit_edge ], [ 0, %if.end66.for.body73_crit_edge ]
  %add = add nuw nsw i32 %indvars.iv357, 2
  %arrayidx75 = getelementptr i8, ptr %pos.1348, i32 %add
  %25 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx75, align 1
  %arrayidx77 = getelementptr %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 10, i32 1, i32 %indvars.iv357
  %27 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx77, align 1
  %indvars.iv.next358 = add nuw nsw i32 %indvars.iv357, 1
  %exitcond360.not = icmp eq i32 %indvars.iv.next358, %conv54
  br i1 %exitcond360.not, label %for.body73.for.inc233_crit_edge, label %for.body73.for.body73_crit_edge

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body73

for.body73.for.inc233_crit_edge:                  ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc233

sw.bb78:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %20)
  %cmp80 = icmp ugt i8 %20, 32
  br i1 %cmp80, label %sw.bb78.cleanup239_crit_edge, label %if.end83

sw.bb78.cleanup239_crit_edge:                     ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end83:                                         ; preds = %sw.bb78
  %28 = ptrtoint ptr %rates_len85 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rates_len85, align 2
  %conv87 = zext i8 %29 to i32
  %sub88 = sub nsw i32 32, %conv87
  call void @__sanitizer_cov_trace_cmp4(i32 %sub88, i32 %conv54)
  %cmp89 = icmp ult i32 %sub88, %conv54
  br i1 %cmp89, label %if.end83.cleanup239_crit_edge, label %for.cond93.preheader

if.end83.cleanup239_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

for.cond93.preheader:                             ; preds = %if.end83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp96342.not = icmp eq i8 %20, 0
  br i1 %cmp96342.not, label %for.cond93.preheader.for.end110_crit_edge, label %for.cond93.preheader.for.body98_crit_edge

for.cond93.preheader.for.body98_crit_edge:        ; preds = %for.cond93.preheader
  br label %for.body98

for.cond93.preheader.for.end110_crit_edge:        ; preds = %for.cond93.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end110

for.body98:                                       ; preds = %for.body98.for.body98_crit_edge, %for.cond93.preheader.for.body98_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body98.for.body98_crit_edge ], [ 0, %for.cond93.preheader.for.body98_crit_edge ]
  %add100 = add nuw nsw i32 %indvars.iv, 2
  %arrayidx101 = getelementptr i8, ptr %pos.1348, i32 %add100
  %30 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx101, align 1
  %add106 = add nuw nsw i32 %indvars.iv, %conv87
  %arrayidx107 = getelementptr %struct.mwifiex_sta_node, ptr %call46, i32 0, i32 10, i32 1, i32 %add106
  %32 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx107, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv54
  br i1 %exitcond.not, label %for.body98.for.end110_crit_edge, label %for.body98.for.body98_crit_edge

for.body98.for.body98_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body98

for.body98.for.end110_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end110

for.end110:                                       ; preds = %for.body98.for.end110_crit_edge, %for.cond93.preheader.for.end110_crit_edge
  %33 = ptrtoint ptr %rates_len85 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rates_len85, align 2
  %add115 = add i8 %34, %20
  store i8 %add115, ptr %rates_len85, align 2
  br label %for.inc233

sw.bb117:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %20)
  %cmp119.not = icmp eq i8 %20, 26
  br i1 %cmp119.not, label %if.end122, label %sw.bb117.cleanup239_crit_edge

sw.bb117.cleanup239_crit_edge:                    ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end122:                                        ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #10
  %35 = call ptr @memcpy(ptr %ht_capb, ptr %add.ptr53, i32 26)
  %36 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %is_11n_enabled, align 1
  br label %for.inc233

sw.bb125:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %20)
  %cmp127.not = icmp eq i8 %20, 22
  br i1 %cmp127.not, label %if.end130, label %sw.bb125.cleanup239_crit_edge

sw.bb125.cleanup239_crit_edge:                    ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end130:                                        ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #10
  %37 = call ptr @memcpy(ptr %ht_oper, ptr %add.ptr53, i32 22)
  br label %for.inc233

sw.bb133:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp135.not = icmp eq i8 %20, 1
  br i1 %cmp135.not, label %if.end138, label %sw.bb133.cleanup239_crit_edge

sw.bb133.cleanup239_crit_edge:                    ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end138:                                        ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr53, align 1
  %40 = ptrtoint ptr %coex_2040 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %coex_2040, align 2
  br label %for.inc233

sw.bb141:                                         ; preds = %if.end59
  %41 = add i8 %20, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %41)
  %42 = icmp ult i8 %41, -7
  br i1 %42, label %sw.bb141.cleanup239_crit_edge, label %if.end151

sw.bb141.cleanup239_crit_edge:                    ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end151:                                        ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #10
  %add159 = add nuw nsw i32 %conv54, 2
  %43 = call ptr @memcpy(ptr %extcap, ptr %pos.1348, i32 %add159)
  br label %for.inc233

sw.bb160:                                         ; preds = %if.end59
  %44 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %20, label %if.end170 [
    i8 -1, label %sw.bb160.cleanup239_crit_edge
    i8 1, label %sw.bb160.cleanup239_crit_edge361
    i8 0, label %sw.bb160.cleanup239_crit_edge362
  ]

sw.bb160.cleanup239_crit_edge362:                 ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

sw.bb160.cleanup239_crit_edge361:                 ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

sw.bb160.cleanup239_crit_edge:                    ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end170:                                        ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #10
  %add183 = add nuw nsw i32 %conv54, 2
  %45 = call ptr @memcpy(ptr %rsn_ie, ptr %pos.1348, i32 %add183)
  br label %for.inc233

sw.bb184:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp186.not = icmp eq i8 %20, 1
  br i1 %cmp186.not, label %if.end189, label %sw.bb184.cleanup239_crit_edge

sw.bb184.cleanup239_crit_edge:                    ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end189:                                        ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr53, align 1
  %48 = ptrtoint ptr %qos_info to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %qos_info, align 1
  br label %for.inc233

sw.bb192:                                         ; preds = %if.end59
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 8
  %is_hw_11ac_capable = getelementptr inbounds %struct.mwifiex_adapter, ptr %50, i32 0, i32 128
  %51 = ptrtoint ptr %is_hw_11ac_capable to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %is_hw_11ac_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool194.not = icmp eq i32 %52, 0
  br i1 %tobool194.not, label %sw.bb192.for.inc233_crit_edge, label %if.then195

sw.bb192.for.inc233_crit_edge:                    ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc233

if.then195:                                       ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %20)
  %cmp197.not = icmp eq i8 %20, 5
  br i1 %cmp197.not, label %if.end200, label %if.then195.cleanup239_crit_edge

if.then195.cleanup239_crit_edge:                  ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end200:                                        ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #10
  %53 = call ptr @memcpy(ptr %vhtoper, ptr %add.ptr53, i32 5)
  br label %for.inc233

sw.bb204:                                         ; preds = %if.end59
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %is_hw_11ac_capable206 = getelementptr inbounds %struct.mwifiex_adapter, ptr %55, i32 0, i32 128
  %56 = ptrtoint ptr %is_hw_11ac_capable206 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %is_hw_11ac_capable206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool207.not = icmp eq i32 %57, 0
  br i1 %tobool207.not, label %sw.bb204.for.inc233_crit_edge, label %if.then208

sw.bb204.for.inc233_crit_edge:                    ; preds = %sw.bb204
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc233

if.then208:                                       ; preds = %sw.bb204
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %20)
  %cmp210.not = icmp eq i8 %20, 12
  br i1 %cmp210.not, label %if.end213, label %if.then208.cleanup239_crit_edge

if.then208.cleanup239_crit_edge:                  ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end213:                                        ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #10
  %58 = call ptr @memcpy(ptr %vhtcap, ptr %add.ptr53, i32 12)
  %59 = ptrtoint ptr %is_11ac_enabled to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %is_11ac_enabled, align 8
  br label %for.inc233

sw.bb217:                                         ; preds = %if.end59
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 8
  %is_hw_11ac_capable219 = getelementptr inbounds %struct.mwifiex_adapter, ptr %61, i32 0, i32 128
  %62 = ptrtoint ptr %is_hw_11ac_capable219 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %is_hw_11ac_capable219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool220.not = icmp eq i32 %63, 0
  br i1 %tobool220.not, label %sw.bb217.for.inc233_crit_edge, label %if.then221

sw.bb217.for.inc233_crit_edge:                    ; preds = %sw.bb217
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc233

if.then221:                                       ; preds = %sw.bb217
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp223.not = icmp eq i8 %20, 2
  br i1 %cmp223.not, label %if.end226, label %if.then221.cleanup239_crit_edge

if.then221.cleanup239_crit_edge:                  ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.end226:                                        ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %add.ptr53, align 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #8
  %67 = ptrtoint ptr %aid to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %aid, align 2
  br label %for.inc233

for.inc233:                                       ; preds = %if.end226, %sw.bb217.for.inc233_crit_edge, %if.end213, %sw.bb204.for.inc233_crit_edge, %if.end200, %sw.bb192.for.inc233_crit_edge, %if.end189, %if.end170, %if.end151, %if.end138, %if.end130, %if.end122, %for.end110, %for.body73.for.inc233_crit_edge, %if.end66.for.inc233_crit_edge, %if.end59.for.inc233_crit_edge
  %68 = ptrtoint ptr %add.ptr50352 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %add.ptr50352, align 1
  %conv235 = zext i8 %69 to i32
  %add236 = add nuw nsw i32 %conv235, 2
  %add.ptr237 = getelementptr i8, ptr %pos.1348, i32 %add236
  %add.ptr50 = getelementptr i8, ptr %add.ptr237, i32 1
  %cmp51 = icmp ult ptr %add.ptr50, %add.ptr49
  br i1 %cmp51, label %for.inc233.for.body_crit_edge, label %for.inc233.cleanup239_crit_edge

for.inc233.cleanup239_crit_edge:                  ; preds = %for.inc233
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

for.inc233.for.body_crit_edge:                    ; preds = %for.inc233
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup239:                                       ; preds = %for.inc233.cleanup239_crit_edge, %if.then221.cleanup239_crit_edge, %if.then208.cleanup239_crit_edge, %if.then195.cleanup239_crit_edge, %sw.bb184.cleanup239_crit_edge, %sw.bb160.cleanup239_crit_edge, %sw.bb160.cleanup239_crit_edge361, %sw.bb160.cleanup239_crit_edge362, %sw.bb141.cleanup239_crit_edge, %sw.bb133.cleanup239_crit_edge, %sw.bb125.cleanup239_crit_edge, %sw.bb117.cleanup239_crit_edge, %if.end83.cleanup239_crit_edge, %sw.bb78.cleanup239_crit_edge, %sw.bb61.cleanup239_crit_edge, %for.body.cleanup239_crit_edge, %if.end48.cleanup239_crit_edge, %sw.epilog.cleanup239_crit_edge, %sw.default, %sw.bb36.cleanup239_crit_edge, %sw.bb25.cleanup239_crit_edge, %sw.bb.cleanup239_crit_edge, %if.end4.cleanup239_crit_edge, %if.end.cleanup239_crit_edge, %entry.cleanup239_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_add_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_tdls_oper(ptr noundef %priv, ptr noundef %peer, i8 noundef zeroext %action) local_unnamed_addr #0 align 64 {
entry:
  %tdls_oper.i53 = alloca %struct.mwifiex_ds_tdls_oper, align 4
  %tdls_oper.i40 = alloca %struct.mwifiex_ds_tdls_oper, align 4
  %tdls_oper.i = alloca %struct.mwifiex_ds_tdls_oper, align 4
  %config_tdls_cs_params.i.i = alloca %struct.mwifiex_tdls_config_cs_params, align 1
  %config.i.i.i = alloca %struct.mwifiex_tdls_config, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %action, label %entry.return_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %sw.bb1
    i8 2, label %sw.bb3
    i8 3, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %call.i = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %peer) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end48.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %tdls_status.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %tdls_status.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tdls_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp.not.i = icmp eq i8 %2, 3
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  br i1 %cmp.not.i, label %if.then45.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.19, ptr noundef %peer) #8
  %5 = ptrtoint ptr %tdls_status.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %tdls_status.i, align 4
  %ht_capb.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 10, i32 7
  %mcs3.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 10, i32 7, i32 2
  %6 = ptrtoint ptr %mcs3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %mcs.sroa.0.0.copyload.i = load i8, ptr %mcs3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %mcs.sroa.0.0.copyload.i)
  %cmp5.not.i = icmp eq i8 %mcs.sroa.0.0.copyload.i, -1
  br i1 %cmp5.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %is_11n_enabled.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %is_11n_enabled.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %is_11n_enabled.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %is_11n_enabled8.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %is_11n_enabled8.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_11n_enabled8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not.i = icmp eq i8 %9, 0
  br i1 %tobool9.not.i, label %for.body26.preheader.i, label %if.then10.i

for.body26.preheader.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %uglygep.i = getelementptr i8, ptr %call.i, i32 17
  %10 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 -1, ptr %uglygep.i, align 1
  br label %if.end32.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %ht_capb.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ht_capb.i, align 2
  %13 = and i16 %12, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool14.not.i = icmp eq i16 %13, 0
  %spec.select.i = select i1 %tobool14.not.i, i16 4096, i16 8192
  %14 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %spec.select.i, ptr %14, align 2
  %arrayidx20.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 0
  %16 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 5, i32 0
  %18 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx21.i, align 1
  %arrayidx20.1.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 1
  %19 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx20.1.i, align 1
  %arrayidx21.1.i = getelementptr %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx21.1.i, align 1
  %arrayidx20.2.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 2
  %22 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx20.2.i, align 1
  %arrayidx21.2.i = getelementptr %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %arrayidx21.2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx21.2.i, align 1
  %arrayidx20.3.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 3
  %25 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx20.3.i, align 1
  %arrayidx21.3.i = getelementptr %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %arrayidx21.3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx21.3.i, align 1
  %arrayidx20.4.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 4
  %28 = ptrtoint ptr %arrayidx20.4.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx20.4.i, align 1
  %arrayidx21.4.i = getelementptr %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 5, i32 4
  %30 = ptrtoint ptr %arrayidx21.4.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx21.4.i, align 1
  %arrayidx20.5.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 5
  %31 = ptrtoint ptr %arrayidx20.5.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx20.5.i, align 1
  %arrayidx21.5.i = getelementptr %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 5, i32 5
  %33 = ptrtoint ptr %arrayidx21.5.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx21.5.i, align 1
  %arrayidx20.6.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 6
  %34 = ptrtoint ptr %arrayidx20.6.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx20.6.i, align 1
  %arrayidx21.6.i = getelementptr %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 5, i32 6
  %36 = ptrtoint ptr %arrayidx21.6.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx21.6.i, align 1
  %arrayidx20.7.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 7
  %37 = ptrtoint ptr %arrayidx20.7.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx20.7.i, align 1
  %arrayidx21.7.i = getelementptr %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 5, i32 7
  %39 = ptrtoint ptr %arrayidx21.7.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx21.7.i, align 1
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then10.i, %for.body26.preheader.i
  %arrayidx34.i = getelementptr %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 10, i32 9, i32 1, i32 3
  %40 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx34.i, align 1
  %42 = and i8 %41, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool37.not.i = icmp eq i8 %42, 0
  br i1 %tobool37.not.i, label %if.end32.i.if.end41.i_crit_edge, label %if.then38.i

if.end32.i.if.end41.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then38.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %config.i.i.i) #8
  %43 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 256, ptr %config.i.i.i, align 2
  %call.i.i.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 256, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %config.i.i.i, i1 noundef zeroext true) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %config.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %config_tdls_cs_params.i.i) #8
  %44 = getelementptr inbounds %struct.mwifiex_tdls_config_cs_params, ptr %config_tdls_cs_params.i.i, i32 0, i32 1
  %45 = getelementptr inbounds %struct.mwifiex_tdls_config_cs_params, ptr %config_tdls_cs_params.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %config_tdls_cs_params.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %config_tdls_cs_params.i.i, align 1
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 10, ptr %44, align 1
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %45, align 1
  %call.i.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 256, i16 noundef zeroext 8, i32 noundef 0, ptr noundef nonnull %config_tdls_cs_params.i.i, i1 noundef zeroext true) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %config_tdls_cs_params.i.i) #8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then38.i, %if.end32.i.if.end41.i_crit_edge
  %rx_seq.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call.i, i32 0, i32 6
  %49 = call ptr @memset(ptr %rx_seq.i, i32 255, i32 16)
  call fastcc void @mwifiex_restore_tdls_packets(ptr noundef %priv, ptr noundef %peer, i8 noundef zeroext 2) #8
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 8
  %auto_tdls.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %51, i32 0, i32 151
  %52 = ptrtoint ptr %auto_tdls.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %auto_tdls.i.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i.i, label %if.end41.i.return_crit_edge, label %if.end.i.i

if.end41.i.return_crit_edge:                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i.i:                                       ; preds = %if.end41.i
  %auto_tdls_lock.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 82
  call void @_raw_spin_lock_bh(ptr noundef %auto_tdls_lock.i.i) #8
  %auto_tdls_list.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 81
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i
  %peer.0.in.i.i = phi ptr [ %auto_tdls_list.i.i, %if.end.i.i ], [ %peer.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %54 = ptrtoint ptr %peer.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %peer.0.i.i = load ptr, ptr %peer.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %peer.0.i.i, %auto_tdls_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %mac_addr.i.i = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0.i.i, i32 0, i32 1
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i, ptr noundef dereferenceable(6) %peer, i32 6) #11
  %tobool2.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

if.then3.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %failure_count13.i.i = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0.i.i, i32 0, i32 5
  %55 = ptrtoint ptr %failure_count13.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %failure_count13.i.i, align 4
  %tdls_status16.i.i = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %tdls_status16.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 2, ptr %tdls_status16.i.i, align 2
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.then3.i.i, %for.cond.i.i.for.end.i.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %auto_tdls_lock.i.i) #8
  br label %return

if.then45.critedge.i:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.20, ptr noundef %peer) #8
  tail call void @mwifiex_11n_cleanup_reorder_tbl(ptr noundef %priv) #8
  %ra_list_spinlock.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock.i) #8
  tail call void @mwifiex_11n_delete_all_tx_ba_stream_tbl(ptr noundef %priv) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock.i) #8
  tail call void @mwifiex_del_sta_entry(ptr noundef %priv, ptr noundef %peer) #8
  br label %if.end48.i

if.end48.critedge.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %58, i32 noundef 4, ptr noundef nonnull @.str.20, ptr noundef %peer) #8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end48.critedge.i, %if.then45.critedge.i
  tail call fastcc void @mwifiex_restore_tdls_packets(ptr noundef %priv, ptr noundef %peer, i8 noundef zeroext 4) #8
  %59 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv, align 8
  %auto_tdls.i92.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %60, i32 0, i32 151
  %61 = ptrtoint ptr %auto_tdls.i92.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %auto_tdls.i92.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i93.i = icmp eq i8 %62, 0
  br i1 %tobool.not.i93.i, label %if.end48.i.return_crit_edge, label %if.end.i96.i

if.end48.i.return_crit_edge:                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i96.i:                                     ; preds = %if.end48.i
  %auto_tdls_lock.i94.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %auto_tdls_lock.i94.i) #8
  %auto_tdls_list.i95.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 81
  br label %for.cond.i100.i

for.cond.i100.i:                                  ; preds = %for.body.i104.i.for.cond.i100.i_crit_edge, %if.end.i96.i
  %peer.0.in.i97.i = phi ptr [ %auto_tdls_list.i95.i, %if.end.i96.i ], [ %peer.0.i98.i, %for.body.i104.i.for.cond.i100.i_crit_edge ]
  %63 = ptrtoint ptr %peer.0.in.i97.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %peer.0.i98.i = load ptr, ptr %peer.0.in.i97.i, align 4
  %cmp.not.i99.i = icmp eq ptr %peer.0.i98.i, %auto_tdls_list.i95.i
  br i1 %cmp.not.i99.i, label %for.cond.i100.i.for.end.i107.i_crit_edge, label %for.body.i104.i

for.cond.i100.i.for.end.i107.i_crit_edge:         ; preds = %for.cond.i100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i107.i

for.body.i104.i:                                  ; preds = %for.cond.i100.i
  %mac_addr.i101.i = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0.i98.i, i32 0, i32 1
  %bcmp.i102.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i101.i, ptr noundef dereferenceable(6) %peer, i32 6) #11
  %tobool2.not.i103.i = icmp eq i32 %bcmp.i102.i, 0
  br i1 %tobool2.not.i103.i, label %if.then3.i105.i, label %for.body.i104.i.for.cond.i100.i_crit_edge

for.body.i104.i.for.cond.i100.i_crit_edge:        ; preds = %for.body.i104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i100.i

if.then3.i105.i:                                  ; preds = %for.body.i104.i
  %tdls_status.i.i = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0.i98.i, i32 0, i32 2
  %64 = ptrtoint ptr %tdls_status.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %tdls_status.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %65)
  %cmp7.i.i = icmp eq i8 %65, 1
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.then3.i105.i.if.end15.i.i_crit_edge

if.then3.i105.i.if.end15.i.i_crit_edge:           ; preds = %if.then3.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %if.then3.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  %failure_count.i.i = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0.i98.i, i32 0, i32 5
  %66 = ptrtoint ptr %failure_count.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %failure_count.i.i, align 4
  %inc.i.i = add i8 %67, 1
  store i8 %inc.i.i, ptr %failure_count.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then9.i.i, %if.then3.i105.i.if.end15.i.i_crit_edge
  %68 = ptrtoint ptr %tdls_status.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %tdls_status.i.i, align 2
  br label %for.end.i107.i

for.end.i107.i:                                   ; preds = %if.end15.i.i, %for.cond.i100.i.for.end.i107.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %auto_tdls_lock.i94.i) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tdls_oper.i) #8
  %69 = getelementptr inbounds i8, ptr %tdls_oper.i, i32 8
  %70 = call ptr @memset(ptr %69, i32 0, i32 24)
  %call.i13 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %peer) #8
  %tobool.not.i14 = icmp eq ptr %call.i13, null
  br i1 %tobool.not.i14, label %sw.bb1.if.end5.i_crit_edge, label %if.then.i16

sw.bb1.if.end5.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i16:                                      ; preds = %sw.bb1
  %is_11n_enabled.i15 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call.i13, i32 0, i32 3
  %71 = ptrtoint ptr %is_11n_enabled.i15 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %is_11n_enabled.i15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool1.not.i = icmp eq i8 %72, 0
  br i1 %tobool1.not.i, label %if.then.i16.if.end.i18_crit_edge, label %if.then2.i

if.then.i16.if.end.i18_crit_edge:                 ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i18

if.then2.i:                                       ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mwifiex_11n_cleanup_reorder_tbl(ptr noundef %priv) #8
  %ra_list_spinlock.i17 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock.i17) #8
  tail call void @mwifiex_11n_delete_all_tx_ba_stream_tbl(ptr noundef %priv) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock.i17) #8
  br label %if.end.i18

if.end.i18:                                       ; preds = %if.then2.i, %if.then.i16.if.end.i18_crit_edge
  tail call void @mwifiex_del_sta_entry(ptr noundef %priv, ptr noundef %peer) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i18, %sw.bb1.if.end5.i_crit_edge
  tail call fastcc void @mwifiex_restore_tdls_packets(ptr noundef %priv, ptr noundef %peer, i8 noundef zeroext 4) #8
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv, align 8
  %auto_tdls.i.i19 = getelementptr inbounds %struct.mwifiex_adapter, ptr %74, i32 0, i32 151
  %75 = ptrtoint ptr %auto_tdls.i.i19 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %auto_tdls.i.i19, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i.i20 = icmp eq i8 %76, 0
  br i1 %tobool.not.i.i20, label %if.end5.i.mwifiex_tdls_process_disable_link.exit_crit_edge, label %if.end.i.i23

if.end5.i.mwifiex_tdls_process_disable_link.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_tdls_process_disable_link.exit

if.end.i.i23:                                     ; preds = %if.end5.i
  %auto_tdls_lock.i.i21 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %auto_tdls_lock.i.i21) #8
  %auto_tdls_list.i.i22 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 81
  br label %for.cond.i.i27

for.cond.i.i27:                                   ; preds = %for.body.i.i31.for.cond.i.i27_crit_edge, %if.end.i.i23
  %peer.0.in.i.i24 = phi ptr [ %auto_tdls_list.i.i22, %if.end.i.i23 ], [ %peer.0.i.i25, %for.body.i.i31.for.cond.i.i27_crit_edge ]
  %77 = ptrtoint ptr %peer.0.in.i.i24 to i32
  call void @__asan_load4_noabort(i32 %77)
  %peer.0.i.i25 = load ptr, ptr %peer.0.in.i.i24, align 4
  %cmp.not.i.i26 = icmp eq ptr %peer.0.i.i25, %auto_tdls_list.i.i22
  br i1 %cmp.not.i.i26, label %for.cond.i.i27.for.end.i.i39_crit_edge, label %for.body.i.i31

for.cond.i.i27.for.end.i.i39_crit_edge:           ; preds = %for.cond.i.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i39

for.body.i.i31:                                   ; preds = %for.cond.i.i27
  %mac_addr.i.i28 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0.i.i25, i32 0, i32 1
  %bcmp.i.i29 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i28, ptr noundef dereferenceable(6) %peer, i32 6) #11
  %tobool2.not.i.i30 = icmp eq i32 %bcmp.i.i29, 0
  br i1 %tobool2.not.i.i30, label %if.then3.i.i34, label %for.body.i.i31.for.cond.i.i27_crit_edge

for.body.i.i31.for.cond.i.i27_crit_edge:          ; preds = %for.body.i.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i27

if.then3.i.i34:                                   ; preds = %for.body.i.i31
  %tdls_status.i.i32 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0.i.i25, i32 0, i32 2
  %78 = ptrtoint ptr %tdls_status.i.i32 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %tdls_status.i.i32, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %79)
  %cmp7.i.i33 = icmp eq i8 %79, 1
  br i1 %cmp7.i.i33, label %if.then9.i.i37, label %if.then3.i.i34.if.end15.i.i38_crit_edge

if.then3.i.i34.if.end15.i.i38_crit_edge:          ; preds = %if.then3.i.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i38

if.then9.i.i37:                                   ; preds = %if.then3.i.i34
  call void @__sanitizer_cov_trace_pc() #10
  %failure_count.i.i35 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0.i.i25, i32 0, i32 5
  %80 = ptrtoint ptr %failure_count.i.i35 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %failure_count.i.i35, align 4
  %inc.i.i36 = add i8 %81, 1
  store i8 %inc.i.i36, ptr %failure_count.i.i35, align 4
  br label %if.end15.i.i38

if.end15.i.i38:                                   ; preds = %if.then9.i.i37, %if.then3.i.i34.if.end15.i.i38_crit_edge
  %82 = ptrtoint ptr %tdls_status.i.i32 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %tdls_status.i.i32, align 2
  br label %for.end.i.i39

for.end.i.i39:                                    ; preds = %if.end15.i.i38, %for.cond.i.i27.for.end.i.i39_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %auto_tdls_lock.i.i21) #8
  br label %mwifiex_tdls_process_disable_link.exit

mwifiex_tdls_process_disable_link.exit:           ; preds = %for.end.i.i39, %if.end5.i.mwifiex_tdls_process_disable_link.exit_crit_edge
  %peer_mac.i = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, ptr %tdls_oper.i, i32 0, i32 1
  %83 = call ptr @memcpy(ptr %peer_mac.i, ptr %peer, i32 6)
  %84 = ptrtoint ptr %tdls_oper.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %tdls_oper.i, align 4
  %call6.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 290, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %tdls_oper.i, i1 noundef zeroext true) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tdls_oper.i) #8
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tdls_oper.i40) #8
  %85 = getelementptr inbounds i8, ptr %tdls_oper.i40, i32 8
  %86 = call ptr @memset(ptr %85, i32 0, i32 24)
  %call.i41 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %peer) #8
  %tobool.not.i42 = icmp eq ptr %call.i41, null
  br i1 %tobool.not.i42, label %sw.bb3.if.end.i46_crit_edge, label %land.lhs.true.i44

sw.bb3.if.end.i46_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i46

land.lhs.true.i44:                                ; preds = %sw.bb3
  %tdls_status.i43 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call.i41, i32 0, i32 8
  %87 = ptrtoint ptr %tdls_status.i43 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %tdls_status.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %88)
  %cmp.i = icmp eq i8 %88, 1
  br i1 %cmp.i, label %if.then.i45, label %land.lhs.true.i44.if.end.i46_crit_edge

land.lhs.true.i44.if.end.i46_crit_edge:           ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i46

if.then.i45:                                      ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %90, i32 noundef 536870912, ptr noundef nonnull @.str.21, ptr noundef %peer) #8
  br label %mwifiex_tdls_process_create_link.exit

if.end.i46:                                       ; preds = %land.lhs.true.i44.if.end.i46_crit_edge, %sw.bb3.if.end.i46_crit_edge
  %call2.i = tail call ptr @mwifiex_add_sta_entry(ptr noundef %priv, ptr noundef %peer) #8
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i46.mwifiex_tdls_process_create_link.exit_crit_edge, label %if.end5.i47

if.end.i46.mwifiex_tdls_process_create_link.exit_crit_edge: ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_tdls_process_create_link.exit

if.end5.i47:                                      ; preds = %if.end.i46
  %tdls_status6.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call2.i, i32 0, i32 8
  %91 = ptrtoint ptr %tdls_status6.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %tdls_status6.i, align 4
  %92 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %93, i32 noundef 8, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mwifiex_hold_tdls_packets, ptr noundef %peer) #8
  %wmm.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77
  %ra_list_spinlock.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock.i.i) #8
  %add.ptr.i.i.i = getelementptr i8, ptr %peer, i32 4
  %tx_pkts_queued.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 9
  %tdls_txq.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 141
  br label %for.body.i.i48

for.body.i.i48:                                   ; preds = %for.inc30.i.i.for.body.i.i48_crit_edge, %if.end5.i47
  %i.063.i.i = phi i32 [ 0, %if.end5.i47 ], [ %inc.i.i50, %for.inc30.i.i.for.body.i.i48_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm.i.i, i32 0, i32 %i.063.i.i
  %94 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %95, %arrayidx.i.i
  br i1 %cmp.i.not.i.i, label %for.body.i.i48.for.inc30.i.i_crit_edge, label %for.body.i.i48.for.body10.i.i_crit_edge

for.body.i.i48.for.body10.i.i_crit_edge:          ; preds = %for.body.i.i48
  br label %for.body10.i.i

for.body.i.i48.for.inc30.i.i_crit_edge:           ; preds = %for.body.i.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc30.i.i

for.cond8.loopexit.i.i:                           ; preds = %for.inc.i.i.for.cond8.loopexit.i.i_crit_edge, %for.body10.i.i.for.cond8.loopexit.i.i_crit_edge
  %96 = ptrtoint ptr %ra_list.062.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %ra_list.0.i.i = load ptr, ptr %ra_list.062.i.i, align 4
  %cmp9.not.i.i = icmp eq ptr %ra_list.0.i.i, %arrayidx.i.i
  br i1 %cmp9.not.i.i, label %for.cond8.loopexit.i.i.for.inc30.i.i_crit_edge, label %for.cond8.loopexit.i.i.for.body10.i.i_crit_edge

for.cond8.loopexit.i.i.for.body10.i.i_crit_edge:  ; preds = %for.cond8.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i.i

for.cond8.loopexit.i.i.for.inc30.i.i_crit_edge:   ; preds = %for.cond8.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc30.i.i

for.body10.i.i:                                   ; preds = %for.cond8.loopexit.i.i.for.body10.i.i_crit_edge, %for.body.i.i48.for.body10.i.i_crit_edge
  %ra_list.062.i.i = phi ptr [ %ra_list.0.i.i, %for.cond8.loopexit.i.i.for.body10.i.i_crit_edge ], [ %95, %for.body.i.i48.for.body10.i.i_crit_edge ]
  %skb_head.i.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.062.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %skb_head.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %skb_head.i.i, align 4
  %cmp15.not57.i.i = icmp eq ptr %98, %skb_head.i.i
  br i1 %cmp15.not57.i.i, label %for.body10.i.i.for.cond8.loopexit.i.i_crit_edge, label %for.body16.lr.ph.i.i

for.body10.i.i.for.cond8.loopexit.i.i_crit_edge:  ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond8.loopexit.i.i

for.body16.lr.ph.i.i:                             ; preds = %for.body10.i.i
  %qlen.i.i.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.062.i.i, i32 0, i32 1, i32 1
  %total_pkt_count.i.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.062.i.i, i32 0, i32 9
  br label %for.body16.i.i

for.body16.i.i:                                   ; preds = %for.inc.i.i.for.body16.i.i_crit_edge, %for.body16.lr.ph.i.i
  %skb.058.i.i = phi ptr [ %98, %for.body16.lr.ph.i.i ], [ %tmp.059.i.i, %for.inc.i.i.for.body16.i.i_crit_edge ]
  %99 = ptrtoint ptr %skb.058.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %tmp.059.i.i = load ptr, ptr %skb.058.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.058.i.i, i32 0, i32 19
  %100 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i, align 4
  %102 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %peer, align 4
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %101, align 4
  %xor.i.i.i = xor i32 %105, %103
  %106 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %101, i32 4
  %108 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %109, %107
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i55.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i55.i.i, label %if.end.i.i49, label %for.body16.i.i.for.inc.i.i_crit_edge

for.body16.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i.i49:                                     ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %111, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %112 = ptrtoint ptr %skb.058.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %skb.058.i.i, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb.058.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %skb.058.i.i, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %113, i32 0, i32 1
  %116 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %115, ptr %prev17.i.i.i, align 4
  %117 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %113, ptr %115, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_pkts_queued.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %tx_pkts_queued.i.i, i32 1, i32 3, i32 1) #8
  %118 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_pkts_queued.i.i, ptr %tx_pkts_queued.i.i, i32 1, ptr elementtype(i32) %tx_pkts_queued.i.i) #8, !srcloc !65
  %119 = ptrtoint ptr %total_pkt_count.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %total_pkt_count.i.i, align 2
  %dec.i.i = add i16 %120, -1
  store i16 %dec.i.i, ptr %total_pkt_count.i.i, align 2
  tail call void @skb_queue_tail(ptr noundef %tdls_txq.i.i, ptr noundef %skb.058.i.i) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i49, %for.body16.i.i.for.inc.i.i_crit_edge
  %cmp15.not.i.i = icmp eq ptr %tmp.059.i.i, %skb_head.i.i
  br i1 %cmp15.not.i.i, label %for.inc.i.i.for.cond8.loopexit.i.i_crit_edge, label %for.inc.i.i.for.body16.i.i_crit_edge

for.inc.i.i.for.body16.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16.i.i

for.inc.i.i.for.cond8.loopexit.i.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond8.loopexit.i.i

for.inc30.i.i:                                    ; preds = %for.cond8.loopexit.i.i.for.inc30.i.i_crit_edge, %for.body.i.i48.for.inc30.i.i_crit_edge
  %inc.i.i50 = add nuw nsw i32 %i.063.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i50, 8
  br i1 %exitcond.not.i.i, label %mwifiex_hold_tdls_packets.exit.i, label %for.inc30.i.i.for.body.i.i48_crit_edge

for.inc30.i.i.for.body.i.i48_crit_edge:           ; preds = %for.inc30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i48

mwifiex_hold_tdls_packets.exit.i:                 ; preds = %for.inc30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock.i.i) #8
  %peer_mac.i51 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, ptr %tdls_oper.i40, i32 0, i32 1
  %121 = call ptr @memcpy(ptr %peer_mac.i51, ptr %peer, i32 6)
  %122 = ptrtoint ptr %tdls_oper.i40 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 2, ptr %tdls_oper.i40, align 4
  %call7.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 290, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %tdls_oper.i40, i1 noundef zeroext true) #8
  br label %mwifiex_tdls_process_create_link.exit

mwifiex_tdls_process_create_link.exit:            ; preds = %mwifiex_hold_tdls_packets.exit.i, %if.end.i46.mwifiex_tdls_process_create_link.exit_crit_edge, %if.then.i45
  %retval.0.i52 = phi i32 [ 0, %if.then.i45 ], [ %call7.i, %mwifiex_hold_tdls_packets.exit.i ], [ -12, %if.end.i46.mwifiex_tdls_process_create_link.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tdls_oper.i40) #8
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tdls_oper.i53) #8
  %123 = getelementptr inbounds i8, ptr %tdls_oper.i53, i32 8
  %124 = call ptr @memset(ptr %123, i32 0, i32 24)
  %call.i54 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %peer) #8
  %tobool.not.i55 = icmp eq ptr %call.i54, null
  br i1 %tobool.not.i55, label %sw.bb5.if.then.i58_crit_edge, label %lor.lhs.false.i

sw.bb5.if.then.i58_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i58

lor.lhs.false.i:                                  ; preds = %sw.bb5
  %tdls_status.i56 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call.i54, i32 0, i32 8
  %125 = ptrtoint ptr %tdls_status.i56 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %tdls_status.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %126)
  %cmp.i57 = icmp eq i8 %126, 3
  br i1 %cmp.i57, label %lor.lhs.false.i.if.then.i58_crit_edge, label %if.end.i61

lor.lhs.false.i.if.then.i58_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i58

if.then.i58:                                      ; preds = %lor.lhs.false.i.if.then.i58_crit_edge, %sw.bb5.if.then.i58_crit_edge
  %127 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %128, i32 noundef 4, ptr noundef nonnull @.str.23, ptr noundef %peer) #8
  br label %mwifiex_tdls_process_config_link.exit

if.end.i61:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %peer_mac.i59 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, ptr %tdls_oper.i53, i32 0, i32 1
  %129 = call ptr @memcpy(ptr %peer_mac.i59, ptr %peer, i32 6)
  %130 = ptrtoint ptr %tdls_oper.i53 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 3, ptr %tdls_oper.i53, align 4
  %call2.i60 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 290, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %tdls_oper.i53, i1 noundef zeroext true) #8
  br label %mwifiex_tdls_process_config_link.exit

mwifiex_tdls_process_config_link.exit:            ; preds = %if.end.i61, %if.then.i58
  %retval.0.i62 = phi i32 [ -22, %if.then.i58 ], [ %call2.i60, %if.end.i61 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tdls_oper.i53) #8
  br label %return

return:                                           ; preds = %mwifiex_tdls_process_config_link.exit, %mwifiex_tdls_process_create_link.exit, %mwifiex_tdls_process_disable_link.exit, %for.end.i107.i, %if.end48.i.return_crit_edge, %for.end.i.i, %if.end41.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i62, %mwifiex_tdls_process_config_link.exit ], [ %retval.0.i52, %mwifiex_tdls_process_create_link.exit ], [ %call6.i, %mwifiex_tdls_process_disable_link.exit ], [ 0, %entry.return_crit_edge ], [ 0, %if.end41.i.return_crit_edge ], [ 0, %for.end.i.i ], [ -1, %if.end48.i.return_crit_edge ], [ -1, %for.end.i107.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_tdls_link_status(ptr noundef %priv, ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %mac) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tdls_status = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %tdls_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tdls_status, align 4
  %conv = zext i8 %1 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_tdls_list(ptr noundef %priv, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bss_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %6 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true
  %sta_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_list_spinlock) #8
  %sta_list = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 79
  %8 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %sta_ptr.039 = load ptr, ptr %sta_list, align 8
  %cmp7.not40 = icmp eq ptr %sta_ptr.039, %sta_list
  br i1 %cmp7.not40, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %sta_ptr.043 = phi ptr [ %sta_ptr.0, %for.inc.for.body_crit_edge ], [ %sta_ptr.039, %if.end5.for.body_crit_edge ]
  %peer.042 = phi ptr [ %peer.1, %for.inc.for.body_crit_edge ], [ %buf, %if.end5.for.body_crit_edge ]
  %count.041 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %tdls_status = getelementptr inbounds %struct.mwifiex_sta_node, ptr %sta_ptr.043, i32 0, i32 8
  %9 = ptrtoint ptr %tdls_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tdls_status, align 4
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %10, label %for.body.for.inc_crit_edge [
    i8 2, label %for.body.if.then10_crit_edge
    i8 5, label %for.body.if.then10_crit_edge45
    i8 6, label %for.body.if.then10_crit_edge46
    i8 7, label %for.body.if.then10_crit_edge47
  ]

for.body.if.then10_crit_edge47:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

for.body.if.then10_crit_edge46:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

for.body.if.then10_crit_edge45:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

for.body.if.then10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10:                                        ; preds = %for.body.if.then10_crit_edge, %for.body.if.then10_crit_edge45, %for.body.if.then10_crit_edge46, %for.body.if.then10_crit_edge47
  %mac_addr = getelementptr inbounds %struct.mwifiex_sta_node, ptr %sta_ptr.043, i32 0, i32 1
  %12 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac_addr, align 4
  %14 = ptrtoint ptr %peer.042 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %peer.042, align 4
  %add.ptr.i = getelementptr %struct.mwifiex_sta_node, ptr %sta_ptr.043, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %peer.042, i32 4
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %add.ptr1.i, align 2
  %incdec.ptr = getelementptr %struct.tdls_peer_info, ptr %peer.042, i32 1
  %inc = add i32 %count.041, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc)
  %cmp12 = icmp sgt i32 %inc, 7
  br i1 %cmp12, label %if.then10.for.end_crit_edge, label %if.then10.for.inc_crit_edge

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.then10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %inc, %if.then10.for.inc_crit_edge ], [ %count.041, %for.body.for.inc_crit_edge ]
  %peer.1 = phi ptr [ %incdec.ptr, %if.then10.for.inc_crit_edge ], [ %peer.042, %for.body.for.inc_crit_edge ]
  %18 = ptrtoint ptr %sta_ptr.043 to i32
  call void @__asan_load4_noabort(i32 %18)
  %sta_ptr.0 = load ptr, ptr %sta_ptr.043, align 8
  %cmp7.not = icmp eq ptr %sta_ptr.0, %sta_list
  br i1 %cmp7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then10.for.end_crit_edge, %if.end5.for.end_crit_edge
  %count.2 = phi i32 [ 0, %if.end5.for.end_crit_edge ], [ %inc, %if.then10.for.end_crit_edge ], [ %count.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.2, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_disable_all_tdls_links(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %tdls_oper = alloca %struct.mwifiex_ds_tdls_oper, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tdls_oper) #8
  %0 = call ptr @memset(ptr %tdls_oper, i32 255, i32 32)
  %sta_list = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 79
  %1 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %sta_list, align 4
  %cmp.i.not = icmp eq ptr %2, %sta_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %sta_ptr.037 = load ptr, ptr %sta_list, align 8
  %cmp.not38 = icmp eq ptr %sta_ptr.037, %sta_list
  br i1 %cmp.not38, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ra_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  %peer_mac = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, ptr %tdls_oper, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sta_ptr.039 = phi ptr [ %sta_ptr.037, %for.body.lr.ph ], [ %sta_ptr.0, %for.inc.for.body_crit_edge ]
  %4 = call ptr @memset(ptr %tdls_oper, i32 0, i32 32)
  %is_11n_enabled = getelementptr inbounds %struct.mwifiex_sta_node, ptr %sta_ptr.039, i32 0, i32 3
  %5 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_11n_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %for.body.if.end7_crit_edge, label %if.then4

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @mwifiex_11n_cleanup_reorder_tbl(ptr noundef %priv) #8
  call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock) #8
  call void @mwifiex_11n_delete_all_tx_ba_stream_tbl(ptr noundef %priv) #8
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %for.body.if.end7_crit_edge
  %mac_addr = getelementptr inbounds %struct.mwifiex_sta_node, ptr %sta_ptr.039, i32 0, i32 1
  call fastcc void @mwifiex_restore_tdls_packets(ptr noundef %priv, ptr noundef %mac_addr, i8 noundef zeroext 4)
  %7 = call ptr @memcpy(ptr %peer_mac, ptr %mac_addr, i32 6)
  %8 = ptrtoint ptr %tdls_oper to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %tdls_oper, align 4
  %call10 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 290, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %tdls_oper, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end7.for.inc_crit_edge, label %if.then12

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef %mac_addr) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.end7.for.inc_crit_edge
  %11 = ptrtoint ptr %sta_ptr.039 to i32
  call void @__asan_load4_noabort(i32 %11)
  %sta_ptr.0 = load ptr, ptr %sta_ptr.039, align 8
  %cmp.not = icmp eq ptr %sta_ptr.0, %sta_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @mwifiex_del_all_sta_list(ptr noundef %priv) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tdls_oper) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_cleanup_reorder_tbl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_delete_all_tx_ba_stream_tbl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_restore_tdls_packets(ptr noundef %priv, ptr noundef %mac, i8 noundef zeroext %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mwifiex_restore_tdls_packets, ptr noundef %mac) #8
  %wmm = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77
  %ra_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock) #8
  %tdls_txq = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 141
  %2 = ptrtoint ptr %tdls_txq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tdls_txq, align 8
  %cmp.not86 = icmp eq ptr %3, %tdls_txq
  br i1 %cmp.not86, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %qlen.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 141, i32 1
  %highest_queued_prio = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 10
  %tx_pkts_queued = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skb.087 = phi ptr [ %3, %for.body.lr.ph ], [ %tmp.090, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %skb.087 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.090 = load ptr, ptr %skb.087, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.087, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %xor.i = xor i32 %10, %8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %6, i32 4
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %14, %12
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %15 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %17 = ptrtoint ptr %skb.087 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb.087, align 8
  %prev9.i = getelementptr inbounds %struct.anon.51, ptr %skb.087, i32 0, i32 1
  %19 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.087, align 8
  %prev17.i = getelementptr inbounds %struct.anon.51, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %prev17.i, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %18, ptr %20, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb.087, i32 0, i32 15, i32 0, i32 6
  %23 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %priority, align 4
  %call5 = tail call zeroext i8 @mwifiex_wmm_downgrade_tid(ptr noundef %priv, i32 noundef %24) #8
  %25 = zext i8 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %status, label %if.else [
    i8 2, label %if.end.if.then7_crit_edge
    i8 5, label %if.end.if.then7_crit_edge91
    i8 6, label %if.end.if.then7_crit_edge92
    i8 7, label %if.end.if.then7_crit_edge93
  ]

if.end.if.then7_crit_edge93:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end.if.then7_crit_edge92:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end.if.then7_crit_edge91:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.end.if.then7_crit_edge91, %if.end.if.then7_crit_edge92, %if.end.if.then7_crit_edge93
  %conv = trunc i32 %24 to i8
  %call8 = tail call ptr @mwifiex_wmm_get_queue_raptr(ptr noundef %priv, i8 noundef zeroext %conv, ptr noundef %mac) #8
  %tdls_link = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %call8, i32 0, i32 10
  %26 = ptrtoint ptr %tdls_link to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %tdls_link, align 4
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb.087, i32 0, i32 3, i32 12
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags, align 4
  %29 = or i8 %28, 4
  store i8 %29, ptr %flags, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end
  %idxprom = zext i8 %call5 to i32
  %arrayidx = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm, i32 0, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx, align 4
  %cmp16.not = icmp eq ptr %31, %arrayidx
  %flags19 = getelementptr inbounds %struct.sk_buff, ptr %skb.087, i32 0, i32 3, i32 12
  %32 = ptrtoint ptr %flags19 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags19, align 4
  %34 = and i8 %33, -5
  store i8 %34, ptr %flags19, align 4
  br i1 %cmp16.not, label %if.else.if.then24_crit_edge, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.else.if.then24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %if.then7
  %ra_list.0 = phi ptr [ %call8, %if.then7 ], [ %31, %if.else.if.end22_crit_edge ]
  %tobool23.not = icmp eq ptr %ra_list.0, null
  br i1 %tobool23.not, label %if.end22.if.then24_crit_edge, label %if.end27

if.end22.if.then24_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24:                                        ; preds = %if.end22.if.then24_crit_edge, %if.else.if.then24_crit_edge
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  %call26 = tail call i32 @mwifiex_write_data_complete(ptr noundef %36, ptr noundef %skb.087, i32 noundef 0, i32 noundef -1) #8
  br label %for.inc

if.end27:                                         ; preds = %if.end22
  %skb_head = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %skb_head, ptr noundef %skb.087) #8
  %ba_pkt_count = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0, i32 0, i32 5
  %37 = ptrtoint ptr %ba_pkt_count to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ba_pkt_count, align 2
  %inc = add i16 %38, 1
  store i16 %inc, ptr %ba_pkt_count, align 2
  %total_pkt_count = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.0, i32 0, i32 9
  %39 = ptrtoint ptr %total_pkt_count to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %total_pkt_count, align 2
  %inc28 = add i16 %40, 1
  store i16 %inc28, ptr %total_pkt_count, align 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %highest_queued_prio, i32 noundef 4) #8
  %41 = ptrtoint ptr %highest_queued_prio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %highest_queued_prio, align 4
  %idxprom31 = zext i8 %call5 to i32
  %arrayidx32 = getelementptr [0 x i8], ptr @tos_to_tid_inv, i32 0, i32 %idxprom31
  %43 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv33)
  %cmp34 = icmp slt i32 %42, %conv33
  br i1 %cmp34, label %if.then36, label %if.end27.if.end42_crit_edge

if.end27.if.end42_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %highest_queued_prio, i32 noundef 4) #8
  %45 = ptrtoint ptr %highest_queued_prio to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %conv33, ptr %highest_queued_prio, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.end27.if.end42_crit_edge
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_pkts_queued, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %tx_pkts_queued, i32 1, i32 3, i32 1) #8
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_pkts_queued, ptr %tx_pkts_queued, i32 1, ptr elementtype(i32) %tx_pkts_queued) #8, !srcloc !66
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %if.then24, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.090, %tdls_txq
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_all_sta_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_tdls_check_tx(ptr noundef %priv, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  %mac = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #8
  %0 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mac, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i, align 2
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %0, align 4
  %auto_tdls_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %auto_tdls_lock) #8
  %auto_tdls_list = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 81
  %9 = ptrtoint ptr %auto_tdls_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %peer.059 = load ptr, ptr %auto_tdls_list, align 4
  %cmp.not60 = icmp eq ptr %peer.059, %auto_tdls_list
  br i1 %cmp.not60, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %check_tdls_tx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 142
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %peer.061 = phi ptr [ %peer.059, %for.body.lr.ph ], [ %peer.0, %for.inc.for.body_crit_edge ]
  %mac_addr = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.061, i32 0, i32 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %mac, ptr noundef dereferenceable(6) %mac_addr, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %rssi = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.061, i32 0, i32 3
  %10 = ptrtoint ptr %rssi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rssi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %11)
  %cmp4 = icmp slt i32 %11, 51
  br i1 %cmp4, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %tdls_status = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.061, i32 0, i32 2
  %12 = ptrtoint ptr %tdls_status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tdls_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp5 = icmp eq i8 %13, 0
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true
  %failure_count = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.061, i32 0, i32 5
  %14 = ptrtoint ptr %failure_count to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %failure_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %cmp9 = icmp ult i8 %15, 4
  br i1 %cmp9, label %if.then11, label %land.lhs.true7.if.else_crit_edge

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then11:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %tdls_status to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %tdls_status, align 2
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %18, i32 noundef 1073741824, ptr noundef nonnull @.str.4, ptr noundef %mac_addr, i32 noundef %11) #8
  %19 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev, align 4
  tail call void @cfg80211_tdls_oper_request(ptr noundef %20, ptr noundef %mac_addr, i32 noundef 1, i16 noundef zeroext 0, i32 noundef 2592) #8
  %do_setup = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.061, i32 0, i32 7
  %21 = ptrtoint ptr %do_setup to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %do_setup, align 2
  %22 = ptrtoint ptr %check_tdls_tx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %check_tdls_tx, align 8
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true7.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %failure_count18 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.061, i32 0, i32 5
  %23 = ptrtoint ptr %failure_count18 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %failure_count18, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %24)
  %cmp20 = icmp ult i8 %24, 4
  br i1 %cmp20, label %land.lhs.true22, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true22:                                  ; preds = %if.else
  %do_discover = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.061, i32 0, i32 6
  %25 = ptrtoint ptr %do_discover to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %do_discover, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool24.not = icmp eq i8 %26, 0
  br i1 %tobool24.not, label %land.lhs.true22.for.inc_crit_edge, label %if.then25

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 @mwifiex_send_tdls_data_frame(ptr noundef %priv, ptr noundef %mac_addr, i8 noundef zeroext 10, i8 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  %27 = ptrtoint ptr %do_discover to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %do_discover, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then25, %land.lhs.true22.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then11, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %peer.061 to i32
  call void @__asan_load4_noabort(i32 %28)
  %peer.0 = load ptr, ptr %peer.061, align 4
  %cmp.not = icmp eq ptr %peer.0, %auto_tdls_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %auto_tdls_lock) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_tdls_oper_request(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_flush_auto_tdls_list(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %auto_tdls_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %auto_tdls_lock) #8
  %auto_tdls_list = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 81
  %0 = ptrtoint ptr %auto_tdls_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auto_tdls_list, align 4
  %cmp.not25 = icmp eq ptr %1, %auto_tdls_list
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %peer.026 = phi ptr [ %tmp_node.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %peer.026 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp_node.0 = load ptr, ptr %peer.026, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %peer.026) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %peer.026, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %peer.026 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %peer.026, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %peer.026 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %peer.026, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %peer.026, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %peer.026) #8
  %cmp.not = icmp eq ptr %tmp_node.0, %auto_tdls_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = ptrtoint ptr %auto_tdls_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %auto_tdls_list, ptr %auto_tdls_list, align 4
  %prev.i24 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 81, i32 1
  %12 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %auto_tdls_list, ptr %prev.i24, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %auto_tdls_lock) #8
  %check_tdls_tx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 142
  %13 = ptrtoint ptr %check_tdls_tx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %check_tdls_tx, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_add_auto_tdls_peer(ptr noundef %priv, ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %auto_tdls = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 151
  %2 = ptrtoint ptr %auto_tdls to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %auto_tdls, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %auto_tdls_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %auto_tdls_lock) #8
  %auto_tdls_list = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 81
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %tdls_peer.0.in = phi ptr [ %auto_tdls_list, %if.end ], [ %tdls_peer.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %tdls_peer.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %tdls_peer.0 = load ptr, ptr %tdls_peer.0.in, align 4
  %cmp.not = icmp eq ptr %tdls_peer.0, %auto_tdls_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %mac_addr = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %tdls_peer.0, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr, ptr noundef dereferenceable(6) %mac, i32 6) #12
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.then3, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %tdls_status = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %tdls_peer.0, i32 0, i32 2
  %5 = ptrtoint ptr %tdls_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %tdls_status, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %rssi_jiffies = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %tdls_peer.0, i32 0, i32 4
  %7 = ptrtoint ptr %rssi_jiffies to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rssi_jiffies, align 4
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 28) #13
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %for.end.cleanup.sink.split_crit_edge, label %if.then13

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then13:                                        ; preds = %for.end
  %mac_addr14 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mac, align 4
  %11 = ptrtoint ptr %mac_addr14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mac_addr14, align 8
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.mwifiex_auto_tdls_peer, ptr %call7.i.i, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %add.ptr1.i, align 4
  %tdls_status16 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %tdls_status16 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %tdls_status16, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %rssi_jiffies17 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %rssi_jiffies17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rssi_jiffies17, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %prev.i43 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 81, i32 1
  %20 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i43, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %21, ptr noundef %auto_tdls_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.list_add_tail.exit_crit_edge

if.then13.list_add_tail.exit_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %prev.i43, align 4
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %auto_tdls_list, ptr %call7.i.i, align 8
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call7.i.i, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then13.list_add_tail.exit_crit_edge
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %27, i32 noundef 1073741824, ptr noundef nonnull @.str.5, ptr noundef %mac) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %list_add_tail.exit, %for.end.cleanup.sink.split_crit_edge, %if.then3
  tail call void @_raw_spin_unlock_bh(ptr noundef %auto_tdls_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_auto_tdls_update_peer_status(ptr noundef %priv, ptr nocapture noundef readonly %mac, i8 noundef zeroext %link_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %auto_tdls = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 151
  %2 = ptrtoint ptr %auto_tdls to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %auto_tdls, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %auto_tdls_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %auto_tdls_lock) #8
  %auto_tdls_list = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 81
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %peer.0.in = phi ptr [ %auto_tdls_list, %if.end ], [ %peer.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %peer.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %peer.0 = load ptr, ptr %peer.0.in, align 4
  %cmp.not = icmp eq ptr %peer.0, %auto_tdls_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %mac_addr = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr, ptr noundef dereferenceable(6) %mac, i32 6) #12
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.then3, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then3:                                         ; preds = %for.body
  %5 = zext i8 %link_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %link_status, label %if.then3.if.end15_crit_edge [
    i8 0, label %land.lhs.true
    i8 2, label %if.then3.if.then12_crit_edge
    i8 5, label %if.then3.if.then12_crit_edge45
    i8 6, label %if.then3.if.then12_crit_edge46
    i8 7, label %if.then3.if.then12_crit_edge47
  ]

if.then3.if.then12_crit_edge47:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then3.if.then12_crit_edge46:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then3.if.then12_crit_edge45:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then3.if.then12_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then3.if.end15_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.then3
  %tdls_status = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0, i32 0, i32 2
  %6 = ptrtoint ptr %tdls_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tdls_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp7 = icmp eq i8 %7, 1
  br i1 %cmp7, label %if.then9, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %failure_count = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0, i32 0, i32 5
  %8 = ptrtoint ptr %failure_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %failure_count, align 4
  %inc = add i8 %9, 1
  store i8 %inc, ptr %failure_count, align 4
  br label %if.end15

if.then12:                                        ; preds = %if.then3.if.then12_crit_edge, %if.then3.if.then12_crit_edge45, %if.then3.if.then12_crit_edge46, %if.then3.if.then12_crit_edge47
  %failure_count13 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0, i32 0, i32 5
  %10 = ptrtoint ptr %failure_count13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %failure_count13, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9, %land.lhs.true.if.end15_crit_edge, %if.then3.if.end15_crit_edge
  %tdls_status16 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0, i32 0, i32 2
  %11 = ptrtoint ptr %tdls_status16 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %link_status, ptr %tdls_status16, align 2
  br label %for.end

for.end:                                          ; preds = %if.end15, %for.cond.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %auto_tdls_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_auto_tdls_update_peer_signal(ptr noundef %priv, ptr nocapture noundef readonly %mac, i8 noundef signext %snr, i8 noundef signext %nflr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %auto_tdls = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 151
  %2 = ptrtoint ptr %auto_tdls to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %auto_tdls, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %auto_tdls_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %auto_tdls_lock) #8
  %auto_tdls_list = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 81
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %peer.0.in = phi ptr [ %auto_tdls_list, %if.end ], [ %peer.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %peer.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %peer.0 = load ptr, ptr %peer.0.in, align 4
  %cmp.not = icmp eq ptr %peer.0, %auto_tdls_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %mac_addr = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr, ptr noundef dereferenceable(6) %mac, i32 6) #12
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.then3, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = sext i8 %nflr to i32
  %conv4 = sext i8 %snr to i32
  %sub = sub nsw i32 %conv, %conv4
  %rssi = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0, i32 0, i32 3
  %5 = ptrtoint ptr %rssi to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %rssi, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %rssi_jiffies = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %peer.0, i32 0, i32 4
  %7 = ptrtoint ptr %rssi_jiffies to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rssi_jiffies, align 4
  br label %for.end

for.end:                                          ; preds = %if.then3, %for.cond.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %auto_tdls_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_check_auto_tdls(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -10932
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.land.rhs_crit_edge, label %lor.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.land.rhs_crit_edge, label %if.end45

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b158 = load i1, ptr @mwifiex_check_auto_tdls.__already_done, align 1
  br i1 %.b158, label %land.rhs.do.end43_crit_edge, label %if.then, !prof !67

land.rhs.do.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mwifiex_check_auto_tdls.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1420, i32 noundef 9, ptr noundef null) #8
  br label %do.end43

do.end43:                                         ; preds = %if.then, %land.rhs.do.end43_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %cleanup

if.end45:                                         ; preds = %lor.rhs
  %auto_tdls = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 151
  %2 = ptrtoint ptr %auto_tdls to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %auto_tdls, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool47.not = icmp eq i8 %3, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %if.end57, !prof !63

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %if.end45
  %auto_tdls_timer_active = getelementptr i8, ptr %t, i32 48
  %4 = ptrtoint ptr %auto_tdls_timer_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %auto_tdls_timer_active, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool58.not = icmp eq i8 %5, 0
  br i1 %tobool58.not, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 1073741824, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %check_tdls_tx = getelementptr i8, ptr %t, i32 -4
  %6 = ptrtoint ptr %check_tdls_tx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %check_tdls_tx, align 8
  %auto_tdls_lock = getelementptr i8, ptr %t, i32 -9272
  tail call void @_raw_spin_lock_bh(ptr noundef %auto_tdls_lock) #8
  %auto_tdls_list = getelementptr i8, ptr %t, i32 -9280
  %7 = ptrtoint ptr %auto_tdls_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %tdls_peer.0163 = load ptr, ptr %auto_tdls_list, align 4
  %cmp.not164 = icmp eq ptr %tdls_peer.0163, %auto_tdls_list
  br i1 %cmp.not164, label %if.end61.for.end_crit_edge, label %for.body.lr.ph

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end61
  %netdev = getelementptr i8, ptr %t, i32 -10904
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tdls_peer.0165 = phi ptr [ %tdls_peer.0163, %for.body.lr.ph ], [ %tdls_peer.0, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %rssi_jiffies = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %tdls_peer.0165, i32 0, i32 4
  %9 = ptrtoint ptr %rssi_jiffies to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rssi_jiffies, align 4
  %sub = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %sub)
  %cmp68 = icmp ugt i32 %sub, 1000
  br i1 %cmp68, label %if.then69, label %for.body.if.end71_crit_edge

for.body.if.end71_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then69:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %rssi = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %tdls_peer.0165, i32 0, i32 3
  %11 = ptrtoint ptr %rssi to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rssi, align 4
  %do_discover = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %tdls_peer.0165, i32 0, i32 6
  %12 = ptrtoint ptr %do_discover to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %do_discover, align 1
  %13 = ptrtoint ptr %check_tdls_tx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %check_tdls_tx, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %for.body.if.end71_crit_edge
  %rssi72 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %tdls_peer.0165, i32 0, i32 3
  %14 = ptrtoint ptr %rssi72 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rssi72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %15)
  %cmp73 = icmp sgt i32 %15, 54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool75.not = icmp eq i32 %15, 0
  %or.cond = or i1 %cmp73, %tobool75.not
  br i1 %or.cond, label %land.lhs.true, label %if.end71.if.else_crit_edge

if.end71.if.else_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end71
  %tdls_status = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %tdls_peer.0165, i32 0, i32 2
  %16 = ptrtoint ptr %tdls_status to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tdls_status, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %17, label %land.lhs.true.if.else_crit_edge [
    i8 2, label %land.lhs.true.if.then78_crit_edge
    i8 5, label %land.lhs.true.if.then78_crit_edge166
    i8 6, label %land.lhs.true.if.then78_crit_edge167
    i8 7, label %land.lhs.true.if.then78_crit_edge168
  ]

land.lhs.true.if.then78_crit_edge168:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

land.lhs.true.if.then78_crit_edge167:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

land.lhs.true.if.then78_crit_edge166:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

land.lhs.true.if.then78_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then78:                                        ; preds = %land.lhs.true.if.then78_crit_edge, %land.lhs.true.if.then78_crit_edge166, %land.lhs.true.if.then78_crit_edge167, %land.lhs.true.if.then78_crit_edge168
  %19 = ptrtoint ptr %tdls_status to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %tdls_status, align 2
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %mac_addr = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %tdls_peer.0165, i32 0, i32 1
  %sub82 = sub nsw i32 0, %15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %mac_addr, i32 noundef %sub82) #8
  %do_discover83 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %tdls_peer.0165, i32 0, i32 6
  %22 = ptrtoint ptr %do_discover83 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %do_discover83, align 1
  %23 = ptrtoint ptr %check_tdls_tx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %check_tdls_tx, align 8
  %24 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev, align 4
  tail call void @cfg80211_tdls_oper_request(ptr noundef %25, ptr noundef %mac_addr, i32 noundef 2, i16 noundef zeroext 26, i32 noundef 2592) #8
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end71.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool88.not = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %15)
  %cmp91 = icmp slt i32 %15, 51
  %or.cond160 = and i1 %tobool88.not, %cmp91
  br i1 %or.cond160, label %land.lhs.true93, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true93:                                  ; preds = %if.else
  %tdls_status94 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %tdls_peer.0165, i32 0, i32 2
  %26 = ptrtoint ptr %tdls_status94 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tdls_status94, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp96 = icmp eq i8 %27, 0
  br i1 %cmp96, label %land.lhs.true98, label %land.lhs.true93.for.inc_crit_edge

land.lhs.true93.for.inc_crit_edge:                ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true98:                                  ; preds = %land.lhs.true93
  %failure_count = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %tdls_peer.0165, i32 0, i32 5
  %28 = ptrtoint ptr %failure_count to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %failure_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %cmp100 = icmp ult i8 %29, 4
  br i1 %cmp100, label %if.then102, label %land.lhs.true98.for.inc_crit_edge

land.lhs.true98.for.inc_crit_edge:                ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then102:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %check_tdls_tx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %check_tdls_tx, align 8
  %do_setup = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %tdls_peer.0165, i32 0, i32 7
  %31 = ptrtoint ptr %do_setup to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %do_setup, align 2
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 8
  %mac_addr105 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %tdls_peer.0165, i32 0, i32 1
  %34 = ptrtoint ptr %rssi72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rssi72, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %33, i32 noundef 1073741824, ptr noundef nonnull @.str.11, ptr noundef %mac_addr105, i32 noundef %35) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then102, %land.lhs.true98.for.inc_crit_edge, %land.lhs.true93.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then78
  %36 = ptrtoint ptr %tdls_peer.0165 to i32
  call void @__asan_load4_noabort(i32 %36)
  %tdls_peer.0 = load ptr, ptr %tdls_peer.0165, align 4
  %cmp.not = icmp eq ptr %tdls_peer.0, %auto_tdls_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end61.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %auto_tdls_lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %37, 1000
  %call117 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then59, %if.end45.cleanup_crit_edge, %do.end43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_setup_auto_tdls_timer(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %auto_tdls_timer = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 144
  tail call void @init_timer_key(ptr noundef %auto_tdls_timer, ptr noundef nonnull @mwifiex_check_auto_tdls, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @mwifiex_setup_auto_tdls_timer.__key) #8
  %auto_tdls_timer_active = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 145
  %0 = ptrtoint ptr %auto_tdls_timer_active to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %auto_tdls_timer_active, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, 1000
  %call2 = tail call i32 @mod_timer(ptr noundef %auto_tdls_timer, i32 noundef %add) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_clean_auto_tdls(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %auto_tdls = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 151
  %4 = ptrtoint ptr %auto_tdls to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %auto_tdls, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bss_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %auto_tdls_timer_active = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 145
  %8 = ptrtoint ptr %auto_tdls_timer_active to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %auto_tdls_timer_active, align 4
  %auto_tdls_timer = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 144
  %call = tail call i32 @del_timer(ptr noundef %auto_tdls_timer) #8
  %auto_tdls_lock.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %auto_tdls_lock.i) #8
  %auto_tdls_list.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 81
  %9 = ptrtoint ptr %auto_tdls_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %auto_tdls_list.i, align 4
  %cmp.not25.i = icmp eq ptr %10, %auto_tdls_list.i
  br i1 %cmp.not25.i, label %if.then.mwifiex_flush_auto_tdls_list.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.mwifiex_flush_auto_tdls_list.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_flush_auto_tdls_list.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %peer.026.i = phi ptr [ %tmp_node.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %10, %if.then.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %peer.026.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp_node.0.i = load ptr, ptr %peer.026.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %peer.026.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %peer.026.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %peer.026.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peer.026.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %18 = ptrtoint ptr %peer.026.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %peer.026.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %peer.026.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %peer.026.i) #8
  %cmp.not.i = icmp eq ptr %tmp_node.0.i, %auto_tdls_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.mwifiex_flush_auto_tdls_list.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del.exit.i.mwifiex_flush_auto_tdls_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_flush_auto_tdls_list.exit

mwifiex_flush_auto_tdls_list.exit:                ; preds = %list_del.exit.i.mwifiex_flush_auto_tdls_list.exit_crit_edge, %if.then.mwifiex_flush_auto_tdls_list.exit_crit_edge
  %20 = ptrtoint ptr %auto_tdls_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %auto_tdls_list.i, ptr %auto_tdls_list.i, align 4
  %prev.i24.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 81, i32 1
  %21 = ptrtoint ptr %prev.i24.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %auto_tdls_list.i, ptr %prev.i24.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %auto_tdls_lock.i) #8
  %check_tdls_tx.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 142
  %22 = ptrtoint ptr %check_tdls_tx.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %check_tdls_tx.i, align 8
  br label %if.end

if.end:                                           ; preds = %mwifiex_flush_auto_tdls_list.exit, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_config_tdls_enable(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %config.i = alloca %struct.mwifiex_tdls_config, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %config.i) #8
  %0 = ptrtoint ptr %config.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 256, ptr %config.i, align 2
  %call.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 256, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %config.i, i1 noundef zeroext true) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %config.i) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_config_tdls_disable(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %config.i = alloca %struct.mwifiex_tdls_config, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %config.i) #8
  %0 = ptrtoint ptr %config.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %config.i, align 2
  %call.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 256, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %config.i, i1 noundef zeroext true) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %config.i) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_config_tdls_cs_params(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %config_tdls_cs_params = alloca %struct.mwifiex_tdls_config_cs_params, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %config_tdls_cs_params) #8
  %0 = getelementptr inbounds %struct.mwifiex_tdls_config_cs_params, ptr %config_tdls_cs_params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mwifiex_tdls_config_cs_params, ptr %config_tdls_cs_params, i32 0, i32 2
  %2 = ptrtoint ptr %config_tdls_cs_params to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %config_tdls_cs_params, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %1, align 1
  %call = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 256, i16 noundef zeroext 8, i32 noundef 0, ptr noundef nonnull %config_tdls_cs_params, i1 noundef zeroext true) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %config_tdls_cs_params) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_stop_tdls_cs(ptr noundef %priv, ptr nocapture noundef readonly %peer_mac) local_unnamed_addr #0 align 64 {
entry:
  %stop_tdls_cs_params = alloca %struct.mwifiex_tdls_stop_cs_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %stop_tdls_cs_params) #8
  %0 = getelementptr inbounds [6 x i8], ptr %stop_tdls_cs_params, i32 0, i32 4
  %1 = ptrtoint ptr %peer_mac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %peer_mac, align 4
  %3 = ptrtoint ptr %stop_tdls_cs_params to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %stop_tdls_cs_params, align 4
  %add.ptr.i = getelementptr i8, ptr %peer_mac, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %0, align 4
  %call = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 256, i16 noundef zeroext 7, i32 noundef 0, ptr noundef nonnull %stop_tdls_cs_params, i1 noundef zeroext true) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %stop_tdls_cs_params) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_start_tdls_cs(ptr noundef %priv, ptr nocapture noundef readonly %peer_mac, i8 noundef zeroext %primary_chan, i8 noundef zeroext %second_chan_offset, i8 noundef zeroext %band) local_unnamed_addr #0 align 64 {
entry:
  %start_tdls_cs_params = alloca %struct.mwifiex_tdls_init_cs_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %start_tdls_cs_params) #8
  %0 = getelementptr inbounds [6 x i8], ptr %start_tdls_cs_params, i32 0, i32 4
  %1 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, ptr %start_tdls_cs_params, i32 0, i32 1
  %2 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, ptr %start_tdls_cs_params, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, ptr %start_tdls_cs_params, i32 0, i32 3
  %4 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, ptr %start_tdls_cs_params, i32 0, i32 4
  %5 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, ptr %start_tdls_cs_params, i32 0, i32 5
  %6 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, ptr %start_tdls_cs_params, i32 0, i32 6
  %7 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, ptr %start_tdls_cs_params, i32 0, i32 7
  %8 = ptrtoint ptr %peer_mac to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %peer_mac, align 4
  %10 = ptrtoint ptr %start_tdls_cs_params to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %start_tdls_cs_params, align 4
  %add.ptr.i = getelementptr i8, ptr %peer_mac, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i, align 2
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %0, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %primary_chan, ptr %1, align 2
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %second_chan_offset, ptr %2, align 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %band, ptr %3, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 2560, ptr %4, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 4096, ptr %5, align 1
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 12, ptr %6, align 1
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %7, align 2
  %call = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 256, i16 noundef zeroext 6, i32 noundef 0, ptr noundef nonnull %start_tdls_cs_params, i1 noundef zeroext true) #8
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %start_tdls_cs_params) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_tdls_append_rates_ie(ptr noundef %priv, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %rates = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %rates) #8
  %0 = getelementptr inbounds [14 x i8], ptr %rates, i32 0, i32 8
  %1 = call ptr @memset(ptr %rates, i32 0, i32 14)
  %call = call i32 @mwifiex_get_supported_rates(ptr noundef %priv, ptr noundef nonnull %rates) #8
  %conv2 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv2)
  %cmp = icmp ult i32 %conv2, 8
  %phi.cast = trunc i32 %call to i16
  %cond = select i1 %cmp, i16 %phi.cast, i16 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

skb_tailroom.exit:                                ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add nuw nsw i32 %conv2, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %add)
  %cmp10 = icmp slt i32 %sub.ptr.sub.i, %add
  br i1 %cmp10, label %skb_tailroom.exit.if.then_crit_edge, label %if.end

skb_tailroom.exit.if.then_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %skb_tailroom.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end:                                           ; preds = %skb_tailroom.exit
  %conv12 = zext i16 %cond to i32
  %add13 = add nuw nsw i32 %conv12, 2
  %call14 = call ptr @skb_put(ptr noundef %skb, i32 noundef %add13) #8
  %incdec.ptr = getelementptr i8, ptr %call14, i32 1
  %10 = ptrtoint ptr %call14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %call14, align 1
  %conv15 = trunc i16 %cond to i8
  %incdec.ptr16 = getelementptr i8, ptr %call14, i32 2
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv15, ptr %incdec.ptr, align 1
  %12 = call ptr @memcpy(ptr %incdec.ptr16, ptr %rates, i32 %conv12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv2)
  %cmp20 = icmp ugt i32 %conv2, 8
  br i1 %cmp20, label %if.then22, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv24 = add i16 %phi.cast, -8
  %conv25 = zext i16 %conv24 to i32
  %add26 = add nuw nsw i32 %conv25, 2
  %call27 = call ptr @skb_put(ptr noundef %skb, i32 noundef %add26) #8
  %incdec.ptr28 = getelementptr i8, ptr %call27, i32 1
  %13 = ptrtoint ptr %call27 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 50, ptr %call27, align 1
  %conv29 = trunc i16 %conv24 to i8
  %incdec.ptr30 = getelementptr i8, ptr %call27, i32 2
  %14 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv29, ptr %incdec.ptr28, align 1
  %15 = call ptr @memcpy(ptr %incdec.ptr30, ptr %0, i32 %conv25)
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.then22 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %rates) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_fill_cap_info(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_tdls_add_vht_capab(ptr noundef %priv, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %vht_cap = alloca %struct.ieee80211_vht_cap, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vht_cap) #8
  %call = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 14) #8
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -65, ptr %call, align 1
  %incdec.ptr1 = getelementptr i8, ptr %call, i32 2
  %1 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 12, ptr %incdec.ptr, align 1
  %2 = call ptr @memset(ptr %vht_cap, i32 0, i32 12)
  %band = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 3
  %3 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %band, align 2
  call void @mwifiex_fill_vht_cap_tlv(ptr noundef %priv, ptr noundef nonnull %vht_cap, i8 noundef zeroext %4) #8
  %5 = call ptr @memcpy(ptr %incdec.ptr1, ptr %vht_cap, i32 12)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vht_cap) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_tdls_add_ht_oper(ptr noundef %priv, ptr noundef %mac, i8 noundef zeroext %vht_enabled, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %mac) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !63

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ht_capb = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 10, i32 7
  %2 = ptrtoint ptr %ht_capb to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ht_capb, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool4.not = icmp eq i16 %3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 536870912, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 24) #8
  %incdec.ptr = getelementptr i8, ptr %call8, i32 1
  %6 = ptrtoint ptr %call8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 61, ptr %call8, align 1
  %incdec.ptr9 = getelementptr i8, ptr %call8, i32 2
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 22, ptr %incdec.ptr, align 1
  %channel = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 5
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 8
  %conv = trunc i32 %9 to i8
  %10 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %incdec.ptr9, align 1
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %hw_dot_11n_dev_cap = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 113
  %13 = ptrtoint ptr %hw_dot_11n_dev_cap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_dot_11n_dev_cap, align 4
  %and = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end7.if.end21_crit_edge, label %land.lhs.true

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end7
  %bcn_ht_cap = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 24
  %15 = ptrtoint ptr %bcn_ht_cap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bcn_ht_cap, align 8
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true13

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true13:                                  ; preds = %land.lhs.true
  %bcn_ht_oper = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 27
  %17 = ptrtoint ptr %bcn_ht_oper to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bcn_ht_oper, align 8
  %ht_param = getelementptr inbounds %struct.ieee80211_ht_operation, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ht_param to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ht_param, align 1
  %21 = and i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool16.not = icmp eq i8 %21, 0
  br i1 %tobool16.not, label %land.lhs.true13.if.end21_crit_edge, label %if.then17

land.lhs.true13.if.end21_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  %ht_param20 = getelementptr i8, ptr %call8, i32 3
  %22 = ptrtoint ptr %ht_param20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %20, ptr %ht_param20, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %land.lhs.true13.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end7.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vht_enabled)
  %tobool22.not = icmp eq i8 %vht_enabled, 0
  br i1 %tobool22.not, label %if.end21.if.end30_crit_edge, label %if.then23

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel, align 8
  %call25 = tail call zeroext i8 @mwifiex_get_sec_chan_offset(i32 noundef %24) #8
  %ht_param26 = getelementptr i8, ptr %call8, i32 3
  %25 = or i8 %call25, 4
  %26 = ptrtoint ptr %ht_param26 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %ht_param26, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.end21.if.end30_crit_edge
  %ht_oper32 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 10, i32 8
  %27 = call ptr @memcpy(ptr %ht_oper32, ptr %incdec.ptr9, i32 22)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end30 ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_supported_rates(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_fill_vht_cap_tlv(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mwifiex_is_bss_in_11ac_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_get_center_freq_index(ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_get_sec_chan_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_wmm_downgrade_tid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_wmm_get_queue_raptr(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_write_data_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 662, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 909, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 941, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 1275, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 1298, i32 5}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 1364, i32 3}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 1420, i32 6}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 1421, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mwifiex_check_auto_tdls._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @mwifiex_check_auto_tdls._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 1430, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 1450, i32 4}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 1466, i32 5}
!26 = !{ptr @mwifiex_setup_auto_tdls_timer.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 1480, i32 2}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 131, i32 3}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 252, i32 3}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 258, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 266, i32 4}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 204, i32 3}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 803, i32 3}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 1142, i32 3}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 1177, i32 3}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 1088, i32 3}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 93, i32 2}
!49 = !{ptr @__func__.mwifiex_hold_tdls_packets, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 1067, i32 3}
!52 = !{ptr @__func__.mwifiex_restore_tdls_packets, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/mwifiex/tdls.c", i32 40, i32 2}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i8 0, i8 2}
!65 = !{i64 2148588422, i64 2148588448, i64 2148588477, i64 2148588511, i64 2148588542, i64 2148588565}
!66 = !{i64 2148585957, i64 2148585983, i64 2148586012, i64 2148586046, i64 2148586077, i64 2148586100}
!67 = !{!"branch_weights", i32 2000, i32 1}
