; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/sta_event.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/sta_event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ie_types_mc_group_info = type <{ %struct.mwifiex_ie_types_header, i8, i8, i8, i8, i32, i32, %union.anon.159, i8, [0 x i8] }>
%union.anon.159 = type { i8 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.mwifiex_ie_types_btcoex_aggr_win_size = type { %struct.mwifiex_ie_types_header, i8, i8, i8, i8 }
%struct.mwifiex_ie_types_btcoex_scan_time = type { %struct.mwifiex_ie_types_header, i8, i8, i16, i16 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"info: handles disconnect event\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"info: previous SSID=%s, SSID len=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"info: current SSID=%s, SSID len=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"info: successfully disconnected from %pM: reason code %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unknown TLV in chan_info event\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"multi chan operation %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"started\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"over\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wrong tlv: tlvLen=%d,\09tlvBufLeft=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wrong tlv type: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Invalid bss_type bss_num\09in multi channel event\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tx_pause event while disconnected; bss_role=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wrong tlv: tlvLen=%d, tlvBufLeft=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@mwifiex_bt_coex_wlan_param_update_event.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, i8 0, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mwifiex\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mwifiex_bt_coex_wlan_param_update_event\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/marvell/mwifiex/sta_event.c\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"coex_scan=%d min_scan=%d coex_win=%d, tx_win=%d rx_win=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid EVENT: DUMMY_HOST_WAKEUP_SIGNAL, ignore it\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"event: LINK_SENSED\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"event: Deauthenticated\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"info: receive deauth event in wps session\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"event: Disassociated\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"info: receive disassoc event in wps session\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"event: Link lost\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"info: EVENT: SLEEP\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"info: EVENT: AWAKE\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"event: PPS/UAPSD mode activated\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"event: DS_AWAKE\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"event: HS_ACT_REQ\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"event: UNICAST MIC ERROR\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"event: MULTICAST MIC ERROR\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"event: ADHOC_BCN_LOST\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"event: BGS_REPORT\0A\00", [45 x i8] zeroinitializer }, align 32
@mwifiex_process_sta_event.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.33, ptr @.str.15, ptr @.str.34, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mwifiex_process_sta_event\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"event: BGS_STOPPED\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"event: PORT RELEASE\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"event: EXT_SCAN Report\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"event: WMM status changed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"event: Beacon RSSI_LOW\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"event: Beacon SNR_LOW\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"event: MAX_FAIL\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"event: Beacon RSSI_HIGH\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"event: Beacon SNR_HIGH\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"event: Data RSSI_LOW\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"event: Data SNR_LOW\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"event: Data RSSI_HIGH\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"event: Data SNR_HIGH\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"event: Link Quality\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"event: Pre-Beacon Lost\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"event: IBSS_COALESCED\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"event: IBSS_STA_CONNECT %pM\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"event: IBSS_STA_DISCONNECT %pM\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"event: ADDBA Request\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"event: DELBA Request\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"event:  BA Stream timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"event: AMSDU_AGGR_CTRL %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"event: tx_buf_size %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"event: WEP ICV error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"event: BW Change\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"event: HOSTWAKE_STAIE %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event: Remain on channel expired\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"event: Channel Switch Announcement\0A\00", [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"event: TX DATA PAUSE\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"event: multi-chan info\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"event: TX_STATUS Report\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"event: Channel Report\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"event: Radar detected\0A\00", [41 x i8] zeroinitializer }, align 32
@mwifiex_process_sta_event.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.33, ptr @.str.15, ptr @.str.67, i8 1, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"EVENT: BT coex wlan param update\0A\00", [62 x i8] zeroinitializer }, align 32
@mwifiex_process_sta_event.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.33, ptr @.str.15, ptr @.str.68, i8 1, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EVENT: RXBA_SYNC\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"event: firmware debug info\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"event: debug\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"event: unknown event id: %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sta tx_pause: %pM pause=%d, pkts=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"uap tx_pause: %pM pause=%d, pkts=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ibss peer capabilities:\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"management frame tlv not found!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"11n enabled!, max_amsdu : %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"11ac enabled!, max_amsdu : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid event length!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get sta entry!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tdls channel switch result :\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"status=0x%x, reason=0x%x cur_chan=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tdls start channel switch...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tdls chan switch stopped, reason=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"event is not on usb interface, ignore it\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vzalloc devdump data failure!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"receive end of transmission flag event!\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 16, i64 458, i64 459]
@__sancov_gen_cov_switch_values.90 = internal global [54 x i64] [i64 52, i64 32, i64 1, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 13, i64 14, i64 16, i64 17, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 36, i64 37, i64 38, i64 39, i64 40, i64 43, i64 49, i64 51, i64 52, i64 55, i64 66, i64 70, i64 71, i64 72, i64 77, i64 80, i64 82, i64 83, i64 84, i64 85, i64 88, i64 89, i64 95, i64 99, i64 101, i64 106, i64 115, i64 116, i64 118]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 45, i64 191]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 16, i64 3, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 145, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 206, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 210, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 232, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 432, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 438, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 449, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 454, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 467, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 503, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 517, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 588, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 715, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 719, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 726, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 728, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 741, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 743, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 756, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 766, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 774, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 780, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 813, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 819, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 825, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 832, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 842, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 851, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 857, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 864, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 869, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 881, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 893, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 896, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 899, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 908, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 911, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 914, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 917, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 920, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 923, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 926, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 929, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 932, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 939, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 959, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 971, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 977, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 981, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 989, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 994, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 999, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1003, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1007, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1012, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1024, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1039, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1044, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1049, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1054, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1059, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1064, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1072, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1078, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1083, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1086, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 385, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 351, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 45, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 61, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 81, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 107, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 266, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 272, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 285, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 286, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 329, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 333, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 603, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 614, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.357 = private constant [52 x i8] c"../drivers/net/wireless/marvell/mwifiex/sta_event.c\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 639, i32 3 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_reset_connect_state(ptr noundef %priv, i16 noundef zeroext %reason_code, i1 noundef zeroext %from_ap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str) #5
  %4 = ptrtoint ptr %media_connected to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %media_connected, align 8
  %scan_block = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 114
  %5 = ptrtoint ptr %scan_block to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %scan_block, align 1
  %port_open = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 9
  %6 = ptrtoint ptr %port_open to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %port_open, align 1
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bss_role, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_cap_info, align 4
  %and5 = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end12_crit_edge, label %if.then7

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7:                                         ; preds = %land.lhs.true
  tail call void @mwifiex_disable_all_tdls_links(ptr noundef %priv) #5
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %auto_tdls = getelementptr inbounds %struct.mwifiex_adapter, ptr %15, i32 0, i32 151
  %16 = ptrtoint ptr %auto_tdls to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %auto_tdls, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then10

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mwifiex_clean_auto_tdls(ptr noundef %priv) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  tail call void @mwifiex_clean_txrx(ptr noundef %priv) #5
  %data_rssi_last = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 37
  %rxpd_rate = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 28
  %18 = ptrtoint ptr %rxpd_rate to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %rxpd_rate, align 1
  %rxpd_htinfo = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 27
  %19 = ptrtoint ptr %rxpd_htinfo to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %rxpd_htinfo, align 2
  %sec_info = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60
  %wpa_ie_len = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 64
  %20 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %wpa_ie_len, align 2
  %wapi_ie_len = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 70
  %21 = ptrtoint ptr %wapi_ie_len to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %wapi_ie_len, align 2
  %encryption_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 7
  %22 = ptrtoint ptr %encryption_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %encryption_mode, align 4
  %is_data_rate_auto = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 33
  %23 = call ptr @memset(ptr %data_rssi_last, i32 0, i32 16)
  %24 = ptrtoint ptr %sec_info to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %sec_info, align 4
  %25 = ptrtoint ptr %is_data_rate_auto to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %is_data_rate_auto, align 4
  %data_rate = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 32
  %26 = ptrtoint ptr %data_rate to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %data_rate, align 8
  %assoc_resp_ht_param = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 162
  %27 = ptrtoint ptr %assoc_resp_ht_param to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %assoc_resp_ht_param, align 4
  %ht_param_present = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 163
  %28 = ptrtoint ptr %ht_param_present to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %ht_param_present, align 1
  %hist_data = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 149
  %29 = ptrtoint ptr %hist_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hist_data, align 8
  %tobool28.not = icmp eq ptr %30, null
  br i1 %tobool28.not, label %if.end12.if.end30_crit_edge, label %if.then29

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then29:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mwifiex_hist_data_reset(ptr noundef %priv) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end12.if.end30_crit_edge
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %31 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bss_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp31 = icmp eq i32 %32, 1
  br i1 %cmp31, label %if.then33, label %if.end30.if.end34_crit_edge

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %adhoc_state = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 58
  %33 = ptrtoint ptr %adhoc_state to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %adhoc_state, align 2
  %adhoc_is_link_sensed = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 57
  %34 = ptrtoint ptr %adhoc_is_link_sensed to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %adhoc_is_link_sensed, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %prev_ssid = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 47
  %ssid_len = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 47, i32 1
  %35 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ssid_len, align 8
  %conv36 = zext i8 %36 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.1, ptr noundef %prev_ssid, i32 noundef %conv36) #5
  %curr_bss_params = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  %ssid37 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 1
  %ssid_len43 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %ssid_len43 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ssid_len43, align 2
  %conv44 = zext i8 %38 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.2, ptr noundef %ssid37, i32 noundef %conv44) #5
  %39 = call ptr @memcpy(ptr %prev_ssid, ptr %ssid37, i32 33)
  %prev_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 48
  %40 = call ptr @memcpy(ptr %prev_bssid, ptr %curr_bss_params, i32 6)
  %41 = call ptr @memset(ptr %curr_bss_params, i32 0, i32 280)
  %tx_lock_flag = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %42 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %tx_lock_flag, align 4
  %pps_uapsd_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 104
  %43 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %pps_uapsd_mode, align 2
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 12
  %44 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %work_flags, align 4
  %46 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool54.not = icmp eq i32 %46, 0
  br i1 %tobool54.not, label %if.end34.if.end58_crit_edge, label %land.lhs.true55

if.end34.if.end58_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

land.lhs.true55:                                  ; preds = %if.end34
  %curr_cmd = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 60
  %47 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %curr_cmd, align 4
  %tobool56.not = icmp eq ptr %48, null
  br i1 %tobool56.not, label %land.lhs.true55.if.end58_crit_edge, label %land.lhs.true55.cleanup_crit_edge

land.lhs.true55.cleanup_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true55.if.end58_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true55.if.end58_crit_edge, %if.end34.if.end58_crit_edge
  %49 = ptrtoint ptr %media_connected to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %media_connected, align 8
  %cfg_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 112
  %conv61 = zext i16 %reason_code to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %cfg_bssid, i32 noundef %conv61) #5
  %50 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bss_mode, align 8
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %51, label %if.end58.if.end71_crit_edge [
    i32 2, label %if.end58.if.then69_crit_edge
    i32 8, label %if.end58.if.then69_crit_edge154
  ]

if.end58.if.then69_crit_edge154:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then69

if.end58.if.then69_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then69

if.end58.if.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then69:                                        ; preds = %if.end58.if.then69_crit_edge, %if.end58.if.then69_crit_edge154
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %53 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %netdev, align 4
  %lnot = xor i1 %from_ap, true
  tail call void @cfg80211_disconnected(ptr noundef %54, i16 noundef zeroext %reason_code, ptr noundef null, i32 noundef 0, i1 noundef zeroext %lnot, i32 noundef 3264) #5
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end58.if.end71_crit_edge
  %55 = call ptr @memset(ptr %cfg_bssid, i32 0, i32 6)
  %netdev74 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %56 = ptrtoint ptr %netdev74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %netdev74, align 4
  tail call void @mwifiex_stop_net_dev_queue(ptr noundef %57, ptr noundef %1) #5
  %58 = ptrtoint ptr %netdev74 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %netdev74, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %state.i, align 4
  %62 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i = icmp eq i32 %62, 0
  br i1 %tobool.not.i, label %if.then77, label %if.end71.if.end79_crit_edge

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.then77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @netif_carrier_off(ptr noundef %59) #5
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end71.if.end79_crit_edge
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 8
  %fw_cap_info81 = getelementptr inbounds %struct.mwifiex_adapter, ptr %64, i32 0, i32 47
  %65 = ptrtoint ptr %fw_cap_info81 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fw_cap_info81, align 4
  %and82 = and i32 %66, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end79.cleanup_crit_edge, label %if.end85

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %call86 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 271, i16 noundef zeroext 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.end79.cleanup_crit_edge, %land.lhs.true55.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_disable_all_tdls_links(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_clean_auto_tdls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_clean_txrx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_hist_data_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_stop_net_dev_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_process_multi_chan_event(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %event_skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %event_skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -18687, i16 %5)
  %cmp.not = icmp eq i16 %5, -18687
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %event_skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %conv = add i32 %7, 65532
  %conv4 = and i32 %conv, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv4)
  %cmp5 = icmp ult i32 %conv4, 6
  br i1 %cmp5, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %status = getelementptr i8, ptr %3, i32 8
  %8 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool = icmp ne i16 %9, 0
  %usb_mc_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 160
  %frombool = zext i1 %tobool to i8
  %10 = ptrtoint ptr %usb_mc_status to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %usb_mc_status, align 1
  %cond = select i1 %tobool, ptr @.str.6, ptr @.str.7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond) #5
  %conv12 = add i32 %7, 65526
  %conv13129 = and i32 %conv12, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv13129)
  %cmp14130 = icmp ugt i32 %conv13129, 3
  br i1 %cmp14130, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %tlv_buffer = getelementptr i8, ptr %3, i32 10
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %conv13133 = phi i32 [ %conv13129, %while.body.lr.ph ], [ %conv13, %for.end.while.body_crit_edge ]
  %tlv.0131 = phi ptr [ %tlv_buffer, %while.body.lr.ph ], [ %add.ptr66, %for.end.while.body_crit_edge ]
  %len17 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.0131, i32 0, i32 1
  %11 = ptrtoint ptr %len17 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %len17, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv18 = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv18, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13133, i32 %add)
  %cmp20 = icmp ult i32 %conv13133, %add
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %conv18, i32 noundef %conv13133) #5
  br label %while.end

if.end25:                                         ; preds = %while.body
  %14 = ptrtoint ptr %tlv.0131 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %tlv.0131, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -18431, i16 %15)
  %cmp27.not = icmp eq i16 %15, -18431
  br i1 %cmp27.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv26 = zext i16 %16 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %conv26) #5
  br label %while.end

if.end31:                                         ; preds = %if.end25
  %intf_num32 = getelementptr inbounds %struct.mwifiex_ie_types_mc_group_info, ptr %tlv.0131, i32 0, i32 8
  %17 = ptrtoint ptr %intf_num32 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %intf_num32, align 1
  %conv33 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp34127.not = icmp eq i8 %18, 0
  br i1 %cmp34127.not, label %if.end31.for.end_crit_edge, label %for.body.lr.ph

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end31
  %hid_num = getelementptr inbounds %struct.mwifiex_ie_types_mc_group_info, ptr %tlv.0131, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_ie_types_mc_group_info, ptr %tlv.0131, i32 0, i32 9, i32 %i.0128
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = lshr i8 %20, 4
  %and = and i8 %20, 15
  %22 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp36.not.i = icmp eq i8 %23, 0
  br i1 %cmp36.not.i, label %for.body.if.then43_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.if.then43_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 4, i32 %i.037.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %bss_num4.i = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %bss_num4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bss_num4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %and)
  %cmp7.i = icmp eq i8 %27, %and
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %bss_type11.i = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %bss_type11.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bss_type11.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %21)
  %cmp14.i = icmp eq i8 %29, %21
  br i1 %cmp14.i, label %if.end44, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.if.then43_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.then43_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

if.then43:                                        ; preds = %for.inc.i.if.then43_crit_edge, %for.body.if.then43_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.10) #5
  br label %for.inc

if.end44:                                         ; preds = %land.lhs.true.i
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp46 = icmp eq i8 %31, 2
  br i1 %cmp46, label %if.then48, label %if.end44.for.inc_crit_edge

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then48:                                        ; preds = %if.end44
  %32 = ptrtoint ptr %hid_num to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hid_num, align 1
  %34 = and i8 %33, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %switch = icmp eq i8 %34, 2
  br i1 %switch, label %if.then56, label %if.then48.for.inc_crit_edge

if.then48.for.inc_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then56:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  %usb_port = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 10
  %35 = ptrtoint ptr %usb_port to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %33, ptr %usb_port, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then56, %if.then48.for.inc_crit_edge, %if.end44.for.inc_crit_edge, %if.then43
  %inc = add nuw nsw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc, %conv33
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end31.for.end_crit_edge
  %sub62 = sub nsw i32 %conv13133, %add
  %add.ptr65 = getelementptr i8, ptr %tlv.0131, i32 4
  %add.ptr66 = getelementptr i8, ptr %add.ptr65, i32 %conv18
  %conv13 = and i32 %sub62, 65535
  %cmp14 = icmp ugt i32 %conv13, 3
  br i1 %cmp14, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %for.end.while.end_crit_edge, %if.then29, %if.then22, %if.end.while.end_crit_edge
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp69 = icmp eq i8 %37, 2
  br i1 %cmp69, label %if.then71, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then71:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %tx_lock_flag = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %38 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %tx_lock_flag, align 4
  %usb_mc_setup = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 161
  %39 = ptrtoint ptr %usb_mc_setup to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %usb_mc_setup, align 2
  tail call void @mwifiex_multi_chan_resync(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %while.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_multi_chan_resync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_process_tx_pause_event(ptr noundef %priv, ptr nocapture noundef readonly %event_skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bss_role, align 1
  %conv = zext i8 %5 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %conv) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %event_skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %sub = add i32 %7, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp67 = icmp sgt i32 %sub, 3
  br i1 %cmp67, label %while.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %event_skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %bss_role14 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %netdev.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %sta_list_spinlock.i62 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 80
  %port_open6.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 9
  %cfg_bssid.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 112
  %add.ptr1.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 112, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %while.body.lr.ph
  %tlv_buf_left.069 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub23, %if.end20.while.body_crit_edge ]
  %.pn68 = phi ptr [ %9, %while.body.lr.ph ], [ %add.ptr25, %if.end20.while.body_crit_edge ]
  %tlv.070 = getelementptr i8, ptr %.pn68, i32 4
  %len2 = getelementptr i8, ptr %.pn68, i32 6
  %10 = ptrtoint ptr %len2 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %len2, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv3 = zext i16 %12 to i32
  %add = add nuw nsw i32 %conv3, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tlv_buf_left.069, i32 %add)
  %cmp4 = icmp ult i32 %tlv_buf_left.069, %add
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %conv3, i32 noundef %tlv_buf_left.069) #5
  br label %cleanup

if.end9:                                          ; preds = %while.body
  %15 = ptrtoint ptr %tlv.070 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %tlv.070, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27647, i16 %16)
  %cmp11 = icmp eq i16 %16, -27647
  br i1 %cmp11, label %if.then13, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then13:                                        ; preds = %if.end9
  %17 = ptrtoint ptr %bss_role14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bss_role14, align 1
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp16 = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %peermac.i = getelementptr i8, ptr %.pn68, i32 8
  %tx_pause.i = getelementptr i8, ptr %.pn68, i32 14
  %22 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tx_pause.i, align 1
  %conv.i = zext i8 %23 to i32
  %pkt_cnt.i = getelementptr i8, ptr %.pn68, i32 15
  %24 = ptrtoint ptr %pkt_cnt.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pkt_cnt.i, align 1
  %conv1.i = zext i8 %25 to i32
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then13
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 32, ptr noundef nonnull @.str.72, ptr noundef %peermac.i, i32 noundef %conv.i, i32 noundef %conv1.i) #5
  %26 = ptrtoint ptr %peermac.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %peermac.i, align 4
  %28 = ptrtoint ptr %cfg_bssid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cfg_bssid.i, align 4
  %xor.i.i = xor i32 %29, %27
  %add.ptr.i.i = getelementptr i8, ptr %.pn68, i32 12
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i, align 2
  %32 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %33, %31
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %if.else8.i

if.then.i:                                        ; preds = %if.then18
  %34 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tx_pause.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %port_open6.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %port_open6.i, align 1
  br label %if.end20

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %port_open6.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %port_open6.i, align 1
  br label %if.end20

if.else8.i:                                       ; preds = %if.then18
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %fw_cap_info.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %39, i32 0, i32 47
  %40 = ptrtoint ptr %fw_cap_info.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fw_cap_info.i, align 4
  %and.i = and i32 %41, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.else8.i.if.end20_crit_edge, label %if.end12.i

if.else8.i.if.end20_crit_edge:                    ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end12.i:                                       ; preds = %if.else8.i
  %call15.i = tail call i32 @mwifiex_get_tdls_link_status(ptr noundef %priv, ptr noundef %peermac.i) #5
  %conv16.i = trunc i32 %call15.i to i8
  %42 = zext i8 %conv16.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %conv16.i, label %if.end12.i.if.end20_crit_edge [
    i8 2, label %if.end12.i.if.then19.i_crit_edge
    i8 5, label %if.end12.i.if.then19.i_crit_edge81
    i8 6, label %if.end12.i.if.then19.i_crit_edge82
    i8 7, label %if.end12.i.if.then19.i_crit_edge83
  ]

if.end12.i.if.then19.i_crit_edge83:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19.i

if.end12.i.if.then19.i_crit_edge82:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19.i

if.end12.i.if.then19.i_crit_edge81:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19.i

if.end12.i.if.then19.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19.i

if.end12.i.if.end20_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then19.i:                                      ; preds = %if.end12.i.if.then19.i_crit_edge, %if.end12.i.if.then19.i_crit_edge81, %if.end12.i.if.then19.i_crit_edge82, %if.end12.i.if.then19.i_crit_edge83
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_list_spinlock.i62) #5
  %call22.i = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %peermac.i) #5
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %if.then19.i.if.else36.i_crit_edge, label %land.lhs.true.i

if.then19.i.if.else36.i_crit_edge:                ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else36.i

land.lhs.true.i:                                  ; preds = %if.then19.i
  %tx_pause24.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call22.i, i32 0, i32 12
  %43 = ptrtoint ptr %tx_pause24.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tx_pause24.i, align 8
  %45 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx_pause.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %46)
  %cmp.not.i = icmp eq i8 %44, %46
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else36.i_crit_edge, label %if.then29.i

land.lhs.true.i.if.else36.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else36.i

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %tx_pause24.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %tx_pause24.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock.i62) #5
  %48 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %tx_pause.i, align 1
  tail call void @mwifiex_update_ralist_tx_pause(ptr noundef %priv, ptr noundef %peermac.i, i8 noundef zeroext %49) #5
  br label %if.end20

if.else36.i:                                      ; preds = %land.lhs.true.i.if.else36.i_crit_edge, %if.then19.i.if.else36.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock.i62) #5
  br label %if.end20

if.else:                                          ; preds = %if.then13
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 32, ptr noundef nonnull @.str.73, ptr noundef %peermac.i, i32 noundef %conv.i, i32 noundef %conv1.i) #5
  %50 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %netdev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 86
  %52 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_addr.i, align 64
  %54 = ptrtoint ptr %peermac.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %peermac.i, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %53, align 4
  %xor.i.i52 = xor i32 %57, %55
  %add.ptr.i.i53 = getelementptr i8, ptr %.pn68, i32 12
  %58 = ptrtoint ptr %add.ptr.i.i53 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i.i53, align 2
  %add.ptr1.i.i54 = getelementptr i8, ptr %53, i32 4
  %60 = ptrtoint ptr %add.ptr1.i.i54 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr1.i.i54, align 2
  %xor37.i.i55 = xor i16 %61, %59
  %xor3.i.i56 = zext i16 %xor37.i.i55 to i32
  %or.i.i57 = or i32 %xor.i.i52, %xor3.i.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i57)
  %cmp.i.i58 = icmp eq i32 %or.i.i57, 0
  br i1 %cmp.i.i58, label %if.then.i60, label %if.else7.i

if.then.i60:                                      ; preds = %if.else
  %62 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %tx_pause.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i59 = icmp eq i8 %63, 0
  br i1 %tobool.not.i59, label %if.else.i61, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %port_open6.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %port_open6.i, align 1
  br label %if.end20

if.else.i61:                                      ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %port_open6.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %port_open6.i, align 1
  br label %if.end20

if.else7.i:                                       ; preds = %if.else
  %66 = and i32 %55, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.i.not.i = icmp eq i32 %66, 0
  br i1 %tobool.i.not.i, label %if.else15.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %tx_pause.i, align 1
  tail call void @mwifiex_update_ralist_tx_pause(ptr noundef %priv, ptr noundef %peermac.i, i8 noundef zeroext %68) #5
  br label %if.end20

if.else15.i:                                      ; preds = %if.else7.i
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_list_spinlock.i62) #5
  %call18.i = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %peermac.i) #5
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.else15.i.if.else32.i_crit_edge, label %land.lhs.true.i64

if.else15.i.if.else32.i_crit_edge:                ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else32.i

land.lhs.true.i64:                                ; preds = %if.else15.i
  %tx_pause20.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call18.i, i32 0, i32 12
  %69 = ptrtoint ptr %tx_pause20.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %tx_pause20.i, align 8
  %71 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %tx_pause.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %72)
  %cmp.not.i63 = icmp eq i8 %70, %72
  br i1 %cmp.not.i63, label %land.lhs.true.i64.if.else32.i_crit_edge, label %if.then25.i

land.lhs.true.i64.if.else32.i_crit_edge:          ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else32.i

if.then25.i:                                      ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %tx_pause20.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %tx_pause20.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock.i62) #5
  %74 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %tx_pause.i, align 1
  tail call void @mwifiex_update_ralist_tx_pause(ptr noundef %priv, ptr noundef %peermac.i, i8 noundef zeroext %75) #5
  br label %if.end20

if.else32.i:                                      ; preds = %land.lhs.true.i64.if.else32.i_crit_edge, %if.else15.i.if.else32.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock.i62) #5
  br label %if.end20

if.end20:                                         ; preds = %if.else32.i, %if.then25.i, %if.then11.i, %if.else.i61, %if.then5.i, %if.else36.i, %if.then29.i, %if.end12.i.if.end20_crit_edge, %if.else8.i.if.end20_crit_edge, %if.else.i, %if.then6.i, %if.end9.if.end20_crit_edge
  %sub23 = sub nsw i32 %tlv_buf_left.069, %add
  %add.ptr25 = getelementptr i8, ptr %tlv.070, i32 %conv3
  %cmp = icmp sgt i32 %sub23, 3
  br i1 %cmp, label %if.end20.while.body_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup:                                          ; preds = %if.end20.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_bt_coex_wlan_param_update_event(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %event_skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %event_skb, i32 0, i32 6
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  %sub = add i32 %3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp59 = icmp ugt i32 %sub, 3
  br i1 %cmp59, label %while.body.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

while.body.lr.ph:                                 ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %event_skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %coex_scan9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 152
  %coex_min_scan_time = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 153
  %coex_max_scan_time = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 154
  %coex_win_size7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 155
  %coex_tx_win_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 156
  %coex_rx_win_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 157
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %cur_ptr.061 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr17, %sw.epilog.while.body_crit_edge ]
  %len.060 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub14, %sw.epilog.while.body_crit_edge ]
  %len3 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %cur_ptr.061, i32 0, i32 1
  %6 = ptrtoint ptr %len3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %len3, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %add = add nuw nsw i32 %conv, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.060, i32 %add)
  %cmp4 = icmp ult i32 %len.060, %add
  br i1 %cmp4, label %while.body.do.body_crit_edge, label %if.end

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end:                                           ; preds = %while.body
  %9 = ptrtoint ptr %cur_ptr.061 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %cur_ptr.061, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %11, label %if.end.sw.epilog_crit_edge [
    i16 458, label %sw.bb
    i16 459, label %sw.bb8
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %coex_win_size = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_aggr_win_size, ptr %cur_ptr.061, i32 0, i32 1
  %13 = ptrtoint ptr %coex_win_size to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %coex_win_size, align 1
  %15 = ptrtoint ptr %coex_win_size7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %coex_win_size7, align 4
  %tx_win_size = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_aggr_win_size, ptr %cur_ptr.061, i32 0, i32 2
  %16 = ptrtoint ptr %tx_win_size to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_win_size, align 1
  %18 = ptrtoint ptr %coex_tx_win_size to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %coex_tx_win_size, align 1
  %rx_win_size = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_aggr_win_size, ptr %cur_ptr.061, i32 0, i32 3
  %19 = ptrtoint ptr %rx_win_size to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rx_win_size, align 1
  %21 = ptrtoint ptr %coex_rx_win_size to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %coex_rx_win_size, align 2
  tail call void @mwifiex_coex_ampdu_rxwinsize(ptr noundef %1) #5
  tail call void @mwifiex_update_ampdu_txwinsize(ptr noundef %1) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %coex_scan = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_scan_time, ptr %cur_ptr.061, i32 0, i32 1
  %22 = ptrtoint ptr %coex_scan to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %coex_scan, align 1
  %24 = ptrtoint ptr %coex_scan9 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %coex_scan9, align 1
  %min_scan_time = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_scan_time, ptr %cur_ptr.061, i32 0, i32 3
  %25 = ptrtoint ptr %min_scan_time to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %min_scan_time, align 1
  %27 = lshr i16 %26, 8
  %conv10 = trunc i16 %27 to i8
  %28 = ptrtoint ptr %coex_min_scan_time to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv10, ptr %coex_min_scan_time, align 2
  %max_scan_time = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_scan_time, ptr %cur_ptr.061, i32 0, i32 4
  %29 = ptrtoint ptr %max_scan_time to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %max_scan_time, align 1
  %31 = lshr i16 %30, 8
  %conv11 = trunc i16 %31 to i8
  %32 = ptrtoint ptr %coex_max_scan_time to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv11, ptr %coex_max_scan_time, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb, %if.end.sw.epilog_crit_edge
  %sub14 = sub i32 %len.060, %add
  %add.ptr17 = getelementptr i8, ptr %cur_ptr.061, i32 %add
  %cmp = icmp ugt i32 %sub14, 3
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %while.body.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_bt_coex_wlan_param_update_event.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_bt_coex_wlan_param_update_event, %if.then20)) #5
          to label %do.end [label %if.then20], !srcloc !183

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %coex_scan21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 152
  %35 = ptrtoint ptr %coex_scan21 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %coex_scan21, align 1
  %conv22 = zext i8 %36 to i32
  %coex_min_scan_time23 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 153
  %37 = ptrtoint ptr %coex_min_scan_time23 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %coex_min_scan_time23, align 2
  %conv24 = zext i8 %38 to i32
  %coex_win_size25 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 155
  %39 = ptrtoint ptr %coex_win_size25 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %coex_win_size25, align 4
  %conv26 = zext i8 %40 to i32
  %coex_tx_win_size27 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 156
  %41 = ptrtoint ptr %coex_tx_win_size27 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %coex_tx_win_size27, align 1
  %conv28 = zext i8 %42 to i32
  %coex_rx_win_size29 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 157
  %43 = ptrtoint ptr %coex_rx_win_size29 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %coex_rx_win_size29, align 2
  %conv30 = zext i8 %44 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mwifiex_bt_coex_wlan_param_update_event.__UNIQUE_ID_ddebug488, ptr noundef %34, ptr noundef nonnull @.str.16, i32 noundef %conv22, i32 noundef %conv24, i32 noundef %conv26, i32 noundef %conv28, i32 noundef %conv30) #5
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_coex_ampdu_rxwinsize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_update_ampdu_txwinsize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_sta_event(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %ibss_sta_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %event_cause = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %event_cause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_cause, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ibss_sta_addr) #5
  %4 = getelementptr inbounds [6 x i8], ptr %ibss_sta_addr, i32 0, i32 4
  %5 = call ptr @memset(ptr %ibss_sta_addr, i32 255, i32 6)
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb2
    i32 8, label %sw.bb5
    i32 9, label %sw.bb12
    i32 3, label %sw.bb27
    i32 11, label %sw.bb37
    i32 10, label %sw.bb38
    i32 16, label %sw.bb86
    i32 71, label %sw.bb93
    i32 14, label %sw.bb95
    i32 13, label %sw.bb98
    i32 6, label %entry.cleanup_crit_edge
    i32 7, label %entry.cleanup_crit_edge539
    i32 17, label %sw.bb103
    i32 24, label %sw.bb110
    i32 101, label %do.body
    i32 43, label %sw.bb123
    i32 88, label %sw.bb125
    i32 23, label %sw.bb136
    i32 25, label %sw.bb138
    i32 26, label %sw.bb141
    i32 27, label %sw.bb142
    i32 28, label %sw.bb143
    i32 29, label %sw.bb147
    i32 36, label %sw.bb148
    i32 37, label %sw.bb149
    i32 38, label %sw.bb150
    i32 39, label %sw.bb151
    i32 40, label %sw.bb152
    i32 49, label %sw.bb153
    i32 30, label %sw.bb154
    i32 32, label %sw.bb156
    i32 33, label %sw.bb188
    i32 51, label %sw.bb207
    i32 52, label %sw.bb211
    i32 55, label %sw.bb214
    i32 66, label %sw.bb217
    i32 70, label %sw.bb232
    i32 72, label %sw.bb233
    i32 77, label %sw.bb234
    i32 95, label %sw.bb235
    i32 80, label %sw.bb239
    i32 82, label %sw.bb246
    i32 85, label %sw.bb249
    i32 106, label %sw.bb251
    i32 116, label %sw.bb253
    i32 84, label %sw.bb256
    i32 83, label %sw.bb259
    i32 118, label %do.body263
    i32 89, label %do.body285
    i32 115, label %sw.bb306
    i32 99, label %sw.bb308
  ]

entry.cleanup_crit_edge539:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.17) #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.18) #5
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %sw.bb2.if.end_crit_edge, label %if.then

sw.bb2.if.end_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @netif_carrier_on(ptr noundef %8) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb2.if.end_crit_edge
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  tail call void @mwifiex_wake_up_net_dev_queue(ptr noundef %13, ptr noundef %1) #5
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.19) #5
  %wps = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 113
  %14 = ptrtoint ptr %wps to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wps, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.20) #5
  br label %cleanup

if.end7:                                          ; preds = %sw.bb5
  %num_event_deauth = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 3
  %16 = ptrtoint ptr %num_event_deauth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_event_deauth, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %num_event_deauth, align 4
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %18 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %event_body = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  %20 = ptrtoint ptr %event_body to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %event_body, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #5
  tail call void @mwifiex_reset_connect_state(ptr noundef %priv, i16 noundef zeroext %22, i1 noundef zeroext true)
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.21) #5
  %wps13 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 113
  %23 = ptrtoint ptr %wps13 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %wps13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool15.not = icmp eq i8 %24, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.22) #5
  br label %cleanup

if.end17:                                         ; preds = %sw.bb12
  %num_event_disassoc = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 4
  %25 = ptrtoint ptr %num_event_disassoc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_event_disassoc, align 4
  %inc19 = add i32 %26, 1
  store i32 %inc19, ptr %num_event_disassoc, align 4
  %media_connected20 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %27 = ptrtoint ptr %media_connected20 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %media_connected20, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool21.not = icmp eq i8 %28, 0
  br i1 %tobool21.not, label %if.end17.cleanup_crit_edge, label %if.then22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %event_body23 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  %29 = ptrtoint ptr %event_body23 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %event_body23, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #5
  tail call void @mwifiex_reset_connect_state(ptr noundef %priv, i16 noundef zeroext %31, i1 noundef zeroext true)
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.23) #5
  %num_event_link_lost = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 5
  %32 = ptrtoint ptr %num_event_link_lost to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_event_link_lost, align 4
  %inc29 = add i32 %33, 1
  store i32 %inc29, ptr %num_event_link_lost, align 4
  %media_connected30 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %34 = ptrtoint ptr %media_connected30 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %media_connected30, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool31.not = icmp eq i8 %35, 0
  br i1 %tobool31.not, label %sw.bb27.cleanup_crit_edge, label %if.then32

sw.bb27.cleanup_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then32:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  %event_body33 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  %36 = ptrtoint ptr %event_body33 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %event_body33, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #5
  tail call void @mwifiex_reset_connect_state(ptr noundef %priv, i16 noundef zeroext %38, i1 noundef zeroext true)
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.24) #5
  %ps_state = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 90
  %39 = ptrtoint ptr %ps_state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %ps_state, align 4
  tail call void @mwifiex_check_ps_cond(ptr noundef %1) #5
  br label %cleanup

sw.bb38:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.25) #5
  %pps_uapsd_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 104
  %40 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %pps_uapsd_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool39.not = icmp eq i16 %41, 0
  br i1 %tobool39.not, label %land.lhs.true, label %if.end51.thread

if.end51.thread:                                  ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  %tx_lock_flag530 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %42 = ptrtoint ptr %tx_lock_flag530 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %tx_lock_flag530, align 4
  br label %land.lhs.true55

land.lhs.true:                                    ; preds = %sw.bb38
  %port_open = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 9
  %43 = ptrtoint ptr %port_open to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %port_open, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool40.not = icmp eq i8 %44, 0
  br i1 %tobool40.not, label %lor.lhs.false, label %land.lhs.true.land.lhs.true42_crit_edge

land.lhs.true.land.lhs.true42_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true42

lor.lhs.false:                                    ; preds = %land.lhs.true
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %45 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bss_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp = icmp eq i32 %46, 1
  br i1 %cmp, label %lor.lhs.false.land.lhs.true42_crit_edge, label %lor.lhs.false.if.end51_crit_edge

lor.lhs.false.if.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

lor.lhs.false.land.lhs.true42_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true42

land.lhs.true42:                                  ; preds = %lor.lhs.false.land.lhs.true42_crit_edge, %land.lhs.true.land.lhs.true42_crit_edge
  %media_connected43 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %47 = ptrtoint ptr %media_connected43 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %media_connected43, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool45.not = icmp eq i8 %48, 0
  br i1 %tobool45.not, label %land.lhs.true42.if.end51_crit_edge, label %land.lhs.true46

land.lhs.true42.if.end51_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

land.lhs.true46:                                  ; preds = %land.lhs.true42
  %sleep_period = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 88
  %49 = ptrtoint ptr %sleep_period to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sleep_period, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool48.not = icmp eq i16 %50, 0
  br i1 %tobool48.not, label %land.lhs.true46.if.end51_crit_edge, label %if.then49

land.lhs.true46.if.end51_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then49:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %pps_uapsd_mode, align 2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.26) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %land.lhs.true46.if.end51_crit_edge, %land.lhs.true42.if.end51_crit_edge, %lor.lhs.false.if.end51_crit_edge
  %52 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_load2_noabort(i32 %52)
  %.pr = load i16, ptr %pps_uapsd_mode, align 2
  %tx_lock_flag = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %53 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %tx_lock_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool54.not = icmp eq i16 %.pr, 0
  br i1 %tobool54.not, label %if.end51.if.end80_crit_edge, label %if.end51.land.lhs.true55_crit_edge

if.end51.land.lhs.true55_crit_edge:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true55

if.end51.if.end80_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

land.lhs.true55:                                  ; preds = %if.end51.land.lhs.true55_crit_edge, %if.end51.thread
  %gen_null_pkt = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 103
  %54 = ptrtoint ptr %gen_null_pkt to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %gen_null_pkt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool57.not = icmp eq i16 %55, 0
  br i1 %tobool57.not, label %land.lhs.true55.if.end80_crit_edge, label %if.then58

land.lhs.true55.if.end80_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then58:                                        ; preds = %land.lhs.true55
  %call59 = tail call zeroext i8 @mwifiex_check_last_packet_indication(ptr noundef %priv) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call59)
  %tobool60.not = icmp eq i8 %call59, 0
  br i1 %tobool60.not, label %if.then58.if.end80_crit_edge, label %if.then61

if.then58.if.end80_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then61:                                        ; preds = %if.then58
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 53
  %56 = ptrtoint ptr %data_sent to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %data_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool63.not = icmp eq i8 %57, 0
  br i1 %tobool63.not, label %lor.lhs.false64, label %if.then61.if.then70_crit_edge

if.then61.if.then70_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then70

lor.lhs.false64:                                  ; preds = %if.then61
  %is_port_ready = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 18, i32 27
  %58 = ptrtoint ptr %is_port_ready to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %is_port_ready, align 4
  %tobool65.not = icmp eq ptr %59, null
  br i1 %tobool65.not, label %lor.lhs.false64.if.end73_crit_edge, label %land.lhs.true66

lor.lhs.false64.if.end73_crit_edge:               ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

land.lhs.true66:                                  ; preds = %lor.lhs.false64
  %call69 = tail call zeroext i1 %59(ptr noundef %priv) #5
  br i1 %call69, label %land.lhs.true66.if.end73_crit_edge, label %land.lhs.true66.if.then70_crit_edge

land.lhs.true66.if.then70_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then70

land.lhs.true66.if.end73_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

if.then70:                                        ; preds = %land.lhs.true66.if.then70_crit_edge, %if.then61.if.then70_crit_edge
  %ps_state71 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 90
  %60 = ptrtoint ptr %ps_state71 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %ps_state71, align 4
  %pm_wakeup_card_req = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 102
  %61 = ptrtoint ptr %pm_wakeup_card_req to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %pm_wakeup_card_req, align 2
  %pm_wakeup_fw_try = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 105
  %62 = ptrtoint ptr %pm_wakeup_fw_try to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %pm_wakeup_fw_try, align 4
  %wakeup_timer = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 106
  %call72 = tail call i32 @del_timer(ptr noundef %wakeup_timer) #5
  br label %cleanup

if.end73:                                         ; preds = %land.lhs.true66.if.end73_crit_edge, %lor.lhs.false64.if.end73_crit_edge
  %call74 = tail call i32 @mwifiex_send_null_packet(ptr noundef %priv, i8 noundef zeroext 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %ps_state77 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 90
  %63 = ptrtoint ptr %ps_state77 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 3, ptr %ps_state77, align 4
  br label %cleanup

if.end80:                                         ; preds = %if.then58.if.end80_crit_edge, %land.lhs.true55.if.end80_crit_edge, %if.end51.if.end80_crit_edge
  %ps_state81 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 90
  %64 = ptrtoint ptr %ps_state81 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %ps_state81, align 4
  %pm_wakeup_card_req82 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 102
  %65 = ptrtoint ptr %pm_wakeup_card_req82 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %pm_wakeup_card_req82, align 2
  %pm_wakeup_fw_try83 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 105
  %66 = ptrtoint ptr %pm_wakeup_fw_try83 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %pm_wakeup_fw_try83, align 4
  %wakeup_timer84 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 106
  %call85 = tail call i32 @del_timer(ptr noundef %wakeup_timer84) #5
  br label %cleanup

sw.bb86:                                          ; preds = %entry
  %wakeup_complete = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 18, i32 12
  %67 = ptrtoint ptr %wakeup_complete to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wakeup_complete, align 4
  %call88 = tail call i32 %68(ptr noundef %1) #5
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.27) #5
  %is_deep_sleep = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 98
  %69 = ptrtoint ptr %is_deep_sleep to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %is_deep_sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool89.not = icmp eq i8 %70, 0
  br i1 %tobool89.not, label %sw.bb86.cleanup_crit_edge, label %if.then90

sw.bb86.cleanup_crit_edge:                        ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then90:                                        ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %is_deep_sleep to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %is_deep_sleep, align 4
  br label %cleanup

sw.bb93:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.28) #5
  %call94 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 229, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb95:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.29) #5
  %netdev96 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %72 = ptrtoint ptr %netdev96 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %netdev96, align 4
  %cfg_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 112
  tail call void @cfg80211_michael_mic_failure(ptr noundef %73, ptr noundef %cfg_bssid, i32 noundef 1, i32 noundef -1, ptr noundef null, i32 noundef 3264) #5
  br label %cleanup

sw.bb98:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.30) #5
  %netdev99 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %74 = ptrtoint ptr %netdev99 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %netdev99, align 4
  %cfg_bssid100 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 112
  tail call void @cfg80211_michael_mic_failure(ptr noundef %75, ptr noundef %cfg_bssid100, i32 noundef 0, i32 noundef -1, ptr noundef null, i32 noundef 3264) #5
  br label %cleanup

sw.bb103:                                         ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.31) #5
  %adhoc_is_link_sensed = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 57
  %76 = ptrtoint ptr %adhoc_is_link_sensed to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %adhoc_is_link_sensed, align 1
  tail call void @mwifiex_clean_txrx(ptr noundef %priv) #5
  %netdev104 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %77 = ptrtoint ptr %netdev104 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %netdev104, align 4
  tail call void @mwifiex_stop_net_dev_queue(ptr noundef %78, ptr noundef %1) #5
  %79 = ptrtoint ptr %netdev104 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %netdev104, align 4
  %state.i525 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %state.i525 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %state.i525, align 4
  %83 = and i32 %82, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i526 = icmp eq i32 %83, 0
  br i1 %tobool.not.i526, label %if.then107, label %sw.bb103.cleanup_crit_edge

sw.bb103.cleanup_crit_edge:                       ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then107:                                       ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @netif_carrier_off(ptr noundef %80) #5
  br label %cleanup

sw.bb110:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.32) #5
  %call111 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 108, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #5
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_process_sta_event.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_process_sta_event, %if.then117)) #5
          to label %do.end [label %if.then117], !srcloc !183

if.then117:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 9
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mwifiex_process_sta_event.__UNIQUE_ID_ddebug489, ptr noundef %85, ptr noundef nonnull @.str.34) #5
  br label %do.end

do.end:                                           ; preds = %if.then117, %do.body
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %86 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wdev, align 8
  tail call void @cfg80211_sched_scan_stopped(ptr noundef %87, i64 noundef 0) #5
  %sched_scanning = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 131
  %88 = ptrtoint ptr %sched_scanning to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %sched_scanning, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool119.not = icmp eq i8 %89, 0
  br i1 %tobool119.not, label %do.end.cleanup_crit_edge, label %if.then120

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then120:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %sched_scanning to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %sched_scanning, align 1
  br label %cleanup

sw.bb123:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.35) #5
  %port_open124 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 9
  %91 = ptrtoint ptr %port_open124 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %port_open124, align 1
  br label %cleanup

sw.bb125:                                         ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.36) #5
  %ext_scan = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 137
  %92 = ptrtoint ptr %ext_scan to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %ext_scan, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool126.not = icmp eq i8 %93, 0
  br i1 %tobool126.not, label %sw.bb125.cleanup_crit_edge, label %land.lhs.true128

sw.bb125.cleanup_crit_edge:                       ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true128:                                 ; preds = %sw.bb125
  %scan_aborting = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 130
  %94 = ptrtoint ptr %scan_aborting to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %scan_aborting, align 8, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool129.not = icmp eq i8 %95, 0
  br i1 %tobool129.not, label %land.lhs.true128.if.then133_crit_edge, label %lor.lhs.false130

land.lhs.true128.if.then133_crit_edge:            ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then133

lor.lhs.false130:                                 ; preds = %land.lhs.true128
  %netdev131 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %96 = ptrtoint ptr %netdev131 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %netdev131, align 4
  %state.i527 = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %state.i527 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %state.i527, align 4
  %and1.i.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false130.if.then133_crit_edge, label %lor.lhs.false130.cleanup_crit_edge

lor.lhs.false130.cleanup_crit_edge:               ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false130.if.then133_crit_edge:            ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then133

if.then133:                                       ; preds = %lor.lhs.false130.if.then133_crit_edge, %land.lhs.true128.if.then133_crit_edge
  %event_skb = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %100 = ptrtoint ptr %event_skb to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %event_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 19
  %102 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data, align 4
  %call134 = tail call i32 @mwifiex_handle_event_ext_scan_report(ptr noundef %priv, ptr noundef %103) #5
  br label %cleanup

sw.bb136:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.37) #5
  %call137 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 113, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb138:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %netdev139 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %104 = ptrtoint ptr %netdev139 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %netdev139, align 4
  tail call void @cfg80211_cqm_rssi_notify(ptr noundef %105, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #5
  %call140 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 164, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #5
  %subsc_evt_rssi_state = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 117
  %106 = ptrtoint ptr %subsc_evt_rssi_state to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %subsc_evt_rssi_state, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.38) #5
  br label %cleanup

sw.bb141:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.39) #5
  br label %cleanup

sw.bb142:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.40) #5
  br label %cleanup

sw.bb143:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %netdev144 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %107 = ptrtoint ptr %netdev144 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %netdev144, align 4
  tail call void @cfg80211_cqm_rssi_notify(ptr noundef %108, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #5
  %call145 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 164, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #5
  %subsc_evt_rssi_state146 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 117
  %109 = ptrtoint ptr %subsc_evt_rssi_state146 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 2, ptr %subsc_evt_rssi_state146, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.41) #5
  br label %cleanup

sw.bb147:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.42) #5
  br label %cleanup

sw.bb148:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.43) #5
  br label %cleanup

sw.bb149:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.44) #5
  br label %cleanup

sw.bb150:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.45) #5
  br label %cleanup

sw.bb151:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.46) #5
  br label %cleanup

sw.bb152:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.47) #5
  br label %cleanup

sw.bb153:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.48) #5
  br label %cleanup

sw.bb154:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.49) #5
  %call155 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 131, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb156:                                         ; preds = %entry
  %add.ptr = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 2
  %110 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %add.ptr, align 4
  %112 = ptrtoint ptr %ibss_sta_addr to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %ibss_sta_addr, align 4
  %add.ptr.i = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 6
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %add.ptr.i, align 2
  %115 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %4, align 4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.50, ptr noundef nonnull %ibss_sta_addr) #5
  %call162 = call ptr @mwifiex_add_sta_entry(ptr noundef %priv, ptr noundef nonnull %ibss_sta_addr) #5
  %tobool163.not = icmp eq ptr %call162, null
  br i1 %tobool163.not, label %sw.bb156.cleanup_crit_edge, label %land.lhs.true164

sw.bb156.cleanup_crit_edge:                       ; preds = %sw.bb156
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true164:                                 ; preds = %sw.bb156
  %adhoc_11n_enabled = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 116
  %116 = ptrtoint ptr %adhoc_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %adhoc_11n_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool166.not = icmp eq i8 %117, 0
  br i1 %tobool166.not, label %land.lhs.true164.cleanup_crit_edge, label %if.then167

land.lhs.true164.cleanup_crit_edge:               ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then167:                                       ; preds = %land.lhs.true164
  %event_skb168 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %118 = ptrtoint ptr %event_skb168 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %event_skb168, align 4
  call fastcc void @mwifiex_check_ibss_peer_capabilities(ptr noundef %priv, ptr noundef nonnull %call162, ptr noundef %119)
  %is_11n_enabled = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call162, i32 0, i32 3
  %120 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %is_11n_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool170.not = icmp eq i8 %121, 0
  br i1 %tobool170.not, label %for.body179.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 0
  %122 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx, align 1
  %arrayidx174 = getelementptr %struct.mwifiex_sta_node, ptr %call162, i32 0, i32 5, i32 0
  %124 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %arrayidx174, align 1
  %arrayidx.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 1
  %125 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.1, align 1
  %arrayidx174.1 = getelementptr %struct.mwifiex_sta_node, ptr %call162, i32 0, i32 5, i32 1
  %127 = ptrtoint ptr %arrayidx174.1 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %arrayidx174.1, align 1
  %arrayidx.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 2
  %128 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.2, align 1
  %arrayidx174.2 = getelementptr %struct.mwifiex_sta_node, ptr %call162, i32 0, i32 5, i32 2
  %130 = ptrtoint ptr %arrayidx174.2 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %arrayidx174.2, align 1
  %arrayidx.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 3
  %131 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.3, align 1
  %arrayidx174.3 = getelementptr %struct.mwifiex_sta_node, ptr %call162, i32 0, i32 5, i32 3
  %133 = ptrtoint ptr %arrayidx174.3 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %arrayidx174.3, align 1
  %arrayidx.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 4
  %134 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.4, align 1
  %arrayidx174.4 = getelementptr %struct.mwifiex_sta_node, ptr %call162, i32 0, i32 5, i32 4
  %136 = ptrtoint ptr %arrayidx174.4 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %arrayidx174.4, align 1
  %arrayidx.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 5
  %137 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.5, align 1
  %arrayidx174.5 = getelementptr %struct.mwifiex_sta_node, ptr %call162, i32 0, i32 5, i32 5
  %139 = ptrtoint ptr %arrayidx174.5 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %arrayidx174.5, align 1
  %arrayidx.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 6
  %140 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.6, align 1
  %arrayidx174.6 = getelementptr %struct.mwifiex_sta_node, ptr %call162, i32 0, i32 5, i32 6
  %142 = ptrtoint ptr %arrayidx174.6 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %arrayidx174.6, align 1
  %arrayidx.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 85, i32 7
  %143 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.7, align 1
  %arrayidx174.7 = getelementptr %struct.mwifiex_sta_node, ptr %call162, i32 0, i32 5, i32 7
  %145 = ptrtoint ptr %arrayidx174.7 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %arrayidx174.7, align 1
  br label %if.end185

for.body179.preheader:                            ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #7
  %uglygep = getelementptr i8, ptr %call162, i32 17
  %146 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %146, i32 8)
  store i64 -1, ptr %uglygep, align 1
  br label %if.end185

if.end185:                                        ; preds = %for.body179.preheader, %for.body.preheader
  %rx_seq = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call162, i32 0, i32 6
  %147 = call ptr @memset(ptr %rx_seq, i32 255, i32 16)
  br label %cleanup

sw.bb188:                                         ; preds = %entry
  %add.ptr192 = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 2
  %148 = ptrtoint ptr %add.ptr192 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %add.ptr192, align 4
  %150 = ptrtoint ptr %ibss_sta_addr to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %ibss_sta_addr, align 4
  %add.ptr.i528 = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 6
  %151 = ptrtoint ptr %add.ptr.i528 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %add.ptr.i528, align 2
  %153 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %4, align 4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.51, ptr noundef nonnull %ibss_sta_addr) #5
  %call195 = call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef nonnull %ibss_sta_addr) #5
  %tobool196.not = icmp eq ptr %call195, null
  br i1 %tobool196.not, label %sw.bb188.if.end204_crit_edge, label %land.lhs.true197

sw.bb188.if.end204_crit_edge:                     ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end204

land.lhs.true197:                                 ; preds = %sw.bb188
  %is_11n_enabled198 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call195, i32 0, i32 3
  %154 = ptrtoint ptr %is_11n_enabled198 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %is_11n_enabled198, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool200.not = icmp eq i8 %155, 0
  br i1 %tobool200.not, label %land.lhs.true197.if.end204_crit_edge, label %if.then201

land.lhs.true197.if.end204_crit_edge:             ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end204

if.then201:                                       ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #7
  call void @mwifiex_11n_del_rx_reorder_tbl_by_ta(ptr noundef %priv, ptr noundef nonnull %ibss_sta_addr) #5
  call void @mwifiex_del_tx_ba_stream_tbl_by_ra(ptr noundef %priv, ptr noundef nonnull %ibss_sta_addr) #5
  br label %if.end204

if.end204:                                        ; preds = %if.then201, %land.lhs.true197.if.end204_crit_edge, %sw.bb188.if.end204_crit_edge
  call void @mwifiex_wmm_del_peer_ra_list(ptr noundef %priv, ptr noundef nonnull %ibss_sta_addr) #5
  call void @mwifiex_del_sta_entry(ptr noundef %priv, ptr noundef nonnull %ibss_sta_addr) #5
  br label %cleanup

sw.bb207:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.52) #5
  %event_body208 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  %call210 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 207, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %event_body208, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb211:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.53) #5
  %event_body212 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  tail call void @mwifiex_11n_delete_ba_stream(ptr noundef %priv, ptr noundef %event_body212) #5
  br label %cleanup

sw.bb214:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.54) #5
  %event_body215 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  tail call void @mwifiex_11n_ba_stream_timeout(ptr noundef %priv, ptr noundef %event_body215) #5
  br label %cleanup

sw.bb217:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %event_body218 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  %156 = ptrtoint ptr %event_body218 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 2)
  %157 = load i16, ptr %event_body218, align 1
  %158 = tail call i16 @llvm.bswap.i16(i16 %157) #5
  %conv221 = zext i16 %158 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.55, i32 noundef %conv221) #5
  %curr_tx_buf_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 40
  %159 = ptrtoint ptr %curr_tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %curr_tx_buf_size, align 4
  %161 = tail call i16 @llvm.umin.i16(i16 %160, i16 %158)
  %tx_buf_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 39
  %162 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %tx_buf_size, align 2
  %conv231 = zext i16 %161 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.56, i32 noundef %conv231) #5
  br label %cleanup

sw.bb232:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.57) #5
  br label %cleanup

sw.bb233:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.58) #5
  br label %cleanup

sw.bb234:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.59, i32 noundef 77) #5
  br label %cleanup

sw.bb235:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.60) #5
  %wdev236 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %roc_cfg = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 129
  %163 = ptrtoint ptr %roc_cfg to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %roc_cfg, align 8
  %chan = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 129, i32 1
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %wdev236, i64 noundef %164, ptr noundef %chan, i32 noundef 2592) #5
  %165 = call ptr @memset(ptr %roc_cfg, i32 0, i32 64)
  br label %cleanup

sw.bb239:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.61) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %166 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %166, 1000
  %csa_expire_time = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 134
  %167 = ptrtoint ptr %csa_expire_time to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %add, ptr %csa_expire_time, align 4
  %curr_bss_params = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  %channel = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 5
  %168 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %channel, align 8
  %conv241 = trunc i32 %169 to i8
  %csa_chan = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 132
  %170 = ptrtoint ptr %csa_chan to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv241, ptr %csa_chan, align 2
  %call245 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 36, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %curr_bss_params, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb246:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %event_skb247 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %171 = ptrtoint ptr %event_skb247 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %event_skb247, align 4
  %call248 = tail call fastcc i32 @mwifiex_parse_tdls_event(ptr noundef %priv, ptr noundef %172)
  br label %cleanup

sw.bb249:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.62) #5
  %event_skb250 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %173 = ptrtoint ptr %event_skb250 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %event_skb250, align 4
  tail call void @mwifiex_process_tx_pause_event(ptr noundef %priv, ptr noundef %174)
  br label %cleanup

sw.bb251:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.63) #5
  %event_skb252 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %175 = ptrtoint ptr %event_skb252 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %event_skb252, align 4
  tail call void @mwifiex_process_multi_chan_event(ptr noundef %priv, ptr noundef %176)
  br label %cleanup

sw.bb253:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.64) #5
  %event_body254 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  tail call void @mwifiex_parse_tx_status_event(ptr noundef %priv, ptr noundef %event_body254) #5
  br label %cleanup

sw.bb256:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.65) #5
  %event_skb257 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %177 = ptrtoint ptr %event_skb257 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %event_skb257, align 4
  %call258 = tail call i32 @mwifiex_11h_handle_chanrpt_ready(ptr noundef %priv, ptr noundef %178) #5
  br label %cleanup

sw.bb259:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.66) #5
  %event_skb260 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %179 = ptrtoint ptr %event_skb260 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %event_skb260, align 4
  %call261 = tail call i32 @mwifiex_11h_handle_radar_detected(ptr noundef %priv, ptr noundef %180) #5
  br label %cleanup

do.body263:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_process_sta_event.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_process_sta_event, %if.then275)) #5
          to label %do.end279 [label %if.then275], !srcloc !183

if.then275:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #7
  %dev276 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 9
  %181 = ptrtoint ptr %dev276 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev276, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mwifiex_process_sta_event.__UNIQUE_ID_ddebug492, ptr noundef %182, ptr noundef nonnull @.str.67) #5
  br label %do.end279

do.end279:                                        ; preds = %if.then275, %do.body263
  %ignore_btcoex_events = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 170
  %183 = ptrtoint ptr %ignore_btcoex_events to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %ignore_btcoex_events, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool280.not = icmp eq i8 %184, 0
  br i1 %tobool280.not, label %if.end282, label %do.end279.cleanup_crit_edge

do.end279.cleanup_crit_edge:                      ; preds = %do.end279
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end282:                                        ; preds = %do.end279
  call void @__sanitizer_cov_trace_pc() #7
  %event_skb283 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %185 = ptrtoint ptr %event_skb283 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %event_skb283, align 4
  tail call void @mwifiex_bt_coex_wlan_param_update_event(ptr noundef %priv, ptr noundef %186)
  br label %cleanup

do.body285:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_process_sta_event.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_process_sta_event, %if.then297)) #5
          to label %do.end301 [label %if.then297], !srcloc !183

if.then297:                                       ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #7
  %dev298 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 9
  %187 = ptrtoint ptr %dev298 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev298, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mwifiex_process_sta_event.__UNIQUE_ID_ddebug493, ptr noundef %188, ptr noundef nonnull @.str.68) #5
  br label %do.end301

do.end301:                                        ; preds = %if.then297, %do.body285
  %event_body302 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112
  %event_skb304 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %189 = ptrtoint ptr %event_skb304 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %event_skb304, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %190, i32 0, i32 6
  %191 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %len, align 4
  %193 = trunc i32 %192 to i16
  %conv305 = add i16 %193, -4
  tail call void @mwifiex_11n_rxba_sync_event(ptr noundef %priv, ptr noundef %event_body302, i16 noundef zeroext %conv305) #5
  br label %cleanup

sw.bb306:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.69) #5
  %event_skb307 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %194 = ptrtoint ptr %event_skb307 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %event_skb307, align 4
  tail call fastcc void @mwifiex_fw_dump_info_event(ptr noundef %priv, ptr noundef %195)
  br label %cleanup

sw.bb308:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.70) #5
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.71, i32 noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb308, %sw.bb306, %do.end301, %if.end282, %do.end279.cleanup_crit_edge, %sw.bb259, %sw.bb256, %sw.bb253, %sw.bb251, %sw.bb249, %sw.bb246, %sw.bb239, %sw.bb235, %sw.bb234, %sw.bb233, %sw.bb232, %sw.bb217, %sw.bb214, %sw.bb211, %sw.bb207, %if.end204, %if.end185, %land.lhs.true164.cleanup_crit_edge, %sw.bb156.cleanup_crit_edge, %sw.bb154, %sw.bb153, %sw.bb152, %sw.bb151, %sw.bb150, %sw.bb149, %sw.bb148, %sw.bb147, %sw.bb143, %sw.bb142, %sw.bb141, %sw.bb138, %sw.bb136, %if.then133, %lor.lhs.false130.cleanup_crit_edge, %sw.bb125.cleanup_crit_edge, %sw.bb123, %if.then120, %do.end.cleanup_crit_edge, %sw.bb110, %if.then107, %sw.bb103.cleanup_crit_edge, %sw.bb98, %sw.bb95, %sw.bb93, %if.then90, %sw.bb86.cleanup_crit_edge, %if.end80, %if.then76, %if.end73.cleanup_crit_edge, %if.then70, %sw.bb37, %if.then32, %sw.bb27.cleanup_crit_edge, %if.then22, %if.end17.cleanup_crit_edge, %if.then16, %if.then9, %if.end7.cleanup_crit_edge, %if.then6, %if.end, %sw.bb, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge539
  %retval.0 = phi i32 [ 0, %if.then76 ], [ 0, %if.end73.cleanup_crit_edge ], [ 0, %sw.default ], [ 0, %sw.bb308 ], [ 0, %sw.bb306 ], [ 0, %do.end301 ], [ 0, %do.end279.cleanup_crit_edge ], [ 0, %if.end282 ], [ %call261, %sw.bb259 ], [ %call258, %sw.bb256 ], [ 0, %sw.bb253 ], [ 0, %sw.bb251 ], [ 0, %sw.bb249 ], [ %call248, %sw.bb246 ], [ %call245, %sw.bb239 ], [ 0, %sw.bb235 ], [ 0, %sw.bb234 ], [ 0, %sw.bb233 ], [ 0, %sw.bb232 ], [ 0, %sw.bb217 ], [ 0, %sw.bb214 ], [ 0, %sw.bb211 ], [ 0, %sw.bb207 ], [ 0, %if.end204 ], [ 0, %if.end185 ], [ 0, %land.lhs.true164.cleanup_crit_edge ], [ 0, %sw.bb156.cleanup_crit_edge ], [ %call155, %sw.bb154 ], [ 0, %sw.bb153 ], [ 0, %sw.bb152 ], [ 0, %sw.bb151 ], [ 0, %sw.bb150 ], [ 0, %sw.bb149 ], [ 0, %sw.bb148 ], [ 0, %sw.bb147 ], [ 0, %sw.bb143 ], [ 0, %sw.bb142 ], [ 0, %sw.bb141 ], [ 0, %sw.bb138 ], [ %call137, %sw.bb136 ], [ 0, %lor.lhs.false130.cleanup_crit_edge ], [ %call134, %if.then133 ], [ 0, %sw.bb125.cleanup_crit_edge ], [ 0, %sw.bb123 ], [ 0, %if.then120 ], [ 0, %do.end.cleanup_crit_edge ], [ %call111, %sw.bb110 ], [ 0, %if.then107 ], [ 0, %sw.bb103.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge539 ], [ 0, %sw.bb98 ], [ 0, %sw.bb95 ], [ %call94, %sw.bb93 ], [ 0, %if.then90 ], [ 0, %sw.bb86.cleanup_crit_edge ], [ 0, %if.then70 ], [ 0, %if.end80 ], [ 0, %sw.bb37 ], [ 0, %if.then32 ], [ 0, %sw.bb27.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.then22 ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.then9 ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ibss_sta_addr) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wake_up_net_dev_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_check_ps_cond(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_check_last_packet_indication(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_null_packet(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_michael_mic_failure(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_stopped(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_handle_event_ext_scan_report(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cqm_rssi_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_add_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_check_ibss_peer_capabilities(ptr nocapture noundef readonly %priv, ptr nocapture noundef %sta_ptr, ptr noundef %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_pull(ptr noundef %event, i32 noundef 12) #5
  %len = getelementptr inbounds %struct.sk_buff, ptr %event, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %event, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %debug_mask = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 4
  %and = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @print_hex_dump(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %3, i32 noundef %1, i1 noundef zeroext false) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call3 = tail call ptr @skb_push(ptr noundef %event, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ugt i32 %1, 5
  br i1 %cmp, label %land.lhs.true, label %do.end.if.else_crit_edge

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26625, i16 %9)
  %cmp4 = icmp eq i16 %9, 26625
  br i1 %cmp4, label %if.then6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %len8 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %len8 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len8, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp121 = icmp ugt i16 %12, 1
  br i1 %cmp121, label %while.body.lr.ph, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.then6
  %conv9 = zext i16 %12 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 18
  %is_11ac_enabled = getelementptr inbounds %struct.mwifiex_sta_node, ptr %sta_ptr, i32 0, i32 4
  %max_amsdu37 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %sta_ptr, i32 0, i32 7
  %is_11n_enabled = getelementptr inbounds %struct.mwifiex_sta_node, ptr %sta_ptr, i32 0, i32 3
  br label %while.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 1, ptr noundef nonnull @.str.76) #5
  br label %cleanup

while.body:                                       ; preds = %sw.epilog42.while.body_crit_edge, %while.body.lr.ph
  %curr.03 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr44, %sw.epilog42.while.body_crit_edge ]
  %evt_len.02 = phi i32 [ %conv9, %while.body.lr.ph ], [ %sub, %sw.epilog42.while.body_crit_edge ]
  %len14 = getelementptr inbounds %struct.ieee_types_header, ptr %curr.03, i32 0, i32 1
  %15 = ptrtoint ptr %len14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %len14, align 1
  %conv15 = zext i8 %16 to i32
  %add = add nuw nsw i32 %conv15, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %evt_len.02, i32 %add)
  %cmp16 = icmp ult i32 %evt_len.02, %add
  br i1 %cmp16, label %while.body.cleanup_crit_edge, label %if.end19

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %while.body
  %17 = ptrtoint ptr %curr.03 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %curr.03, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %18, label %if.end19.sw.epilog42_crit_edge [
    i8 45, label %sw.bb
    i8 -65, label %sw.bb29
  ]

if.end19.sw.epilog42_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog42

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %is_11n_enabled, align 1
  %add.ptr21 = getelementptr %struct.ieee_types_header, ptr %curr.03, i32 2
  %21 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %add.ptr21, align 1
  %23 = and i16 %22, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool24.not = icmp eq i16 %23, 0
  %conv25 = select i1 %tobool24.not, i16 4096, i16 8192
  %24 = ptrtoint ptr %max_amsdu37 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv25, ptr %max_amsdu37, align 2
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %conv28 = zext i16 %conv25 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %26, i32 noundef 1073741824, ptr noundef nonnull @.str.77, i32 noundef %conv28) #5
  br label %sw.epilog42

sw.bb29:                                          ; preds = %if.end19
  %27 = ptrtoint ptr %is_11ac_enabled to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %is_11ac_enabled, align 8
  %add.ptr30 = getelementptr %struct.ieee_types_header, ptr %curr.03, i32 2
  %28 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %add.ptr30, align 1
  %30 = lshr i32 %29, 24
  %and31 = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and31)
  %.not = icmp eq i32 %and31, 3
  br i1 %.not, label %sw.bb29.sw.epilog_crit_edge, label %switch.lookup

sw.bb29.sw.epilog_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.cast = trunc i32 %and31 to i16
  %switch.idx.mult = shl nuw nsw i16 %switch.idx.cast, 12
  %switch.offset = add nuw nsw i16 %switch.idx.mult, 4096
  %31 = ptrtoint ptr %max_amsdu37 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %switch.offset, ptr %max_amsdu37, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.bb29.sw.epilog_crit_edge
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %34 = ptrtoint ptr %max_amsdu37 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %max_amsdu37, align 2
  %conv40 = zext i16 %35 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %33, i32 noundef 1073741824, ptr noundef nonnull @.str.78, i32 noundef %conv40) #5
  br label %sw.epilog42

sw.epilog42:                                      ; preds = %sw.epilog, %sw.bb, %if.end19.sw.epilog42_crit_edge
  %add.ptr44 = getelementptr i8, ptr %curr.03, i32 %add
  %sub = sub i32 %evt_len.02, %add
  %cmp12 = icmp ugt i32 %sub, 1
  br i1 %cmp12, label %sw.epilog42.while.body_crit_edge, label %sw.epilog42.cleanup_crit_edge

sw.epilog42.cleanup_crit_edge:                    ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog42.while.body_crit_edge:                 ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup:                                          ; preds = %sw.epilog42.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.else, %if.then6.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_del_rx_reorder_tbl_by_ta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_tx_ba_stream_tbl_by_ra(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_del_peer_ra_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_delete_ba_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_ba_stream_timeout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_remain_on_channel_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_parse_tdls_event(ptr noundef %priv, ptr nocapture noundef readonly %event_skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %event_skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %peer_mac = getelementptr i8, ptr %3, i32 6
  %len = getelementptr inbounds %struct.sk_buff, ptr %event_skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp = icmp ult i32 %5, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.79) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %peer_mac) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.80) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %add.ptr, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %8, label %if.end5.cleanup_crit_edge [
    i16 3, label %sw.bb
    i16 7, label %sw.bb8
    i16 8, label %sw.bb49
    i16 9, label %sw.bb51
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  %u = getelementptr i8, ptr %3, i32 12
  %12 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %u, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  tail call void @cfg80211_tdls_oper_request(ptr noundef %11, ptr noundef %peer_mac, i32 noundef 2, i16 noundef zeroext %14, i32 noundef 3264) #5
  br label %cleanup

sw.bb8:                                           ; preds = %if.end5
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.81) #5
  %u9 = getelementptr i8, ptr %3, i32 12
  %status = getelementptr i8, ptr %3, i32 13
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status, align 1
  %conv10 = zext i8 %16 to i32
  %reason = getelementptr i8, ptr %3, i32 14
  %17 = ptrtoint ptr %reason to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reason, align 1
  %conv12 = zext i8 %18 to i32
  %19 = ptrtoint ptr %u9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %u9, align 1
  %conv14 = zext i8 %20 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.82, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14) #5
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp18.not = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %u9 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %u9, align 1
  br i1 %cmp18.not, label %if.end27, label %if.then20

if.then20:                                        ; preds = %sw.bb8
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %24, label %if.then20.cleanup_crit_edge [
    i8 0, label %sw.bb24
    i8 1, label %sw.bb25
  ]

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb24:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %tdls_status = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 8
  %26 = ptrtoint ptr %tdls_status to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 6, ptr %tdls_status, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %tdls_status26 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 8
  %27 = ptrtoint ptr %tdls_status26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 7, ptr %tdls_status26, align 4
  br label %cleanup

if.end27:                                         ; preds = %sw.bb8
  %28 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %24, label %if.end27.cleanup_crit_edge [
    i8 0, label %sw.bb31
    i8 1, label %sw.bb39
  ]

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb31:                                          ; preds = %if.end27
  %tdls_status32 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 8
  %29 = ptrtoint ptr %tdls_status32 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tdls_status32, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %30)
  %cmp34 = icmp eq i8 %30, 6
  br i1 %cmp34, label %sw.bb31.cleanup_crit_edge, label %if.end37

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mwifiex_update_ralist_tx_pause_in_tdls_cs(ptr noundef %priv, ptr noundef %peer_mac, i8 noundef zeroext 0) #5
  %31 = ptrtoint ptr %tdls_status32 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %tdls_status32, align 4
  br label %cleanup

sw.bb39:                                          ; preds = %if.end27
  %tdls_status40 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 8
  %32 = ptrtoint ptr %tdls_status40 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tdls_status40, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %33)
  %cmp42 = icmp eq i8 %33, 7
  br i1 %cmp42, label %sw.bb39.cleanup_crit_edge, label %if.end45

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mwifiex_update_ralist_tx_pause_in_tdls_cs(ptr noundef %priv, ptr noundef %peer_mac, i8 noundef zeroext 1) #5
  %34 = ptrtoint ptr %tdls_status40 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 7, ptr %tdls_status40, align 4
  br label %cleanup

sw.bb49:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.83) #5
  %tdls_status50 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 8
  %35 = ptrtoint ptr %tdls_status50 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %tdls_status50, align 4
  br label %cleanup

sw.bb51:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %u52 = getelementptr i8, ptr %3, i32 12
  %36 = ptrtoint ptr %u52 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %u52, align 1
  %conv53 = zext i8 %37 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.84, i32 noundef %conv53) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb51, %sw.bb49, %if.end45, %sw.bb39.cleanup_crit_edge, %if.end37, %sw.bb31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %sw.bb25, %sw.bb24, %if.then20.cleanup_crit_edge, %sw.bb, %if.end5.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then4 ], [ 0, %if.then20.cleanup_crit_edge ], [ 0, %sw.bb25 ], [ 0, %sw.bb24 ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end37 ], [ 0, %if.end45 ], [ 0, %sw.bb31.cleanup_crit_edge ], [ 0, %sw.bb39.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ 0, %sw.bb51 ], [ 0, %sw.bb49 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_parse_tx_status_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11h_handle_chanrpt_ready(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11h_handle_radar_detected(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_rxba_sync_event(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_fw_dump_info_event(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %event_skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.not = icmp eq i8 %3, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.85) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %devdump_data = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 167
  %4 = ptrtoint ptr %devdump_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devdump_data, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then3, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %call = tail call noalias ptr @vzalloc(i32 noundef 2097152) #8
  %6 = ptrtoint ptr %devdump_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %devdump_data, align 4
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.86) #5
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mwifiex_drv_info_dump(ptr noundef %1) #5
  %devdump_timer = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 1000
  %call10 = tail call i32 @mod_timer(ptr noundef %devdump_timer, i32 noundef %add) #5
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.end.if.end11_crit_edge
  %devdump_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 168
  %8 = ptrtoint ptr %devdump_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devdump_len, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %event_skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %add12 = add i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %add12)
  %cmp13 = icmp ugt i32 %add12, 2097151
  br i1 %cmp13, label %if.end11.upload_dump_crit_edge, label %if.end16

if.end11.upload_dump_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %upload_dump

if.end16:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %devdump_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %devdump_data, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %9
  %event_skb19 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 51
  %14 = ptrtoint ptr %event_skb19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %event_skb19, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = call ptr @memmove(ptr %add.ptr, ptr %17, i32 %11)
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %21 = ptrtoint ptr %devdump_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %devdump_len, align 4
  %add23 = add i32 %22, %20
  store i32 %add23, ptr %devdump_len, align 4
  %type = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 4
  %23 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %24)
  %cmp25 = icmp eq i16 %24, 2
  br i1 %cmp25, label %if.then29, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.87) #5
  br label %upload_dump

upload_dump:                                      ; preds = %if.then29, %if.end11.upload_dump_crit_edge
  %devdump_timer31 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 169
  %call32 = tail call i32 @del_timer_sync(ptr noundef %devdump_timer31) #5
  tail call void @mwifiex_upload_device_dump(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %upload_dump, %if.end16.cleanup_crit_edge, %if.then7, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_tdls_link_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_update_ralist_tx_pause(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_tdls_oper_request(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_update_ralist_tx_pause_in_tdls_cs(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_drv_info_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_upload_device_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !135, !136, !138, !140, !142, !144, !146, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 145, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 206, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 210, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 232, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 432, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 438, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 449, i32 4}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 454, i32 4}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 467, i32 5}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 503, i32 3}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 517, i32 4}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 588, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mwifiex_bt_coex_wlan_param_update_event.__UNIQUE_ID_ddebug488, !25, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 715, i32 3}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 719, i32 3}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 726, i32 3}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 728, i32 4}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 741, i32 3}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 743, i32 4}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 756, i32 3}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 766, i32 3}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 774, i32 3}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 780, i32 4}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 813, i32 3}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 819, i32 3}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 825, i32 3}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 832, i32 3}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 842, i32 3}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 851, i32 3}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 857, i32 3}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mwifiex_process_sta_event.__UNIQUE_ID_ddebug489, !63, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 864, i32 3}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 869, i32 3}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 881, i32 3}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 893, i32 3}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 896, i32 3}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 899, i32 3}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 908, i32 3}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 911, i32 3}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 914, i32 3}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 917, i32 3}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 920, i32 3}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 923, i32 3}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 926, i32 3}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 929, i32 3}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 932, i32 3}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 939, i32 3}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 959, i32 3}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 971, i32 3}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 977, i32 3}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 981, i32 3}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 989, i32 3}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 994, i32 3}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 999, i32 3}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 1003, i32 3}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 1007, i32 3}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 1012, i32 3}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 1024, i32 3}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 1039, i32 3}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 1044, i32 3}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 1049, i32 3}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 1054, i32 3}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 1059, i32 3}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 1064, i32 3}
!132 = !{ptr @mwifiex_process_sta_event.__UNIQUE_ID_ddebug492, !131, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 1072, i32 3}
!135 = !{ptr @mwifiex_process_sta_event.__UNIQUE_ID_ddebug493, !134, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 1078, i32 3}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 1083, i32 3}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 1086, i32 3}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 385, i32 2}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 351, i32 2}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 45, i32 2}
!148 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 61, i32 3}
!151 = !{ptr @.str.77, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 81, i32 4}
!153 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 107, i32 4}
!155 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 266, i32 3}
!157 = !{ptr @.str.80, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 272, i32 3}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 285, i32 3}
!161 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 286, i32 3}
!163 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 329, i32 3}
!165 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 333, i32 3}
!167 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 603, i32 3}
!169 = !{ptr @.str.86, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 614, i32 4}
!171 = !{ptr @.str.87, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_event.c", i32 639, i32 3}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{i8 0, i8 2}
!183 = !{i64 2148383370, i64 2148383375, i64 2148383388, i64 2148383432, i64 2148383466, i64 2148383487}
