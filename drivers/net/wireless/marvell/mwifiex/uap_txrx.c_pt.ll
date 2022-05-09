; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/uap_txrx.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/uap_txrx.c"
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
%struct.uap_rxpd = type <{ i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, [3 x i8], i8 }>
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
%struct.rx_packet_hdr = type { %struct.ethhdr, %struct.rfc_1042_hdr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.rfc_1042_hdr = type { i8, i8, i8, [3 x i8], i16 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.mwifiex_ra_list_tbl = type { %struct.list_head, %struct.sk_buff_head, [6 x i8], i32, i16, i16, i8, i32, i8, i16, i8, i8 }
%struct.uap_txpd = type { i8, i8, i16, i16, i16, i32, i8, i8, i8, [2 x i8], i8, [2 x i8] }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drop packet in disconnected state.\0A\00", [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Tx: Bridge packet limit reached. Drop packet!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to allocate skb_uap\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"wrong rx packet: len=%d, offset=%d, length=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Rx of mgmt packet failed\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Tx: bad packet length: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@bridge_tunnel_header = external dso_local constant [6 x i8], align 1
@rfc1042_header = external dso_local constant [6 x i8], align 1
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"data: Tx: insufficient skb headroom %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Tx: cannot allocate new_skb\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"info: new skb headroom %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mwifiex_1d_to_wmm_queue = external dso_local local_unnamed_addr constant [0 x i16], align 2
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 58624, i64 59136]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 248, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 311, i32 5 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 317, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 386, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 403, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 468, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 161, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 168, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [51 x i8] c"../drivers/net/wireless/marvell/mwifiex/uap_txrx.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 177, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_handle_uap_rx_forward(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %ra = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ra) #6
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str) #6
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %rx_pkt_offset = getelementptr inbounds %struct.uap_rxpd, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %rx_pkt_offset, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %9 = call ptr @memcpy(ptr %ra, ptr %add.ptr, i32 6)
  %10 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ra, align 4
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #6
  tail call fastcc void @mwifiex_uap_queue_bridged_pkt(ptr noundef %priv, ptr noundef %call5)
  br label %if.end11

if.else:                                          ; preds = %if.end
  %call7 = call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef nonnull %ra) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else.if.end11_crit_edge, label %if.then9

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @mwifiex_uap_queue_bridged_pkt(ptr noundef %priv, ptr noundef %skb)
  br label %cleanup

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then4
  %call12 = call i32 @mwifiex_process_rx_packet(ptr noundef %priv, ptr noundef %skb) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ 0, %if.then9 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ra) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_uap_queue_bridged_pkt(ptr noundef %priv, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %rx_pkt_offset = getelementptr inbounds %struct.uap_rxpd, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %rx_pkt_offset, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %pending_bridged_pkts = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 134
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_bridged_pkts, i32 noundef 4) #6
  %7 = ptrtoint ptr %pending_bridged_pkts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %pending_bridged_pkts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %8)
  %cmp = icmp sgt i32 %8, 1023
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.1) #6
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  tail call fastcc void @mwifiex_uap_cleanup_tx_queues(ptr noundef %priv)
  br label %cleanup

if.end:                                           ; preds = %entry
  %rfc1042_hdr = getelementptr %struct.rx_packet_hdr, ptr %add.ptr, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %rfc1042_hdr, ptr noundef nonnull dereferenceable(6) @bridge_tunnel_header, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end.if.then18_crit_edge, label %lor.lhs.false

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end
  %bcmp157 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %rfc1042_hdr, ptr noundef nonnull dereferenceable(6) @rfc1042_header, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp157)
  %tobool7.not = icmp eq i32 %bcmp157, 0
  br i1 %tobool7.not, label %land.lhs.true, label %lor.lhs.false.if.end35_crit_edge

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

land.lhs.true:                                    ; preds = %lor.lhs.false
  %snap_type = getelementptr inbounds %struct.rfc_1042_hdr, ptr %rfc1042_hdr, i32 0, i32 4
  %11 = ptrtoint ptr %snap_type to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %snap_type, align 1
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %land.lhs.true.if.then18_crit_edge [
    i16 -32525, label %land.lhs.true.if.end35_crit_edge
    i16 -32457, label %land.lhs.true.if.end35_crit_edge172
  ]

land.lhs.true.if.end35_crit_edge172:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

land.lhs.true.if.then18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.then18:                                        ; preds = %land.lhs.true.if.then18_crit_edge, %if.end.if.then18_crit_edge
  %add.ptr23 = getelementptr i8, ptr %rfc1042_hdr, i32 -6
  %h_source25 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %rfc1042_hdr, ptr %h_source25, i32 6)
  %15 = call ptr @memcpy(ptr %add.ptr23, ptr %add.ptr, i32 6)
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr23 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end35

if.end35:                                         ; preds = %if.then18, %land.lhs.true.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge172, %lor.lhs.false.if.end35_crit_edge
  %hdr_chop.0 = phi i32 [ %sub.ptr.sub, %if.then18 ], [ %conv, %land.lhs.true.if.end35_crit_edge ], [ %conv, %land.lhs.true.if.end35_crit_edge172 ], [ %conv, %lor.lhs.false.if.end35_crit_edge ]
  %call36 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %hdr_chop.0) #6
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %18 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.ptr.sub.i)
  %cmp38 = icmp ult i32 %sub.ptr.sub.i, 100
  br i1 %cmp38, label %if.then40, label %if.end35.if.end53_crit_edge

if.end35.if.end53_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then40:                                        ; preds = %if.end35
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %sub.ptr.sub.i) #6
  %call43 = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef 100) #6
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.then48, label %if.end50, !prof !27

if.then48:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %23, i32 noundef 4, ptr noundef nonnull @.str.7) #6
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  %tx_dropped = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 16, i32 7
  %24 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %data.i166 = getelementptr inbounds %struct.sk_buff, ptr %call43, i32 0, i32 19
  %28 = ptrtoint ptr %data.i166 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i166, align 4
  %head.i167 = getelementptr inbounds %struct.sk_buff, ptr %call43, i32 0, i32 18
  %30 = ptrtoint ptr %head.i167 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i167, align 8
  %sub.ptr.lhs.cast.i168 = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i169 = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i170 = sub i32 %sub.ptr.lhs.cast.i168, %sub.ptr.rhs.cast.i169
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %27, i32 noundef 1073741824, ptr noundef nonnull @.str.8, i32 noundef %sub.ptr.sub.i170) #6
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %if.end35.if.end53_crit_edge
  %skb.addr.0 = phi ptr [ %call43, %if.end50 ], [ %skb, %if.end35.if.end53_crit_edge ]
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 8
  %33 = call ptr @memset(ptr %32, i32 0, i32 24)
  %bss_num = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 4
  %34 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bss_num, align 1
  %bss_num55 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 13
  %36 = ptrtoint ptr %bss_num55 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %bss_num55, align 1
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %37 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bss_type, align 4
  %bss_type56 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 14
  %39 = ptrtoint ptr %bss_type56 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %bss_type56, align 2
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 12
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %flags, align 4
  %h_source60 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr, i32 0, i32 1
  %call62 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %h_source60) #6
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.end53.if.end73_crit_edge, label %if.then64

if.end53.if.end73_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then64:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %conv65 = zext i32 %41 to i64
  %stats66 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call62, i32 0, i32 11
  %42 = ptrtoint ptr %stats66 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv65, ptr %stats66, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %conv67 = zext i32 %44 to i64
  %rx_bytes = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call62, i32 0, i32 11, i32 2
  %45 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %rx_bytes, align 8
  %add = add i64 %46, %conv67
  store i64 %add, ptr %rx_bytes, align 8
  %rx_packets = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call62, i32 0, i32 11, i32 4
  %47 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_packets, align 8
  %inc70 = add i32 %48, 1
  store i32 %inc70, ptr %rx_packets, align 8
  %rx_rate = getelementptr inbounds %struct.uap_rxpd, ptr %3, i32 0, i32 7
  %49 = ptrtoint ptr %rx_rate to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %rx_rate, align 1
  %last_tx_rate = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call62, i32 0, i32 11, i32 7
  %51 = ptrtoint ptr %last_tx_rate to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %last_tx_rate, align 4
  %ht_info = getelementptr inbounds %struct.uap_rxpd, ptr %3, i32 0, i32 10
  %52 = ptrtoint ptr %ht_info to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ht_info, align 1
  %last_tx_htinfo = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call62, i32 0, i32 11, i32 8
  %54 = ptrtoint ptr %last_tx_htinfo to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %last_tx_htinfo, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.then64, %if.end53.if.end73_crit_edge
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr, align 4
  %57 = and i32 %56, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.i.not.i = icmp eq i32 %57, 0
  br i1 %tobool.i.not.i, label %if.then78, label %if.end73.if.end87_crit_edge

if.end73.if.end87_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %len79 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %58 = ptrtoint ptr %len79 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len79, align 4
  %stats80 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 16
  %rx_bytes81 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 16, i32 2
  %60 = ptrtoint ptr %rx_bytes81 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_bytes81, align 8
  %add82 = add i32 %61, %59
  store i32 %add82, ptr %rx_bytes81, align 8
  %62 = ptrtoint ptr %stats80 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %stats80, align 8
  %inc85 = add i32 %63, 1
  store i32 %inc85, ptr %stats80, align 8
  %64 = load i32, ptr %len79, align 4
  %pkt_len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 16
  %65 = ptrtoint ptr %pkt_len to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %pkt_len, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then78, %if.end73.if.end87_crit_edge
  %call.i.i171 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #6
  %66 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %call.i.i171, ptr %66, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 6
  %68 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %priority, align 4
  %arrayidx = getelementptr [0 x i16], ptr @mwifiex_1d_to_wmm_queue, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx, align 2
  %conv88 = zext i16 %71 to i32
  %arrayidx89 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 78, i32 %conv88
  %call.i.i158 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx89, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %arrayidx89, i32 1, i32 3, i32 1) #6
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx89, ptr %arrayidx89, i32 1, ptr elementtype(i32) %arrayidx89) #6, !srcloc !28
  tail call void @mwifiex_wmm_add_buf_txqueue(ptr noundef %priv, ptr noundef %skb.addr.0) #6
  %tx_pending = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 21
  %call.i.i159 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_pending, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %tx_pending, i32 1, i32 3, i32 1) #6
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_pending, ptr %tx_pending, i32 1, ptr elementtype(i32) %tx_pending) #6, !srcloc !28
  %call.i.i160 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_bridged_pkts, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %pending_bridged_pkts, i32 1, i32 3, i32 1) #6
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_bridged_pkts, ptr %pending_bridged_pkts, i32 1, ptr elementtype(i32) %pending_bridged_pkts) #6, !srcloc !28
  %75 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv, align 8
  tail call void @mwifiex_queue_main_work(ptr noundef %76) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.then48, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_rx_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_uap_recv_packet(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %3, i32 0, i32 1
  %call = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %h_source) #6
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %4 to i64
  %stats = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %stats, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %conv4 = zext i32 %7 to i64
  %rx_bytes = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rx_bytes, align 8
  %add = add i64 %9, %conv4
  store i64 %add, ptr %rx_bytes, align 8
  %rx_packets = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 11, i32 4
  %10 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_packets, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %rx_packets, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.end7.if.then15_crit_edge

if.end7.if.then15_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end7
  %call13 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %3) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %lor.lhs.false.if.end45_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

lor.lhs.false.if.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end7.if.then15_crit_edge
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 100
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call ptr @skb_realloc_headroom(ptr noundef nonnull %skb, i32 noundef 100) #6
  br label %if.end21

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call ptr @skb_copy(ptr noundef nonnull %skb, i32 noundef 2592) #6
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %skb_uap.0 = phi ptr [ %call19, %if.then18 ], [ %call20, %if.else ]
  %tobool22.not = icmp eq ptr %skb_uap.0, null
  br i1 %tobool22.not, label %if.else37, label %if.then25, !prof !27

if.then25:                                        ; preds = %if.end21
  %19 = getelementptr inbounds %struct.sk_buff, ptr %skb_uap.0, i32 0, i32 3, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 24)
  %bss_num = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 4
  %21 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bss_num, align 1
  %bss_num27 = getelementptr inbounds %struct.sk_buff, ptr %skb_uap.0, i32 0, i32 3, i32 13
  %23 = ptrtoint ptr %bss_num27 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %bss_num27, align 1
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %24 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bss_type, align 4
  %bss_type28 = getelementptr inbounds %struct.sk_buff, ptr %skb_uap.0, i32 0, i32 3, i32 14
  %26 = ptrtoint ptr %bss_type28 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %bss_type28, align 2
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb_uap.0, i32 0, i32 3, i32 12
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %flags, align 4
  %call.i.i111 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #6
  %28 = getelementptr inbounds %struct.sk_buff, ptr %skb_uap.0, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %call.i.i111, ptr %28, align 8
  tail call void @mwifiex_wmm_add_buf_txqueue(ptr noundef %priv, ptr noundef nonnull %skb_uap.0) #6
  %tx_pending = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_pending, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %tx_pending, i32 1, i32 3, i32 1) #6
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_pending, ptr %tx_pending, i32 1, ptr elementtype(i32) %tx_pending) #6, !srcloc !28
  %pending_bridged_pkts = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 134
  %call.i.i109 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_bridged_pkts, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %pending_bridged_pkts, i32 1, i32 3, i32 1) #6
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_bridged_pkts, ptr %pending_bridged_pkts, i32 1, ptr elementtype(i32) %pending_bridged_pkts) #6, !srcloc !28
  %call.i.i110 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_bridged_pkts, i32 noundef 4) #6
  %32 = ptrtoint ptr %pending_bridged_pkts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %pending_bridged_pkts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %33)
  %cmp33 = icmp sgt i32 %33, 1023
  br i1 %cmp33, label %if.then35, label %if.then25.if.end38_crit_edge

if.then25.if.end38_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then35:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.1) #6
  tail call fastcc void @mwifiex_uap_cleanup_tx_queues(ptr noundef %priv)
  br label %if.end38

if.else37:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.2) #6
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.then35, %if.then25.if.end38_crit_edge
  tail call void @mwifiex_queue_main_work(ptr noundef %1) #6
  %call41 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %3) #6
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end38.if.end45_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.end45:                                         ; preds = %if.end38.if.end45_crit_edge, %lor.lhs.false.if.end45_crit_edge
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %34 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev, align 4
  %36 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %36, align 8
  %38 = load ptr, ptr %netdev, align 4
  %call47 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb, ptr noundef %38) #6
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %39 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %call47, ptr %protocol, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %40 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %1, align 4
  %.off = add i8 %42, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %land.lhs.true, label %if.end45.if.end62_crit_edge

if.end45.if.end62_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end45
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %43 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %truesize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %44)
  %cmp56 = icmp ugt i32 %44, 4096
  br i1 %cmp56, label %if.then58, label %land.lhs.true.if.end62_crit_edge

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then58:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %len59 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len59, align 4
  %sub = add i32 %44, -4096
  %add61 = add i32 %sub, %46
  %47 = ptrtoint ptr %truesize to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add61, ptr %truesize, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %land.lhs.true.if.end62_crit_edge, %if.end45.if.end62_crit_edge
  %call63 = tail call i32 @netif_rx_any_context(ptr noundef nonnull %skb) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end38.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_add_buf_txqueue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_uap_cleanup_tx_queues(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wmm = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77
  %ra_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock) #6
  %del_list_idx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 135
  %tx_pkts_queued.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 9
  %0 = ptrtoint ptr %del_list_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %.pr = load i8, ptr %del_list_idx, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %1 = phi i8 [ %.pr, %entry ], [ %inc12, %for.inc.for.body_crit_edge ]
  %i.026 = phi i32 [ 0, %entry ], [ %inc10, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp1 = icmp eq i8 %1, 8
  br i1 %cmp1, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %del_list_idx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %del_list_idx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %3 = ptrtoint ptr %del_list_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %del_list_idx, align 8
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %wmm, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %ra_list.056.i = load ptr, ptr %arrayidx, align 4
  %cmp.not57.i = icmp eq ptr %ra_list.056.i, %arrayidx
  br i1 %cmp.not57.i, label %if.end.for.inc_crit_edge, label %for.body.lr.ph.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %if.end
  %arrayidx.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 2, i32 %i.026
  %pending_bridged_pkts.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %6, i32 0, i32 134
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc26.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ra_list.059.i = phi ptr [ %ra_list.056.i, %for.body.lr.ph.i ], [ %ra_list.0.i, %for.inc26.i.for.body.i_crit_edge ]
  %pkt_deleted.0.off058.i = phi i1 [ false, %for.body.lr.ph.i ], [ %pkt_deleted.3.off0.i, %for.inc26.i.for.body.i_crit_edge ]
  %skb_head.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.059.i, i32 0, i32 1
  %8 = ptrtoint ptr %skb_head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb_head.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %skb_head.i
  br i1 %cmp.i.not.i, label %for.body.i.for.inc26.i_crit_edge, label %for.cond6.preheader.i

for.body.i.for.inc26.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc26.i

for.cond6.preheader.i:                            ; preds = %for.body.i
  %qlen.i.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.059.i, i32 0, i32 1, i32 1
  %tx_paused.i = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %ra_list.059.i, i32 0, i32 11
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %if.end19.i.for.cond6.i_crit_edge, %for.cond6.preheader.i
  %pkt_deleted.1.off0.i = phi i1 [ %pkt_deleted.2.off0.i, %if.end19.i.for.cond6.i_crit_edge ], [ %pkt_deleted.0.off058.i, %for.cond6.preheader.i ]
  %skb.0.i = phi ptr [ %tmp.0.i, %if.end19.i.for.cond6.i_crit_edge ], [ %9, %for.cond6.preheader.i ]
  %10 = ptrtoint ptr %skb.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp.0.i = load ptr, ptr %skb.0.i, align 8
  %cmp8.not.i = icmp eq ptr %skb.0.i, %skb_head.i
  br i1 %cmp8.not.i, label %for.cond6.i.for.inc26.i_crit_edge, label %for.body9.i

for.cond6.i.for.inc26.i_crit_edge:                ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc26.i

for.body9.i:                                      ; preds = %for.cond6.i
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 12
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags.i, align 4
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not.i = icmp eq i8 %13, 0
  br i1 %tobool11.not.i, label %for.body9.i.if.end19.i_crit_edge, label %if.then12.i

for.body9.i.if.end19.i_crit_edge:                 ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then12.i:                                      ; preds = %for.body9.i
  %14 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %16 = ptrtoint ptr %skb.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb.0.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %skb.0.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %skb.0.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %prev17.i.i, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %17, ptr %19, align 8
  %call14.i = tail call i32 @mwifiex_write_data_complete(ptr noundef %6, ptr noundef %skb.0.i, i32 noundef 0, i32 noundef -1) #6
  %22 = ptrtoint ptr %tx_paused.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tx_paused.i, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool15.not.i = icmp eq i8 %23, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %dec.i = add i32 %25, -1
  store i32 %dec.i, ptr %arrayidx.i, align 4
  br label %if.end19.i

if.else.i:                                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_pkts_queued.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %tx_pkts_queued.i, i32 1, i32 3, i32 1) #6
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_pkts_queued.i, ptr %tx_pkts_queued.i, i32 1, ptr elementtype(i32) %tx_pkts_queued.i) #6, !srcloc !30
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then16.i, %for.body9.i.if.end19.i_crit_edge
  %pkt_deleted.2.off0.i = phi i1 [ %pkt_deleted.1.off0.i, %for.body9.i.if.end19.i_crit_edge ], [ true, %if.else.i ], [ true, %if.then16.i ]
  %call.i.i55.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_bridged_pkts.i, i32 noundef 4) #6
  %27 = ptrtoint ptr %pending_bridged_pkts.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %pending_bridged_pkts.i, align 4
  %cmp21.i = icmp slt i32 %28, 129
  br i1 %cmp21.i, label %if.end19.i.for.inc26.i_crit_edge, label %if.end19.i.for.cond6.i_crit_edge

if.end19.i.for.cond6.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond6.i

if.end19.i.for.inc26.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc26.i

for.inc26.i:                                      ; preds = %if.end19.i.for.inc26.i_crit_edge, %for.cond6.i.for.inc26.i_crit_edge, %for.body.i.for.inc26.i_crit_edge
  %pkt_deleted.3.off0.i = phi i1 [ %pkt_deleted.0.off058.i, %for.body.i.for.inc26.i_crit_edge ], [ %pkt_deleted.2.off0.i, %if.end19.i.for.inc26.i_crit_edge ], [ %pkt_deleted.1.off0.i, %for.cond6.i.for.inc26.i_crit_edge ]
  %29 = ptrtoint ptr %ra_list.059.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %ra_list.0.i = load ptr, ptr %ra_list.059.i, align 4
  %cmp.not.i = icmp eq ptr %ra_list.0.i, %arrayidx
  br i1 %cmp.not.i, label %mwifiex_uap_del_tx_pkts_in_ralist.exit, label %for.inc26.i.for.body.i_crit_edge

for.inc26.i.for.body.i_crit_edge:                 ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

mwifiex_uap_del_tx_pkts_in_ralist.exit:           ; preds = %for.inc26.i
  br i1 %pkt_deleted.3.off0.i, label %if.then7, label %mwifiex_uap_del_tx_pkts_in_ralist.exit.for.inc_crit_edge

mwifiex_uap_del_tx_pkts_in_ralist.exit.for.inc_crit_edge: ; preds = %mwifiex_uap_del_tx_pkts_in_ralist.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then7:                                         ; preds = %mwifiex_uap_del_tx_pkts_in_ralist.exit
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %del_list_idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %del_list_idx, align 8
  %inc = add i8 %31, 1
  store i8 %inc, ptr %del_list_idx, align 8
  br label %for.end

for.inc:                                          ; preds = %mwifiex_uap_del_tx_pkts_in_ralist.exit.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc10 = add nuw nsw i32 %i.026, 1
  %32 = ptrtoint ptr %del_list_idx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %del_list_idx, align 8
  %inc12 = add i8 %33, 1
  store i8 %inc12, ptr %del_list_idx, align 8
  %exitcond.not = icmp eq i32 %inc10, 8
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then7
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_queue_main_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_any_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_uap_rx_packet(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %ta = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ta) #6
  %2 = getelementptr inbounds [6 x i8], ptr %ta, i32 0, i32 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %rx_pkt_type2 = getelementptr inbounds %struct.uap_rxpd, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %rx_pkt_type2 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %rx_pkt_type2, align 1
  %rx_pkt_offset = getelementptr inbounds %struct.uap_rxpd, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %rx_pkt_offset, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  %add.ptr = getelementptr i8, ptr %4, i32 %conv
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr, i32 0, i32 1
  %10 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h_source, align 4
  %12 = ptrtoint ptr %ta to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ta, align 4
  %add.ptr.i = getelementptr i8, ptr %h_source, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %2, align 4
  %16 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %rx_pkt_offset, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv5 = zext i16 %18 to i32
  %rx_pkt_length = getelementptr inbounds %struct.uap_rxpd, ptr %4, i32 0, i32 2
  %19 = ptrtoint ptr %rx_pkt_length to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %rx_pkt_length, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv6 = zext i16 %21 to i32
  %add = add nuw nsw i32 %conv6, %conv5
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %conv8 = and i32 %23, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv8)
  %cmp = icmp ugt i32 %add, %conv8
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %23, i32 noundef %conv5, i32 noundef %conv6) #6
  %rx_dropped = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 16, i32 6
  %24 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %rx_dropped, align 8
  %call = call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef nonnull %ta) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then16

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %tx_failed = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 11, i32 6
  %26 = ptrtoint ptr %tx_failed to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_failed, align 8
  %inc18 = add i32 %27, 1
  store i32 %inc18, ptr %tx_failed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.then.if.end_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  br label %cleanup

if.end19:                                         ; preds = %entry
  %28 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %6, label %land.lhs.true [
    i16 -6912, label %if.then23
    i16 -6400, label %if.end19.if.end43_crit_edge
  ]

if.end19.if.end43_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then23:                                        ; preds = %if.end19
  %call24 = tail call i32 @mwifiex_process_mgmt_packet(ptr noundef %priv, ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.if.end27_crit_edge, label %if.then26

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.4) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then23.if.end27_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end19
  %priority = getelementptr inbounds %struct.uap_rxpd, ptr %4, i32 0, i32 6
  %29 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %priority, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %30)
  %cmp33 = icmp ult i8 %30, 8
  br i1 %cmp33, label %if.then35, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then35:                                        ; preds = %land.lhs.true
  %sta_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_list_spinlock) #6
  %call37 = call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef nonnull %ta) #6
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.then35.if.end41_crit_edge, label %if.then39

if.then35.if.end41_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %seq_num = getelementptr inbounds %struct.uap_rxpd, ptr %4, i32 0, i32 5
  %31 = ptrtoint ptr %seq_num to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %seq_num, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %34 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %priority, align 1
  %idxprom = zext i8 %35 to i32
  %arrayidx = getelementptr %struct.mwifiex_sta_node, ptr %call37, i32 0, i32 6, i32 %idxprom
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %33, ptr %arrayidx, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then35.if.end41_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #6
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %land.lhs.true.if.end43_crit_edge, %if.end19.if.end43_crit_edge
  %ap_11n_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 125
  %37 = ptrtoint ptr %ap_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ap_11n_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool44.not = icmp eq i8 %38, 0
  br i1 %tobool44.not, label %if.end43.if.then55_crit_edge, label %lor.lhs.false

if.end43.if.then55_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

lor.lhs.false:                                    ; preds = %if.end43
  %priority45 = getelementptr inbounds %struct.uap_rxpd, ptr %4, i32 0, i32 6
  %39 = ptrtoint ptr %priority45 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %priority45, align 1
  %conv46 = zext i8 %40 to i32
  %call48 = call ptr @mwifiex_11n_get_rx_reorder_tbl(ptr noundef %priv, i32 noundef %conv46, ptr noundef nonnull %ta) #6
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %land.lhs.true50, label %lor.lhs.false.if.end57_crit_edge

lor.lhs.false.if.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

land.lhs.true50:                                  ; preds = %lor.lhs.false
  %41 = ptrtoint ptr %rx_pkt_type2 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %rx_pkt_type2, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -6656, i16 %42)
  %cmp53.not = icmp eq i16 %42, -6656
  br i1 %cmp53.not, label %land.lhs.true50.if.end57_crit_edge, label %land.lhs.true50.if.then55_crit_edge

land.lhs.true50.if.then55_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

land.lhs.true50.if.end57_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then55:                                        ; preds = %land.lhs.true50.if.then55_crit_edge, %if.end43.if.then55_crit_edge
  %call56 = call i32 @mwifiex_handle_uap_rx_forward(ptr noundef %priv, ptr noundef %skb)
  br label %cleanup

if.end57:                                         ; preds = %land.lhs.true50.if.end57_crit_edge, %lor.lhs.false.if.end57_crit_edge
  %43 = ptrtoint ptr %rx_pkt_type2 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %rx_pkt_type2, align 1
  %45 = lshr i16 %44, 8
  %conv59 = trunc i16 %45 to i8
  %seq_num60 = getelementptr inbounds %struct.uap_rxpd, ptr %4, i32 0, i32 5
  %46 = ptrtoint ptr %seq_num60 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %seq_num60, align 1
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  %49 = ptrtoint ptr %priority45 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %priority45, align 1
  %conv62 = zext i8 %50 to i16
  %call64 = call i32 @mwifiex_11n_rx_reorder_pkt(ptr noundef %priv, i16 noundef zeroext %48, i16 noundef zeroext %conv62, ptr noundef nonnull %ta, i8 noundef zeroext %conv59, ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  %tobool65.not.not = xor i1 %tobool65.not, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 -6400, i16 %6)
  %cmp68 = icmp eq i16 %6, -6400
  %or.cond = select i1 %tobool65.not.not, i1 true, i1 %cmp68
  br i1 %or.cond, label %if.then70, label %if.end57.if.end71_crit_edge

if.end57.if.end71_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then70:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end57.if.end71_crit_edge
  br i1 %tobool65.not, label %if.end71.cleanup_crit_edge, label %if.then73

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %rx_dropped75 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 16, i32 6
  %51 = ptrtoint ptr %rx_dropped75 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_dropped75, align 8
  %inc76 = add i32 %52, 1
  store i32 %inc76, ptr %rx_dropped75, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.end71.cleanup_crit_edge, %if.then55, %if.end27, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call24, %if.end27 ], [ %call56, %if.then55 ], [ %call64, %if.then73 ], [ 0, %if.end71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ta) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_mgmt_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_11n_get_rx_reorder_tbl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11n_rx_reorder_pkt(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mwifiex_process_uap_txpd(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %intf_hdr_len, align 4
  %conv = zext i8 %3 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef 0) #6
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %cleanup

do.body:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 100
  br i1 %cmp, label %do.body8, label %do.end14, !prof !27

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/mwifiex/uap_txrx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 474, 0\0A.popsection", ""() #6, !srcloc !31
  unreachable

do.end14:                                         ; preds = %do.body
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -452984832, i32 %13)
  %cmp.i = icmp eq i32 %13, -452984832
  %conv17 = select i1 %cmp.i, i16 -6912, i16 0
  %add.neg = sub nsw i32 44, %conv
  %sub = add i32 %add.neg, %sub.ptr.lhs.cast.i
  %and = and i32 %sub, 63
  %add19 = add nuw nsw i32 %and, 20
  %call20 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add19) #6
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 20)
  %bss_num = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 4
  %17 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bss_num, align 1
  %bss_num22 = getelementptr inbounds %struct.uap_txpd, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %bss_num22 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %bss_num22, align 1
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %20 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bss_type, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %15, align 1
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %sub26 = sub i32 %24, %add19
  %conv27 = trunc i32 %sub26 to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv27)
  %tx_pkt_length = getelementptr inbounds %struct.uap_txpd, ptr %15, i32 0, i32 2
  %26 = ptrtoint ptr %tx_pkt_length to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %tx_pkt_length, align 1
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %27 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %priority, align 4
  %conv28 = trunc i32 %28 to i8
  %priority29 = getelementptr inbounds %struct.uap_txpd, ptr %15, i32 0, i32 6
  %29 = ptrtoint ptr %priority29 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv28, ptr %priority29, align 1
  %call30 = tail call zeroext i8 @mwifiex_wmm_compute_drv_pkt_delay(ptr noundef %priv, ptr noundef %skb) #6
  %pkt_delay_2ms = getelementptr inbounds %struct.uap_txpd, ptr %15, i32 0, i32 8
  %30 = ptrtoint ptr %pkt_delay_2ms to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call30, ptr %pkt_delay_2ms, align 1
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags, align 4
  %33 = and i8 %32, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %do.end14.if.end42_crit_edge, label %if.then38

do.end14.if.end42_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then38:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %ack_frame_id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %35 = ptrtoint ptr %ack_frame_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ack_frame_id, align 4
  %tx_token_id = getelementptr inbounds %struct.uap_txpd, ptr %15, i32 0, i32 10
  %37 = ptrtoint ptr %tx_token_id to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %tx_token_id, align 1
  %flags39 = getelementptr inbounds %struct.uap_txpd, ptr %15, i32 0, i32 7
  %38 = ptrtoint ptr %flags39 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %flags39, align 1
  %40 = or i8 %39, 32
  store i8 %40, ptr %flags39, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %do.end14.if.end42_crit_edge
  %41 = ptrtoint ptr %priority29 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %priority29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %42)
  %cmp45 = icmp ult i8 %42, 8
  br i1 %cmp45, label %if.then47, label %if.end42.if.end49_crit_edge

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %conv44 = zext i8 %42 to i32
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 8, i32 %conv44
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %tx_control = getelementptr inbounds %struct.uap_txpd, ptr %15, i32 0, i32 5
  %46 = ptrtoint ptr %tx_control to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %tx_control, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end42.if.end49_crit_edge
  %conv51 = trunc i32 %add19 to i16
  br i1 %cmp.i, label %if.then55, label %if.end49.if.end59_crit_edge

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %tx_pkt_type = getelementptr inbounds %struct.uap_txpd, ptr %15, i32 0, i32 4
  %47 = ptrtoint ptr %tx_pkt_type to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %conv17, ptr %tx_pkt_type, align 1
  %48 = trunc i32 %and to i16
  %conv58 = add nuw nsw i16 %48, 28
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.end49.if.end59_crit_edge
  %pkt_offset.0 = phi i16 [ %conv58, %if.then55 ], [ %conv51, %if.end49.if.end59_crit_edge ]
  %49 = tail call i16 @llvm.bswap.i16(i16 %pkt_offset.0)
  %tx_pkt_offset = getelementptr inbounds %struct.uap_txpd, ptr %15, i32 0, i32 3
  %50 = ptrtoint ptr %tx_pkt_offset to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %49, ptr %tx_pkt_offset, align 1
  %call60 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv) #6
  %tx_control61 = getelementptr inbounds %struct.uap_txpd, ptr %15, i32 0, i32 5
  %51 = ptrtoint ptr %tx_control61 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %tx_control61, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool62.not = icmp eq i32 %52, 0
  br i1 %tobool62.not, label %if.then63, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %pkt_tx_ctrl = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 19
  %53 = ptrtoint ptr %pkt_tx_ctrl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pkt_tx_ctrl, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %56 = ptrtoint ptr %tx_control61 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %tx_control61, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end59.cleanup_crit_edge, %if.then
  %retval.0.in = phi ptr [ %data, %if.then ], [ %data.i, %if.then63 ], [ %data.i, %if.end59.cleanup_crit_edge ]
  %57 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %57)
  %retval.0 = load ptr, ptr %retval.0.in, align 4
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_wmm_compute_drv_pkt_delay(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_write_data_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_txrx.c", i32 248, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_txrx.c", i32 311, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_txrx.c", i32 317, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_txrx.c", i32 386, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_txrx.c", i32 403, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_txrx.c", i32 468, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_txrx.c", i32 161, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_txrx.c", i32 168, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/mwifiex/uap_txrx.c", i32 177, i32 3}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2148542567, i64 2148542593, i64 2148542622, i64 2148542656, i64 2148542687, i64 2148542710}
!29 = !{i8 0, i8 2}
!30 = !{i64 2148545032, i64 2148545058, i64 2148545087, i64 2148545121, i64 2148545152, i64 2148545175}
!31 = !{i64 2159254992, i64 2159255504, i64 2159255029, i64 2159255085, i64 2159255119, i64 2159255143, i64 2159255184, i64 2159255205, i64 2159255233, i64 2159255267}
