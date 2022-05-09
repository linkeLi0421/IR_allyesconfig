; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/sta_rx.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/sta_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atomic_t = type { i32 }
%struct.rxpd = type <{ i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, [3 x i8], i8 }>
%struct.rx_packet_hdr = type { %struct.ethhdr, %struct.rfc_1042_hdr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.rfc_1042_hdr = type { i8, i8, i8, [3 x i8], i16 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }

@bridge_tunnel_header = external dso_local constant [6 x i8], align 1
@rfc1042_header = external dso_local constant [6 x i8], align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bypassed Gratuitous ARP\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"recv packet failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"wrong rx packet: len=%d, rx_pkt_offset=%d, rx_pkt_length=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Rx of mgmt packet failed\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 2054, i64 34525]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 144, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 172, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 210, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [49 x i8] c"../drivers/net/wireless/marvell/mwifiex/sta_rx.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 221, i32 4 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_rx_packet(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %rx_pkt_offset = getelementptr inbounds %struct.rxpd, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %rx_pkt_offset, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %rx_pkt_length = getelementptr inbounds %struct.rxpd, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rx_pkt_length to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %rx_pkt_length, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %4 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %rfc1042_hdr = getelementptr %struct.rx_packet_hdr, ptr %add.ptr, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %rfc1042_hdr, ptr noundef nonnull dereferenceable(6) @bridge_tunnel_header, i32 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %bcmp127 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %rfc1042_hdr, ptr noundef nonnull dereferenceable(6) @rfc1042_header, i32 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp127)
  %tobool3.not = icmp eq i32 %bcmp127, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %snap_type = getelementptr inbounds %struct.rfc_1042_hdr, ptr %rfc1042_hdr, i32 0, i32 4
  %8 = ptrtoint ptr %snap_type to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %snap_type, align 1
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %land.lhs.true.if.then_crit_edge [
    i16 -32525, label %land.lhs.true.if.end_crit_edge
    i16 -32457, label %land.lhs.true.if.end_crit_edge129
  ]

land.lhs.true.if.end_crit_edge129:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %add.ptr17 = getelementptr i8, ptr %rfc1042_hdr, i32 -6
  %h_source19 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %rfc1042_hdr, ptr %h_source19, i32 6)
  %12 = call ptr @memcpy(ptr %add.ptr17, ptr %add.ptr, i32 6)
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr17 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge129, %lor.lhs.false.if.end_crit_edge
  %hdr_chop.0 = phi i32 [ %sub.ptr.sub, %if.then ], [ %conv, %land.lhs.true.if.end_crit_edge ], [ %conv, %land.lhs.true.if.end_crit_edge129 ], [ %conv, %lor.lhs.false.if.end_crit_edge ]
  %call29 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %hdr_chop.0) #5
  %hs2_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 136
  %13 = ptrtoint ptr %hs2_enabled to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hs2_enabled, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool30.not = icmp eq i8 %14, 0
  br i1 %tobool30.not, label %if.end.if.end36_crit_edge, label %land.lhs.true32

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

land.lhs.true32:                                  ; preds = %if.end
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %h_proto.i, align 1
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %18, label %land.lhs.true32.if.end36_crit_edge [
    i16 2054, label %sw.bb.i
    i16 -31011, label %sw.bb12.i
  ]

land.lhs.true32.if.end36_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

sw.bb.i:                                          ; preds = %land.lhs.true32
  %ar_op.i = getelementptr i8, ptr %16, i32 20
  %20 = ptrtoint ptr %ar_op.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %ar_op.i, align 1
  %.off.i = add i16 %21, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 2
  br i1 %switch.i, label %if.then.i, label %sw.bb.i.if.end36_crit_edge

sw.bb.i.if.end36_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then.i:                                        ; preds = %sw.bb.i
  %ar_sip.i = getelementptr i8, ptr %16, i32 28
  %ar_tip.i = getelementptr i8, ptr %16, i32 38
  %bcmp1.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %ar_sip.i, ptr noundef dereferenceable(4) %ar_tip.i, i32 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1.i)
  %tobool.not.i = icmp eq i32 %bcmp1.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then35_crit_edge, label %if.then.i.if.end36_crit_edge

if.then.i.if.end36_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then.i.if.then35_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

sw.bb12.i:                                        ; preds = %land.lhs.true32
  %add.ptr17.i = getelementptr i8, ptr %16, i32 54
  %22 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %23)
  %cmp19.i = icmp eq i8 %23, -120
  br i1 %cmp19.i, label %if.then21.i, label %sw.bb12.i.if.end36_crit_edge

sw.bb12.i.if.end36_crit_edge:                     ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then21.i:                                      ; preds = %sw.bb12.i
  %saddr.i = getelementptr i8, ptr %16, i32 22
  %daddr.i = getelementptr i8, ptr %16, i32 38
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %saddr.i, ptr noundef dereferenceable(16) %daddr.i, i32 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool23.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool23.not.i, label %if.then21.i.if.then35_crit_edge, label %if.then21.i.if.end36_crit_edge

if.then21.i.if.end36_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then21.i.if.then35_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

if.then35:                                        ; preds = %if.then21.i.if.then35_crit_edge, %if.then.i.if.then35_crit_edge
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %25, i32 noundef 1073741824, ptr noundef nonnull @.str) #5
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #5
  br label %cleanup

if.end36:                                         ; preds = %if.then21.i.if.end36_crit_edge, %sw.bb12.i.if.end36_crit_edge, %if.then.i.if.end36_crit_edge, %sw.bb.i.if.end36_crit_edge, %land.lhs.true32.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %27, i32 0, i32 47
  %28 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %29, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end36.if.end48_crit_edge, label %land.lhs.true39

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

land.lhs.true39:                                  ; preds = %if.end36
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr, i32 0, i32 2
  %30 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30451, i16 %31)
  %cmp42 = icmp eq i16 %31, -30451
  br i1 %cmp42, label %if.then44, label %land.lhs.true39.if.end48_crit_edge

land.lhs.true39.if.end48_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then44:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  %conv47 = zext i16 %7 to i32
  tail call void @mwifiex_process_tdls_action_frame(ptr noundef %priv, ptr noundef %add.ptr, i32 noundef %conv47) #5
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %land.lhs.true39.if.end48_crit_edge, %if.end36.if.end48_crit_edge
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr, align 4
  %34 = and i32 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not = icmp eq i32 %34, 0
  br i1 %tobool.i.not, label %if.then56, label %if.end48.if.end57_crit_edge, !prof !18

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then56:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %rx_rate = getelementptr inbounds %struct.rxpd, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %rx_rate to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rx_rate, align 1
  %rxpd_rate = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 28
  %37 = ptrtoint ptr %rxpd_rate to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %rxpd_rate, align 1
  %ht_info = getelementptr inbounds %struct.rxpd, ptr %1, i32 0, i32 10
  %38 = ptrtoint ptr %ht_info to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ht_info, align 1
  %rxpd_htinfo = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 27
  %40 = ptrtoint ptr %rxpd_htinfo to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %rxpd_htinfo, align 2
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end48.if.end57_crit_edge
  %rx_rate69 = getelementptr inbounds %struct.rxpd, ptr %1, i32 0, i32 7
  %41 = ptrtoint ptr %rx_rate69 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rx_rate69, align 1
  %ht_info70 = getelementptr inbounds %struct.rxpd, ptr %1, i32 0, i32 10
  %43 = ptrtoint ptr %ht_info70 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ht_info70, align 1
  %call71 = tail call zeroext i8 @mwifiex_adjust_data_rate(ptr noundef %priv, i8 noundef zeroext %42, i8 noundef zeroext %44) #5
  %snr = getelementptr inbounds %struct.rxpd, ptr %1, i32 0, i32 8
  %45 = ptrtoint ptr %snr to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %snr, align 1
  %nf = getelementptr inbounds %struct.rxpd, ptr %1, i32 0, i32 9
  %47 = ptrtoint ptr %nf to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nf, align 1
  tail call void @mwifiex_hist_data_add(ptr noundef %priv, i8 noundef zeroext %call71, i8 noundef signext %46, i8 noundef signext %48) #5
  %call73 = tail call i32 @mwifiex_recv_packet(ptr noundef %priv, ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call73)
  %cmp74 = icmp eq i32 %call73, -1
  br i1 %cmp74, label %if.then76, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then76:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %50, i32 noundef 4, ptr noundef nonnull @.str.1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %if.end57.cleanup_crit_edge, %if.then35
  %retval.0 = phi i32 [ 0, %if.then35 ], [ -1, %if.then76 ], [ %call73, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_process_tdls_action_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_adjust_data_rate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_hist_data_add(ptr noundef, i8 noundef zeroext, i8 noundef signext, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_recv_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_sta_rx_packet(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %ta = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ta) #5
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %rx_pkt_type2 = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %rx_pkt_type2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %rx_pkt_type2, align 1
  %6 = lshr i16 %5, 8
  %rx_pkt_offset3 = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %rx_pkt_offset3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %rx_pkt_offset3, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %rx_pkt_length4 = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %rx_pkt_length4 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %rx_pkt_length4, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %seq_num5 = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %seq_num5 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %seq_num5, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv = zext i16 %9 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %conv7 = zext i16 %12 to i32
  %add = add nuw nsw i32 %conv7, %conv
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %conv9 = and i32 %17, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv9)
  %cmp = icmp ugt i32 %add, %conv9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %17, i32 noundef %conv, i32 noundef %conv7) #5
  %rx_dropped = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 16, i32 6
  %18 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_dropped, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -6912, i16 %5)
  %cmp15 = icmp eq i16 %5, -6912
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end
  %call = tail call i32 @mwifiex_process_mgmt_packet(ptr noundef %priv, ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then17.if.end19_crit_edge, label %if.then18

if.then17.if.end19_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then18:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.3) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then17.if.end19_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #5
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 84
  %20 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %config_bands, align 2
  %22 = and i8 %21, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %if.end20.land.lhs.true34_crit_edge, label %land.lhs.true

if.end20.land.lhs.true34_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true34

land.lhs.true:                                    ; preds = %if.end20
  %bcn_ht_cap = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 24
  %24 = ptrtoint ptr %bcn_ht_cap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bcn_ht_cap, align 8
  %tobool29.not = icmp eq ptr %25, null
  br i1 %tobool29.not, label %land.lhs.true.land.lhs.true34_crit_edge, label %land.lhs.true30

land.lhs.true.land.lhs.true34_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true34

land.lhs.true30:                                  ; preds = %land.lhs.true
  %disable_11n = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 22
  %26 = ptrtoint ptr %disable_11n to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %disable_11n, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool33.not = icmp eq i8 %27, 0
  br i1 %tobool33.not, label %land.lhs.true30.lor.lhs.false42_crit_edge, label %land.lhs.true30.land.lhs.true34_crit_edge

land.lhs.true30.land.lhs.true34_crit_edge:        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true34

land.lhs.true30.lor.lhs.false42_crit_edge:        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false42

land.lhs.true34:                                  ; preds = %land.lhs.true30.land.lhs.true34_crit_edge, %land.lhs.true.land.lhs.true34_crit_edge, %if.end20.land.lhs.true34_crit_edge
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 47
  %28 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_cap_info, align 4
  %and36 = and i32 %29, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %land.lhs.true34.if.then45_crit_edge, label %land.lhs.true38

land.lhs.true34.if.then45_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

land.lhs.true38:                                  ; preds = %land.lhs.true34
  %flags = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 12
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags, align 1
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool41.not = icmp eq i8 %32, 0
  br i1 %tobool41.not, label %land.lhs.true38.lor.lhs.false42_crit_edge, label %land.lhs.true38.if.then45_crit_edge

land.lhs.true38.if.then45_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

land.lhs.true38.lor.lhs.false42_crit_edge:        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %land.lhs.true38.lor.lhs.false42_crit_edge, %land.lhs.true30.lor.lhs.false42_crit_edge
  %curr_addr = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 7
  %33 = ptrtoint ptr %curr_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %curr_addr, align 4
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr, align 4
  %xor.i.i = xor i32 %36, %34
  %add.ptr.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 7, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr, i32 4
  %39 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %40, %38
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end47, label %lor.lhs.false42.if.then45_crit_edge

lor.lhs.false42.if.then45_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false42.if.then45_crit_edge, %land.lhs.true38.if.then45_crit_edge, %land.lhs.true34.if.then45_crit_edge
  %call46 = tail call i32 @mwifiex_process_rx_packet(ptr noundef %priv, ptr noundef %skb)
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false42
  %bss_mode.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %41 = ptrtoint ptr %bss_mode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bss_mode.i, align 8
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %42, label %if.end47.if.then61_crit_edge [
    i32 2, label %if.end47.land.lhs.true.i_crit_edge
    i32 8, label %if.end47.land.lhs.true.i_crit_edge188
  ]

if.end47.land.lhs.true.i_crit_edge188:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.end47.land.lhs.true.i_crit_edge:               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.end47.if.then61_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then61

land.lhs.true.i:                                  ; preds = %if.end47.land.lhs.true.i_crit_edge, %if.end47.land.lhs.true.i_crit_edge188
  %bss_role.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %44 = ptrtoint ptr %bss_role.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bss_role.i, align 1
  %46 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp3.i = icmp eq i8 %46, 0
  br i1 %cmp3.i, label %lor.lhs.false51, label %land.lhs.true.i.if.then61_crit_edge

land.lhs.true.i.if.then61_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then61

lor.lhs.false51:                                  ; preds = %land.lhs.true.i
  %fw_cap_info53 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 47
  %47 = ptrtoint ptr %fw_cap_info53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fw_cap_info53, align 4
  %and54 = and i32 %48, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %lor.lhs.false51.if.else_crit_edge, label %land.lhs.true56

lor.lhs.false51.if.else_crit_edge:                ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true56:                                  ; preds = %lor.lhs.false51
  %flags57 = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 12
  %49 = ptrtoint ptr %flags57 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags57, align 1
  %51 = and i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool60.not = icmp eq i8 %51, 0
  br i1 %tobool60.not, label %land.lhs.true56.if.else_crit_edge, label %land.lhs.true56.if.then61_crit_edge

land.lhs.true56.if.then61_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then61

land.lhs.true56.if.else_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then61:                                        ; preds = %land.lhs.true56.if.then61_crit_edge, %land.lhs.true.i.if.then61_crit_edge, %if.end47.if.then61_crit_edge
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr, i32 0, i32 1
  %52 = call ptr @memcpy(ptr %ta, ptr %h_source, i32 6)
  %flags65 = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 12
  %53 = ptrtoint ptr %flags65 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %flags65, align 1
  %55 = and i8 %54, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool68.not = icmp eq i8 %55, 0
  br i1 %tobool68.not, label %if.then61.if.end101_crit_edge, label %land.lhs.true69

if.then61.if.end101_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

land.lhs.true69:                                  ; preds = %if.then61
  %priority = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 6
  %56 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %priority, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %57)
  %cmp71 = icmp ult i8 %57, 8
  br i1 %cmp71, label %if.then73, label %land.lhs.true69.if.end101_crit_edge

land.lhs.true69.if.end101_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then73:                                        ; preds = %land.lhs.true69
  %call75 = call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef nonnull %ta) #5
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.then73.if.end80_crit_edge, label %if.then77

if.then73.if.end80_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then77:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %seq_num5 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %seq_num5, align 1
  %60 = call i16 @llvm.bswap.i16(i16 %59)
  %61 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %priority, align 1
  %idxprom = zext i8 %62 to i32
  %arrayidx = getelementptr %struct.mwifiex_sta_node, ptr %call75, i32 0, i32 6, i32 %idxprom
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %60, ptr %arrayidx, align 2
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.then73.if.end80_crit_edge
  %snr = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 8
  %64 = ptrtoint ptr %snr to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %snr, align 1
  %nf = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 9
  %66 = ptrtoint ptr %nf to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %nf, align 1
  call void @mwifiex_auto_tdls_update_peer_signal(ptr noundef %priv, ptr noundef nonnull %ta, i8 noundef signext %65, i8 noundef signext %67) #5
  br label %if.end101

if.else:                                          ; preds = %land.lhs.true56.if.else_crit_edge, %lor.lhs.false51.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -6400, i16 %5)
  %cmp84.not = icmp eq i16 %5, -6400
  br i1 %cmp84.not, label %if.else.if.end96_crit_edge, label %land.lhs.true86

if.else.if.end96_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

land.lhs.true86:                                  ; preds = %if.else
  %priority87 = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 6
  %68 = ptrtoint ptr %priority87 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %priority87, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %69)
  %cmp89 = icmp ult i8 %69, 8
  br i1 %cmp89, label %if.then91, label %land.lhs.true86.if.end96_crit_edge

land.lhs.true86.if.end96_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.then91:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #7
  %conv88 = zext i8 %69 to i32
  %arrayidx95 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 87, i32 %conv88
  %70 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %15, ptr %arrayidx95, align 2
  br label %if.end96

if.end96:                                         ; preds = %if.then91, %land.lhs.true86.if.end96_crit_edge, %if.else.if.end96_crit_edge
  %curr_bss_params98 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  %71 = call ptr @memcpy(ptr %ta, ptr %curr_bss_params98, i32 6)
  br label %if.end101

if.end101:                                        ; preds = %if.end96, %if.end80, %land.lhs.true69.if.end101_crit_edge, %if.then61.if.end101_crit_edge
  %priority102 = getelementptr inbounds %struct.rxpd, ptr %3, i32 0, i32 6
  %72 = ptrtoint ptr %priority102 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %priority102, align 1
  %conv103 = zext i8 %73 to i16
  %conv105 = trunc i16 %6 to i8
  %call106 = call i32 @mwifiex_11n_rx_reorder_pkt(ptr noundef %priv, i16 noundef zeroext %15, i16 noundef zeroext %conv103, ptr noundef nonnull %ta, i8 noundef zeroext %conv105, ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  %tobool107.not.not = xor i1 %tobool107.not, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 -6400, i16 %5)
  %cmp110 = icmp eq i16 %5, -6400
  %or.cond185 = select i1 %tobool107.not.not, i1 true, i1 %cmp110
  br i1 %or.cond185, label %if.then112, label %if.end101.if.end113_crit_edge

if.end101.if.end113_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

if.then112:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #5
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %if.end101.if.end113_crit_edge
  br i1 %tobool107.not, label %if.end113.cleanup_crit_edge, label %if.then115

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then115:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  %rx_dropped117 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 16, i32 6
  %74 = ptrtoint ptr %rx_dropped117 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_dropped117, align 8
  %inc118 = add i32 %75, 1
  store i32 %inc118, ptr %rx_dropped117, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then115, %if.end113.cleanup_crit_edge, %if.then45, %if.end19, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end19 ], [ 0, %if.then45 ], [ %call106, %if.then115 ], [ 0, %if.end113.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ta) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_mgmt_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_auto_tdls_update_peer_signal(ptr noundef, ptr noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11n_rx_reorder_pkt(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_rx.c", i32 144, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_rx.c", i32 172, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_rx.c", i32 210, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_rx.c", i32 221, i32 4}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
!18 = !{!"branch_weights", i32 2000, i32 1}
