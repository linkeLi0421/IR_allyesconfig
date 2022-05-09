; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mwifiex_debug_info = type { i32, i32, [8 x i32], i32, i32, i32, [2 x %struct.mwifiex_ds_tx_ba_stream_tbl], i32, [16 x %struct.mwifiex_ds_rx_reorder_tbl], i32, [8 x %struct.tdls_peer_info], i16, i32, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, i8, i8, i8, i8, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_ds_tx_ba_stream_tbl = type { i16, [6 x i8], i8 }
%struct.mwifiex_ds_rx_reorder_tbl = type { i16, [6 x i8], i32, i32, [64 x i32] }
%struct.tdls_peer_info = type { [6 x i8] }
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
%struct.mwifiex_bss_info = type { i32, %struct.cfg80211_ssid, i32, [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.mwifiex_ds_get_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }
%struct.mwifiex_ds_hs_cfg = type { i32, i32, i32, i32 }
%struct.mwifiex_histogram_data = type { [74 x %struct.atomic_t], [256 x %struct.atomic_t], [256 x %struct.atomic_t], [256 x %struct.atomic_t], %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@mwifiex_dfs_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@mwifiex_dfs_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @mwifiex_info_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@mwifiex_dfs_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @mwifiex_debug_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"getlog\00", [25 x i8] zeroinitializer }, align 32
@mwifiex_dfs_getlog_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @mwifiex_getlog_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"regrdwr\00", [24 x i8] zeroinitializer }, align 32
@mwifiex_dfs_regrdwr_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @mwifiex_regrdwr_read, ptr @mwifiex_regrdwr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rdeeprom\00", [23 x i8] zeroinitializer }, align 32
@mwifiex_dfs_rdeeprom_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @mwifiex_rdeeprom_read, ptr @mwifiex_rdeeprom_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"memrw\00", [26 x i8] zeroinitializer }, align 32
@mwifiex_dfs_memrw_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @mwifiex_memrw_read, ptr @mwifiex_memrw_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hscfg\00", [26 x i8] zeroinitializer }, align 32
@mwifiex_dfs_hscfg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @mwifiex_hscfg_read, ptr @mwifiex_hscfg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"histogram\00", [22 x i8] zeroinitializer }, align 32
@mwifiex_dfs_histogram_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @mwifiex_histogram_read, ptr @mwifiex_histogram_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"debug_mask\00", [21 x i8] zeroinitializer }, align 32
@mwifiex_dfs_debug_mask_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @mwifiex_debug_mask_read, ptr @mwifiex_debug_mask_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"timeshare_coex\00", [17 x i8] zeroinitializer }, align 32
@mwifiex_dfs_timeshare_coex_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @mwifiex_timeshare_coex_read, ptr @mwifiex_timeshare_coex_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@mwifiex_dfs_reset_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @mwifiex_reset_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"verext\00", [25 x i8] zeroinitializer }, align 32
@mwifiex_dfs_verext_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @mwifiex_verext_read, ptr @mwifiex_verext_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mwifiex\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"driver_name = \22mwifiex\22\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"driver_version = %s\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0Averext = %s\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0Ainterface_name=\22%s\22\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bss_mode=\22%d\22\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bss_mode=\22%s\22\0A\00", [17 x i8] zeroinitializer }, align 32
@bss_modes = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"media_state=\22%s\22\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Disconnected\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Connected\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mac_address=\22%pM\22\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"multicast_count=\22%d\22\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"essid=\22%.*s\22\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bssid=\22%pM\22\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"channel=\22%d\22\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"country_code = \22%s\22\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"region_code=\220x%x\22\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"multicast_address[%d]=\22%pM\22\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"num_tx_bytes = %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"num_rx_bytes = %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"num_tx_pkts = %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"num_rx_pkts = %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"num_tx_pkts_dropped = %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"num_rx_pkts_dropped = %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"num_tx_pkts_err = %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"num_rx_pkts_err = %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"carrier %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx queue\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %d:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stopped\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"started\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UNSPECIFIED\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADHOC\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"STATION\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AP\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AP_VLAN\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WDS\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MONITOR\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MESH_POINT\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P2P_CLIENT\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"P2P_GO\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P2P_DEVICE\00", [21 x i8] zeroinitializer }, align 32
@info = internal global { %struct.mwifiex_debug_info, [1192 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [357 x i8], [91 x i8] } { [357 x i8] c"\0Amcasttxframe     %u\0Afailed           %u\0Aretry            %u\0Amultiretry       %u\0Aframedup         %u\0Artssuccess       %u\0Artsfailure       %u\0Aackfailure       %u\0Arxfrag           %u\0Amcastrxframe     %u\0Afcserror         %u\0Atxframe          %u\0Awepicverrcnt-1   %u\0Awepicverrcnt-2   %u\0Awepicverrcnt-3   %u\0Awepicverrcnt-4   %u\0Abcn_rcv_cnt   %u\0Abcn_miss_cnt   %u\0A\00", [91 x i8] zeroinitializer }, align 32
@saved_reg_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@saved_reg_value = internal global { i32, [28 x i8] } zeroinitializer, align 32
@saved_reg_offset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%u 0x%x 0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u %x %x\00", [23 x i8] zeroinitializer }, align 32
@saved_offset = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@saved_bytes = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d %d \00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d %d\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%x 0x%x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%c %x %x\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d %x %x\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Too many arguments\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0Atotal samples = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [144 x i8], [48 x i8] } { [144 x i8] c"rx rates (in Mbps): 0=1M   1=2M 2=5.5M  3=11M   4=6M   5=9M  6=12M\0A7=18M  8=24M  9=36M  10=48M  11=54M 12-27=MCS0-15(BW20) 28-43=MCS0-15(BW40)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"44-53=MCS0-9(VHT:BW20) 54-63=MCS0-9(VHT:BW40) 64-73=MCS0-9(VHT:BW80)\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_rate[%02d] = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snr[%02ddB] = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"noise_flr[%02ddBm] = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sig_strength[-%02ddBm] = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"debug mask=0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mwifiex_reset_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.82, i32 917, ptr @.str.83, ptr @.str.84 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Resetting per request\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mwifiex_reset_write\00", [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/marvell/mwifiex/debugfs.c\00", [49 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mwifiex_reset_write._entry_ptr = internal global ptr @mwifiex_reset_write._entry, section ".printk_index", align 4
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"version string: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 82, i64 87, i64 114, i64 119]
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"mwifiex_dfs_dir\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 26, i32 23 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 977, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [22 x i8] c"mwifiex_dfs_info_fops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 949, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 978, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"mwifiex_dfs_debug_fops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 950, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 979, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [24 x i8] c"mwifiex_dfs_getlog_fops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 951, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 980, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [25 x i8] c"mwifiex_dfs_regrdwr_fops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 952, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 981, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [26 x i8] c"mwifiex_dfs_rdeeprom_fops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 953, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 983, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"mwifiex_dfs_memrw_fops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 954, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 984, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [23 x i8] c"mwifiex_dfs_hscfg_fops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 955, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 985, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [27 x i8] c"mwifiex_dfs_histogram_fops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 956, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 986, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [28 x i8] c"mwifiex_dfs_debug_mask_fops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 957, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 987, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [32 x i8] c"mwifiex_dfs_timeshare_coex_fops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 958, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 988, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [23 x i8] c"mwifiex_dfs_reset_fops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 959, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 989, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [24 x i8] c"mwifiex_dfs_verext_fops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 960, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1011, i32 40 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 100, i32 18 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 101, i32 18 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 102, i32 18 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 103, i32 18 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 106, i32 19 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 108, i32 19 }
@___asan_gen_.182 = private unnamed_addr constant [10 x i8] c"bss_modes\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 28, i32 14 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 110, i32 18 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 111, i32 34 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 111, i32 51 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 112, i32 18 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 115, i32 19 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 117, i32 19 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 119, i32 19 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 120, i32 19 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 121, i32 19 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 122, i32 19 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 126, i32 20 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 130, i32 18 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 131, i32 18 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 132, i32 18 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 133, i32 18 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 134, i32 18 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 135, i32 18 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 136, i32 18 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 137, i32 18 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 138, i32 18 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 139, i32 9 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 139, i32 16 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 140, i32 18 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 143, i32 19 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 144, i32 9 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 144, i32 21 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 29, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 30, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 31, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 32, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 33, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 34, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 35, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 36, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 37, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 38, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 39, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 338, i32 34 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 196, i32 18 }
@___asan_gen_.302 = private unnamed_addr constant [15 x i8] c"saved_reg_type\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 414, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant [16 x i8] c"saved_reg_value\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 414, i32 46 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"saved_reg_offset\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 414, i32 28 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 482, i32 35 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 435, i32 14 }
@___asan_gen_.317 = private unnamed_addr constant [13 x i8] c"saved_offset\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 680, i32 12 }
@___asan_gen_.320 = private unnamed_addr constant [12 x i8] c"saved_bytes\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 680, i32 31 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 751, i32 33 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 754, i32 48 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 701, i32 14 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 672, i32 34 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 628, i32 20 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 781, i32 24 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 786, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 272, i32 18 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 277, i32 8 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 282, i32 9 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 290, i32 20 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 306, i32 20 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 311, i32 20 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 317, i32 20 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 526, i32 34 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 868, i32 21 }
@___asan_gen_.372 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 156, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 917, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.393 = private constant [50 x i8] c"../drivers/net/wireless/marvell/mwifiex/debugfs.c\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 603, i32 35 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @mwifiex_reset_write._entry, ptr @mwifiex_reset_write._entry_ptr, ptr @mwifiex_dfs_dir, ptr @.str, ptr @mwifiex_dfs_info_fops, ptr @.str.1, ptr @mwifiex_dfs_debug_fops, ptr @.str.2, ptr @mwifiex_dfs_getlog_fops, ptr @.str.3, ptr @mwifiex_dfs_regrdwr_fops, ptr @.str.4, ptr @mwifiex_dfs_rdeeprom_fops, ptr @.str.5, ptr @mwifiex_dfs_memrw_fops, ptr @.str.6, ptr @mwifiex_dfs_hscfg_fops, ptr @.str.7, ptr @mwifiex_dfs_histogram_fops, ptr @.str.8, ptr @mwifiex_dfs_debug_mask_fops, ptr @.str.9, ptr @mwifiex_dfs_timeshare_coex_fops, ptr @.str.10, ptr @mwifiex_dfs_reset_fops, ptr @.str.11, ptr @mwifiex_dfs_verext_fops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @bss_modes, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @info, ptr @.str.57, ptr @saved_reg_type, ptr @saved_reg_value, ptr @saved_reg_offset, ptr @.str.59, ptr @.str.60, ptr @saved_offset, ptr @saved_bytes, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_dfs_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_dfs_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_dfs_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_dfs_getlog_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_dfs_regrdwr_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_dfs_rdeeprom_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_dfs_memrw_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_dfs_hscfg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_dfs_histogram_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_dfs_debug_mask_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_dfs_timeshare_coex_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_dfs_reset_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_dfs_verext_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bss_modes to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @info to i32), i32 4760, i32 5952, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 357, i32 448, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_reg_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_reg_value to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_reg_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_bytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_reset_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_dev_debugfs_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mwifiex_dfs_dir, align 4
  %tobool.not = icmp eq ptr %0, null
  %tobool1.not = icmp eq ptr %priv, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.do.end51_crit_edge, label %if.end

entry.do.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

if.end:                                           ; preds = %entry
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef %2, ptr noundef nonnull %0) #7
  %dfs_dev_dir = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 107
  %3 = ptrtoint ptr %dfs_dev_dir to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %dfs_dev_dir, align 4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.do.end51_crit_edge, label %do.body

if.end.do.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 420, ptr noundef nonnull %call, ptr noundef nonnull %priv, ptr noundef nonnull @mwifiex_dfs_info_fops) #7
  %4 = ptrtoint ptr %dfs_dev_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dfs_dev_dir, align 4
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 420, ptr noundef %5, ptr noundef nonnull %priv, ptr noundef nonnull @mwifiex_dfs_debug_fops) #7
  %6 = ptrtoint ptr %dfs_dev_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dfs_dev_dir, align 4
  %call14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 420, ptr noundef %7, ptr noundef nonnull %priv, ptr noundef nonnull @mwifiex_dfs_getlog_fops) #7
  %8 = ptrtoint ptr %dfs_dev_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dfs_dev_dir, align 4
  %call18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 420, ptr noundef %9, ptr noundef nonnull %priv, ptr noundef nonnull @mwifiex_dfs_regrdwr_fops) #7
  %10 = ptrtoint ptr %dfs_dev_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dfs_dev_dir, align 4
  %call22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef %11, ptr noundef nonnull %priv, ptr noundef nonnull @mwifiex_dfs_rdeeprom_fops) #7
  %12 = ptrtoint ptr %dfs_dev_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dfs_dev_dir, align 4
  %call26 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 420, ptr noundef %13, ptr noundef nonnull %priv, ptr noundef nonnull @mwifiex_dfs_memrw_fops) #7
  %14 = ptrtoint ptr %dfs_dev_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dfs_dev_dir, align 4
  %call30 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 420, ptr noundef %15, ptr noundef nonnull %priv, ptr noundef nonnull @mwifiex_dfs_hscfg_fops) #7
  %16 = ptrtoint ptr %dfs_dev_dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dfs_dev_dir, align 4
  %call34 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 420, ptr noundef %17, ptr noundef nonnull %priv, ptr noundef nonnull @mwifiex_dfs_histogram_fops) #7
  %18 = ptrtoint ptr %dfs_dev_dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dfs_dev_dir, align 4
  %call38 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 420, ptr noundef %19, ptr noundef nonnull %priv, ptr noundef nonnull @mwifiex_dfs_debug_mask_fops) #7
  %20 = ptrtoint ptr %dfs_dev_dir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dfs_dev_dir, align 4
  %call42 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 420, ptr noundef %21, ptr noundef nonnull %priv, ptr noundef nonnull @mwifiex_dfs_timeshare_coex_fops) #7
  %22 = ptrtoint ptr %dfs_dev_dir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dfs_dev_dir, align 4
  %call46 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 420, ptr noundef %23, ptr noundef nonnull %priv, ptr noundef nonnull @mwifiex_dfs_reset_fops) #7
  %24 = ptrtoint ptr %dfs_dev_dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dfs_dev_dir, align 4
  %call50 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 420, ptr noundef %25, ptr noundef nonnull %priv, ptr noundef nonnull @mwifiex_dfs_verext_fops) #7
  br label %do.end51

do.end51:                                         ; preds = %do.body, %if.end.do.end51_crit_edge, %entry.do.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_dev_debugfs_remove(ptr noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dfs_dev_dir = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 107
  %0 = ptrtoint ptr %dfs_dev_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfs_dev_dir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_debugfs_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mwifiex_dfs_dir, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.12, ptr noundef null) #7
  store ptr %call, ptr @mwifiex_dfs_dir, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_debugfs_remove() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mwifiex_dfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_info_read(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %fmt = alloca [64 x i8], align 1
  %info = alloca %struct.mwifiex_bss_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %netdev1 = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #7
  %4 = inttoptr i32 %call to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fmt) #7
  %5 = call ptr @memset(ptr %fmt, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = call ptr @memset(ptr %info, i32 0, i32 88)
  %call2 = call i32 @mwifiex_get_bss_info(ptr noundef %1, ptr noundef nonnull %info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.free_and_exit_crit_edge

if.end.free_and_exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_and_exit

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %call6 = call i32 @mwifiex_drv_get_driver_version(ptr noundef %8, ptr noundef nonnull %fmt, i32 noundef 63) #7
  %call7 = call i32 @mwifiex_get_ver_ext(ptr noundef %1, i32 noundef 0) #7
  %9 = call ptr @memcpy(ptr %4, ptr @.str.13, i32 25)
  %add.ptr = getelementptr i8, ptr %4, i32 24
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.14, ptr noundef nonnull %fmt)
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 %call10
  %version_str = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 106
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr11, ptr noundef nonnull @.str.15, ptr noundef %version_str)
  %add.ptr14 = getelementptr i8, ptr %add.ptr11, i32 %call13
  %call16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14, ptr noundef nonnull @.str.16, ptr noundef %3)
  %add.ptr17 = getelementptr i8, ptr %add.ptr14, i32 %call16
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp = icmp ugt i32 %11, 10
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17, ptr noundef nonnull @.str.17, i32 noundef %11)
  br label %if.end25

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [11 x ptr], ptr @bss_modes, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17, ptr noundef nonnull @.str.18, ptr noundef %13)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then18
  %call20.pn = phi i32 [ %call20, %if.then18 ], [ %call23, %if.else ]
  %p.0 = getelementptr i8, ptr %add.ptr17, i32 %call20.pn
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool26.not = icmp eq i8 %15, 0
  %cond = select i1 %tobool26.not, ptr @.str.20, ptr @.str.21
  %call27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.0, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond)
  %add.ptr28 = getelementptr i8, ptr %p.0, i32 %call27
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %call29 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr28, ptr noundef nonnull @.str.22, ptr noundef %17)
  %add.ptr30 = getelementptr i8, ptr %add.ptr28, i32 %call29
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bss_role, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp31 = icmp eq i8 %20, 0
  br i1 %cmp31, label %if.then33, label %if.end25.if.end71_crit_edge

if.end25.if.end71_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then33:                                        ; preds = %if.end25
  %mc = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 66
  %count34 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 66, i32 1
  %21 = ptrtoint ptr %count34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count34, align 8
  %call35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr30, ptr noundef nonnull @.str.23, i32 noundef %22)
  %add.ptr36 = getelementptr i8, ptr %add.ptr30, i32 %call35
  %ssid = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 1
  %ssid_len = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ssid_len, align 4
  %conv37 = zext i8 %24 to i32
  %call41 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr36, ptr noundef nonnull @.str.24, i32 noundef %conv37, ptr noundef %ssid)
  %add.ptr42 = getelementptr i8, ptr %add.ptr36, i32 %call41
  %bssid = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 12
  %call44 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr42, ptr noundef nonnull @.str.25, ptr noundef %bssid)
  %add.ptr45 = getelementptr i8, ptr %add.ptr42, i32 %call44
  %bss_chan = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 2
  %25 = ptrtoint ptr %bss_chan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bss_chan, align 4
  %call46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr45, ptr noundef nonnull @.str.26, i32 noundef %26)
  %add.ptr47 = getelementptr i8, ptr %add.ptr45, i32 %call46
  %country_code = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 3
  %call49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr47, ptr noundef nonnull @.str.27, ptr noundef %country_code)
  %add.ptr50 = getelementptr i8, ptr %add.ptr47, i32 %call49
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %region_code = getelementptr inbounds %struct.mwifiex_adapter, ptr %28, i32 0, i32 74
  %29 = ptrtoint ptr %region_code to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %region_code, align 4
  %conv52 = zext i16 %30 to i32
  %call53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr50, ptr noundef nonnull @.str.28, i32 noundef %conv52)
  %add.ptr54 = getelementptr i8, ptr %add.ptr50, i32 %call53
  %31 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %31)
  %ha.0217 = load ptr, ptr %mc, align 4
  %cmp60.not218 = icmp eq ptr %ha.0217, %mc
  br i1 %cmp60.not218, label %if.then33.if.end71_crit_edge, label %if.then33.for.body_crit_edge

if.then33.for.body_crit_edge:                     ; preds = %if.then33
  br label %for.body

if.then33.if.end71_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then33.for.body_crit_edge
  %ha.0221 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.0217, %if.then33.for.body_crit_edge ]
  %i.0220 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then33.for.body_crit_edge ]
  %p.1219 = phi ptr [ %add.ptr65, %for.body.for.body_crit_edge ], [ %add.ptr54, %if.then33.for.body_crit_edge ]
  %inc = add i32 %i.0220, 1
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0221, i32 0, i32 2
  %call64 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.1219, ptr noundef nonnull @.str.29, i32 noundef %i.0220, ptr noundef %addr)
  %add.ptr65 = getelementptr i8, ptr %p.1219, i32 %call64
  %32 = ptrtoint ptr %ha.0221 to i32
  call void @__asan_load4_noabort(i32 %32)
  %ha.0 = load ptr, ptr %ha.0221, align 4
  %cmp60.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp60.not, label %for.body.if.end71_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end71_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.end71:                                         ; preds = %for.body.if.end71_crit_edge, %if.then33.if.end71_crit_edge, %if.end25.if.end71_crit_edge
  %p.2 = phi ptr [ %add.ptr30, %if.end25.if.end71_crit_edge ], [ %add.ptr54, %if.then33.if.end71_crit_edge ], [ %add.ptr65, %for.body.if.end71_crit_edge ]
  %stats = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 16
  %tx_bytes = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 16, i32 3
  %33 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_bytes, align 4
  %call72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.2, ptr noundef nonnull @.str.30, i32 noundef %34)
  %add.ptr73 = getelementptr i8, ptr %p.2, i32 %call72
  %rx_bytes = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 16, i32 2
  %35 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_bytes, align 8
  %call75 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr73, ptr noundef nonnull @.str.31, i32 noundef %36)
  %add.ptr76 = getelementptr i8, ptr %add.ptr73, i32 %call75
  %tx_packets = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 16, i32 1
  %37 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_packets, align 4
  %call78 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr76, ptr noundef nonnull @.str.32, i32 noundef %38)
  %add.ptr79 = getelementptr i8, ptr %add.ptr76, i32 %call78
  %39 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stats, align 8
  %call81 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr79, ptr noundef nonnull @.str.33, i32 noundef %40)
  %add.ptr82 = getelementptr i8, ptr %add.ptr79, i32 %call81
  %tx_dropped = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 16, i32 7
  %41 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_dropped, align 4
  %call84 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr82, ptr noundef nonnull @.str.34, i32 noundef %42)
  %add.ptr85 = getelementptr i8, ptr %add.ptr82, i32 %call84
  %rx_dropped = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 16, i32 6
  %43 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_dropped, align 8
  %call87 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr85, ptr noundef nonnull @.str.35, i32 noundef %44)
  %add.ptr88 = getelementptr i8, ptr %add.ptr85, i32 %call87
  %tx_errors = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 16, i32 5
  %45 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_errors, align 4
  %call90 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr88, ptr noundef nonnull @.str.36, i32 noundef %46)
  %add.ptr91 = getelementptr i8, ptr %add.ptr88, i32 %call90
  %rx_errors = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 16, i32 4
  %47 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_errors, align 8
  %call93 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr91, ptr noundef nonnull @.str.37, i32 noundef %48)
  %add.ptr94 = getelementptr i8, ptr %add.ptr91, i32 %call93
  %49 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %netdev1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %state.i, align 4
  %53 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  %cond98 = select i1 %tobool.not.i, ptr @.str.39, ptr @.str.40
  %call99 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr94, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond98)
  %add.ptr100 = getelementptr i8, ptr %add.ptr94, i32 %call99
  %54 = call ptr @memcpy(ptr %add.ptr100, ptr @.str.41, i32 9)
  %add.ptr102 = getelementptr i8, ptr %add.ptr100, i32 8
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %55 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp104222.not = icmp eq i32 %56, 0
  br i1 %cmp104222.not, label %if.end71.for.end115_crit_edge, label %for.body106.lr.ph

if.end71.for.end115_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end115

for.body106.lr.ph:                                ; preds = %if.end71
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  br label %for.body106

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %for.body106.lr.ph
  %i.1224 = phi i32 [ 0, %for.body106.lr.ph ], [ %inc114, %for.body106.for.body106_crit_edge ]
  %p.3223 = phi ptr [ %add.ptr102, %for.body106.lr.ph ], [ %add.ptr112, %for.body106.for.body106_crit_edge ]
  %57 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %_tx.i, align 128
  %state.i216 = getelementptr %struct.netdev_queue, ptr %58, i32 %i.1224, i32 13
  %59 = ptrtoint ptr %state.i216 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %state.i216, align 4
  %and1.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %cond110 = select i1 %tobool.i.not, ptr @.str.44, ptr @.str.43
  %call111 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.3223, ptr noundef nonnull @.str.42, i32 noundef %i.1224, ptr noundef nonnull %cond110)
  %add.ptr112 = getelementptr i8, ptr %p.3223, i32 %call111
  %inc114 = add nuw i32 %i.1224, 1
  %61 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_tx_queues, align 4
  %cmp104 = icmp ult i32 %inc114, %62
  br i1 %cmp104, label %for.body106.for.body106_crit_edge, label %for.body106.for.end115_crit_edge

for.body106.for.end115_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end115

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body106

for.end115:                                       ; preds = %for.body106.for.end115_crit_edge, %if.end71.for.end115_crit_edge
  %p.3.lcssa = phi ptr [ %add.ptr102, %if.end71.for.end115_crit_edge ], [ %add.ptr112, %for.body106.for.end115_crit_edge ]
  %63 = ptrtoint ptr %p.3.lcssa to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 2560, ptr %p.3.lcssa, align 1
  %add.ptr117 = getelementptr i8, ptr %p.3.lcssa, i32 1
  %64 = ptrtoint ptr %add.ptr117 to i32
  %sub = sub i32 %64, %call
  %call118 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %4, i32 noundef %sub) #7
  br label %free_and_exit

free_and_exit:                                    ; preds = %for.end115, %if.end.free_and_exit_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.free_and_exit_crit_edge ], [ %call118, %for.end115 ]
  call void @free_pages(i32 noundef %call, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %free_and_exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_and_exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %info) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fmt) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_bss_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_drv_get_driver_version(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_ver_ext(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_debug_read(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #7
  %2 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mwifiex_get_debug_info(ptr noundef %1, ptr noundef nonnull @info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.free_and_exit_crit_edge

if.end.free_and_exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_and_exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @mwifiex_debug_info_to_buffer(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @info) #7
  %add.ptr = getelementptr i8, ptr %2, i32 %call5
  %3 = ptrtoint ptr %add.ptr to i32
  %sub = sub i32 %3, %call
  %call6 = tail call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %2, i32 noundef %sub) #7
  br label %free_and_exit

free_and_exit:                                    ; preds = %if.end4, %if.end.free_and_exit_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.free_and_exit_crit_edge ], [ %call6, %if.end4 ]
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %free_and_exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_and_exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_debug_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_debug_info_to_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_getlog_read(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %stats = alloca %struct.mwifiex_ds_get_stats, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #7
  %2 = inttoptr i32 %call to ptr
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %stats) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call ptr @memset(ptr %stats, i32 0, i32 72)
  %call1 = call i32 @mwifiex_get_stats_info(ptr noundef %1, ptr noundef nonnull %stats) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.free_and_exit_crit_edge

if.end.free_and_exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_and_exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats, align 4
  %failed = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 1
  %6 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %failed, align 4
  %retry = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 2
  %8 = ptrtoint ptr %retry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retry, align 4
  %multi_retry = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 3
  %10 = ptrtoint ptr %multi_retry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %multi_retry, align 4
  %frame_dup = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 4
  %12 = ptrtoint ptr %frame_dup to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_dup, align 4
  %rts_success = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 5
  %14 = ptrtoint ptr %rts_success to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rts_success, align 4
  %rts_failure = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 6
  %16 = ptrtoint ptr %rts_failure to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rts_failure, align 4
  %ack_failure = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 7
  %18 = ptrtoint ptr %ack_failure to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ack_failure, align 4
  %rx_frag = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 8
  %20 = ptrtoint ptr %rx_frag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_frag, align 4
  %mcast_rx_frame = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 9
  %22 = ptrtoint ptr %mcast_rx_frame to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mcast_rx_frame, align 4
  %fcs_error = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 10
  %24 = ptrtoint ptr %fcs_error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fcs_error, align 4
  %tx_frame = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 11
  %26 = ptrtoint ptr %tx_frame to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_frame, align 4
  %wep_icv_error = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 12
  %28 = ptrtoint ptr %wep_icv_error to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wep_icv_error, align 4
  %arrayidx6 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 12, i32 1
  %30 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 12, i32 2
  %32 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 12, i32 3
  %34 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx10, align 4
  %bcn_rcv_cnt = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 13
  %36 = ptrtoint ptr %bcn_rcv_cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bcn_rcv_cnt, align 4
  %bcn_miss_cnt = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 14
  %38 = ptrtoint ptr %bcn_miss_cnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bcn_miss_cnt, align 4
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.57, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39)
  %add.ptr = getelementptr i8, ptr %2, i32 %call11
  %40 = ptrtoint ptr %add.ptr to i32
  %sub = sub i32 %40, %call
  %call12 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %2, i32 noundef %sub) #7
  br label %free_and_exit

free_and_exit:                                    ; preds = %if.end4, %if.end.free_and_exit_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.free_and_exit_crit_edge ], [ %call12, %if.end4 ]
  call void @free_pages(i32 noundef %call, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %free_and_exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_and_exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %stats) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_stats_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_regrdwr_read(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %reg_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #7
  %2 = inttoptr i32 %call to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_value) #7
  %3 = ptrtoint ptr %reg_value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg_value, align 4, !annotation !221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @saved_reg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 12288, ptr %2, align 1
  br label %done

if.end4:                                          ; preds = %if.end
  %6 = load i32, ptr @saved_reg_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not = icmp eq i32 %6, -1
  %7 = load i32, ptr @saved_reg_offset, align 4
  br i1 %cmp.not, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @mwifiex_reg_write(ptr noundef %1, i32 noundef %4, i32 noundef %7, i32 noundef %6) #7
  %8 = load i32, ptr @saved_reg_type, align 4
  %9 = load i32, ptr @saved_reg_offset, align 4
  %10 = load i32, ptr @saved_reg_value, align 4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4096, ptr noundef nonnull @.str.59, i32 noundef %8, i32 noundef %9, i32 noundef %10)
  %call9 = tail call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %2, i32 noundef %call7) #7
  br label %done

if.end10:                                         ; preds = %if.end4
  %call11 = call i32 @mwifiex_reg_read(ptr noundef %1, i32 noundef %4, i32 noundef %7, ptr noundef nonnull %reg_value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.done_crit_edge

if.end10.done_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load i32, ptr @saved_reg_type, align 4
  %12 = load i32, ptr @saved_reg_offset, align 4
  %13 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_value, align 4
  %call15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4096, ptr noundef nonnull @.str.59, i32 noundef %11, i32 noundef %12, i32 noundef %14)
  %call17 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %2, i32 noundef %call15) #7
  br label %done

done:                                             ; preds = %if.end14, %if.end10.done_crit_edge, %if.then5, %if.then2
  %ret.0 = phi i32 [ %call9, %if.then5 ], [ %call17, %if.end14 ], [ 0, %if.then2 ], [ -22, %if.end10.done_crit_edge ]
  call void @free_pages(i32 noundef %call, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_regrdwr_write(ptr nocapture noundef readnone %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %reg_type = alloca i32, align 4
  %reg_offset = alloca i32, align 4
  %reg_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_type) #7
  %0 = ptrtoint ptr %reg_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg_type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_offset) #7
  %1 = ptrtoint ptr %reg_offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %reg_offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_value) #7
  %2 = ptrtoint ptr %reg_value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_value, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %3) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.60, ptr noundef nonnull %reg_type, ptr noundef nonnull %reg_offset, ptr noundef nonnull %reg_value)
  %5 = ptrtoint ptr %reg_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.end.done_crit_edge, label %lor.lhs.false

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %lor.lhs.false.done_crit_edge, label %if.else

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %6, ptr @saved_reg_type, align 4
  store i32 %8, ptr @saved_reg_offset, align 4
  %9 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_value, align 4
  store i32 %10, ptr @saved_reg_value, align 4
  br label %done

done:                                             ; preds = %if.else, %lor.lhs.false.done_crit_edge, %if.end.done_crit_edge
  %ret.0 = phi i32 [ %count, %if.else ], [ -22, %lor.lhs.false.done_crit_edge ], [ -22, %if.end.done_crit_edge ]
  call void @kfree(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %ret.0, %done ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_offset) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_type) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_reg_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_reg_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_rdeeprom_read(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %value = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #7
  %2 = inttoptr i32 %call to ptr
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %value) #7
  %3 = call ptr @memset(ptr %value, i32 255, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @saved_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 12288, ptr %2, align 1
  br label %done

if.end3:                                          ; preds = %if.end
  %conv = trunc i32 %4 to i16
  %6 = load i32, ptr @saved_bytes, align 4
  %conv4 = trunc i32 %6 to i16
  %call5 = call i32 @mwifiex_eeprom_read(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext %conv4, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.out_free_crit_edge

if.end3.out_free_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.end8:                                          ; preds = %if.end3
  %7 = load i32, ptr @saved_offset, align 4
  %8 = load i32, ptr @saved_bytes, align 4
  %call9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4096, ptr noundef nonnull @.str.61, i32 noundef %7, i32 noundef %8)
  %9 = load i32, ptr @saved_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1033.not = icmp eq i32 %9, 0
  br i1 %cmp1033.not, label %if.end8.done_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.done_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %pos.034 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %call9, %if.end8.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 %pos.034
  %sub = sub i32 4096, %pos.034
  %arrayidx = getelementptr [256 x i8], ptr %value, i32 0, i32 %i.035
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %11 to i32
  %call13 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.62, i32 noundef %conv12) #7
  %add = add i32 %call13, %pos.034
  %inc = add nuw i32 %i.035, 1
  %12 = load i32, ptr @saved_bytes, align 4
  %cmp10 = icmp ult i32 %inc, %12
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.done_crit_edge

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

done:                                             ; preds = %for.body.done_crit_edge, %if.end8.done_crit_edge, %if.then1
  %pos.1 = phi i32 [ 1, %if.then1 ], [ %call9, %if.end8.done_crit_edge ], [ %add, %for.body.done_crit_edge ]
  %call14 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %2, i32 noundef %pos.1) #7
  br label %out_free

out_free:                                         ; preds = %done, %if.end3.out_free_crit_edge
  %ret.0 = phi i32 [ %call14, %done ], [ -22, %if.end3.out_free_crit_edge ]
  call void @free_pages(i32 noundef %call, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_rdeeprom_write(ptr nocapture noundef readnone %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %offset = alloca i32, align 4
  %bytes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #7
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes) #7
  %1 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %bytes, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %2) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.63, ptr noundef nonnull %offset, ptr noundef nonnull %bytes)
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp4 = icmp eq i32 %5, -1
  br i1 %cmp4, label %if.end.done_crit_edge, label %lor.lhs.false

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp5 = icmp eq i32 %7, -1
  br i1 %cmp5, label %lor.lhs.false.done_crit_edge, label %if.else

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %5, ptr @saved_offset, align 4
  store i32 %7, ptr @saved_bytes, align 4
  br label %done

done:                                             ; preds = %if.else, %lor.lhs.false.done_crit_edge, %if.end.done_crit_edge
  %ret.0 = phi i32 [ %count, %if.else ], [ -22, %lor.lhs.false.done_crit_edge ], [ -22, %if.end.done_crit_edge ]
  call void @kfree(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %ret.0, %done ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_eeprom_read(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_memrw_read(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = inttoptr i32 %call to ptr
  %mem_rw = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 159
  %3 = ptrtoint ptr %mem_rw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mem_rw, align 4
  %value = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 159, i32 1
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4096, ptr noundef nonnull @.str.64, i32 noundef %4, i32 noundef %6)
  %call4 = tail call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %2, i32 noundef %call3) #7
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_memrw_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %cmd = alloca i8, align 1
  %mem_rw = alloca %struct.mwifiex_ds_mem_rw, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #7
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cmd, align 1, !annotation !221
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mem_rw) #7
  %1 = ptrtoint ptr %mem_rw to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mem_rw, align 8, !annotation !221
  %2 = getelementptr inbounds %struct.mwifiex_ds_mem_rw, ptr %mem_rw, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !221
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %6) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.65, ptr noundef nonnull %cmd, ptr noundef nonnull %mem_rw, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 3
  br i1 %cmp4.not, label %if.end6, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %if.end6.done_crit_edge [
    i8 114, label %if.end6.if.then12_crit_edge
    i8 82, label %if.end6.if.then12_crit_edge44
    i8 119, label %if.end6.if.end24_crit_edge
    i8 87, label %if.end6.if.end24_crit_edge45
  ]

if.end6.if.end24_crit_edge45:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end6.if.end24_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end6.if.then12_crit_edge44:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end6.if.then12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end6.done_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then12:                                        ; preds = %if.end6.if.then12_crit_edge, %if.end6.if.then12_crit_edge44
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %2, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then12, %if.end6.if.end24_crit_edge, %if.end6.if.end24_crit_edge45
  %cmd_action.0 = phi i16 [ 0, %if.then12 ], [ 1, %if.end6.if.end24_crit_edge ], [ 1, %if.end6.if.end24_crit_edge45 ]
  %mem_rw25 = getelementptr inbounds %struct.mwifiex_private, ptr %5, i32 0, i32 159
  %12 = ptrtoint ptr %mem_rw to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %mem_rw, align 8
  %14 = ptrtoint ptr %mem_rw25 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %mem_rw25, align 4
  %call26 = call i32 @mwifiex_send_cmd(ptr noundef %5, i16 noundef zeroext 134, i16 noundef zeroext %cmd_action.0, i32 noundef 0, ptr noundef nonnull %mem_rw, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  %count.43 = select i1 %tobool.not, i32 %count, i32 -1
  br label %done

done:                                             ; preds = %if.end24, %if.end6.done_crit_edge, %if.end.done_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.done_crit_edge ], [ -22, %if.end6.done_crit_edge ], [ %count.43, %if.end24 ]
  call void @kfree(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %ret.0, %done ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mem_rw) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_hscfg_read(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %hscfg = alloca %struct.mwifiex_ds_hs_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hscfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %2 = call ptr @memset(ptr %hscfg, i32 255, i32 16)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hscfg, i32 0, i32 3
  %4 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hscfg, i32 0, i32 2
  %5 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hscfg, i32 0, i32 1
  %6 = inttoptr i32 %call to ptr
  %call1 = call i32 @mwifiex_set_hs_params(ptr noundef %1, i16 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %hscfg) #7
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %5, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %4, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 4096, ptr noundef nonnull @.str.59, i32 noundef %8, i32 noundef %10, i32 noundef %12)
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %6, i32 noundef %call2) #7
  call void @free_pages(i32 noundef %call, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hscfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_hscfg_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %hscfg = alloca %struct.mwifiex_ds_hs_cfg, align 4
  %conditions = alloca i32, align 4
  %gpio = alloca i32, align 4
  %gap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hscfg) #7
  %2 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hscfg, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hscfg, i32 0, i32 2
  %4 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hscfg, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conditions) #7
  %5 = ptrtoint ptr %conditions to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %conditions, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio) #7
  %6 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 255, ptr %gpio, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gap) #7
  %7 = ptrtoint ptr %gap to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 255, ptr %gap, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %8) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.66, ptr noundef nonnull %conditions, ptr noundef nonnull %gpio, ptr noundef nonnull %gap)
  %10 = call ptr @memset(ptr %hscfg, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp4 = icmp sgt i32 %call3, 3
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.67) #7
  br label %done

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp7 = icmp sgt i32 %call3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp8 = icmp ne i32 %call3, 3
  %or.cond = and i1 %cmp7, %cmp8
  br i1 %or.cond, label %if.end11.thread, label %if.end11

if.end11.thread:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 @mwifiex_set_hs_params(ptr noundef %1, i16 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %hscfg) #7
  br label %if.then12

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end11.if.end26_crit_edge, label %if.end11.if.then12_crit_edge

if.end11.if.then12_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then12:                                        ; preds = %if.end11.if.then12_crit_edge, %if.end11.thread
  %13 = ptrtoint ptr %conditions to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %conditions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp13 = icmp eq i32 %14, -1
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 @mwifiex_cancel_hs(ptr noundef %1, i32 noundef 0) #7
  br label %done

if.end18:                                         ; preds = %if.then12
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp19 = icmp sgt i32 %call3, 1
  br i1 %cmp19, label %if.end22, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end22:                                         ; preds = %if.end18
  %16 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp23 = icmp eq i32 %call3, 3
  br i1 %cmp23, label %if.then24, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %gap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gap, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %4, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22.if.end26_crit_edge, %if.end18.if.end26_crit_edge, %if.end11.if.end26_crit_edge
  %22 = ptrtoint ptr %hscfg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %hscfg, align 4
  %call27 = call i32 @mwifiex_set_hs_params(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %hscfg) #7
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %call29 = call i32 @mwifiex_enable_hs(ptr noundef %24) #7
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %26, i32 0, i32 12
  call void @_clear_bit(i32 noundef 4, ptr noundef %work_flags) #7
  br label %done

done:                                             ; preds = %if.end26, %if.then14, %if.then5
  %ret.0 = phi i32 [ -22, %if.then5 ], [ %count, %if.then14 ], [ %count, %if.end26 ]
  call void @kfree(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %ret.0, %done ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gap) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conditions) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hscfg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_hs_params(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cancel_hs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_enable_hs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_histogram_read(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #7
  %2 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %hist_data = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 149
  %3 = ptrtoint ptr %hist_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hist_data, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %num_samples = getelementptr inbounds %struct.mwifiex_histogram_data, ptr %4, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_samples, i32 noundef 4) #7
  %5 = ptrtoint ptr %num_samples to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %num_samples, align 4
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.68, i32 noundef %6)
  %add.ptr = getelementptr i8, ptr %2, i32 %call7
  %7 = call ptr @memcpy(ptr %add.ptr, ptr @.str.69, i32 144)
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 143
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %12 = call ptr @memcpy(ptr %add.ptr9, ptr @.str.70, i32 71)
  br label %if.end16

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 2560, ptr %add.ptr9, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %.sink = phi i32 [ 1, %if.else ], [ 70, %if.then11 ]
  %add.ptr15 = getelementptr i8, ptr %add.ptr9, i32 %.sink
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16
  %p.1157 = phi ptr [ %add.ptr15, %if.end16 ], [ %p.2, %for.inc.for.body_crit_edge ]
  %i.0155 = phi i32 [ 0, %if.end16 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [74 x %struct.atomic_t], ptr %4, i32 0, i32 %i.0155
  %call.i.i150 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #7
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %if.then19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.1157, ptr noundef nonnull @.str.71, i32 noundef %i.0155, i32 noundef %15)
  %add.ptr21 = getelementptr i8, ptr %p.1157, i32 %call20
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %for.body.for.inc_crit_edge
  %p.2 = phi ptr [ %add.ptr21, %if.then19 ], [ %p.1157, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %inc, 44
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %fw_cap_info24 = getelementptr inbounds %struct.mwifiex_adapter, ptr %17, i32 0, i32 47
  %18 = ptrtoint ptr %fw_cap_info24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw_cap_info24, align 4
  %and25 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %for.end.for.body45.preheader_crit_edge, label %for.end.for.body30_crit_edge

for.end.for.body30_crit_edge:                     ; preds = %for.end
  br label %for.body30

for.end.for.body45.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45.preheader

for.body30:                                       ; preds = %for.inc39.for.body30_crit_edge, %for.end.for.body30_crit_edge
  %p.3160 = phi ptr [ %p.4, %for.inc39.for.body30_crit_edge ], [ %p.2, %for.end.for.body30_crit_edge ]
  %i.1158 = phi i32 [ %inc40, %for.inc39.for.body30_crit_edge ], [ 44, %for.end.for.body30_crit_edge ]
  %arrayidx32 = getelementptr [74 x %struct.atomic_t], ptr %4, i32 0, i32 %i.1158
  %call.i.i151 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx32, i32 noundef 4) #7
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool34.not = icmp eq i32 %21, 0
  br i1 %tobool34.not, label %for.body30.for.inc39_crit_edge, label %if.then35

for.body30.for.inc39_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39

if.then35:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.3160, ptr noundef nonnull @.str.71, i32 noundef %i.1158, i32 noundef %21)
  %add.ptr37 = getelementptr i8, ptr %p.3160, i32 %call36
  br label %for.inc39

for.inc39:                                        ; preds = %if.then35, %for.body30.for.inc39_crit_edge
  %p.4 = phi ptr [ %add.ptr37, %if.then35 ], [ %p.3160, %for.body30.for.inc39_crit_edge ]
  %inc40 = add nuw nsw i32 %i.1158, 1
  %exitcond170.not = icmp eq i32 %inc40, 74
  br i1 %exitcond170.not, label %for.inc39.for.body45.preheader_crit_edge, label %for.inc39.for.body30_crit_edge

for.inc39.for.body30_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body30

for.inc39.for.body45.preheader_crit_edge:         ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45.preheader

for.body45.preheader:                             ; preds = %for.inc39.for.body45.preheader_crit_edge, %for.end.for.body45.preheader_crit_edge
  %p.6163.ph = phi ptr [ %p.2, %for.end.for.body45.preheader_crit_edge ], [ %p.4, %for.inc39.for.body45.preheader_crit_edge ]
  br label %for.body45

for.body45:                                       ; preds = %for.inc53.for.body45_crit_edge, %for.body45.preheader
  %p.6163 = phi ptr [ %p.7, %for.inc53.for.body45_crit_edge ], [ %p.6163.ph, %for.body45.preheader ]
  %i.2161 = phi i32 [ %inc54, %for.inc53.for.body45_crit_edge ], [ 0, %for.body45.preheader ]
  %arrayidx46 = getelementptr %struct.mwifiex_histogram_data, ptr %4, i32 0, i32 1, i32 %i.2161
  %call.i.i152 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx46, i32 noundef 4) #7
  %22 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool48.not = icmp eq i32 %23, 0
  br i1 %tobool48.not, label %for.body45.for.inc53_crit_edge, label %if.then49

for.body45.for.inc53_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc53

if.then49:                                        ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #9
  %call50 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.6163, ptr noundef nonnull @.str.72, i32 noundef %i.2161, i32 noundef %23)
  %add.ptr51 = getelementptr i8, ptr %p.6163, i32 %call50
  br label %for.inc53

for.inc53:                                        ; preds = %if.then49, %for.body45.for.inc53_crit_edge
  %p.7 = phi ptr [ %add.ptr51, %if.then49 ], [ %p.6163, %for.body45.for.inc53_crit_edge ]
  %inc54 = add nuw nsw i32 %i.2161, 1
  %exitcond171.not = icmp eq i32 %inc54, 256
  br i1 %exitcond171.not, label %for.inc53.for.body58_crit_edge, label %for.inc53.for.body45_crit_edge

for.inc53.for.body45_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45

for.inc53.for.body58_crit_edge:                   ; preds = %for.inc53
  br label %for.body58

for.body58:                                       ; preds = %for.inc66.for.body58_crit_edge, %for.inc53.for.body58_crit_edge
  %p.8166 = phi ptr [ %p.9, %for.inc66.for.body58_crit_edge ], [ %p.7, %for.inc53.for.body58_crit_edge ]
  %i.3164 = phi i32 [ %inc67, %for.inc66.for.body58_crit_edge ], [ 0, %for.inc53.for.body58_crit_edge ]
  %arrayidx59 = getelementptr %struct.mwifiex_histogram_data, ptr %4, i32 0, i32 2, i32 %i.3164
  %call.i.i153 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx59, i32 noundef 4) #7
  %24 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool61.not = icmp eq i32 %25, 0
  br i1 %tobool61.not, label %for.body58.for.inc66_crit_edge, label %if.then62

for.body58.for.inc66_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc66

if.then62:                                        ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %i.3164, -128
  %call63 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.8166, ptr noundef nonnull @.str.73, i32 noundef %sub, i32 noundef %25)
  %add.ptr64 = getelementptr i8, ptr %p.8166, i32 %call63
  br label %for.inc66

for.inc66:                                        ; preds = %if.then62, %for.body58.for.inc66_crit_edge
  %p.9 = phi ptr [ %add.ptr64, %if.then62 ], [ %p.8166, %for.body58.for.inc66_crit_edge ]
  %inc67 = add nuw nsw i32 %i.3164, 1
  %exitcond172.not = icmp eq i32 %inc67, 256
  br i1 %exitcond172.not, label %for.inc66.for.body71_crit_edge, label %for.inc66.for.body58_crit_edge

for.inc66.for.body58_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body58

for.inc66.for.body71_crit_edge:                   ; preds = %for.inc66
  br label %for.body71

for.body71:                                       ; preds = %for.inc79.for.body71_crit_edge, %for.inc66.for.body71_crit_edge
  %p.10169 = phi ptr [ %p.11, %for.inc79.for.body71_crit_edge ], [ %p.9, %for.inc66.for.body71_crit_edge ]
  %i.4167 = phi i32 [ %inc80, %for.inc79.for.body71_crit_edge ], [ 0, %for.inc66.for.body71_crit_edge ]
  %arrayidx72 = getelementptr %struct.mwifiex_histogram_data, ptr %4, i32 0, i32 3, i32 %i.4167
  %call.i.i154 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx72, i32 noundef 4) #7
  %26 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool74.not = icmp eq i32 %27, 0
  br i1 %tobool74.not, label %for.body71.for.inc79_crit_edge, label %if.then75

for.body71.for.inc79_crit_edge:                   ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc79

if.then75:                                        ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #9
  %call76 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.10169, ptr noundef nonnull @.str.74, i32 noundef %i.4167, i32 noundef %27)
  %add.ptr77 = getelementptr i8, ptr %p.10169, i32 %call76
  br label %for.inc79

for.inc79:                                        ; preds = %if.then75, %for.body71.for.inc79_crit_edge
  %p.11 = phi ptr [ %add.ptr77, %if.then75 ], [ %p.10169, %for.body71.for.inc79_crit_edge ]
  %inc80 = add nuw nsw i32 %i.4167, 1
  %exitcond173.not = icmp eq i32 %inc80, 256
  br i1 %exitcond173.not, label %for.end81, label %for.inc79.for.body71_crit_edge

for.inc79.for.body71_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body71

for.end81:                                        ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %p.11 to i32
  %sub82 = sub i32 %28, %call
  %call83 = tail call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %2, i32 noundef %sub82) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end81, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call83, %for.end81 ], [ -12, %entry.cleanup_crit_edge ], [ -14, %lor.lhs.false.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_histogram_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hist_data = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 149
  %2 = ptrtoint ptr %hist_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hist_data, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mwifiex_hist_data_reset(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_hist_data_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_debug_mask_read(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = inttoptr i32 %call to ptr
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %debug_mask = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_mask, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4096, ptr noundef nonnull @.str.75, i32 noundef %6)
  %call2 = tail call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %2, i32 noundef %call1) #7
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_debug_mask_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %debug_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %debug_mask) #7
  %0 = ptrtoint ptr %debug_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %debug_mask, align 4, !annotation !221
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %3) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %debug_mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end5, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_mask, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 8
  %debug_mask6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %debug_mask6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %debug_mask6, align 4
  br label %done

done:                                             ; preds = %if.end5, %if.end.done_crit_edge
  %ret.0 = phi i32 [ %count, %if.end5 ], [ -22, %if.end.done_crit_edge ]
  call void @kfree(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %ret.0, %done ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %debug_mask) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_timeshare_coex_read(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  %timeshare_coex = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !221
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !221
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !221
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %timeshare_coex) #7
  %7 = ptrtoint ptr %timeshare_coex to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %timeshare_coex, align 1, !annotation !221
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %fw_api_ver = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 138
  %10 = ptrtoint ptr %fw_api_ver to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fw_api_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %11)
  %cmp.not = icmp eq i8 %11, 15
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @mwifiex_send_cmd(ptr noundef %1, i16 noundef zeroext 224, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %timeshare_coex, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %timeshare_coex to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %timeshare_coex, align 1, !range !222
  %14 = zext i8 %13 to i32
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.76, i32 noundef %14)
  %call8 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end3 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %timeshare_coex) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_timeshare_coex_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %timeshare_coex = alloca i8, align 1
  %kbuf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %timeshare_coex) #7
  %0 = ptrtoint ptr %timeshare_coex to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %timeshare_coex, align 1, !annotation !221
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %kbuf) #7
  %3 = call ptr @memset(ptr %kbuf, i32 255, i32 16)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 8
  %fw_api_ver = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 138
  %6 = ptrtoint ptr %fw_api_ver to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_api_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %7)
  %cmp.not = icmp eq i8 %7, 15
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = call ptr @memset(ptr %kbuf, i32 0, i32 16)
  %9 = tail call i32 @llvm.umin.i32(i32 %count, i32 15)
  call void @__check_object_size(ptr noundef nonnull %kbuf, i32 noundef %9, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.79, i32 noundef 156) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %9, i32 -1226833920) #10, !srcloc !223
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !224

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kbuf, i32 noundef %9) #7
  %11 = call i32 @llvm.read_register.i32(metadata !211) #7
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !225
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %kbuf, ptr noundef %ubuf, i32 noundef %9) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #7, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %9, %if.end.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %9, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.then11.i.i, !prof !224

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %9, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %kbuf, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  %call.i = call i32 @kstrtobool(ptr noundef nonnull %kbuf, ptr noundef nonnull %timeshare_coex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call i32 @mwifiex_send_cmd(ptr noundef %2, i16 noundef zeroext 224, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %timeshare_coex, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %count.call11 = select i1 %tobool12.not, i32 %count, i32 %call11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %count.call11, %if.end10 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %kbuf) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %timeshare_coex) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_reset_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %result = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result) #7
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %result, align 1, !annotation !221
  %call = call i32 @kstrtobool_from_user(ptr noundef %ubuf, i32 noundef %count, ptr noundef nonnull %result) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %result, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %card_reset = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 18, i32 19
  %7 = ptrtoint ptr %card_reset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card_reset, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %do.end

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.80) #11
  %11 = ptrtoint ptr %card_reset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card_reset, align 4
  call void %12(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %do.end ], [ %count, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_verext_read(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #7
  %2 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %versionstrsel = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 105
  %3 = ptrtoint ptr %versionstrsel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %versionstrsel, align 8
  %call = tail call i32 @mwifiex_get_ver_ext(ptr noundef %1, i32 noundef %4) #7
  %version_str = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 106
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 256, ptr noundef nonnull @.str.85, ptr noundef %version_str)
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call2) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_verext_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %versionstrsel = alloca i32, align 4
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %versionstrsel) #7
  %0 = ptrtoint ptr %versionstrsel to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %versionstrsel, align 4, !annotation !221
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #7
  %3 = call ptr @memset(ptr %buf, i32 0, i32 16)
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 15)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.79, i32 noundef 156) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %4, i32 -1226833920) #10, !srcloc !223
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !224

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #7
  %6 = call i32 @llvm.read_register.i32(metadata !211) #7
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !225
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #7, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !224

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call.i = call i32 @kstrtouint(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull %versionstrsel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %versionstrsel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %versionstrsel, align 4
  %versionstrsel6 = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 105
  %12 = ptrtoint ptr %versionstrsel6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %versionstrsel6, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end5 ], [ %call.i, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %versionstrsel) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !193, !195, !197, !199, !201, !202, !203, !204, !205, !206, !207, !209}
!llvm.named.register.sp = !{!211}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 977, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 978, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 979, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 980, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 981, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 983, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 984, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 985, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 986, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 987, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 988, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 989, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 1011, i32 40}
!26 = !{ptr @mwifiex_dfs_dir, !27, !"mwifiex_dfs_dir", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 26, i32 23}
!28 = !{ptr @mwifiex_dfs_info_fops, !29, !"mwifiex_dfs_info_fops", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 949, i32 1}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 100, i32 18}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 101, i32 18}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 102, i32 18}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 103, i32 18}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 106, i32 19}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 108, i32 19}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 110, i32 18}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 111, i32 34}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 111, i32 51}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 112, i32 18}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 115, i32 19}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 117, i32 19}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 119, i32 19}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 120, i32 19}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 121, i32 19}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 122, i32 19}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 126, i32 20}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 130, i32 18}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 131, i32 18}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 132, i32 18}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 133, i32 18}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 134, i32 18}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 135, i32 18}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 136, i32 18}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 137, i32 18}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 138, i32 18}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 139, i32 9}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 139, i32 16}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 140, i32 18}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 143, i32 19}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 144, i32 9}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 144, i32 21}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 146, i32 18}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 29, i32 2}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 30, i32 2}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 31, i32 2}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 32, i32 2}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 33, i32 2}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 34, i32 2}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 35, i32 2}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 36, i32 2}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 37, i32 2}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 38, i32 2}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 39, i32 2}
!118 = !{ptr @bss_modes, !119, !"bss_modes", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 28, i32 14}
!120 = !{ptr @mwifiex_dfs_debug_fops, !121, !"mwifiex_dfs_debug_fops", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 950, i32 1}
!122 = !{ptr @info, !123, !"info", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 338, i32 34}
!124 = !{ptr @mwifiex_dfs_getlog_fops, !125, !"mwifiex_dfs_getlog_fops", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 951, i32 1}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 196, i32 18}
!128 = !{ptr @mwifiex_dfs_regrdwr_fops, !129, !"mwifiex_dfs_regrdwr_fops", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 952, i32 1}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 474, i32 35}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 482, i32 35}
!134 = !{ptr @saved_reg_type, !135, !"saved_reg_type", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 414, i32 12}
!136 = !{ptr @saved_reg_value, !137, !"saved_reg_value", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 414, i32 46}
!138 = !{ptr @saved_reg_offset, !139, !"saved_reg_offset", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 414, i32 28}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 435, i32 14}
!142 = !{ptr @mwifiex_dfs_rdeeprom_fops, !143, !"mwifiex_dfs_rdeeprom_fops", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 953, i32 1}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 751, i32 33}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 754, i32 48}
!148 = !{ptr @saved_offset, !149, !"saved_offset", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 680, i32 12}
!150 = !{ptr @saved_bytes, !151, !"saved_bytes", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 680, i32 31}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 701, i32 14}
!154 = !{ptr @mwifiex_dfs_memrw_fops, !155, !"mwifiex_dfs_memrw_fops", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 954, i32 1}
!156 = !{ptr @.str.64, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 672, i32 34}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 628, i32 20}
!160 = !{ptr @mwifiex_dfs_hscfg_fops, !161, !"mwifiex_dfs_hscfg_fops", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 955, i32 1}
!162 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 781, i32 24}
!164 = !{ptr @.str.67, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 786, i32 3}
!166 = !{ptr @mwifiex_dfs_histogram_fops, !167, !"mwifiex_dfs_histogram_fops", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 956, i32 1}
!168 = !{ptr @.str.68, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 272, i32 18}
!170 = !{ptr @.str.69, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 277, i32 8}
!172 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 282, i32 9}
!174 = !{ptr @.str.71, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 290, i32 20}
!176 = !{ptr @.str.72, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 306, i32 20}
!178 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 311, i32 20}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 317, i32 20}
!182 = !{ptr @mwifiex_dfs_debug_mask_fops, !183, !"mwifiex_dfs_debug_mask_fops", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 957, i32 1}
!184 = !{ptr @.str.75, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 526, i32 34}
!186 = !{ptr @mwifiex_dfs_timeshare_coex_fops, !187, !"mwifiex_dfs_timeshare_coex_fops", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 958, i32 1}
!188 = !{ptr @.str.76, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 868, i32 21}
!190 = distinct !{null, !191, !"__already_done", i1 false, i1 false}
!191 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!192 = distinct !{null, !191, !"<string literal>", i1 false, i1 false}
!193 = distinct !{null, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!195 = !{ptr @.str.79, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!197 = !{ptr @mwifiex_dfs_reset_fops, !198, !"mwifiex_dfs_reset_fops", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 959, i32 1}
!199 = !{ptr @.str.80, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 917, i32 3}
!201 = !{ptr @.str.81, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.82, !200, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.83, !200, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @mwifiex_reset_write._entry, !200, !"_entry", i1 false, i1 false}
!206 = !{ptr @mwifiex_reset_write._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @mwifiex_dfs_verext_fops, !208, !"mwifiex_dfs_verext_fops", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 960, i32 1}
!209 = !{ptr @.str.85, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/marvell/mwifiex/debugfs.c", i32 603, i32 35}
!211 = !{!"sp"}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 1, !"min_enum_size", i32 4}
!214 = !{i32 8, !"branch-target-enforcement", i32 0}
!215 = !{i32 8, !"sign-return-address", i32 0}
!216 = !{i32 8, !"sign-return-address-all", i32 0}
!217 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!221 = !{!"auto-init"}
!222 = !{i8 0, i8 2}
!223 = !{i64 2152201480, i64 2152201505}
!224 = !{!"branch_weights", i32 2000, i32 1}
!225 = !{i64 4697035}
!226 = !{i64 4697232}
!227 = !{i64 2152182465}
