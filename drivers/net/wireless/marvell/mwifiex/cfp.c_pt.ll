; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/cfp.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/cfp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.region_code_mapping = type { i8, [3 x i8] }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.148 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }

@region_code_index = dso_local global { [9 x i16], [46 x i8] } { [9 x i16] [i16 0, i16 16, i16 32, i16 48, i16 49, i16 50, i16 64, i16 65, i16 80], [46 x i8] zeroinitializer }, align 32
@region_code_mapping_t = internal global { [8 x %struct.region_code_mapping], [32 x i8] } { [8 x %struct.region_code_mapping] [%struct.region_code_mapping { i8 16, [3 x i8] c"US " }, %struct.region_code_mapping { i8 32, [3 x i8] c"CA " }, %struct.region_code_mapping { i8 48, [3 x i8] c"FR " }, %struct.region_code_mapping { i8 49, [3 x i8] c"ES " }, %struct.region_code_mapping { i8 50, [3 x i8] c"FR " }, %struct.region_code_mapping { i8 64, [3 x i8] c"JP " }, %struct.region_code_mapping { i8 65, [3 x i8] c"JP " }, %struct.region_code_mapping { i8 80, [3 x i8] c"CN " }], [32 x i8] zeroinitializer }, align 32
@ac_mcs_rate_nss2 = internal constant { [8 x [10 x i16]], [32 x i8] } { [8 x [10 x i16]] [[10 x i16] [i16 234, i16 468, i16 702, i16 936, i16 1404, i16 1872, i16 2106, i16 2340, i16 2808, i16 3120], [10 x i16] [i16 260, i16 520, i16 780, i16 1040, i16 1560, i16 2080, i16 2340, i16 2600, i16 3120, i16 3467], [10 x i16] [i16 117, i16 234, i16 351, i16 468, i16 702, i16 936, i16 1053, i16 1170, i16 1404, i16 1560], [10 x i16] [i16 130, i16 260, i16 390, i16 520, i16 780, i16 1040, i16 1170, i16 1300, i16 1560, i16 1734], [10 x i16] [i16 54, i16 108, i16 162, i16 216, i16 324, i16 432, i16 486, i16 540, i16 648, i16 720], [10 x i16] [i16 60, i16 120, i16 180, i16 240, i16 360, i16 480, i16 540, i16 600, i16 720, i16 800], [10 x i16] [i16 26, i16 52, i16 74, i16 104, i16 156, i16 208, i16 234, i16 260, i16 312, i16 0], [10 x i16] [i16 29, i16 58, i16 87, i16 116, i16 174, i16 230, i16 260, i16 289, i16 347, i16 0]], [32 x i8] zeroinitializer }, align 32
@ac_mcs_rate_nss1 = internal constant { [8 x [10 x i16]], [32 x i8] } { [8 x [10 x i16]] [[10 x i16] [i16 117, i16 234, i16 351, i16 468, i16 702, i16 936, i16 1053, i16 1170, i16 1404, i16 1560], [10 x i16] [i16 130, i16 260, i16 390, i16 520, i16 780, i16 1040, i16 1170, i16 1300, i16 1560, i16 1734], [10 x i16] [i16 59, i16 117, i16 176, i16 234, i16 351, i16 468, i16 527, i16 585, i16 702, i16 780], [10 x i16] [i16 65, i16 130, i16 195, i16 260, i16 390, i16 520, i16 585, i16 650, i16 780, i16 867], [10 x i16] [i16 27, i16 54, i16 81, i16 108, i16 162, i16 216, i16 243, i16 270, i16 324, i16 360], [10 x i16] [i16 30, i16 60, i16 90, i16 120, i16 180, i16 240, i16 270, i16 300, i16 360, i16 400], [10 x i16] [i16 13, i16 26, i16 39, i16 52, i16 78, i16 104, i16 117, i16 130, i16 156, i16 0], [10 x i16] [i16 15, i16 29, i16 44, i16 58, i16 87, i16 116, i16 130, i16 145, i16 174, i16 0]], [32 x i8] zeroinitializer }, align 32
@mcs_rate = internal constant { [4 x [16 x i16]], [32 x i8] } { [4 x [16 x i16]] [[16 x i16] [i16 27, i16 54, i16 81, i16 108, i16 162, i16 216, i16 243, i16 270, i16 54, i16 108, i16 162, i16 216, i16 324, i16 432, i16 486, i16 540], [16 x i16] [i16 30, i16 60, i16 90, i16 120, i16 180, i16 240, i16 270, i16 300, i16 60, i16 120, i16 180, i16 240, i16 360, i16 480, i16 540, i16 600], [16 x i16] [i16 13, i16 26, i16 39, i16 52, i16 78, i16 104, i16 117, i16 130, i16 26, i16 52, i16 78, i16 104, i16 156, i16 208, i16 234, i16 260], [16 x i16] [i16 14, i16 28, i16 43, i16 57, i16 86, i16 115, i16 130, i16 144, i16 28, i16 57, i16 86, i16 115, i16 173, i16 231, i16 260, i16 288]], [32 x i8] zeroinitializer }, align 32
@mwifiex_data_rates = internal constant { [32 x i16], [32 x i8] } { [32 x i16] [i16 2, i16 4, i16 11, i16 22, i16 0, i16 12, i16 18, i16 24, i16 36, i16 48, i16 72, i16 96, i16 108, i16 144, i16 13, i16 26, i16 39, i16 52, i16 78, i16 104, i16 117, i16 130, i16 12, i16 27, i16 54, i16 81, i16 108, i16 162, i16 216, i16 243, i16 270, i16 0], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: cannot find cfp by band %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.mwifiex_get_cfp = private unnamed_addr constant [16 x i8] c"mwifiex_get_cfp\00", align 1
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: cannot find cfp by band %d\09& channel=%d freq=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@mwifiex_get_rates_from_cfg80211.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/marvell/mwifiex/cfp.c\00", [53 x i8] zeroinitializer }, align 32
@mwifiex_get_rates_from_cfg80211.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"info: infra band=%d\09supported_rates_b\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"info: infra band=%d\09supported_rates_g\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"info: infra band=%d\09supported_rates_bg\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"info: infra band=%d\09supported_rates_a\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"info: infra band=%d\09supported_rates_n\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"info: adhoc B\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"info: adhoc G only\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"info: adhoc BG\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"info: adhoc A\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.15 = internal global [19 x i64] [i64 17, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11, i64 16, i64 20, i64 30, i64 31, i64 52, i64 62, i64 63]
@__sancov_gen_cov_switch_values.16 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 4, i64 10, i64 11, i64 20]
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"region_code_index\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 69, i32 5 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"region_code_mapping_t\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 168, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"ac_mcs_rate_nss2\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 129, i32 18 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"ac_mcs_rate_nss1\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 96, i32 18 }
@___asan_gen_.29 = private unnamed_addr constant [9 x i8] c"mcs_rate\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 77, i32 18 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"mwifiex_data_rates\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 53, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 328, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 351, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 401, i32 7 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 434, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 442, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 454, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 462, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 480, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 491, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 497, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 503, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [46 x i8] c"../drivers/net/wireless/marvell/mwifiex/cfp.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 509, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @region_code_index, ptr @region_code_mapping_t, ptr @ac_mcs_rate_nss2, ptr @ac_mcs_rate_nss1, ptr @mcs_rate, ptr @mwifiex_data_rates, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @region_code_index to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @region_code_mapping_t to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_mcs_rate_nss2 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_mcs_rate_nss1 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs_rate to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_data_rates to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mwifiex_11d_code_2_region(i8 noundef zeroext %code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @region_code_mapping_t, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %0, i8 %code)
  %cmp5 = icmp eq i8 %0, %code
  br i1 %cmp5, label %entry.if.then_crit_edge, label %for.cond

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.cond:                                         ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds ([8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %code)
  %cmp5.1 = icmp eq i8 %1, %code
  br i1 %cmp5.1, label %for.cond.if.then_crit_edge, label %for.cond.1

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.cond.1:                                       ; preds = %for.cond
  %2 = load i8, ptr getelementptr inbounds ([8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %code)
  %cmp5.2 = icmp eq i8 %2, %code
  br i1 %cmp5.2, label %for.cond.1.if.then_crit_edge, label %for.cond.2

for.cond.1.if.then_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.cond.2:                                       ; preds = %for.cond.1
  %3 = load i8, ptr getelementptr inbounds ([8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %code)
  %cmp5.3 = icmp eq i8 %3, %code
  br i1 %cmp5.3, label %for.cond.2.if.then_crit_edge, label %for.cond.3

for.cond.2.if.then_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.cond.3:                                       ; preds = %for.cond.2
  %4 = load i8, ptr getelementptr inbounds ([8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %code)
  %cmp5.4 = icmp eq i8 %4, %code
  br i1 %cmp5.4, label %for.cond.3.if.then_crit_edge, label %for.cond.4

for.cond.3.if.then_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.cond.4:                                       ; preds = %for.cond.3
  %5 = load i8, ptr getelementptr inbounds ([8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 5), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %code)
  %cmp5.5 = icmp eq i8 %5, %code
  br i1 %cmp5.5, label %for.cond.4.if.then_crit_edge, label %for.cond.5

for.cond.4.if.then_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.cond.5:                                       ; preds = %for.cond.4
  %6 = load i8, ptr getelementptr inbounds ([8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 6), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %code)
  %cmp5.6 = icmp eq i8 %6, %code
  br i1 %cmp5.6, label %for.cond.5.if.then_crit_edge, label %for.cond.6

for.cond.5.if.then_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.cond.6:                                       ; preds = %for.cond.5
  %7 = load i8, ptr getelementptr inbounds ([8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 7), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %code)
  %cmp5.7 = icmp eq i8 %7, %code
  br i1 %cmp5.7, label %for.cond.6.if.then_crit_edge, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.6.if.then_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %for.cond.6.if.then_crit_edge, %for.cond.5.if.then_crit_edge, %for.cond.4.if.then_crit_edge, %for.cond.3.if.then_crit_edge, %for.cond.2.if.then_crit_edge, %for.cond.1.if.then_crit_edge, %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %conv.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.cond.if.then_crit_edge ], [ 2, %for.cond.1.if.then_crit_edge ], [ 3, %for.cond.2.if.then_crit_edge ], [ 4, %for.cond.3.if.then_crit_edge ], [ 5, %for.cond.4.if.then_crit_edge ], [ 6, %for.cond.5.if.then_crit_edge ], [ 7, %for.cond.6.if.then_crit_edge ]
  %region = getelementptr [8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 %conv.lcssa, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.6.cleanup_crit_edge
  %retval.0 = phi ptr [ %region, %if.then ], [ null, %for.cond.6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_index_to_acs_data_rate(ptr nocapture readnone %priv, i8 noundef zeroext %index, i8 noundef zeroext %ht_info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trunc = trunc i8 %ht_info to i2
  %0 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %if.else84 [
    i2 -2, label %if.then
    i2 1, label %if.then37
  ]

if.then:                                          ; preds = %entry
  %conv2 = zext i8 %index to i32
  %and3 = and i32 %conv2, 15
  %1 = tail call i32 @llvm.umin.i32(i32 %and3, i32 9)
  %and11 = lshr i8 %ht_info, 4
  %2 = and i8 %and11, 1
  %.mask = and i32 %conv2, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.mask)
  %cmp16 = icmp eq i32 %.mask, 16
  %3 = lshr i8 %ht_info, 1
  %4 = and i8 %3, 6
  %5 = or i8 %4, %2
  %add118 = xor i8 %5, 6
  %add = zext i8 %add118 to i32
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx21 = getelementptr [8 x [10 x i16]], ptr @ac_mcs_rate_nss2, i32 0, i32 %add, i32 %1
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx21, align 2
  br label %if.end94

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx30 = getelementptr [8 x [10 x i16]], ptr @ac_mcs_rate_nss1, i32 0, i32 %add, i32 %1
  %8 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx30, align 2
  br label %if.end94

if.then37:                                        ; preds = %entry
  %and39 = lshr i8 %ht_info, 2
  %10 = and i8 %and39, 3
  %and43 = lshr i8 %ht_info, 4
  %11 = and i8 %and43, 1
  %conv46 = zext i8 %index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %index)
  %cmp47 = icmp eq i8 %index, 32
  br i1 %cmp47, label %if.then49, label %if.else56

if.then49:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp51.not = icmp eq i8 %11, 0
  %. = select i1 %cmp51.not, i16 12, i16 13
  br label %if.end94

if.else56:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %index)
  %cmp58 = icmp ult i8 %index, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %switch = icmp ult i8 %10, 2
  %or.cond = and i1 %cmp58, %switch
  br i1 %or.cond, label %if.then67, label %if.else56.if.end94_crit_edge

if.else56.if.end94_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then67:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #10
  %12 = shl nuw nsw i8 %10, 1
  %13 = zext i8 %12 to i32
  %mul70 = sub nuw nsw i32 2, %13
  %conv71 = zext i8 %11 to i32
  %add72 = or i32 %mul70, %conv71
  %arrayidx75 = getelementptr [4 x [16 x i16]], ptr @mcs_rate, i32 0, i32 %add72, i32 %conv46
  %14 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx75, align 2
  br label %if.end94

if.else84:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %index)
  %cmp86 = icmp ugt i8 %index, 31
  %spec.store.select = select i1 %cmp86, i8 0, i8 %index
  %idxprom90 = zext i8 %spec.store.select to i32
  %arrayidx91 = getelementptr [32 x i16], ptr @mwifiex_data_rates, i32 0, i32 %idxprom90
  %16 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx91, align 2
  br label %if.end94

if.end94:                                         ; preds = %if.else84, %if.then67, %if.else56.if.end94_crit_edge, %if.then49, %if.else, %if.then18
  %rate.0.shrunk = phi i16 [ %7, %if.then18 ], [ %9, %if.else ], [ %15, %if.then67 ], [ %17, %if.else84 ], [ %., %if.then49 ], [ 2, %if.else56.if.end94_crit_edge ]
  %rate.0 = zext i16 %rate.0.shrunk to i32
  ret i32 %rate.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_index_to_data_rate(ptr nocapture noundef readonly %priv, i8 noundef zeroext %index, i8 noundef zeroext %ht_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %user_dev_mcs_support = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 115
  %2 = ptrtoint ptr %user_dev_mcs_support to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %user_dev_mcs_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %3)
  %cmp = icmp eq i8 %3, 34
  %cond = select i1 %cmp, i32 16, i32 8
  %is_hw_11ac_capable = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 128
  %4 = ptrtoint ptr %is_hw_11ac_capable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_hw_11ac_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %trunc.i = trunc i8 %ht_info to i2
  %6 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.13)
  switch i2 %trunc.i, label %if.else84.i [
    i2 -2, label %if.then.i
    i2 1, label %if.then37.i
  ]

if.then.i:                                        ; preds = %if.then
  %conv2.i = zext i8 %index to i32
  %and3.i = and i32 %conv2.i, 15
  %7 = tail call i32 @llvm.umin.i32(i32 %and3.i, i32 9) #8
  %and11.i = lshr i8 %ht_info, 4
  %8 = and i8 %and11.i, 1
  %.mask.i = and i32 %conv2.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.mask.i)
  %cmp16.i = icmp eq i32 %.mask.i, 16
  %9 = lshr i8 %ht_info, 1
  %10 = and i8 %9, 6
  %11 = or i8 %10, %8
  %add118.i = xor i8 %11, 6
  %add.i = zext i8 %add118.i to i32
  br i1 %cmp16.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx21.i = getelementptr [8 x [10 x i16]], ptr @ac_mcs_rate_nss2, i32 0, i32 %add.i, i32 %7
  %12 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx21.i, align 2
  br label %cleanup

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx30.i = getelementptr [8 x [10 x i16]], ptr @ac_mcs_rate_nss1, i32 0, i32 %add.i, i32 %7
  %14 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx30.i, align 2
  br label %cleanup

if.then37.i:                                      ; preds = %if.then
  %and39.i = lshr i8 %ht_info, 2
  %16 = and i8 %and39.i, 3
  %and43.i = lshr i8 %ht_info, 4
  %17 = and i8 %and43.i, 1
  %conv46.i = zext i8 %index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %index)
  %cmp47.i = icmp eq i8 %index, 32
  br i1 %cmp47.i, label %if.then49.i, label %if.else56.i

if.then49.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp51.not.i = icmp eq i8 %17, 0
  %..i = select i1 %cmp51.not.i, i16 12, i16 13
  br label %cleanup

if.else56.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %index)
  %cmp58.i = icmp ult i8 %index, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %switch.i = icmp ult i8 %16, 2
  %or.cond.i = and i1 %cmp58.i, %switch.i
  br i1 %or.cond.i, label %if.then67.i, label %if.else56.i.cleanup_crit_edge

if.else56.i.cleanup_crit_edge:                    ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then67.i:                                      ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = shl nuw nsw i8 %16, 1
  %19 = zext i8 %18 to i32
  %mul70.i = sub nuw nsw i32 2, %19
  %conv71.i = zext i8 %17 to i32
  %add72.i = or i32 %mul70.i, %conv71.i
  %arrayidx75.i = getelementptr [4 x [16 x i16]], ptr @mcs_rate, i32 0, i32 %add72.i, i32 %conv46.i
  %20 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx75.i, align 2
  br label %cleanup

if.else84.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %index)
  %cmp86.i = icmp ugt i8 %index, 31
  %spec.store.select.i = select i1 %cmp86.i, i8 0, i8 %index
  %idxprom90.i = zext i8 %spec.store.select.i to i32
  %arrayidx91.i = getelementptr [32 x i16], ptr @mwifiex_data_rates, i32 0, i32 %idxprom90.i
  %22 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx91.i, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = zext i8 %ht_info to i32
  %and = and i32 %conv3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else52, label %if.then5

if.then5:                                         ; preds = %if.end
  %conv6 = zext i8 %index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %index)
  %cmp7 = icmp eq i8 %index, 32
  br i1 %cmp7, label %if.then9, label %if.else15

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %and11 = and i32 %conv3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %. = select i1 %tobool12.not, i16 12, i16 13
  br label %cleanup

if.else15:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv6)
  %cmp17 = icmp ugt i32 %cond, %conv6
  br i1 %cmp17, label %if.then19, label %if.else15.cleanup_crit_edge

if.else15.cleanup_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.else15
  %and21 = and i32 %conv3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %and36 = and i32 %conv3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool22.not, label %if.else34, label %if.then23

if.then23:                                        ; preds = %if.then19
  br i1 %tobool37.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [4 x [16 x i16]], ptr @mcs_rate, i32 0, i32 1, i32 %conv6
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx, align 2
  br label %cleanup

if.else29:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx31 = getelementptr [16 x i16], ptr @mcs_rate, i32 0, i32 %conv6
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx31, align 2
  br label %cleanup

if.else34:                                        ; preds = %if.then19
  br i1 %tobool37.not, label %if.else42, label %if.then38

if.then38:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx40 = getelementptr [4 x [16 x i16]], ptr @mcs_rate, i32 0, i32 3, i32 %conv6
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx40, align 2
  br label %cleanup

if.else42:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx44 = getelementptr [4 x [16 x i16]], ptr @mcs_rate, i32 0, i32 2, i32 %conv6
  %30 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx44, align 2
  br label %cleanup

if.else52:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %index)
  %cmp54 = icmp ugt i8 %index, 31
  %spec.store.select = select i1 %cmp54, i8 0, i8 %index
  %idxprom58 = zext i8 %spec.store.select to i32
  %arrayidx59 = getelementptr [32 x i16], ptr @mwifiex_data_rates, i32 0, i32 %idxprom58
  %32 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx59, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else52, %if.else42, %if.then38, %if.else29, %if.then27, %if.else15.cleanup_crit_edge, %if.then9, %if.else84.i, %if.then67.i, %if.else56.i.cleanup_crit_edge, %if.then49.i, %if.else.i, %if.then18.i
  %retval.0.in = phi i16 [ %13, %if.then18.i ], [ %15, %if.else.i ], [ %21, %if.then67.i ], [ %23, %if.else84.i ], [ %..i, %if.then49.i ], [ 2, %if.else56.i.cleanup_crit_edge ], [ %25, %if.then27 ], [ %27, %if.else29 ], [ %29, %if.then38 ], [ %31, %if.else42 ], [ %33, %if.else52 ], [ %., %if.then9 ], [ 2, %if.else15.cleanup_crit_edge ]
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_active_data_rates(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %rates) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @mwifiex_get_supported_rates(ptr noundef %priv, ptr noundef %rates)
  br label %return

if.else:                                          ; preds = %entry
  %data_rates = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 5
  %num_of_rates = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 4
  %2 = ptrtoint ptr %num_of_rates to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_of_rates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i = icmp sgt i32 %3, 0
  br i1 %cmp2.i, label %if.else.land.rhs.i_crit_edge, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else.land.rhs.i_crit_edge:                     ; preds = %if.else
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %if.else.land.rhs.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %if.end.i.land.rhs.i_crit_edge ], [ 0, %if.else.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %data_rates, i32 %i.04.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %i.04.i)
  %cmp1.i = icmp ugt i32 %i.04.i, 13
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp1.i
  br i1 %or.cond.i, label %land.rhs.i.return_crit_edge, label %if.end.i

land.rhs.i.return_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %land.rhs.i
  %arrayidx4.i = getelementptr i8, ptr %rates, i32 %i.04.i
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx4.i, align 1
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %if.end.i.return_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %if.end.i.return_crit_edge, %land.rhs.i.return_crit_edge, %if.else.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.else.return_crit_edge ], [ %i.04.i, %land.rhs.i.return_crit_edge ], [ %3, %if.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_supported_rates(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %rates) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bss_mode, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %3, label %if.else [
    i32 2, label %entry.if.then_crit_edge
    i32 8, label %entry.if.then_crit_edge220
  ]

entry.if.then_crit_edge220:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge220
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 84
  %5 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config_bands, align 2
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %6, label %if.then.if.end_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %if.then.sw.bb6_crit_edge
    i8 10, label %if.then.sw.bb6_crit_edge221
    i8 3, label %if.then.sw.bb10_crit_edge
    i8 7, label %if.then.sw.bb10_crit_edge222
    i8 5, label %if.then.sw.bb10_crit_edge223
    i8 31, label %if.then.sw.bb10_crit_edge224
    i8 63, label %if.then.sw.bb10_crit_edge225
    i8 11, label %if.then.sw.bb10_crit_edge226
    i8 4, label %if.then.sw.bb14_crit_edge
    i8 6, label %if.then.sw.bb14_crit_edge227
    i8 16, label %if.then.sw.bb18_crit_edge
    i8 20, label %if.then.sw.bb18_crit_edge228
    i8 52, label %if.then.sw.bb18_crit_edge229
    i8 30, label %if.then.sw.bb18_crit_edge230
    i8 62, label %if.then.sw.bb18_crit_edge231
    i8 8, label %sw.bb22
  ]

if.then.sw.bb18_crit_edge231:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

if.then.sw.bb18_crit_edge230:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

if.then.sw.bb18_crit_edge229:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

if.then.sw.bb18_crit_edge228:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

if.then.sw.bb18_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

if.then.sw.bb14_crit_edge227:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

if.then.sw.bb14_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

if.then.sw.bb10_crit_edge226:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.then.sw.bb10_crit_edge225:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.then.sw.bb10_crit_edge224:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.then.sw.bb10_crit_edge223:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.then.sw.bb10_crit_edge222:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.then.sw.bb10_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.then.sw.bb6_crit_edge221:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

if.then.sw.bb6_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.4, i32 noundef 1) #8
  %8 = ptrtoint ptr %rates to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %rates, align 1
  %arrayidx4.i.1 = getelementptr i8, ptr %rates, i32 1
  %9 = ptrtoint ptr %arrayidx4.i.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %arrayidx4.i.1, align 1
  %arrayidx4.i.2 = getelementptr i8, ptr %rates, i32 2
  %10 = ptrtoint ptr %arrayidx4.i.2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 11, ptr %arrayidx4.i.2, align 1
  br label %if.end.sink.split

sw.bb6:                                           ; preds = %if.then.sw.bb6_crit_edge, %if.then.sw.bb6_crit_edge221
  %conv8 = zext i8 %6 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.5, i32 noundef %conv8) #8
  %11 = ptrtoint ptr %rates to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 12, ptr %rates, align 1
  %arrayidx4.i80.1 = getelementptr i8, ptr %rates, i32 1
  %12 = ptrtoint ptr %arrayidx4.i80.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 18, ptr %arrayidx4.i80.1, align 1
  %arrayidx4.i80.2 = getelementptr i8, ptr %rates, i32 2
  %13 = ptrtoint ptr %arrayidx4.i80.2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 24, ptr %arrayidx4.i80.2, align 1
  %arrayidx4.i80.3 = getelementptr i8, ptr %rates, i32 3
  %14 = ptrtoint ptr %arrayidx4.i80.3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 36, ptr %arrayidx4.i80.3, align 1
  %arrayidx4.i80.4 = getelementptr i8, ptr %rates, i32 4
  %15 = ptrtoint ptr %arrayidx4.i80.4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 48, ptr %arrayidx4.i80.4, align 1
  %arrayidx4.i80.5 = getelementptr i8, ptr %rates, i32 5
  %16 = ptrtoint ptr %arrayidx4.i80.5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 72, ptr %arrayidx4.i80.5, align 1
  %arrayidx4.i80.6 = getelementptr i8, ptr %rates, i32 6
  %17 = ptrtoint ptr %arrayidx4.i80.6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 96, ptr %arrayidx4.i80.6, align 1
  br label %if.end.sink.split

sw.bb10:                                          ; preds = %if.then.sw.bb10_crit_edge, %if.then.sw.bb10_crit_edge222, %if.then.sw.bb10_crit_edge223, %if.then.sw.bb10_crit_edge224, %if.then.sw.bb10_crit_edge225, %if.then.sw.bb10_crit_edge226
  %conv12 = zext i8 %6 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.6, i32 noundef %conv12) #8
  %18 = ptrtoint ptr %rates to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %rates, align 1
  %arrayidx4.i92.1 = getelementptr i8, ptr %rates, i32 1
  %19 = ptrtoint ptr %arrayidx4.i92.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %arrayidx4.i92.1, align 1
  %arrayidx4.i92.2 = getelementptr i8, ptr %rates, i32 2
  %20 = ptrtoint ptr %arrayidx4.i92.2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 11, ptr %arrayidx4.i92.2, align 1
  %arrayidx4.i92.3 = getelementptr i8, ptr %rates, i32 3
  %21 = ptrtoint ptr %arrayidx4.i92.3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 12, ptr %arrayidx4.i92.3, align 1
  %arrayidx4.i92.4 = getelementptr i8, ptr %rates, i32 4
  %22 = ptrtoint ptr %arrayidx4.i92.4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 18, ptr %arrayidx4.i92.4, align 1
  %arrayidx4.i92.5 = getelementptr i8, ptr %rates, i32 5
  %23 = ptrtoint ptr %arrayidx4.i92.5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 22, ptr %arrayidx4.i92.5, align 1
  %arrayidx4.i92.6 = getelementptr i8, ptr %rates, i32 6
  %24 = ptrtoint ptr %arrayidx4.i92.6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 24, ptr %arrayidx4.i92.6, align 1
  %arrayidx4.i92.7 = getelementptr i8, ptr %rates, i32 7
  %25 = ptrtoint ptr %arrayidx4.i92.7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 36, ptr %arrayidx4.i92.7, align 1
  %arrayidx4.i92.8 = getelementptr i8, ptr %rates, i32 8
  %26 = ptrtoint ptr %arrayidx4.i92.8 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 48, ptr %arrayidx4.i92.8, align 1
  %arrayidx4.i92.9 = getelementptr i8, ptr %rates, i32 9
  %27 = ptrtoint ptr %arrayidx4.i92.9 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 72, ptr %arrayidx4.i92.9, align 1
  %arrayidx4.i92.10 = getelementptr i8, ptr %rates, i32 10
  %28 = ptrtoint ptr %arrayidx4.i92.10 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 96, ptr %arrayidx4.i92.10, align 1
  br label %if.end.sink.split

sw.bb14:                                          ; preds = %if.then.sw.bb14_crit_edge, %if.then.sw.bb14_crit_edge227
  %conv16 = zext i8 %6 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.7, i32 noundef %conv16) #8
  %29 = ptrtoint ptr %rates to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 12, ptr %rates, align 1
  %arrayidx4.i104.1 = getelementptr i8, ptr %rates, i32 1
  %30 = ptrtoint ptr %arrayidx4.i104.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 18, ptr %arrayidx4.i104.1, align 1
  %arrayidx4.i104.2 = getelementptr i8, ptr %rates, i32 2
  %31 = ptrtoint ptr %arrayidx4.i104.2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 24, ptr %arrayidx4.i104.2, align 1
  %arrayidx4.i104.3 = getelementptr i8, ptr %rates, i32 3
  %32 = ptrtoint ptr %arrayidx4.i104.3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 36, ptr %arrayidx4.i104.3, align 1
  %arrayidx4.i104.4 = getelementptr i8, ptr %rates, i32 4
  %33 = ptrtoint ptr %arrayidx4.i104.4 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -80, ptr %arrayidx4.i104.4, align 1
  %arrayidx4.i104.5 = getelementptr i8, ptr %rates, i32 5
  %34 = ptrtoint ptr %arrayidx4.i104.5 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 72, ptr %arrayidx4.i104.5, align 1
  %arrayidx4.i104.6 = getelementptr i8, ptr %rates, i32 6
  %35 = ptrtoint ptr %arrayidx4.i104.6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 96, ptr %arrayidx4.i104.6, align 1
  br label %if.end.sink.split

sw.bb18:                                          ; preds = %if.then.sw.bb18_crit_edge, %if.then.sw.bb18_crit_edge228, %if.then.sw.bb18_crit_edge229, %if.then.sw.bb18_crit_edge230, %if.then.sw.bb18_crit_edge231
  %conv20 = zext i8 %6 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.7, i32 noundef %conv20) #8
  %36 = ptrtoint ptr %rates to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 12, ptr %rates, align 1
  %arrayidx4.i116.1 = getelementptr i8, ptr %rates, i32 1
  %37 = ptrtoint ptr %arrayidx4.i116.1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 18, ptr %arrayidx4.i116.1, align 1
  %arrayidx4.i116.2 = getelementptr i8, ptr %rates, i32 2
  %38 = ptrtoint ptr %arrayidx4.i116.2 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 24, ptr %arrayidx4.i116.2, align 1
  %arrayidx4.i116.3 = getelementptr i8, ptr %rates, i32 3
  %39 = ptrtoint ptr %arrayidx4.i116.3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 36, ptr %arrayidx4.i116.3, align 1
  %arrayidx4.i116.4 = getelementptr i8, ptr %rates, i32 4
  %40 = ptrtoint ptr %arrayidx4.i116.4 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -80, ptr %arrayidx4.i116.4, align 1
  %arrayidx4.i116.5 = getelementptr i8, ptr %rates, i32 5
  %41 = ptrtoint ptr %arrayidx4.i116.5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 72, ptr %arrayidx4.i116.5, align 1
  %arrayidx4.i116.6 = getelementptr i8, ptr %rates, i32 6
  %42 = ptrtoint ptr %arrayidx4.i116.6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 96, ptr %arrayidx4.i116.6, align 1
  br label %if.end.sink.split

sw.bb22:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.8, i32 noundef 8) #8
  %43 = ptrtoint ptr %rates to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %rates, align 1
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %adhoc_start_band = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 83
  %44 = ptrtoint ptr %adhoc_start_band to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %adhoc_start_band, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %45, label %if.else.if.end_crit_edge [
    i8 1, label %sw.bb27
    i8 2, label %if.else.sw.bb29_crit_edge
    i8 10, label %if.else.sw.bb29_crit_edge232
    i8 3, label %if.else.sw.bb31_crit_edge
    i8 11, label %if.else.sw.bb31_crit_edge233
    i8 4, label %if.else.sw.bb33_crit_edge
    i8 20, label %if.else.sw.bb33_crit_edge234
  ]

if.else.sw.bb33_crit_edge234:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

if.else.sw.bb33_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

if.else.sw.bb31_crit_edge233:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

if.else.sw.bb31_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

if.else.sw.bb29_crit_edge232:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb29

if.else.sw.bb29_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb29

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb27:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.9) #8
  %47 = ptrtoint ptr %rates to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -126, ptr %rates, align 1
  %arrayidx4.i140.1 = getelementptr i8, ptr %rates, i32 1
  %48 = ptrtoint ptr %arrayidx4.i140.1 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -124, ptr %arrayidx4.i140.1, align 1
  %arrayidx4.i140.2 = getelementptr i8, ptr %rates, i32 2
  %49 = ptrtoint ptr %arrayidx4.i140.2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -117, ptr %arrayidx4.i140.2, align 1
  br label %if.end.sink.split

sw.bb29:                                          ; preds = %if.else.sw.bb29_crit_edge, %if.else.sw.bb29_crit_edge232
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.10) #8
  %50 = ptrtoint ptr %rates to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -116, ptr %rates, align 1
  %arrayidx4.i152.1 = getelementptr i8, ptr %rates, i32 1
  %51 = ptrtoint ptr %arrayidx4.i152.1 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 18, ptr %arrayidx4.i152.1, align 1
  %arrayidx4.i152.2 = getelementptr i8, ptr %rates, i32 2
  %52 = ptrtoint ptr %arrayidx4.i152.2 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -104, ptr %arrayidx4.i152.2, align 1
  %arrayidx4.i152.3 = getelementptr i8, ptr %rates, i32 3
  %53 = ptrtoint ptr %arrayidx4.i152.3 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 36, ptr %arrayidx4.i152.3, align 1
  %arrayidx4.i152.4 = getelementptr i8, ptr %rates, i32 4
  %54 = ptrtoint ptr %arrayidx4.i152.4 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -80, ptr %arrayidx4.i152.4, align 1
  %arrayidx4.i152.5 = getelementptr i8, ptr %rates, i32 5
  %55 = ptrtoint ptr %arrayidx4.i152.5 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 72, ptr %arrayidx4.i152.5, align 1
  %arrayidx4.i152.6 = getelementptr i8, ptr %rates, i32 6
  %56 = ptrtoint ptr %arrayidx4.i152.6 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 96, ptr %arrayidx4.i152.6, align 1
  br label %if.end.sink.split

sw.bb31:                                          ; preds = %if.else.sw.bb31_crit_edge, %if.else.sw.bb31_crit_edge233
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.11) #8
  %57 = ptrtoint ptr %rates to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -126, ptr %rates, align 1
  %arrayidx4.i164.1 = getelementptr i8, ptr %rates, i32 1
  %58 = ptrtoint ptr %arrayidx4.i164.1 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -124, ptr %arrayidx4.i164.1, align 1
  %arrayidx4.i164.2 = getelementptr i8, ptr %rates, i32 2
  %59 = ptrtoint ptr %arrayidx4.i164.2 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -117, ptr %arrayidx4.i164.2, align 1
  %arrayidx4.i164.3 = getelementptr i8, ptr %rates, i32 3
  %60 = ptrtoint ptr %arrayidx4.i164.3 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -106, ptr %arrayidx4.i164.3, align 1
  %arrayidx4.i164.4 = getelementptr i8, ptr %rates, i32 4
  %61 = ptrtoint ptr %arrayidx4.i164.4 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 12, ptr %arrayidx4.i164.4, align 1
  %arrayidx4.i164.5 = getelementptr i8, ptr %rates, i32 5
  %62 = ptrtoint ptr %arrayidx4.i164.5 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 18, ptr %arrayidx4.i164.5, align 1
  %arrayidx4.i164.6 = getelementptr i8, ptr %rates, i32 6
  %63 = ptrtoint ptr %arrayidx4.i164.6 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 24, ptr %arrayidx4.i164.6, align 1
  %arrayidx4.i164.7 = getelementptr i8, ptr %rates, i32 7
  %64 = ptrtoint ptr %arrayidx4.i164.7 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 36, ptr %arrayidx4.i164.7, align 1
  %arrayidx4.i164.8 = getelementptr i8, ptr %rates, i32 8
  %65 = ptrtoint ptr %arrayidx4.i164.8 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 48, ptr %arrayidx4.i164.8, align 1
  %arrayidx4.i164.9 = getelementptr i8, ptr %rates, i32 9
  %66 = ptrtoint ptr %arrayidx4.i164.9 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 72, ptr %arrayidx4.i164.9, align 1
  %arrayidx4.i164.10 = getelementptr i8, ptr %rates, i32 10
  %67 = ptrtoint ptr %arrayidx4.i164.10 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 96, ptr %arrayidx4.i164.10, align 1
  br label %if.end.sink.split

sw.bb33:                                          ; preds = %if.else.sw.bb33_crit_edge, %if.else.sw.bb33_crit_edge234
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.12) #8
  %68 = ptrtoint ptr %rates to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -116, ptr %rates, align 1
  %arrayidx4.i176.1 = getelementptr i8, ptr %rates, i32 1
  %69 = ptrtoint ptr %arrayidx4.i176.1 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 18, ptr %arrayidx4.i176.1, align 1
  %arrayidx4.i176.2 = getelementptr i8, ptr %rates, i32 2
  %70 = ptrtoint ptr %arrayidx4.i176.2 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -104, ptr %arrayidx4.i176.2, align 1
  %arrayidx4.i176.3 = getelementptr i8, ptr %rates, i32 3
  %71 = ptrtoint ptr %arrayidx4.i176.3 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 36, ptr %arrayidx4.i176.3, align 1
  %arrayidx4.i176.4 = getelementptr i8, ptr %rates, i32 4
  %72 = ptrtoint ptr %arrayidx4.i176.4 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -80, ptr %arrayidx4.i176.4, align 1
  %arrayidx4.i176.5 = getelementptr i8, ptr %rates, i32 5
  %73 = ptrtoint ptr %arrayidx4.i176.5 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 72, ptr %arrayidx4.i176.5, align 1
  %arrayidx4.i176.6 = getelementptr i8, ptr %rates, i32 6
  %74 = ptrtoint ptr %arrayidx4.i176.6 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 96, ptr %arrayidx4.i176.6, align 1
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb22, %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb
  %.sink219 = phi i32 [ 3, %sw.bb27 ], [ 7, %sw.bb29 ], [ 11, %sw.bb31 ], [ 7, %sw.bb33 ], [ 3, %sw.bb ], [ 7, %sw.bb6 ], [ 11, %sw.bb10 ], [ 7, %sw.bb14 ], [ 7, %sw.bb18 ], [ 1, %sw.bb22 ]
  %.sink = phi i8 [ -106, %sw.bb27 ], [ 108, %sw.bb29 ], [ 108, %sw.bb31 ], [ 108, %sw.bb33 ], [ 22, %sw.bb ], [ 108, %sw.bb6 ], [ 108, %sw.bb10 ], [ 108, %sw.bb14 ], [ 108, %sw.bb18 ], [ 4, %sw.bb22 ]
  %k.0.ph = phi i32 [ 4, %sw.bb27 ], [ 8, %sw.bb29 ], [ 12, %sw.bb31 ], [ 8, %sw.bb33 ], [ 4, %sw.bb ], [ 8, %sw.bb6 ], [ 12, %sw.bb10 ], [ 8, %sw.bb14 ], [ 8, %sw.bb18 ], [ 2, %sw.bb22 ]
  %arrayidx4.i140.3 = getelementptr i8, ptr %rates, i32 %.sink219
  %75 = ptrtoint ptr %arrayidx4.i140.3 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %.sink, ptr %arrayidx4.i140.3, align 1
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %k.0 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ 0, %if.else.if.end_crit_edge ], [ %k.0.ph, %if.end.sink.split ]
  ret i32 %k.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mwifiex_get_cfp(ptr noundef %priv, i8 noundef zeroext %band, i16 noundef zeroext %channel, i32 noundef %freq) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %channel)
  %tobool.not = icmp eq i16 %channel, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %tobool1.not = icmp eq i32 %freq, 0
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %band) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp = icmp eq i8 %call, 0
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 8
  %bands = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 53
  %arrayidx7 = getelementptr %struct.wiphy, ptr %1, i32 0, i32 53, i32 1
  %sband.0.in = select i1 %cmp, ptr %bands, ptr %arrayidx7
  %2 = ptrtoint ptr %sband.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %sband.0 = load ptr, ptr %sband.0.in, align 4
  %tobool9.not = icmp eq ptr %sband.0, null
  br i1 %tobool9.not, label %if.then10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband.0, i32 0, i32 3
  %3 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1391 = icmp sgt i32 %4, 0
  br i1 %cmp1391, label %for.body.lr.ph, label %for.end.thread114

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %5 = ptrtoint ptr %sband.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sband.0, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %channel)
  %cmp31 = icmp eq i16 %channel, 255
  br label %for.body

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %conv11 = zext i8 %band to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mwifiex_get_cfp, i32 noundef %conv11) #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %flags = getelementptr %struct.ieee80211_channel, ptr %6, i32 %i.092, i32 4
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end18:                                         ; preds = %for.body
  br i1 %tobool1.not, label %if.else25, label %if.then20

if.then20:                                        ; preds = %if.end18
  %center_freq = getelementptr %struct.ieee80211_channel, ptr %6, i32 %i.092, i32 1
  %11 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %center_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %freq)
  %cmp21 = icmp eq i32 %12, %freq
  br i1 %cmp21, label %if.then20.for.end_crit_edge, label %if.then20.for.inc_crit_edge

if.then20.for.inc_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.else25:                                        ; preds = %if.end18
  %hw_value = getelementptr %struct.ieee80211_channel, ptr %6, i32 %i.092, i32 3
  %13 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %channel)
  %cmp28 = icmp eq i16 %14, %channel
  %or.cond90 = or i1 %cmp31, %cmp28
  br i1 %or.cond90, label %if.else25.for.end_crit_edge, label %if.else25.for.inc_crit_edge

if.else25.for.inc_crit_edge:                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else25.for.end_crit_edge:                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.else25.for.inc_crit_edge, %if.then20.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.inc.if.then39_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.then39_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

for.end:                                          ; preds = %if.else25.for.end_crit_edge, %if.then20.for.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.092, i32 %4)
  %cmp37 = icmp eq i32 %i.092, %4
  br i1 %cmp37, label %for.end.if.then39_crit_edge, label %if.else43

for.end.if.then39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

for.end.thread114:                                ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp37117 = icmp eq i32 %4, 0
  br i1 %cmp37117, label %for.end.thread114.if.then39_crit_edge, label %for.end.thread114.cleanup_crit_edge

for.end.thread114.cleanup_crit_edge:              ; preds = %for.end.thread114
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.thread114.if.then39_crit_edge:            ; preds = %for.end.thread114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

if.then39:                                        ; preds = %for.end.thread114.if.then39_crit_edge, %for.end.if.then39_crit_edge, %for.inc.if.then39_crit_edge
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %conv41 = zext i8 %band to i32
  %conv42 = zext i16 %channel to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 536870912, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mwifiex_get_cfp, i32 noundef %conv41, i32 noundef %conv42, i32 noundef %freq) #8
  br label %cleanup

if.else43:                                        ; preds = %for.end
  %arrayidx15.le103 = getelementptr %struct.ieee80211_channel, ptr %6, i32 %i.092
  %tobool44.not = icmp eq ptr %arrayidx15.le103, null
  br i1 %tobool44.not, label %if.else43.cleanup_crit_edge, label %if.end46

if.else43.cleanup_crit_edge:                      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #10
  %hw_value47 = getelementptr %struct.ieee80211_channel, ptr %6, i32 %i.092, i32 3
  %17 = ptrtoint ptr %hw_value47 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hw_value47, align 2
  %cfp48 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 104
  %19 = ptrtoint ptr %cfp48 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %cfp48, align 4
  %center_freq50 = getelementptr %struct.ieee80211_channel, ptr %6, i32 %i.092, i32 1
  %20 = ptrtoint ptr %center_freq50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %center_freq50, align 4
  %freq52 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 104, i32 1
  %22 = ptrtoint ptr %freq52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %freq52, align 4
  %max_power = getelementptr %struct.ieee80211_channel, ptr %6, i32 %i.092, i32 6
  %23 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_power, align 4
  %conv53 = trunc i32 %24 to i16
  %max_tx_power = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 104, i32 2
  %25 = ptrtoint ptr %max_tx_power to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv53, ptr %max_tx_power, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.else43.cleanup_crit_edge, %if.then39, %for.end.thread114.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then10 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.else43.cleanup_crit_edge ], [ null, %if.then39 ], [ %cfp48, %if.end46 ], [ null, %for.end.thread114.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mwifiex_is_rate_auto(ptr nocapture noundef readonly %priv) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp ne i16 %1, 0
  %inc = zext i1 %tobool.not to i32
  %arrayidx.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.1 = icmp ne i16 %3, 0
  %inc.1 = zext i1 %tobool.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %inc, %inc.1
  %arrayidx.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.2 = icmp ne i16 %5, 0
  %inc.2 = zext i1 %tobool.not.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %inc.2
  %arrayidx.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.3 = icmp ne i16 %7, 0
  %inc.3 = zext i1 %tobool.not.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %inc.3
  %arrayidx.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.4 = icmp ne i16 %9, 0
  %inc.4 = zext i1 %tobool.not.4 to i32
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %inc.4
  %arrayidx.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.5 = icmp ne i16 %11, 0
  %inc.5 = zext i1 %tobool.not.5 to i32
  %spec.select.5 = add nuw nsw i32 %spec.select.4, %inc.5
  %arrayidx.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.6 = icmp ne i16 %13, 0
  %inc.6 = zext i1 %tobool.not.6 to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %inc.6
  %arrayidx.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.7 = icmp ne i16 %15, 0
  %inc.7 = zext i1 %tobool.not.7 to i32
  %spec.select.7 = add nuw nsw i32 %spec.select.6, %inc.7
  %arrayidx.8 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.8 = icmp ne i16 %17, 0
  %inc.8 = zext i1 %tobool.not.8 to i32
  %spec.select.8 = add nuw nsw i32 %spec.select.7, %inc.8
  %arrayidx.9 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.9 = icmp ne i16 %19, 0
  %inc.9 = zext i1 %tobool.not.9 to i32
  %spec.select.9 = add nuw nsw i32 %spec.select.8, %inc.9
  %arrayidx.10 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.10 = icmp ne i16 %21, 0
  %inc.10 = zext i1 %tobool.not.10 to i32
  %spec.select.10 = add nuw nsw i32 %spec.select.9, %inc.10
  %arrayidx.11 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.11 = icmp ne i16 %23, 0
  %inc.11 = zext i1 %tobool.not.11 to i32
  %spec.select.11 = add nuw nsw i32 %spec.select.10, %inc.11
  %arrayidx.12 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 12
  %24 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.12 = icmp ne i16 %25, 0
  %inc.12 = zext i1 %tobool.not.12 to i32
  %spec.select.12 = add nuw nsw i32 %spec.select.11, %inc.12
  %arrayidx.13 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 13
  %26 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.13 = icmp ne i16 %27, 0
  %inc.13 = zext i1 %tobool.not.13 to i32
  %spec.select.13 = add nuw nsw i32 %spec.select.12, %inc.13
  %arrayidx.14 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 14
  %28 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.14 = icmp ne i16 %29, 0
  %inc.14 = zext i1 %tobool.not.14 to i32
  %spec.select.14 = add nuw nsw i32 %spec.select.13, %inc.14
  %arrayidx.15 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 15
  %30 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.15 = icmp ne i16 %31, 0
  %inc.15 = zext i1 %tobool.not.15 to i32
  %spec.select.15 = add nuw nsw i32 %spec.select.14, %inc.15
  %arrayidx.16 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 16
  %32 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.16 = icmp ne i16 %33, 0
  %inc.16 = zext i1 %tobool.not.16 to i32
  %spec.select.16 = add nuw nsw i32 %spec.select.15, %inc.16
  %arrayidx.17 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 17
  %34 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.17 = icmp ne i16 %35, 0
  %inc.17 = zext i1 %tobool.not.17 to i32
  %spec.select.17 = add nuw nsw i32 %spec.select.16, %inc.17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.17)
  %cmp2 = icmp ugt i32 %spec.select.17, 1
  %. = zext i1 %cmp2 to i8
  ret i8 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_rates_from_cfg80211(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %rates, i8 noundef zeroext %radio_type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %wiphy1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy1, align 4
  %scan_request = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 111
  %4 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scan_request, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %radio_type)
  %tobool.not = icmp eq i8 %radio_type, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.rhs, label %if.end42

land.rhs:                                         ; preds = %if.then
  %.b137 = load i1, ptr @mwifiex_get_rates_from_cfg80211.__already_done, align 1
  br i1 %.b137, label %land.rhs.cleanup_crit_edge, label %land.rhs.cleanup.sink.split_crit_edge, !prof !67

land.rhs.cleanup.sink.split_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx44 = getelementptr %struct.cfg80211_scan_request, ptr %5, i32 0, i32 9, i32 1
  br label %if.end108

if.else:                                          ; preds = %entry
  %bands45 = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 53
  %8 = ptrtoint ptr %bands45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bands45, align 16
  %tobool48.not = icmp eq ptr %9, null
  br i1 %tobool48.not, label %land.rhs57, label %if.end105

land.rhs57:                                       ; preds = %if.else
  %.b135136 = load i1, ptr @mwifiex_get_rates_from_cfg80211.__already_done.3, align 1
  br i1 %.b135136, label %land.rhs57.cleanup_crit_edge, label %land.rhs57.cleanup.sink.split_crit_edge, !prof !67

land.rhs57.cleanup.sink.split_crit_edge:          ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.rhs57.cleanup_crit_edge:                     ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end105:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %rates106 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %5, i32 0, i32 9
  br label %if.end108

if.end108:                                        ; preds = %if.end105, %if.end42
  %rate_mask.0.in = phi ptr [ %arrayidx44, %if.end42 ], [ %rates106, %if.end105 ]
  %sband.0 = phi ptr [ %7, %if.end42 ], [ %9, %if.end105 ]
  %10 = ptrtoint ptr %rate_mask.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %rate_mask.0 = load i32, ptr %rate_mask.0.in, align 4
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband.0, i32 0, i32 4
  %11 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp140 = icmp sgt i32 %12, 0
  br i1 %cmp140, label %for.body.lr.ph, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end108
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband.0, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %num_rates.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %num_rates.1, %for.inc.for.body_crit_edge ]
  %i.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc115, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0141
  %and = and i32 %shl, %rate_mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp109 = icmp eq i32 %and, 0
  br i1 %cmp109, label %for.body.for.inc_crit_edge, label %if.end111

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end111:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bitrates, align 4
  %bitrate = getelementptr %struct.ieee80211_rate, ptr %14, i32 %i.0141, i32 1
  %15 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bitrate, align 4
  %17 = udiv i16 %16, 5
  %conv113 = trunc i16 %17 to i8
  %inc = add i32 %num_rates.0143, 1
  %arrayidx114 = getelementptr i8, ptr %rates, i32 %num_rates.0143
  %18 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv113, ptr %arrayidx114, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end111, %for.body.for.inc_crit_edge
  %num_rates.1 = phi i32 [ %num_rates.0143, %for.body.for.inc_crit_edge ], [ %inc, %if.end111 ]
  %inc115 = add nuw nsw i32 %i.0141, 1
  %19 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_bitrates, align 4
  %cmp = icmp slt i32 %inc115, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.sink.split:                               ; preds = %land.rhs57.cleanup.sink.split_crit_edge, %land.rhs.cleanup.sink.split_crit_edge
  %mwifiex_get_rates_from_cfg80211.__already_done.3.sink = phi ptr [ @mwifiex_get_rates_from_cfg80211.__already_done, %land.rhs.cleanup.sink.split_crit_edge ], [ @mwifiex_get_rates_from_cfg80211.__already_done.3, %land.rhs57.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 401, %land.rhs.cleanup.sink.split_crit_edge ], [ 406, %land.rhs57.cleanup.sink.split_crit_edge ]
  %21 = ptrtoint ptr %mwifiex_get_rates_from_cfg80211.__already_done.3.sink to i32
  call void @__asan_store1_noabort(i32 %21)
  store i1 true, ptr %mwifiex_get_rates_from_cfg80211.__already_done.3.sink, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %land.rhs57.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %land.rhs57.cleanup_crit_edge ], [ 0, %if.end108.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ %num_rates.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mwifiex_adjust_data_rate(ptr nocapture noundef readnone %priv, i8 noundef zeroext %rx_rate, i8 noundef zeroext %rate_info) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %rate_info to i32
  %0 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i8 %rx_rate, 27
  br label %if.end19

if.else:                                          ; preds = %entry
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else13, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add11 = add i8 %rx_rate, 12
  br label %if.end19

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %rx_rate)
  %cmp = icmp ugt i8 %rx_rate, 4
  %sub = sext i1 %cmp to i8
  %cond = add i8 %sub, %rx_rate
  br label %if.end19

if.end19:                                         ; preds = %if.else13, %if.then9, %if.then
  %rate_index.0 = phi i8 [ %add, %if.then ], [ %add11, %if.then9 ], [ %cond, %if.else13 ]
  %1 = tail call i8 @llvm.umin.i8(i8 %rate_index.0, i8 73)
  ret i8 %1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @region_code_index, !1, !"region_code_index", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 69, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 328, i32 3}
!4 = !{ptr @__func__.mwifiex_get_cfp, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 351, i32 3}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 401, i32 7}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 406, i32 7}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 434, i32 4}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 442, i32 4}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 454, i32 4}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 462, i32 4}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 480, i32 4}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 491, i32 4}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 497, i32 4}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 503, i32 4}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 509, i32 4}
!30 = !{ptr @region_code_mapping_t, !31, !"region_code_mapping_t", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 168, i32 35}
!32 = !{ptr @ac_mcs_rate_nss2, !33, !"ac_mcs_rate_nss2", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 129, i32 18}
!34 = !{ptr @ac_mcs_rate_nss1, !35, !"ac_mcs_rate_nss1", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 96, i32 18}
!36 = !{ptr @mcs_rate, !37, !"mcs_rate", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 77, i32 18}
!38 = !{ptr @mwifiex_data_rates, !39, !"mwifiex_data_rates", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 53, i32 12}
!40 = distinct !{null, !41, !"supported_rates_b", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 60, i32 11}
!42 = distinct !{null, !43, !"supported_rates_g", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 62, i32 11}
!44 = distinct !{null, !45, !"supported_rates_bg", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 65, i32 11}
!46 = distinct !{null, !47, !"supported_rates_a", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 51, i32 11}
!48 = distinct !{null, !49, !"supported_rates_n", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 72, i32 11}
!50 = distinct !{null, !51, !"adhoc_rates_b", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 40, i32 11}
!52 = distinct !{null, !53, !"adhoc_rates_g", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 42, i32 11}
!54 = distinct !{null, !55, !"adhoc_rates_bg", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 45, i32 11}
!56 = distinct !{null, !57, !"adhoc_rates_a", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/marvell/mwifiex/cfp.c", i32 49, i32 11}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 2000, i32 1}
