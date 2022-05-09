; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/cfg80211.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/cfg80211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mwifiex_add_virtual_intf\22, \22a\22\09"
module asm "\09.weak\09__crc_mwifiex_add_virtual_intf\09\09\09\09"
module asm "\09.long\09__crc_mwifiex_add_virtual_intf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_add_virtual_intf:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_add_virtual_intf\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_add_virtual_intf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mwifiex_del_virtual_intf\22, \22a\22\09"
module asm "\09.weak\09__crc_mwifiex_del_virtual_intf\09\09\09\09"
module asm "\09.long\09__crc_mwifiex_del_virtual_intf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_del_virtual_intf:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_del_virtual_intf\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_del_virtual_intf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_txrx_stypes = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.wiphy_coalesce_support = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.76 }
%union.anon.76 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.mwifiex_channel_band = type { %struct.mwifiex_band_config, i8 }
%struct.mwifiex_band_config = type { i8 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.mwifiex_vendor_spec_cfg_ie = type { i16, i16, [256 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.150, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.150 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.cfg80211_bss_selection = type { i32, %union.anon.151 }
%union.anon.151 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.mwifiex_chan_freq_power = type { i16, i32, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wps = type { i8 }
%struct.mwifiex_ds_misc_subsc_evt = type { i16, i16, %struct.subsc_evt_cfg, %struct.subsc_evt_cfg }
%struct.subsc_evt_cfg = type { i8, i8 }
%struct.mwifiex_ie = type { i16, i16, i16, [256 x i8] }
%struct.mwifiex_roc_cfg = type { i64, %struct.ieee80211_channel }
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
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.149, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.149 = type { i64, i64, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.152 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.mwifiex_ds_mef_cfg = type { i32, i16, ptr }
%struct.mwifiex_ds_hs_cfg = type { i32, i32, i32, i32 }
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.mwifiex_mef_entry = type { i8, i8, [10 x %struct.mwifiex_mef_filter] }
%struct.mwifiex_mef_filter = type { i16, i16, [7 x i8], i8, i8 }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.cfg80211_pkt_pattern = type { ptr, ptr, i32, i32 }
%struct.mwifiex_ds_wakeup_reason = type { i16 }
%struct.cfg80211_wowlan_wakeup = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr }
%struct.cfg80211_wowlan_nd_info = type { i32, [0 x ptr] }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.mwifiex_ds_encrypt_key = type { i32, i32, i32, [32 x i8], [6 x i8], i32, [16 x i8], i8, i8, i8, i8, i8 }
%struct.cfg80211_ap_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, i32, i32, ptr, i32, i32, %struct.cfg80211_crypto_settings, i8, i32, i32, i32, i8, i8, ptr, i8, %struct.cfg80211_bitrate_mask, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.cfg80211_fils_discovery, %struct.cfg80211_unsol_bcast_probe_resp, %struct.cfg80211_mbssid_config }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.159] }
%struct.anon.159 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.cfg80211_fils_discovery = type { i32, i32, i32, ptr }
%struct.cfg80211_unsol_bcast_probe_resp = type { i32, i32, ptr }
%struct.cfg80211_mbssid_config = type { ptr, i8, i8 }
%struct.station_parameters = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, ptr, ptr, i8, i8, i32, i16, ptr, i8, ptr, i8, ptr, i8, i8, i8, i32, ptr, i8, i16, %struct.sta_txpwr, ptr }
%struct.sta_txpwr = type { i16, i32 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.mwifiex_user_scan_cfg = type <{ i8, i8, i8, [6 x i8], ptr, i8, [50 x %struct.mwifiex_user_scan_chan], i16, [6 x i8] }>
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.mwifiex_power_cfg = type { i32, i32, i32 }
%struct.mwifiex_ds_misc_cmd = type { i32, [2048 x i8] }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.mwifiex_chan_stats = type { i8, i8, i8, i8, i16, i16, i16 }
%struct.cfg80211_mgmt_tx_params = type { ptr, i8, i32, ptr, i32, i8, i8, i32, ptr }
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
%struct.mgmt_frame_regs = type { i32, i32, i32, i32 }
%struct.mwifiex_ds_ant_cfg = type { i32, i32 }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.mwifiex_bg_scan_cfg = type <{ i16, i8, i8, i8, i32, i32, i8, i8, i8, i16, i16, ptr, i8, [38 x %struct.mwifiex_user_scan_chan], i16 }>
%struct.mwifiex_radar_params = type { ptr, i32 }
%struct.mwifiex_ds_coalesce_cfg = type { i16, [8 x %struct.mwifiex_coalesce_rule] }
%struct.mwifiex_coalesce_rule = type { i16, i8, i8, [4 x %struct.filt_field_param] }
%struct.filt_field_param = type { i8, i8, i16, [4 x i8] }
%struct.cfg80211_coalesce = type { ptr, i32 }
%struct.cfg80211_coalesce_rules = type { i32, i32, ptr, i32 }
%struct.cfg80211_csa_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, ptr, ptr, i32, i32, %struct.cfg80211_beacon_data, i8, i8, i8 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.mwifiex_bss_info = type { i32, %struct.cfg80211_ssid, i32, [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8] }

@__param_str_reg_alpha2 = internal constant [19 x i8] c"mwifiex.reg_alpha2\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@reg_alpha2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_reg_alpha2 = internal constant %struct.kernel_param { ptr @__param_str_reg_alpha2, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @reg_alpha2 } }, section "__param", align 4
@__UNIQUE_ID_reg_alpha2type488 = internal constant [34 x i8] c"mwifiex.parmtype=reg_alpha2:charp\00", section ".modinfo", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"11D: setting domain info in FW\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cannot create multiple sta/adhoc ifaces\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not get free private struct\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot create multiple AP ifaces\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot create multiple P2P ifaces\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"type not supported\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no memory available for netdevice\0A\00", [61 x i8] zeroinitializer }, align 32
@mwifiex_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MWIFIEX_DFS_CAC%s\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot alloc DFS CAC queue\0A\00", [36 x i8] zeroinitializer }, align 32
@mwifiex_add_virtual_intf.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&priv->dfs_cac_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@mwifiex_add_virtual_intf.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&priv->dfs_cac_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MWIFIEX_DFS_CHSW%s\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot alloc DFS channel sw queue\0A\00", [61 x i8] zeroinitializer }, align 32
@mwifiex_add_virtual_intf.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&priv->dfs_chan_sw_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@mwifiex_add_virtual_intf.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&priv->dfs_chan_sw_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@mwifiex_add_virtual_intf.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->async_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot register network device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"info: %s: Marvell 802.11 Adapter\0A\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_mwifiex_add_virtual_intf = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_add_virtual_intf = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_add_virtual_intf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_add_virtual_intf to i32), ptr @__kstrtab_mwifiex_add_virtual_intf, ptr @__kstrtabns_mwifiex_add_virtual_intf }, section "___ksymtab_gpl+mwifiex_add_virtual_intf", align 4
@__kstrtab_mwifiex_del_virtual_intf = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_del_virtual_intf = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_del_virtual_intf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_del_virtual_intf to i32), ptr @__kstrtab_mwifiex_del_virtual_intf, ptr @__kstrtabns_mwifiex_del_virtual_intf }, section "___ksymtab_gpl+mwifiex_del_virtual_intf", align 4
@mwifiex_band_2ghz = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @mwifiex_channels_2ghz, ptr @mwifiex_rates, i32 0, i32 14, i32 12, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@mwifiex_band_5ghz = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @mwifiex_channels_5ghz, ptr getelementptr (i8, ptr @mwifiex_rates, i64 48), i32 0, i32 31, i32 8, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@mwifiex_cfg80211_ops = internal global { %struct.cfg80211_ops, [108 x i8] } { %struct.cfg80211_ops { ptr @mwifiex_cfg80211_suspend, ptr @mwifiex_cfg80211_resume, ptr @mwifiex_cfg80211_set_wakeup, ptr @mwifiex_add_virtual_intf, ptr @mwifiex_del_virtual_intf, ptr @mwifiex_cfg80211_change_virtual_intf, ptr @mwifiex_cfg80211_add_key, ptr null, ptr @mwifiex_cfg80211_del_key, ptr @mwifiex_cfg80211_set_default_key, ptr @mwifiex_cfg80211_set_default_mgmt_key, ptr null, ptr @mwifiex_cfg80211_start_ap, ptr @mwifiex_cfg80211_change_beacon, ptr @mwifiex_cfg80211_stop_ap, ptr @mwifiex_cfg80211_add_station, ptr @mwifiex_cfg80211_del_station, ptr @mwifiex_cfg80211_change_station, ptr @mwifiex_cfg80211_get_station, ptr @mwifiex_cfg80211_dump_station, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_cfg80211_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_cfg80211_connect, ptr null, ptr @mwifiex_cfg80211_disconnect, ptr @mwifiex_cfg80211_join_ibss, ptr @mwifiex_cfg80211_leave_ibss, ptr null, ptr @mwifiex_cfg80211_set_wiphy_params, ptr @mwifiex_cfg80211_set_tx_power, ptr @mwifiex_cfg80211_get_tx_power, ptr null, ptr @mwifiex_tm_cmd, ptr null, ptr @mwifiex_cfg80211_set_bitrate_mask, ptr @mwifiex_cfg80211_dump_survey, ptr null, ptr null, ptr null, ptr @mwifiex_cfg80211_remain_on_channel, ptr @mwifiex_cfg80211_cancel_remain_on_channel, ptr @mwifiex_cfg80211_mgmt_tx, ptr null, ptr @mwifiex_cfg80211_set_power_mgmt, ptr @mwifiex_cfg80211_set_cqm_rssi_config, ptr null, ptr null, ptr @mwifiex_cfg80211_update_mgmt_frame_registrations, ptr @mwifiex_cfg80211_set_antenna, ptr @mwifiex_cfg80211_get_antenna, ptr @mwifiex_cfg80211_sched_scan_start, ptr @mwifiex_cfg80211_sched_scan_stop, ptr @mwifiex_set_rekey_data, ptr @mwifiex_cfg80211_tdls_mgmt, ptr @mwifiex_cfg80211_tdls_oper, ptr null, ptr null, ptr @mwifiex_cfg80211_get_channel, ptr null, ptr null, ptr null, ptr @mwifiex_cfg80211_start_radar_detection, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_cfg80211_set_coalesce, ptr @mwifiex_cfg80211_channel_switch, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_cfg80211_tdls_chan_switch, ptr @mwifiex_cfg80211_tdls_cancel_chan_switch, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [108 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: creating new wiphy\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.mwifiex_register_cfg80211 = private unnamed_addr constant [26 x i8] c"mwifiex_register_cfg80211\00", align 1
@mwifiex_mgmt_stypes = internal constant { [13 x %struct.ieee80211_txrx_stypes], [44 x i8] } { [13 x %struct.ieee80211_txrx_stypes] [%struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer], [44 x i8] zeroinitializer }, align 32
@mwifiex_iface_comb_ap_sta_drcs = internal constant { %struct.ieee80211_iface_combination, [44 x i8] } { %struct.ieee80211_iface_combination { ptr @mwifiex_ap_sta_limits, i32 2, i16 3, i8 1, i8 1, i8 0, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@mwifiex_iface_comb_ap_sta_vht = internal constant { %struct.ieee80211_iface_combination, [44 x i8] } { %struct.ieee80211_iface_combination { ptr @mwifiex_ap_sta_limits, i32 1, i16 3, i8 1, i8 1, i8 15, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@mwifiex_iface_comb_ap_sta = internal constant { %struct.ieee80211_iface_combination, [44 x i8] } { %struct.ieee80211_iface_combination { ptr @mwifiex_ap_sta_limits, i32 1, i16 3, i8 1, i8 1, i8 7, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@mwifiex_cipher_suites = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1027073, i32 1027077, i32 1027074, i32 1027076, i32 1339905, i32 1027078], [40 x i8] zeroinitializer }, align 32
@mwifiex_wowlan_support = internal constant { %struct.wiphy_wowlan_support, [36 x i8] } { %struct.wiphy_wowlan_support { i32 286, i32 10, i32 40, i32 1, i32 100, i32 10, ptr null }, [36 x i8] zeroinitializer }, align 32
@mwifiex_wowlan_support_no_gtk = internal constant { %struct.wiphy_wowlan_support, [36 x i8] } { %struct.wiphy_wowlan_support { i32 262, i32 10, i32 40, i32 1, i32 100, i32 10, ptr null }, [36 x i8] zeroinitializer }, align 32
@mwifiex_coalesce_support = internal constant { %struct.wiphy_coalesce_support, [40 x i8] } { %struct.wiphy_coalesce_support { i32 8, i32 100, i32 4, i32 40, i32 1, i32 100 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: wiphy_register failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"driver hint alpha2: %2.2s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Ignore world regulatory domain\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regulatory_hint() failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Unsupported iftype passed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.update_vif_type_counter = private unnamed_addr constant [24 x i8] c"update_vif_type_counter\00", align 1
@mwifiex_channels_2ghz = internal global { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@mwifiex_rates = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 11, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 22, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 12, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 18, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 24, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 36, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 48, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 72, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 96, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 108, i16 0 }], [48 x i8] zeroinitializer }, align 32
@mwifiex_channels_5ghz = internal global { [31 x %struct.ieee80211_channel], [440 x i8] } { [31 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 5040, i16 0, i16 8, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5060, i16 0, i16 12, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5080, i16 0, i16 16, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5170, i16 0, i16 34, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5190, i16 0, i16 38, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5210, i16 0, i16 42, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5230, i16 0, i16 46, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5180, i16 0, i16 36, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5200, i16 0, i16 40, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5220, i16 0, i16 44, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5240, i16 0, i16 48, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5260, i16 0, i16 52, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5280, i16 0, i16 56, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5300, i16 0, i16 60, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5320, i16 0, i16 64, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5500, i16 0, i16 100, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5520, i16 0, i16 104, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5540, i16 0, i16 108, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5560, i16 0, i16 112, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5580, i16 0, i16 116, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5600, i16 0, i16 120, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5620, i16 0, i16 124, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5640, i16 0, i16 128, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5660, i16 0, i16 132, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5680, i16 0, i16 136, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5700, i16 0, i16 140, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5745, i16 0, i16 149, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5765, i16 0, i16 153, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5785, i16 0, i16 157, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5805, i16 0, i16 161, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5825, i16 0, i16 165, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [440 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"None of the WOWLAN triggers enabled\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Can not configure WOWLAN in disconnected state\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set MEF filter\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Wake on net detect\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Wake on device disconnect\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set HS params\0A\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mwifiex_set_auto_arp_mef_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/marvell/mwifiex/cfg80211.c\00", [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__in_dev_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@mwifiex_set_wowlan_mef_entry.ipv4_mc_mac = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"33", [30 x i8] zeroinitializer }, align 32
@mwifiex_set_wowlan_mef_entry.ipv6_mc_mac = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01\00^", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Pattern not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Wake on patterns\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Wake on magic packet\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"change virtual interface: scan in process\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: no new type specified, keeping old type %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: interface already is of type %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: change from type %d to %d is not allowed\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"unsupported interface type transition: %d to %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: changing role to p2p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: changing to %d not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not unregister mgmt frame rx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: changing role to AP\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: changing role to station\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: changing role to adhoc\0A\00", [36 x i8] zeroinitializer }, align 32
@mwifiex_cfg80211_add_key.bc_mac = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"crypto keys added\0A\00", [45 x i8] zeroinitializer }, align 32
@mwifiex_cfg80211_del_key.bc_mac = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"deleting the crypto keys\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"info: crypto keys deleted\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set default Tx key index\0A\00", [38 x i8] zeroinitializer }, align 32
@mwifiex_cfg80211_set_default_mgmt_key.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.56, ptr @.str.34, ptr @.str.57, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mwifiex\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mwifiex_cfg80211_set_default_mgmt_key\00", [58 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"set default mgmt key, key index=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Sending KEY_MATERIAL command failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to parse security parameters!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Disable 11h extensions in FW\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to disable 11h extensions!!\00", [61 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to start AP\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: bss_type mismatched\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.mwifiex_cfg80211_change_beacon = private unnamed_addr constant [31 x i8] c"mwifiex_cfg80211_change_beacon\00", align 1
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: bss not started\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: setting mgmt ies failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to delete mgmt IEs!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to stop the BSS\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to reset BSS\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: abort CAC!\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.mwifiex_cfg80211_del_station = private unnamed_addr constant [29 x i8] c"mwifiex_cfg80211_del_station\00", align 1
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: mac address %pM\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get signal information\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"getting data rate error\0A\00", [39 x i8] zeroinitializer }, align 32
@mwifiex_parse_htinfo.legacy_rates = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 10, i32 20, i32 55, i32 110, i32 60, i32 60, i32 90, i32 120, i32 180, i32 240, i32 360, i32 480, i32 540], [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"info: received scan request on %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cmd: Scan already in process..\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"scan failed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: reject infra assoc request in non-STA role\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: already connected\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: Ignore connection.\09Card removed or FW in bad state\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"info: Trying to associate to bssid %pM\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"info: associated to bssid %pM successfully\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"info: association to bssid %pM failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid SSID - aborting\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"info: setting wep encryption\09with key len %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scan error\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"assoc: requested bss not found in scan results\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"info: trying to associate to bssid %pM\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"request to join ibss received\09when station is not in ibss mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"info: trying to join to bssid %pM\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"info: joined/created adhoc network with bssid\09%pM successfully\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"info: failed creating/joining adhoc network\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"info: set ibss band %d, chan %d, chan offset %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"info: disconnecting from essid %pM\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cannot change wiphy params when bss started\00", [52 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set wiphy phy params\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cannot change wiphy params when connected\00", [54 x i8] zeroinitializer }, align 32
@mwifiex_tm_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 2048, %union.anon.76 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@mwifiex_tm_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.34, i32 4117, ptr @.str.99, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to process hostcmd\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mwifiex_tm_cmd\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mwifiex_tm_cmd._entry_ptr = internal global ptr @mwifiex_tm_cmd._entry, section ".printk_index", align 4
@.str.101 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Can not set Tx data rate in disconnected state\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dump_survey idx=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid parameter for ROC\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"info: ongoing ROC, cookie = 0x%llx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"info: ROC, cookie = 0x%llx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"info: cancel ROC, cookie = 0x%llx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid buffer and length\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"info: skip to send probe resp in AP or GO mode\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"allocate skb failed for management frame\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"info: management frame transmitted\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"info: ignore timeout value for IEEE Power Save\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"info: mgmt frame registered\0A\00", [35 x i8] zeroinitializer }, align 32
@mwifiex_cfg80211_sched_scan_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.34, i32 2752, ptr @.str.99, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s : Invalid Sched_scan parameters\00", [61 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mwifiex_cfg80211_sched_scan_start\00", [62 x i8] zeroinitializer }, align 32
@mwifiex_cfg80211_sched_scan_start._entry_ptr = internal global ptr @mwifiex_cfg80211_sched_scan_start._entry, section ".printk_index", align 4
@mwifiex_cfg80211_sched_scan_start._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.34, i32 2757, ptr @.str.117, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sched_scan start : n_ssids=%d n_match_sets=%d \00", [49 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mwifiex_cfg80211_sched_scan_start._entry_ptr.118 = internal global ptr @mwifiex_cfg80211_sched_scan_start._entry.115, section ".printk_index", align 4
@mwifiex_cfg80211_sched_scan_start._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.114, ptr @.str.34, i32 2760, ptr @.str.117, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"n_channels=%d interval=%d ie_len=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@mwifiex_cfg80211_sched_scan_start._entry_ptr.121 = internal global ptr @mwifiex_cfg80211_sched_scan_start._entry.119, section ".printk_index", align 4
@mwifiex_cfg80211_sched_scan_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.34, i32 2845, ptr @.str.117, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sched scan stop!\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mwifiex_cfg80211_sched_scan_stop\00", [63 x i8] zeroinitializer }, align 32
@mwifiex_cfg80211_sched_scan_stop._entry_ptr = internal global ptr @mwifiex_cfg80211_sched_scan_stop._entry, section ".printk_index", align 4
@.str.124 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Send TDLS Setup Request to %pM status_code=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Send TDLS Setup Response to %pM status_code=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Send TDLS Confirm to %pM status_code=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Send TDLS Tear down to %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Send TDLS Discovery Request to %pM\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Send TDLS Discovery Response to %pM\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unknown TDLS mgmt/action frame %pM\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TDLS peer=%pM, oper=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"tdls_oper: teardown from driver not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"tdls_oper: setup from driver not supported\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tdls_oper: discovery from driver not supported\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tdls_oper: operation not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"radar detection: scan already in process...\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Enable 11h extensions in FW\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to activate 11h extensions!!\00", [60 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Disable coalesce and reset all previous rules\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Recheck the patterns provided for rule %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Multiple packet types not allowed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Packet type can not be determined\0A\00", [61 x i8] zeroinitializer }, align 32
@mwifiex_get_coalesce_pkt_type.ipv4_mc_mac = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"33", [30 x i8] zeroinitializer }, align 32
@mwifiex_get_coalesce_pkt_type.ipv6_mc_mac = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01\00^", [29 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"radar detection: scan in process...\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Could not parse channel switch announcement IE\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.mwifiex_cfg80211_channel_switch = private unnamed_addr constant [32 x i8] c"mwifiex_cfg80211_channel_switch\00", align 1
@mwifiex_cfg80211_tdls_chan_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.34, i32 3899, ptr @.str.99, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Invalid TDLS peer %pM\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mwifiex_cfg80211_tdls_chan_switch\00", [62 x i8] zeroinitializer }, align 32
@mwifiex_cfg80211_tdls_chan_switch._entry_ptr = internal global ptr @mwifiex_cfg80211_tdls_chan_switch._entry, section ".printk_index", align 4
@mwifiex_cfg80211_tdls_chan_switch._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.34, i32 3906, ptr @.str.99, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%pM do not support tdls cs\0A\00", [36 x i8] zeroinitializer }, align 32
@mwifiex_cfg80211_tdls_chan_switch._entry_ptr.149 = internal global ptr @mwifiex_cfg80211_tdls_chan_switch._entry.147, section ".printk_index", align 4
@mwifiex_cfg80211_tdls_chan_switch._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.146, ptr @.str.34, i32 3913, ptr @.str.99, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"channel switch is running, abort request\0A\00", [54 x i8] zeroinitializer }, align 32
@mwifiex_cfg80211_tdls_chan_switch._entry_ptr.152 = internal global ptr @mwifiex_cfg80211_tdls_chan_switch._entry.150, section ".printk_index", align 4
@mwifiex_cfg80211_tdls_cancel_chan_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.153, ptr @.str.34, i32 3939, ptr @.str.99, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mwifiex_cfg80211_tdls_cancel_chan_switch\00", [55 x i8] zeroinitializer }, align 32
@mwifiex_cfg80211_tdls_cancel_chan_switch._entry_ptr = internal global ptr @mwifiex_cfg80211_tdls_cancel_chan_switch._entry, section ".printk_index", align 4
@mwifiex_cfg80211_tdls_cancel_chan_switch._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.34, i32 3945, ptr @.str.99, ptr @.str.100 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"tdls chan switch not initialize by %pM\0A\00", [56 x i8] zeroinitializer }, align 32
@mwifiex_cfg80211_tdls_cancel_chan_switch._entry_ptr.156 = internal global ptr @mwifiex_cfg80211_tdls_cancel_chan_switch._entry.154, section ".printk_index", align 4
@mwifiex_ap_sta_limits = internal constant { [1 x %struct.ieee80211_iface_limit], [28 x i8] } { [1 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 3, i16 780 }], [28 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"info: cfg80211 regulatory domain callback for %c%c\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unknown regdom initiator: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"00\00", [29 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@switch.table.mwifiex_init_new_priv_params = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\00\01\00\00\00\00\00\01", [23 x i8] zeroinitializer }, align 32
@switch.table.mwifiex_init_new_priv_params.160 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\00\01\00\00\00\00\02\02", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.161 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8]
@__sancov_gen_cov_switch_values.162 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.163 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.164 = internal global [11 x i64] [i64 9, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 10]
@__sancov_gen_cov_switch_values.165 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.166 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.167 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.168 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 8, i64 9]
@__sancov_gen_cov_switch_values.169 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 9]
@__sancov_gen_cov_switch_values.170 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 8]
@__sancov_gen_cov_switch_values.171 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 8, i64 9]
@__sancov_gen_cov_switch_values.172 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 9]
@__sancov_gen_cov_switch_values.173 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 8]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.175 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.176 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.178 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.179 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 10, i64 14]
@__sancov_gen_cov_switch_values.180 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 7]
@__sancov_gen_cov_switch_values.183 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.184 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.186 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.187 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.188 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.189 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8, i64 9]
@___asan_gen_.190 = private unnamed_addr constant [11 x i8] c"reg_alpha2\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 25, i32 14 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 560, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2979, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2987, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3009, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3036, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3075, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3083, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3134, i32 44 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3139, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3144, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3146, i32 48 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3150, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3155, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3158, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3162, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3167, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [18 x i8] c"mwifiex_band_2ghz\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1662, i32 40 }
@___asan_gen_.265 = private unnamed_addr constant [18 x i8] c"mwifiex_band_5ghz\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1703, i32 40 }
@___asan_gen_.268 = private unnamed_addr constant [21 x i8] c"mwifiex_cfg80211_ops\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 4211, i32 28 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 4351, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [20 x i8] c"mwifiex_mgmt_stypes\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1723, i32 1 }
@___asan_gen_.277 = private unnamed_addr constant [31 x i8] c"mwifiex_iface_comb_ap_sta_drcs\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 64, i32 29 }
@___asan_gen_.280 = private unnamed_addr constant [30 x i8] c"mwifiex_iface_comb_ap_sta_vht\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 51, i32 1 }
@___asan_gen_.283 = private unnamed_addr constant [26 x i8] c"mwifiex_iface_comb_ap_sta\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 39, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant [22 x i8] c"mwifiex_cipher_suites\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1712, i32 18 }
@___asan_gen_.289 = private unnamed_addr constant [23 x i8] c"mwifiex_wowlan_support\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 4266, i32 42 }
@___asan_gen_.292 = private unnamed_addr constant [30 x i8] c"mwifiex_wowlan_support_no_gtk\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 4277, i32 42 }
@___asan_gen_.295 = private unnamed_addr constant [25 x i8] c"mwifiex_coalesce_support\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 4299, i32 44 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 4462, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 4470, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 4475, i32 5 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 4486, i32 6 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1056, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant [22 x i8] c"mwifiex_channels_2ghz\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1645, i32 33 }
@___asan_gen_.316 = private unnamed_addr constant [14 x i8] c"mwifiex_rates\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1629, i32 30 }
@___asan_gen_.319 = private unnamed_addr constant [22 x i8] c"mwifiex_channels_5ghz\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1669, i32 33 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3501, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3508, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3516, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3524, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3532, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3541, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3306, i32 10 }
@___asan_gen_.347 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 249, i32 9 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3349, i32 18 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3350, i32 18 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3360, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3390, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3419, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1207, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1213, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1220, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1227, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1339, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1079, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1101, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 865, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1174, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1134, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1137, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 476, i32 18 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 496, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant [7 x i8] c"bc_mac\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 160, i32 18 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 164, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 168, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 459, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 514, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 524, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2090, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2116, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2119, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2129, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1854, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1860, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1866, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2008, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2016, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2023, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1889, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1899, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1479, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1485, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant [13 x i8] c"legacy_rates\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1408, i32 20 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2640, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2647, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2713, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2418, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2425, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2435, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2442, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2455, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2463, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2251, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2321, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2340, i32 5 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2359, i32 5 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2365, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2570, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2576, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2589, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2593, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2548, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 778, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2611, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 737, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 762, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 770, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant [18 x i8] c"mwifiex_tm_policy\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 4073, i32 32 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 4117, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1767, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1589, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 302, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 307, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 324, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 354, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 221, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 230, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 241, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 265, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 433, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 285, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2751, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2756, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2758, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2845, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3780, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3790, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3798, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3806, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3813, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3820, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3827, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3850, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3862, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3867, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3872, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3876, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 4155, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 4161, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 4164, i32 4 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3735, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3747, i32 4 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3692, i32 5 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3716, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant [12 x i8] c"ipv4_mc_mac\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3646, i32 18 }
@___asan_gen_.691 = private unnamed_addr constant [12 x i8] c"ipv6_mc_mac\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3647, i32 18 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3978, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3994, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3898, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3906, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3913, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3938, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3944, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant [22 x i8] c"mwifiex_ap_sta_limits\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 28, i32 43 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 654, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 666, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.743 = private constant [51 x i8] c"../drivers/net/wireless/marvell/mwifiex/cfg80211.c\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 673, i32 31 }
@___asan_gen_.745 = private unnamed_addr constant [42 x i8] c"switch.table.mwifiex_init_new_priv_params\00", align 1
@___asan_gen_.746 = private unnamed_addr constant [46 x i8] c"switch.table.mwifiex_init_new_priv_params.160\00", align 1
@llvm.compiler.used = appending global [201 x ptr] [ptr @__UNIQUE_ID_reg_alpha2type488, ptr @__ksymtab_mwifiex_add_virtual_intf, ptr @__ksymtab_mwifiex_del_virtual_intf, ptr @__param_reg_alpha2, ptr @mwifiex_cfg80211_sched_scan_start._entry, ptr @mwifiex_cfg80211_sched_scan_start._entry.115, ptr @mwifiex_cfg80211_sched_scan_start._entry.119, ptr @mwifiex_cfg80211_sched_scan_start._entry_ptr, ptr @mwifiex_cfg80211_sched_scan_start._entry_ptr.118, ptr @mwifiex_cfg80211_sched_scan_start._entry_ptr.121, ptr @mwifiex_cfg80211_sched_scan_stop._entry, ptr @mwifiex_cfg80211_sched_scan_stop._entry_ptr, ptr @mwifiex_cfg80211_tdls_cancel_chan_switch._entry, ptr @mwifiex_cfg80211_tdls_cancel_chan_switch._entry.154, ptr @mwifiex_cfg80211_tdls_cancel_chan_switch._entry_ptr, ptr @mwifiex_cfg80211_tdls_cancel_chan_switch._entry_ptr.156, ptr @mwifiex_cfg80211_tdls_chan_switch._entry, ptr @mwifiex_cfg80211_tdls_chan_switch._entry.147, ptr @mwifiex_cfg80211_tdls_chan_switch._entry.150, ptr @mwifiex_cfg80211_tdls_chan_switch._entry_ptr, ptr @mwifiex_cfg80211_tdls_chan_switch._entry_ptr.149, ptr @mwifiex_cfg80211_tdls_chan_switch._entry_ptr.152, ptr @mwifiex_tm_cmd._entry, ptr @mwifiex_tm_cmd._entry_ptr, ptr @reg_alpha2, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mwifiex_add_virtual_intf.__key, ptr @.str.9, ptr @mwifiex_add_virtual_intf.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mwifiex_add_virtual_intf.__key.14, ptr @.str.15, ptr @mwifiex_add_virtual_intf.__key.16, ptr @.str.17, ptr @mwifiex_add_virtual_intf.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @mwifiex_band_2ghz, ptr @mwifiex_band_5ghz, ptr @mwifiex_cfg80211_ops, ptr @.str.22, ptr @mwifiex_mgmt_stypes, ptr @mwifiex_iface_comb_ap_sta_drcs, ptr @mwifiex_iface_comb_ap_sta_vht, ptr @mwifiex_iface_comb_ap_sta, ptr @mwifiex_cipher_suites, ptr @mwifiex_wowlan_support, ptr @mwifiex_wowlan_support_no_gtk, ptr @mwifiex_coalesce_support, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @mwifiex_channels_2ghz, ptr @mwifiex_rates, ptr @mwifiex_channels_5ghz, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @mwifiex_set_wowlan_mef_entry.ipv4_mc_mac, ptr @mwifiex_set_wowlan_mef_entry.ipv6_mc_mac, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @mwifiex_cfg80211_add_key.bc_mac, ptr @.str.51, ptr @mwifiex_cfg80211_del_key.bc_mac, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @mwifiex_parse_htinfo.legacy_rates, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @mwifiex_tm_policy, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @mwifiex_get_coalesce_pkt_type.ipv4_mc_mac, ptr @mwifiex_get_coalesce_pkt_type.ipv6_mc_mac, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @mwifiex_ap_sta_limits, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @switch.table.mwifiex_init_new_priv_params, ptr @switch.table.mwifiex_init_new_priv_params.160], section "llvm.metadata"
@0 = internal global [187 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_alpha2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_add_virtual_intf.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_add_virtual_intf.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_add_virtual_intf.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_add_virtual_intf.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_add_virtual_intf.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_band_2ghz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_band_5ghz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_cfg80211_ops to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_mgmt_stypes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_iface_comb_ap_sta_drcs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_iface_comb_ap_sta_vht to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_iface_comb_ap_sta to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_cipher_suites to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_wowlan_support to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_wowlan_support_no_gtk to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_coalesce_support to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_channels_2ghz to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_channels_5ghz to i32), i32 1736, i32 2176, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_set_wowlan_mef_entry.ipv4_mc_mac to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_set_wowlan_mef_entry.ipv6_mc_mac to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_cfg80211_add_key.bc_mac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_cfg80211_del_key.bc_mac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_parse_htinfo.legacy_rates to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_tm_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_tm_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_cfg80211_sched_scan_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_cfg80211_sched_scan_start._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_cfg80211_sched_scan_start._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_cfg80211_sched_scan_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_get_coalesce_pkt_type.ipv4_mc_mac to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_get_coalesce_pkt_type.ipv6_mc_mac to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_cfg80211_tdls_chan_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_cfg80211_tdls_chan_switch._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_cfg80211_tdls_chan_switch._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_cfg80211_tdls_cancel_chan_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_cfg80211_tdls_cancel_chan_switch._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_ap_sta_limits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mwifiex_init_new_priv_params to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mwifiex_init_new_priv_params.160 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mwifiex_chan_type_to_sec_chan_offset(i32 noundef %chan_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chan_type)
  %switch.selectcmp = icmp eq i32 %chan_type, 3
  %switch.select = zext i1 %switch.selectcmp to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %chan_type)
  %switch.selectcmp3 = icmp eq i32 %chan_type, 2
  %switch.select4 = select i1 %switch.selectcmp3, i8 3, i8 %switch.select
  ret i8 %switch.select4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mwifiex_get_chan_type(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  %channel_band = alloca %struct.mwifiex_channel_band, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %channel_band) #12
  %0 = ptrtoint ptr %channel_band to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %channel_band, align 1, !annotation !381
  %1 = getelementptr inbounds %struct.mwifiex_channel_band, ptr %channel_band, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !381
  %call = call i32 @mwifiex_get_chan_info(ptr noundef %priv, ptr noundef nonnull %channel_band) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %channel_band to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %channel_band, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %if.then.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb14
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %6, i32 0, i32 84
  %7 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config_bands, align 2
  %9 = and i8 %8, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %sw.bb.if.else_crit_edge, label %land.lhs.true

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %bcn_ht_cap = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 24
  %11 = ptrtoint ptr %bcn_ht_cap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bcn_ht_cap, align 8
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true9

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true9:                                   ; preds = %land.lhs.true
  %disable_11n = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 22
  %13 = ptrtoint ptr %disable_11n to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %disable_11n, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  br i1 %tobool12.not, label %land.lhs.true9.cleanup_crit_edge, label %land.lhs.true9.if.else_crit_edge

land.lhs.true9.if.else_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true9.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  br label %cleanup

sw.bb14:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %15 = and i8 %bf.load, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %cmp = icmp eq i8 %15, 4
  %. = select i1 %cmp, i8 3, i8 2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %if.else, %land.lhs.true9.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true9.cleanup_crit_edge ], [ %., %sw.bb14 ], [ 1, %if.then.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %channel_band) #12
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_chan_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_send_domain_info_cmd_fw(ptr noundef readonly %wiphy) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %mwifiex_cfg80211_get_adapter.exit, !prof !382

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !383
  unreachable

mwifiex_cfg80211_get_adapter.exit:                ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %domain_reg = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 75
  %country_code = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 124
  %3 = ptrtoint ptr %country_code to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %country_code, align 4
  %5 = ptrtoint ptr %domain_reg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %domain_reg, align 1
  %arrayidx4 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 124, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 75, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 75, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %arrayidx8, align 1
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 84
  %10 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config_bands, align 2
  %call9 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %11) #12
  %conv = zext i8 %call9 to i32
  %arrayidx10 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 %conv
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx10, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %mwifiex_cfg80211_get_adapter.exit.cleanup.sink.split_crit_edge, label %for.cond.preheader

mwifiex_cfg80211_get_adapter.exit.cleanup.sink.split_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %mwifiex_cfg80211_get_adapter.exit
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp117 = icmp sgt i32 %15, 0
  br i1 %cmp117, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end56_crit_edge

for.cond.preheader.if.end56_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %conv13125 = phi i32 [ %conv13, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %flag.0124 = phi i8 [ %flag.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0123 = phi i8 [ %inc46, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %max_pwr.0122 = phi i8 [ %max_pwr.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %next_chan.0121 = phi i8 [ %next_chan.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %first_chan.0120 = phi i8 [ %first_chan.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %no_of_parsed_chan.0119 = phi i8 [ %no_of_parsed_chan.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %no_of_triplet.0118 = phi i8 [ %no_of_triplet.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %flags = getelementptr %struct.ieee80211_channel, ptr %17, i32 %conv13125, i32 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end18:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.0124)
  %tobool19.not = icmp eq i8 %flag.0124, 0
  %hw_value = getelementptr %struct.ieee80211_channel, ptr %17, i32 %conv13125, i32 3
  %20 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hw_value, align 2
  br i1 %tobool19.not, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %conv22 = trunc i16 %21 to i8
  %max_power = getelementptr %struct.ieee80211_channel, ptr %17, i32 %conv13125, i32 6
  %22 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_power, align 4
  %conv23 = trunc i32 %23 to i8
  br label %for.inc

if.end24:                                         ; preds = %if.end18
  %conv26 = zext i16 %21 to i32
  %conv27 = zext i8 %next_chan.0121 to i32
  %add = add nuw nsw i32 %conv27, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv26)
  %cmp28 = icmp eq i32 %add, %conv26
  br i1 %cmp28, label %land.lhs.true, label %if.end24.if.else_crit_edge

if.end24.if.else_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end24
  %max_power30 = getelementptr %struct.ieee80211_channel, ptr %17, i32 %conv13125, i32 6
  %24 = ptrtoint ptr %max_power30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_power30, align 4
  %conv31 = zext i8 %max_pwr.0122 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv31)
  %cmp32 = icmp eq i32 %25, %conv31
  br i1 %cmp32, label %if.then34, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i8 %next_chan.0121, 1
  %inc35 = add i8 %no_of_parsed_chan.0119, 1
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end24.if.else_crit_edge
  %idxprom36 = zext i8 %no_of_triplet.0118 to i32
  %arrayidx37 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 75, i32 2, i32 %idxprom36
  %26 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %first_chan.0120, ptr %arrayidx37, align 1
  %num_channels = getelementptr inbounds %struct.anon.154, ptr %arrayidx37, i32 0, i32 1
  %27 = ptrtoint ptr %num_channels to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %no_of_parsed_chan.0119, ptr %num_channels, align 1
  %max_power38 = getelementptr inbounds %struct.anon.154, ptr %arrayidx37, i32 0, i32 2
  %28 = ptrtoint ptr %max_power38 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %max_pwr.0122, ptr %max_power38, align 1
  %inc39 = add i8 %no_of_triplet.0118, 1
  %29 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hw_value, align 2
  %conv42 = trunc i16 %30 to i8
  %max_power43 = getelementptr %struct.ieee80211_channel, ptr %17, i32 %conv13125, i32 6
  %31 = ptrtoint ptr %max_power43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_power43, align 4
  %conv44 = trunc i32 %32 to i8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then34, %if.then20, %for.body.for.inc_crit_edge
  %no_of_triplet.1 = phi i8 [ %no_of_triplet.0118, %for.body.for.inc_crit_edge ], [ %no_of_triplet.0118, %if.then34 ], [ %inc39, %if.else ], [ %no_of_triplet.0118, %if.then20 ]
  %no_of_parsed_chan.1 = phi i8 [ %no_of_parsed_chan.0119, %for.body.for.inc_crit_edge ], [ %inc35, %if.then34 ], [ 1, %if.else ], [ 1, %if.then20 ]
  %first_chan.1 = phi i8 [ %first_chan.0120, %for.body.for.inc_crit_edge ], [ %first_chan.0120, %if.then34 ], [ %conv42, %if.else ], [ %conv22, %if.then20 ]
  %next_chan.1 = phi i8 [ %next_chan.0121, %for.body.for.inc_crit_edge ], [ %inc, %if.then34 ], [ %conv42, %if.else ], [ %conv22, %if.then20 ]
  %max_pwr.1 = phi i8 [ %max_pwr.0122, %for.body.for.inc_crit_edge ], [ %max_pwr.0122, %if.then34 ], [ %conv44, %if.else ], [ %conv23, %if.then20 ]
  %flag.1 = phi i8 [ %flag.0124, %for.body.for.inc_crit_edge ], [ 1, %if.then34 ], [ 1, %if.else ], [ 1, %if.then20 ]
  %inc46 = add i8 %i.0123, 1
  %conv13 = zext i8 %inc46 to i32
  %33 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_channels, align 4
  %cmp = icmp sgt i32 %34, %conv13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.1)
  %tobool47.not = icmp eq i8 %flag.1, 0
  br i1 %tobool47.not, label %for.end.if.end56_crit_edge, label %if.then48

for.end.if.end56_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then48:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %idxprom50 = zext i8 %no_of_triplet.1 to i32
  %arrayidx51 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 75, i32 2, i32 %idxprom50
  %35 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %first_chan.1, ptr %arrayidx51, align 1
  %num_channels53 = getelementptr inbounds %struct.anon.154, ptr %arrayidx51, i32 0, i32 1
  %36 = ptrtoint ptr %num_channels53 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %no_of_parsed_chan.1, ptr %num_channels53, align 1
  %max_power54 = getelementptr inbounds %struct.anon.154, ptr %arrayidx51, i32 0, i32 2
  %37 = ptrtoint ptr %max_power54 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %max_pwr.1, ptr %max_power54, align 1
  %inc55 = add i8 %no_of_triplet.1, 1
  br label %if.end56

if.end56:                                         ; preds = %if.then48, %for.end.if.end56_crit_edge, %for.cond.preheader.if.end56_crit_edge
  %no_of_triplet.2 = phi i8 [ %inc55, %if.then48 ], [ %no_of_triplet.1, %for.end.if.end56_crit_edge ], [ 0, %for.cond.preheader.if.end56_crit_edge ]
  %no_of_triplet57 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 75, i32 1
  %38 = ptrtoint ptr %no_of_triplet57 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %no_of_triplet.2, ptr %no_of_triplet57, align 1
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 5
  %39 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp29.not.i = icmp eq i8 %40, 0
  br i1 %cmp29.not.i, label %if.end56.mwifiex_get_priv.exit_crit_edge, label %if.end56.for.body.i_crit_edge

if.end56.for.body.i_crit_edge:                    ; preds = %if.end56
  br label %for.body.i

if.end56.mwifiex_get_priv.exit_crit_edge:         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end56.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end56.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %i.030.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.mwifiex_get_priv.exit_crit_edge

for.body.i.mwifiex_get_priv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %for.body.i.mwifiex_get_priv.exit_crit_edge, %if.end56.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %if.end56.mwifiex_get_priv.exit_crit_edge ], [ %42, %for.body.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %call59 = tail call i32 @mwifiex_send_cmd(ptr noundef %cond.i, i16 noundef zeroext 91, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %mwifiex_get_priv.exit.cleanup_crit_edge, label %mwifiex_get_priv.exit.cleanup.sink.split_crit_edge

mwifiex_get_priv.exit.cleanup.sink.split_crit_edge: ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

mwifiex_get_priv.exit.cleanup_crit_edge:          ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %mwifiex_get_priv.exit.cleanup.sink.split_crit_edge, %mwifiex_cfg80211_get_adapter.exit.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 4, %mwifiex_cfg80211_get_adapter.exit.cleanup.sink.split_crit_edge ], [ 1073741824, %mwifiex_get_priv.exit.cleanup.sink.split_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef %.sink, ptr noundef nonnull @.str) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %mwifiex_get_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mwifiex_get_priv.exit.cleanup_crit_edge ], [ -1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mwifiex_add_virtual_intf(ptr noundef %wiphy, ptr noundef %name, i8 noundef zeroext %name_assign_type, i32 noundef %type, ptr nocapture readnone %params) #1 align 64 {
entry:
  %mode.i.i = alloca i16, align 2
  %mode.i = alloca i16, align 2
  %index.i.i385 = alloca [3 x i32], align 4
  %index.i.i335 = alloca [3 x i32], align 4
  %index.i.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %mwifiex_cfg80211_get_adapter.exit, !prof !382

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !383
  unreachable

mwifiex_cfg80211_get_adapter.exit:                ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %mwifiex_cfg80211_get_adapter.exit.cleanup_crit_edge, label %if.end

mwifiex_cfg80211_get_adapter.exit.cleanup_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mwifiex_cfg80211_get_adapter.exit
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %type, label %sw.default [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge503
    i32 1, label %if.end.sw.bb_crit_edge504
    i32 3, label %sw.bb20
    i32 8, label %sw.bb45
  ]

if.end.sw.bb_crit_edge504:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge503:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge503, %if.end.sw.bb_crit_edge504
  %curr_iface_comb = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %curr_iface_comb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_iface_comb, align 1
  %iface_limit = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %iface_limit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iface_limit, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp = icmp eq i8 %5, %7
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 5
  %8 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %priv_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp35.not.i = icmp eq i8 %9, 0
  br i1 %cmp35.not.i, label %if.end7.for.end.i_crit_edge, label %for.body.preheader.i

if.end7.for.end.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end7
  %10 = add i8 %9, -1
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 1
  %wide.trip.count.i = zext i8 %9 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %indvars.iv.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %bss_mode.i = getelementptr inbounds %struct.mwifiex_private, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %bss_mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bss_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3.i = icmp eq i32 %16, 0
  br i1 %cmp3.i, label %for.body.preheader.i.i, label %for.inc.i

for.body.preheader.i.i:                           ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %index.i.i) #12
  %17 = call ptr @memset(ptr %index.i.i, i32 0, i32 12)
  br label %for.body.i.i

for.cond23.preheader.i.i:                         ; preds = %for.inc.i.i
  %18 = trunc i32 %indvars.iv.i to i8
  %19 = getelementptr inbounds [3 x i32], ptr %index.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool30.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool30.not.i.i, label %for.cond23.preheader.i.i.mwifiex_get_unused_bss_num.exit.i_crit_edge, label %for.inc33.i.i

for.cond23.preheader.i.i.mwifiex_get_unused_bss_num.exit.i_crit_edge: ; preds = %for.cond23.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_unused_bss_num.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %indvars.iv.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i334 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i334, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %bss_type6.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %bss_type6.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bss_type6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp9.i.i = icmp eq i8 %25, 0
  br i1 %cmp9.i.i, label %land.lhs.true.i.i, label %if.then.i.i.for.inc.i.i_crit_edge

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %bss_mode.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %23, i32 0, i32 18
  %26 = ptrtoint ptr %bss_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bss_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp14.i.i = icmp eq i32 %27, 0
  br i1 %cmp14.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.then16.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then16.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bss_num.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %23, i32 0, i32 4
  %28 = ptrtoint ptr %bss_num.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bss_num.i.i, align 1
  %idxprom20.i.i = zext i8 %29 to i32
  %arrayidx21.i.i = getelementptr [3 x i32], ptr %index.i.i, i32 0, i32 %idxprom20.i.i
  %30 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %arrayidx21.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then16.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.then.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %for.cond23.preheader.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc33.i.i:                                    ; preds = %for.cond23.preheader.i.i
  %31 = getelementptr inbounds [3 x i32], ptr %index.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool30.not.1.i.i = icmp eq i32 %33, 0
  br i1 %tobool30.not.1.i.i, label %for.inc33.i.i.mwifiex_get_unused_bss_num.exit.i_crit_edge, label %for.inc33.1.i.i

for.inc33.i.i.mwifiex_get_unused_bss_num.exit.i_crit_edge: ; preds = %for.inc33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_unused_bss_num.exit.i

for.inc33.1.i.i:                                  ; preds = %for.inc33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool30.not.2.i.i = icmp eq i32 %35, 0
  %spec.select.i.i = select i1 %tobool30.not.2.i.i, i8 2, i8 -1
  br label %mwifiex_get_unused_bss_num.exit.i

mwifiex_get_unused_bss_num.exit.i:                ; preds = %for.inc33.1.i.i, %for.inc33.i.i.mwifiex_get_unused_bss_num.exit.i_crit_edge, %for.cond23.preheader.i.i.mwifiex_get_unused_bss_num.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %for.cond23.preheader.i.i.mwifiex_get_unused_bss_num.exit.i_crit_edge ], [ 1, %for.inc33.i.i.mwifiex_get_unused_bss_num.exit.i_crit_edge ], [ %spec.select.i.i, %for.inc33.1.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %index.i.i) #12
  %bss_num.i = getelementptr inbounds %struct.mwifiex_private, ptr %14, i32 0, i32 4
  %36 = ptrtoint ptr %bss_num.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %retval.0.i.i, ptr %bss_num.i, align 1
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end.loopexit.loopexit.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.loopexit.loopexit.i:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = trunc i32 %12 to i8
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.loopexit.i, %mwifiex_get_unused_bss_num.exit.i, %if.end7.for.end.i_crit_edge
  %i.032.i = phi i8 [ %18, %mwifiex_get_unused_bss_num.exit.i ], [ 0, %if.end7.for.end.i_crit_edge ], [ %37, %for.end.loopexit.loopexit.i ]
  %conv30.i = phi i32 [ %indvars.iv.i, %mwifiex_get_unused_bss_num.exit.i ], [ 0, %if.end7.for.end.i_crit_edge ], [ %12, %for.end.loopexit.loopexit.i ]
  %38 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %priv_num.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %i.032.i, i8 %39)
  %cmp11.i = icmp ult i8 %i.032.i, %39
  br i1 %cmp11.i, label %mwifiex_get_unused_priv_by_bss_type.exit, label %for.end.i.if.then10_crit_edge

for.end.i.if.then10_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

mwifiex_get_unused_priv_by_bss_type.exit:         ; preds = %for.end.i
  %arrayidx15.i = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %conv30.i
  %40 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx15.i, align 4
  %tobool9.not = icmp eq ptr %41, null
  br i1 %tobool9.not, label %mwifiex_get_unused_priv_by_bss_type.exit.if.then10_crit_edge, label %if.end12

mwifiex_get_unused_priv_by_bss_type.exit.if.then10_crit_edge: ; preds = %mwifiex_get_unused_priv_by_bss_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then10:                                        ; preds = %mwifiex_get_unused_priv_by_bss_type.exit.if.then10_crit_edge, %for.end.i.if.then10_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end12:                                         ; preds = %mwifiex_get_unused_priv_by_bss_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %41, i32 0, i32 103
  %42 = ptrtoint ptr %wdev to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %wiphy, ptr %wdev, align 8
  %iftype = getelementptr inbounds %struct.mwifiex_private, ptr %41, i32 0, i32 103, i32 1
  %43 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp15 = icmp eq i32 %type, 0
  %spec.select = select i1 %cmp15, i32 2, i32 %type
  %44 = getelementptr inbounds %struct.mwifiex_private, ptr %41, i32 0, i32 18
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.select, ptr %44, align 8
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %bss_type to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %bss_type, align 4
  %frame_type = getelementptr inbounds %struct.mwifiex_private, ptr %41, i32 0, i32 6
  %47 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %frame_type, align 1
  %bss_priority = getelementptr inbounds %struct.mwifiex_private, ptr %41, i32 0, i32 3
  %48 = ptrtoint ptr %bss_priority to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %bss_priority, align 2
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %41, i32 0, i32 2
  %49 = ptrtoint ptr %bss_role to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %bss_role, align 1
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  %uap_intf = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %uap_intf to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %uap_intf, align 1
  %uap_intf24 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %uap_intf24 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %uap_intf24, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %53)
  %cmp26 = icmp eq i8 %51, %53
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end30:                                         ; preds = %sw.bb20
  %priv_num.i336 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 5
  %54 = ptrtoint ptr %priv_num.i336 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %priv_num.i336, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp35.not.i337 = icmp eq i8 %55, 0
  br i1 %cmp35.not.i337, label %if.end30.for.end.i380_crit_edge, label %for.body.preheader.i339

if.end30.for.end.i380_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i380

for.body.preheader.i339:                          ; preds = %if.end30
  %56 = add i8 %55, -1
  %57 = zext i8 %56 to i32
  %58 = add nuw nsw i32 %57, 1
  %wide.trip.count.i338 = zext i8 %55 to i32
  br label %for.body.i344

for.body.i344:                                    ; preds = %for.inc.i375.for.body.i344_crit_edge, %for.body.preheader.i339
  %indvars.iv.i340 = phi i32 [ 0, %for.body.preheader.i339 ], [ %indvars.iv.next.i373, %for.inc.i375.for.body.i344_crit_edge ]
  %arrayidx.i341 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %indvars.iv.i340
  %59 = ptrtoint ptr %arrayidx.i341 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i341, align 4
  %bss_mode.i342 = getelementptr inbounds %struct.mwifiex_private, ptr %60, i32 0, i32 18
  %61 = ptrtoint ptr %bss_mode.i342 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bss_mode.i342, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp3.i343 = icmp eq i32 %62, 0
  br i1 %cmp3.i343, label %for.body.preheader.i.i345, label %for.inc.i375

for.body.preheader.i.i345:                        ; preds = %for.body.i344
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %index.i.i335) #12
  %63 = call ptr @memset(ptr %index.i.i335, i32 0, i32 12)
  br label %for.body.i.i351

for.cond23.preheader.i.i347:                      ; preds = %for.inc.i.i364
  %64 = trunc i32 %indvars.iv.i340 to i8
  %65 = getelementptr inbounds [3 x i32], ptr %index.i.i335, i32 0, i32 2
  %66 = ptrtoint ptr %index.i.i335 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index.i.i335, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool30.not.i.i346 = icmp eq i32 %67, 0
  br i1 %tobool30.not.i.i346, label %for.cond23.preheader.i.i347.mwifiex_get_unused_bss_num.exit.i372_crit_edge, label %for.inc33.i.i366

for.cond23.preheader.i.i347.mwifiex_get_unused_bss_num.exit.i372_crit_edge: ; preds = %for.cond23.preheader.i.i347
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_unused_bss_num.exit.i372

for.body.i.i351:                                  ; preds = %for.inc.i.i364.for.body.i.i351_crit_edge, %for.body.preheader.i.i345
  %indvars.iv.i.i348 = phi i32 [ 0, %for.body.preheader.i.i345 ], [ %indvars.iv.next.i.i362, %for.inc.i.i364.for.body.i.i351_crit_edge ]
  %arrayidx.i.i349 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %indvars.iv.i.i348
  %68 = ptrtoint ptr %arrayidx.i.i349 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i349, align 4
  %tobool.not.i.i350 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i350, label %for.body.i.i351.for.inc.i.i364_crit_edge, label %if.then.i.i354

for.body.i.i351.for.inc.i.i364_crit_edge:         ; preds = %for.body.i.i351
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i364

if.then.i.i354:                                   ; preds = %for.body.i.i351
  %bss_type6.i.i352 = getelementptr inbounds %struct.mwifiex_private, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %bss_type6.i.i352 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bss_type6.i.i352, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp9.i.i353 = icmp eq i8 %71, 1
  br i1 %cmp9.i.i353, label %land.lhs.true.i.i357, label %if.then.i.i354.for.inc.i.i364_crit_edge

if.then.i.i354.for.inc.i.i364_crit_edge:          ; preds = %if.then.i.i354
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i364

land.lhs.true.i.i357:                             ; preds = %if.then.i.i354
  %bss_mode.i.i355 = getelementptr inbounds %struct.mwifiex_private, ptr %69, i32 0, i32 18
  %72 = ptrtoint ptr %bss_mode.i.i355 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bss_mode.i.i355, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp14.i.i356 = icmp eq i32 %73, 0
  br i1 %cmp14.i.i356, label %land.lhs.true.i.i357.for.inc.i.i364_crit_edge, label %if.then16.i.i361

land.lhs.true.i.i357.for.inc.i.i364_crit_edge:    ; preds = %land.lhs.true.i.i357
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i364

if.then16.i.i361:                                 ; preds = %land.lhs.true.i.i357
  call void @__sanitizer_cov_trace_pc() #14
  %bss_num.i.i358 = getelementptr inbounds %struct.mwifiex_private, ptr %69, i32 0, i32 4
  %74 = ptrtoint ptr %bss_num.i.i358 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bss_num.i.i358, align 1
  %idxprom20.i.i359 = zext i8 %75 to i32
  %arrayidx21.i.i360 = getelementptr [3 x i32], ptr %index.i.i335, i32 0, i32 %idxprom20.i.i359
  %76 = ptrtoint ptr %arrayidx21.i.i360 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %arrayidx21.i.i360, align 4
  br label %for.inc.i.i364

for.inc.i.i364:                                   ; preds = %if.then16.i.i361, %land.lhs.true.i.i357.for.inc.i.i364_crit_edge, %if.then.i.i354.for.inc.i.i364_crit_edge, %for.body.i.i351.for.inc.i.i364_crit_edge
  %indvars.iv.next.i.i362 = add nuw nsw i32 %indvars.iv.i.i348, 1
  %exitcond.not.i.i363 = icmp eq i32 %indvars.iv.next.i.i362, %wide.trip.count.i338
  br i1 %exitcond.not.i.i363, label %for.cond23.preheader.i.i347, label %for.inc.i.i364.for.body.i.i351_crit_edge

for.inc.i.i364.for.body.i.i351_crit_edge:         ; preds = %for.inc.i.i364
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i351

for.inc33.i.i366:                                 ; preds = %for.cond23.preheader.i.i347
  %77 = getelementptr inbounds [3 x i32], ptr %index.i.i335, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool30.not.1.i.i365 = icmp eq i32 %79, 0
  br i1 %tobool30.not.1.i.i365, label %for.inc33.i.i366.mwifiex_get_unused_bss_num.exit.i372_crit_edge, label %for.inc33.1.i.i369

for.inc33.i.i366.mwifiex_get_unused_bss_num.exit.i372_crit_edge: ; preds = %for.inc33.i.i366
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_unused_bss_num.exit.i372

for.inc33.1.i.i369:                               ; preds = %for.inc33.i.i366
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool30.not.2.i.i367 = icmp eq i32 %81, 0
  %spec.select.i.i368 = select i1 %tobool30.not.2.i.i367, i8 2, i8 -1
  br label %mwifiex_get_unused_bss_num.exit.i372

mwifiex_get_unused_bss_num.exit.i372:             ; preds = %for.inc33.1.i.i369, %for.inc33.i.i366.mwifiex_get_unused_bss_num.exit.i372_crit_edge, %for.cond23.preheader.i.i347.mwifiex_get_unused_bss_num.exit.i372_crit_edge
  %retval.0.i.i370 = phi i8 [ 0, %for.cond23.preheader.i.i347.mwifiex_get_unused_bss_num.exit.i372_crit_edge ], [ 1, %for.inc33.i.i366.mwifiex_get_unused_bss_num.exit.i372_crit_edge ], [ %spec.select.i.i368, %for.inc33.1.i.i369 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %index.i.i335) #12
  %bss_num.i371 = getelementptr inbounds %struct.mwifiex_private, ptr %60, i32 0, i32 4
  %82 = ptrtoint ptr %bss_num.i371 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %retval.0.i.i370, ptr %bss_num.i371, align 1
  br label %for.end.i380

for.inc.i375:                                     ; preds = %for.body.i344
  %indvars.iv.next.i373 = add nuw nsw i32 %indvars.iv.i340, 1
  %exitcond.not.i374 = icmp eq i32 %indvars.iv.next.i373, %wide.trip.count.i338
  br i1 %exitcond.not.i374, label %for.end.loopexit.loopexit.i376, label %for.inc.i375.for.body.i344_crit_edge

for.inc.i375.for.body.i344_crit_edge:             ; preds = %for.inc.i375
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i344

for.end.loopexit.loopexit.i376:                   ; preds = %for.inc.i375
  call void @__sanitizer_cov_trace_pc() #14
  %83 = trunc i32 %58 to i8
  br label %for.end.i380

for.end.i380:                                     ; preds = %for.end.loopexit.loopexit.i376, %mwifiex_get_unused_bss_num.exit.i372, %if.end30.for.end.i380_crit_edge
  %i.032.i377 = phi i8 [ %64, %mwifiex_get_unused_bss_num.exit.i372 ], [ 0, %if.end30.for.end.i380_crit_edge ], [ %83, %for.end.loopexit.loopexit.i376 ]
  %conv30.i378 = phi i32 [ %indvars.iv.i340, %mwifiex_get_unused_bss_num.exit.i372 ], [ 0, %if.end30.for.end.i380_crit_edge ], [ %58, %for.end.loopexit.loopexit.i376 ]
  %84 = ptrtoint ptr %priv_num.i336 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %priv_num.i336, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %i.032.i377, i8 %85)
  %cmp11.i379 = icmp ult i8 %i.032.i377, %85
  br i1 %cmp11.i379, label %mwifiex_get_unused_priv_by_bss_type.exit384, label %for.end.i380.if.then33_crit_edge

for.end.i380.if.then33_crit_edge:                 ; preds = %for.end.i380
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

mwifiex_get_unused_priv_by_bss_type.exit384:      ; preds = %for.end.i380
  %arrayidx15.i381 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %conv30.i378
  %86 = ptrtoint ptr %arrayidx15.i381 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx15.i381, align 4
  %tobool32.not = icmp eq ptr %87, null
  br i1 %tobool32.not, label %mwifiex_get_unused_priv_by_bss_type.exit384.if.then33_crit_edge, label %if.end35

mwifiex_get_unused_priv_by_bss_type.exit384.if.then33_crit_edge: ; preds = %mwifiex_get_unused_priv_by_bss_type.exit384
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

if.then33:                                        ; preds = %mwifiex_get_unused_priv_by_bss_type.exit384.if.then33_crit_edge, %for.end.i380.if.then33_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end35:                                         ; preds = %mwifiex_get_unused_priv_by_bss_type.exit384
  call void @__sanitizer_cov_trace_pc() #14
  %wdev36 = getelementptr inbounds %struct.mwifiex_private, ptr %87, i32 0, i32 103
  %88 = ptrtoint ptr %wdev36 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %wiphy, ptr %wdev36, align 8
  %iftype39 = getelementptr inbounds %struct.mwifiex_private, ptr %87, i32 0, i32 103, i32 1
  %89 = ptrtoint ptr %iftype39 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 3, ptr %iftype39, align 4
  %bss_type40 = getelementptr inbounds %struct.mwifiex_private, ptr %87, i32 0, i32 1
  %90 = ptrtoint ptr %bss_type40 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %bss_type40, align 4
  %frame_type41 = getelementptr inbounds %struct.mwifiex_private, ptr %87, i32 0, i32 6
  %91 = ptrtoint ptr %frame_type41 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %frame_type41, align 1
  %bss_priority42 = getelementptr inbounds %struct.mwifiex_private, ptr %87, i32 0, i32 3
  %92 = ptrtoint ptr %bss_priority42 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %bss_priority42, align 2
  %bss_role43 = getelementptr inbounds %struct.mwifiex_private, ptr %87, i32 0, i32 2
  %93 = ptrtoint ptr %bss_role43 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %bss_role43, align 1
  %bss_started = getelementptr inbounds %struct.mwifiex_private, ptr %87, i32 0, i32 5
  %94 = ptrtoint ptr %bss_started to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %bss_started, align 8
  %bss_mode44 = getelementptr inbounds %struct.mwifiex_private, ptr %87, i32 0, i32 18
  %95 = ptrtoint ptr %bss_mode44 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 3, ptr %bss_mode44, align 8
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end
  %p2p_intf = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 3, i32 2
  %96 = ptrtoint ptr %p2p_intf to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %p2p_intf, align 1
  %p2p_intf49 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 2, i32 2
  %98 = ptrtoint ptr %p2p_intf49 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %p2p_intf49, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %97, i8 %99)
  %cmp51 = icmp eq i8 %97, %99
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end55:                                         ; preds = %sw.bb45
  %priv_num.i386 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 5
  %100 = ptrtoint ptr %priv_num.i386 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %priv_num.i386, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp35.not.i387 = icmp eq i8 %101, 0
  br i1 %cmp35.not.i387, label %if.end55.for.end.i430_crit_edge, label %for.body.preheader.i389

if.end55.for.end.i430_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i430

for.body.preheader.i389:                          ; preds = %if.end55
  %102 = add i8 %101, -1
  %103 = zext i8 %102 to i32
  %104 = add nuw nsw i32 %103, 1
  %wide.trip.count.i388 = zext i8 %101 to i32
  br label %for.body.i394

for.body.i394:                                    ; preds = %for.inc.i425.for.body.i394_crit_edge, %for.body.preheader.i389
  %indvars.iv.i390 = phi i32 [ 0, %for.body.preheader.i389 ], [ %indvars.iv.next.i423, %for.inc.i425.for.body.i394_crit_edge ]
  %arrayidx.i391 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %indvars.iv.i390
  %105 = ptrtoint ptr %arrayidx.i391 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i391, align 4
  %bss_mode.i392 = getelementptr inbounds %struct.mwifiex_private, ptr %106, i32 0, i32 18
  %107 = ptrtoint ptr %bss_mode.i392 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bss_mode.i392, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp3.i393 = icmp eq i32 %108, 0
  br i1 %cmp3.i393, label %for.body.preheader.i.i395, label %for.inc.i425

for.body.preheader.i.i395:                        ; preds = %for.body.i394
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %index.i.i385) #12
  %109 = call ptr @memset(ptr %index.i.i385, i32 0, i32 12)
  br label %for.body.i.i401

for.cond23.preheader.i.i397:                      ; preds = %for.inc.i.i414
  %110 = trunc i32 %indvars.iv.i390 to i8
  %111 = getelementptr inbounds [3 x i32], ptr %index.i.i385, i32 0, i32 2
  %112 = ptrtoint ptr %index.i.i385 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %index.i.i385, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool30.not.i.i396 = icmp eq i32 %113, 0
  br i1 %tobool30.not.i.i396, label %for.cond23.preheader.i.i397.mwifiex_get_unused_bss_num.exit.i422_crit_edge, label %for.inc33.i.i416

for.cond23.preheader.i.i397.mwifiex_get_unused_bss_num.exit.i422_crit_edge: ; preds = %for.cond23.preheader.i.i397
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_unused_bss_num.exit.i422

for.body.i.i401:                                  ; preds = %for.inc.i.i414.for.body.i.i401_crit_edge, %for.body.preheader.i.i395
  %indvars.iv.i.i398 = phi i32 [ 0, %for.body.preheader.i.i395 ], [ %indvars.iv.next.i.i412, %for.inc.i.i414.for.body.i.i401_crit_edge ]
  %arrayidx.i.i399 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %indvars.iv.i.i398
  %114 = ptrtoint ptr %arrayidx.i.i399 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i.i399, align 4
  %tobool.not.i.i400 = icmp eq ptr %115, null
  br i1 %tobool.not.i.i400, label %for.body.i.i401.for.inc.i.i414_crit_edge, label %if.then.i.i404

for.body.i.i401.for.inc.i.i414_crit_edge:         ; preds = %for.body.i.i401
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i414

if.then.i.i404:                                   ; preds = %for.body.i.i401
  %bss_type6.i.i402 = getelementptr inbounds %struct.mwifiex_private, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %bss_type6.i.i402 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %bss_type6.i.i402, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %117)
  %cmp9.i.i403 = icmp eq i8 %117, 2
  br i1 %cmp9.i.i403, label %land.lhs.true.i.i407, label %if.then.i.i404.for.inc.i.i414_crit_edge

if.then.i.i404.for.inc.i.i414_crit_edge:          ; preds = %if.then.i.i404
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i414

land.lhs.true.i.i407:                             ; preds = %if.then.i.i404
  %bss_mode.i.i405 = getelementptr inbounds %struct.mwifiex_private, ptr %115, i32 0, i32 18
  %118 = ptrtoint ptr %bss_mode.i.i405 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %bss_mode.i.i405, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp14.i.i406 = icmp eq i32 %119, 0
  br i1 %cmp14.i.i406, label %land.lhs.true.i.i407.for.inc.i.i414_crit_edge, label %if.then16.i.i411

land.lhs.true.i.i407.for.inc.i.i414_crit_edge:    ; preds = %land.lhs.true.i.i407
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i414

if.then16.i.i411:                                 ; preds = %land.lhs.true.i.i407
  call void @__sanitizer_cov_trace_pc() #14
  %bss_num.i.i408 = getelementptr inbounds %struct.mwifiex_private, ptr %115, i32 0, i32 4
  %120 = ptrtoint ptr %bss_num.i.i408 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %bss_num.i.i408, align 1
  %idxprom20.i.i409 = zext i8 %121 to i32
  %arrayidx21.i.i410 = getelementptr [3 x i32], ptr %index.i.i385, i32 0, i32 %idxprom20.i.i409
  %122 = ptrtoint ptr %arrayidx21.i.i410 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %arrayidx21.i.i410, align 4
  br label %for.inc.i.i414

for.inc.i.i414:                                   ; preds = %if.then16.i.i411, %land.lhs.true.i.i407.for.inc.i.i414_crit_edge, %if.then.i.i404.for.inc.i.i414_crit_edge, %for.body.i.i401.for.inc.i.i414_crit_edge
  %indvars.iv.next.i.i412 = add nuw nsw i32 %indvars.iv.i.i398, 1
  %exitcond.not.i.i413 = icmp eq i32 %indvars.iv.next.i.i412, %wide.trip.count.i388
  br i1 %exitcond.not.i.i413, label %for.cond23.preheader.i.i397, label %for.inc.i.i414.for.body.i.i401_crit_edge

for.inc.i.i414.for.body.i.i401_crit_edge:         ; preds = %for.inc.i.i414
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i401

for.inc33.i.i416:                                 ; preds = %for.cond23.preheader.i.i397
  %123 = getelementptr inbounds [3 x i32], ptr %index.i.i385, i32 0, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool30.not.1.i.i415 = icmp eq i32 %125, 0
  br i1 %tobool30.not.1.i.i415, label %for.inc33.i.i416.mwifiex_get_unused_bss_num.exit.i422_crit_edge, label %for.inc33.1.i.i419

for.inc33.i.i416.mwifiex_get_unused_bss_num.exit.i422_crit_edge: ; preds = %for.inc33.i.i416
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_unused_bss_num.exit.i422

for.inc33.1.i.i419:                               ; preds = %for.inc33.i.i416
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool30.not.2.i.i417 = icmp eq i32 %127, 0
  %spec.select.i.i418 = select i1 %tobool30.not.2.i.i417, i8 2, i8 -1
  br label %mwifiex_get_unused_bss_num.exit.i422

mwifiex_get_unused_bss_num.exit.i422:             ; preds = %for.inc33.1.i.i419, %for.inc33.i.i416.mwifiex_get_unused_bss_num.exit.i422_crit_edge, %for.cond23.preheader.i.i397.mwifiex_get_unused_bss_num.exit.i422_crit_edge
  %retval.0.i.i420 = phi i8 [ 0, %for.cond23.preheader.i.i397.mwifiex_get_unused_bss_num.exit.i422_crit_edge ], [ 1, %for.inc33.i.i416.mwifiex_get_unused_bss_num.exit.i422_crit_edge ], [ %spec.select.i.i418, %for.inc33.1.i.i419 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %index.i.i385) #12
  %bss_num.i421 = getelementptr inbounds %struct.mwifiex_private, ptr %106, i32 0, i32 4
  %128 = ptrtoint ptr %bss_num.i421 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %retval.0.i.i420, ptr %bss_num.i421, align 1
  br label %for.end.i430

for.inc.i425:                                     ; preds = %for.body.i394
  %indvars.iv.next.i423 = add nuw nsw i32 %indvars.iv.i390, 1
  %exitcond.not.i424 = icmp eq i32 %indvars.iv.next.i423, %wide.trip.count.i388
  br i1 %exitcond.not.i424, label %for.end.loopexit.loopexit.i426, label %for.inc.i425.for.body.i394_crit_edge

for.inc.i425.for.body.i394_crit_edge:             ; preds = %for.inc.i425
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i394

for.end.loopexit.loopexit.i426:                   ; preds = %for.inc.i425
  call void @__sanitizer_cov_trace_pc() #14
  %129 = trunc i32 %104 to i8
  br label %for.end.i430

for.end.i430:                                     ; preds = %for.end.loopexit.loopexit.i426, %mwifiex_get_unused_bss_num.exit.i422, %if.end55.for.end.i430_crit_edge
  %i.032.i427 = phi i8 [ %110, %mwifiex_get_unused_bss_num.exit.i422 ], [ 0, %if.end55.for.end.i430_crit_edge ], [ %129, %for.end.loopexit.loopexit.i426 ]
  %conv30.i428 = phi i32 [ %indvars.iv.i390, %mwifiex_get_unused_bss_num.exit.i422 ], [ 0, %if.end55.for.end.i430_crit_edge ], [ %104, %for.end.loopexit.loopexit.i426 ]
  %130 = ptrtoint ptr %priv_num.i386 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %priv_num.i386, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %i.032.i427, i8 %131)
  %cmp11.i429 = icmp ult i8 %i.032.i427, %131
  br i1 %cmp11.i429, label %mwifiex_get_unused_priv_by_bss_type.exit434, label %for.end.i430.if.then58_crit_edge

for.end.i430.if.then58_crit_edge:                 ; preds = %for.end.i430
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

mwifiex_get_unused_priv_by_bss_type.exit434:      ; preds = %for.end.i430
  %arrayidx15.i431 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %conv30.i428
  %132 = ptrtoint ptr %arrayidx15.i431 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx15.i431, align 4
  %tobool57.not = icmp eq ptr %133, null
  br i1 %tobool57.not, label %mwifiex_get_unused_priv_by_bss_type.exit434.if.then58_crit_edge, label %if.end60

mwifiex_get_unused_priv_by_bss_type.exit434.if.then58_crit_edge: ; preds = %mwifiex_get_unused_priv_by_bss_type.exit434
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.then58:                                        ; preds = %mwifiex_get_unused_priv_by_bss_type.exit434.if.then58_crit_edge, %for.end.i430.if.then58_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end60:                                         ; preds = %mwifiex_get_unused_priv_by_bss_type.exit434
  %wdev61 = getelementptr inbounds %struct.mwifiex_private, ptr %133, i32 0, i32 103
  %134 = ptrtoint ptr %wdev61 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %wiphy, ptr %wdev61, align 8
  %iftype64 = getelementptr inbounds %struct.mwifiex_private, ptr %133, i32 0, i32 103, i32 1
  %135 = ptrtoint ptr %iftype64 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 8, ptr %iftype64, align 4
  %bss_mode65 = getelementptr inbounds %struct.mwifiex_private, ptr %133, i32 0, i32 18
  %136 = ptrtoint ptr %bss_mode65 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 8, ptr %bss_mode65, align 8
  %bss_type66 = getelementptr inbounds %struct.mwifiex_private, ptr %133, i32 0, i32 1
  %137 = ptrtoint ptr %bss_type66 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 2, ptr %bss_type66, align 4
  %frame_type67 = getelementptr inbounds %struct.mwifiex_private, ptr %133, i32 0, i32 6
  %138 = ptrtoint ptr %frame_type67 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %frame_type67, align 1
  %bss_priority68 = getelementptr inbounds %struct.mwifiex_private, ptr %133, i32 0, i32 3
  %139 = ptrtoint ptr %bss_priority68 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %bss_priority68, align 2
  %bss_role69 = getelementptr inbounds %struct.mwifiex_private, ptr %133, i32 0, i32 2
  %140 = ptrtoint ptr %bss_role69 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %bss_role69, align 1
  %bss_started70 = getelementptr inbounds %struct.mwifiex_private, ptr %133, i32 0, i32 5
  %141 = ptrtoint ptr %bss_started70 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %bss_started70, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode.i.i) #12
  %142 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 0, ptr %mode.i.i, align 2
  %call.i.i = call i32 @mwifiex_send_cmd(ptr noundef nonnull %133, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %mode.i.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.not.i = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode.i.i) #12
  br i1 %tobool.not.i.not.i, label %if.end.i, label %if.end60.mwifiex_cfg80211_init_p2p_client.exit.thread_crit_edge

if.end60.mwifiex_cfg80211_init_p2p_client.exit.thread_crit_edge: ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_cfg80211_init_p2p_client.exit.thread

if.end.i:                                         ; preds = %if.end60
  %143 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 1, ptr %mode.i, align 2
  %call1.i = call i32 @mwifiex_send_cmd(ptr noundef nonnull %133, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %mode.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %mwifiex_cfg80211_init_p2p_client.exit, label %if.end.i.mwifiex_cfg80211_init_p2p_client.exit.thread_crit_edge

if.end.i.mwifiex_cfg80211_init_p2p_client.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_cfg80211_init_p2p_client.exit.thread

mwifiex_cfg80211_init_p2p_client.exit.thread:     ; preds = %if.end.i.mwifiex_cfg80211_init_p2p_client.exit.thread_crit_edge, %if.end60.mwifiex_cfg80211_init_p2p_client.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode.i) #12
  br label %if.then73

mwifiex_cfg80211_init_p2p_client.exit:            ; preds = %if.end.i
  %144 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 3, ptr %mode.i, align 2
  %call5.i = call i32 @mwifiex_send_cmd(ptr noundef nonnull %133, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %mode.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i.not = icmp eq i32 %call5.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode.i) #12
  br i1 %tobool6.not.i.not, label %mwifiex_cfg80211_init_p2p_client.exit.sw.epilog_crit_edge, label %mwifiex_cfg80211_init_p2p_client.exit.if.then73_crit_edge

mwifiex_cfg80211_init_p2p_client.exit.if.then73_crit_edge: ; preds = %mwifiex_cfg80211_init_p2p_client.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then73

mwifiex_cfg80211_init_p2p_client.exit.sw.epilog_crit_edge: ; preds = %mwifiex_cfg80211_init_p2p_client.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then73:                                        ; preds = %mwifiex_cfg80211_init_p2p_client.exit.if.then73_crit_edge, %mwifiex_cfg80211_init_p2p_client.exit.thread
  %145 = call ptr @memset(ptr %wdev61, i32 0, i32 964)
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.5) #12
  br label %cleanup

sw.epilog:                                        ; preds = %mwifiex_cfg80211_init_p2p_client.exit.sw.epilog_crit_edge, %if.end35, %if.end12
  %priv.0 = phi ptr [ %133, %mwifiex_cfg80211_init_p2p_client.exit.sw.epilog_crit_edge ], [ %87, %if.end35 ], [ %41, %if.end12 ]
  %call80 = call ptr @alloc_netdev_mqs(i32 noundef 4, ptr noundef %name, i8 noundef zeroext %name_assign_type, ptr noundef nonnull @ether_setup, i32 noundef 4, i32 noundef 1) #12
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.then82, label %if.end83

if.then82:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.6) #12
  br label %err_alloc_netdev

if.end83:                                         ; preds = %sw.epilog
  call void @mwifiex_init_priv_params(ptr noundef nonnull %priv.0, ptr noundef nonnull %call80) #12
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 15
  %146 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call80, ptr %netdev, align 4
  %mfg_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 147
  %147 = ptrtoint ptr %mfg_mode to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %mfg_mode, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool84.not = icmp eq i8 %148, 0
  br i1 %tobool84.not, label %if.then85, label %if.end83.if.end95_crit_edge

if.end83.if.end95_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then85:                                        ; preds = %if.end83
  %call86 = call i32 @mwifiex_set_mac_address(ptr noundef nonnull %priv.0, ptr noundef nonnull %call80, i1 noundef zeroext false, ptr noundef null) #12
  %call87 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %priv.0, i16 noundef zeroext 247, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.then85.err_alloc_netdev_crit_edge

if.then85.err_alloc_netdev_crit_edge:             ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_alloc_netdev

if.end90:                                         ; preds = %if.then85
  %call91 = call i32 @mwifiex_sta_init_cmd(ptr noundef nonnull %priv.0, i8 noundef zeroext 0, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end90.if.end95_crit_edge, label %if.end90.err_alloc_netdev_crit_edge

if.end90.err_alloc_netdev_crit_edge:              ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_alloc_netdev

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.end95:                                         ; preds = %if.end90.if.end95_crit_edge, %if.end83.if.end95_crit_edge
  %bands = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 53
  %149 = ptrtoint ptr %bands to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bands, align 16
  %ht_cap = getelementptr inbounds %struct.ieee80211_supported_band, ptr %150, i32 0, i32 5
  call fastcc void @mwifiex_setup_ht_caps(ptr noundef %ht_cap, ptr noundef nonnull %priv.0)
  %is_hw_11ac_capable = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 128
  %151 = ptrtoint ptr %is_hw_11ac_capable to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %is_hw_11ac_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool96.not = icmp eq i32 %152, 0
  br i1 %tobool96.not, label %if.end95.if.end100_crit_edge, label %if.then97

if.end95.if.end100_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then97:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  %153 = ptrtoint ptr %bands to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bands, align 16
  %vht_cap = getelementptr inbounds %struct.ieee80211_supported_band, ptr %154, i32 0, i32 6
  %155 = ptrtoint ptr %priv.0 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %priv.0, align 8
  %157 = ptrtoint ptr %vht_cap to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %vht_cap, align 4
  %hw_dot_11ac_dev_cap.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %156, i32 0, i32 129
  %158 = ptrtoint ptr %hw_dot_11ac_dev_cap.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %hw_dot_11ac_dev_cap.i, align 4
  %cap.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %154, i32 0, i32 6, i32 1
  %160 = ptrtoint ptr %cap.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %cap.i, align 4
  %hw_dot_11ac_mcs_support.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %156, i32 0, i32 130
  %161 = ptrtoint ptr %hw_dot_11ac_mcs_support.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %hw_dot_11ac_mcs_support.i, align 4
  %conv.i = trunc i32 %162 to i16
  %163 = call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %vht_mcs.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %154, i32 0, i32 6, i32 2
  %164 = ptrtoint ptr %vht_mcs.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %vht_mcs.i, align 4
  %rx_highest.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %154, i32 0, i32 6, i32 2, i32 1
  %165 = ptrtoint ptr %rx_highest.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 0, ptr %rx_highest.i, align 2
  %166 = ptrtoint ptr %hw_dot_11ac_mcs_support.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %hw_dot_11ac_mcs_support.i, align 4
  %shr.i = lshr i32 %167, 16
  %conv4.i = trunc i32 %shr.i to i16
  %168 = call i16 @llvm.bswap.i16(i16 %conv4.i) #12
  %tx_mcs_map.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %154, i32 0, i32 6, i32 2, i32 2
  %169 = ptrtoint ptr %tx_mcs_map.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %tx_mcs_map.i, align 4
  %tx_highest.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %154, i32 0, i32 6, i32 2, i32 3
  %170 = ptrtoint ptr %tx_highest.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 0, ptr %tx_highest.i, align 2
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.end95.if.end100_crit_edge
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 84
  %171 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %config_bands, align 2
  %173 = and i8 %172, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool102.not = icmp eq i8 %173, 0
  br i1 %tobool102.not, label %if.end100.if.end107_crit_edge, label %if.then103

if.end100.if.end107_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx105 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 1
  %174 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx105, align 4
  %ht_cap106 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %175, i32 0, i32 5
  call fastcc void @mwifiex_setup_ht_caps(ptr noundef %ht_cap106, ptr noundef nonnull %priv.0)
  br label %if.end107

if.end107:                                        ; preds = %if.then103, %if.end100.if.end107_crit_edge
  %176 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %config_bands, align 2
  %178 = and i8 %177, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool111.not = icmp eq i8 %178, 0
  br i1 %tobool111.not, label %if.end107.if.end118_crit_edge, label %land.lhs.true

if.end107.if.end118_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

land.lhs.true:                                    ; preds = %if.end107
  %179 = ptrtoint ptr %is_hw_11ac_capable to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %is_hw_11ac_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool113.not = icmp eq i32 %180, 0
  br i1 %tobool113.not, label %land.lhs.true.if.end118_crit_edge, label %if.then114

land.lhs.true.if.end118_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then114:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx116 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 1
  %181 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx116, align 4
  %vht_cap117 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %182, i32 0, i32 6
  %183 = ptrtoint ptr %priv.0 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %priv.0, align 8
  %185 = ptrtoint ptr %vht_cap117 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 1, ptr %vht_cap117, align 4
  %hw_dot_11ac_dev_cap.i435 = getelementptr inbounds %struct.mwifiex_adapter, ptr %184, i32 0, i32 129
  %186 = ptrtoint ptr %hw_dot_11ac_dev_cap.i435 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %hw_dot_11ac_dev_cap.i435, align 4
  %cap.i436 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %182, i32 0, i32 6, i32 1
  %188 = ptrtoint ptr %cap.i436 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %cap.i436, align 4
  %hw_dot_11ac_mcs_support.i437 = getelementptr inbounds %struct.mwifiex_adapter, ptr %184, i32 0, i32 130
  %189 = ptrtoint ptr %hw_dot_11ac_mcs_support.i437 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %hw_dot_11ac_mcs_support.i437, align 4
  %conv.i438 = trunc i32 %190 to i16
  %191 = call i16 @llvm.bswap.i16(i16 %conv.i438) #12
  %vht_mcs.i439 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %182, i32 0, i32 6, i32 2
  %192 = ptrtoint ptr %vht_mcs.i439 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %191, ptr %vht_mcs.i439, align 4
  %rx_highest.i440 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %182, i32 0, i32 6, i32 2, i32 1
  %193 = ptrtoint ptr %rx_highest.i440 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 0, ptr %rx_highest.i440, align 2
  %194 = ptrtoint ptr %hw_dot_11ac_mcs_support.i437 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %hw_dot_11ac_mcs_support.i437, align 4
  %shr.i441 = lshr i32 %195, 16
  %conv4.i442 = trunc i32 %shr.i441 to i16
  %196 = call i16 @llvm.bswap.i16(i16 %conv4.i442) #12
  %tx_mcs_map.i443 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %182, i32 0, i32 6, i32 2, i32 2
  %197 = ptrtoint ptr %tx_mcs_map.i443 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %196, ptr %tx_mcs_map.i443, align 4
  %tx_highest.i444 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %182, i32 0, i32 6, i32 2, i32 3
  %198 = ptrtoint ptr %tx_highest.i444 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 0, ptr %tx_highest.i444, align 2
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %land.lhs.true.if.end118_crit_edge, %if.end107.if.end118_crit_edge
  %_net.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 62
  %199 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %_net.i, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call80, i32 0, i32 127
  %201 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %200, ptr %nd_net.i, align 4
  %wdev120 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 103
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %call80, i32 0, i32 82
  %202 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %wdev120, ptr %ieee80211_ptr, align 16
  %bss_mode121 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 18
  %203 = ptrtoint ptr %bss_mode121 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %bss_mode121, align 8
  %iftype123 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 103, i32 1
  %205 = ptrtoint ptr %iftype123 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %iftype123, align 4
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56, i32 1
  %206 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %call80, i32 0, i32 133, i32 1
  %208 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %207, ptr %parent, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %call80, i32 0, i32 14
  %209 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %flags, align 8
  %or = or i32 %210, 4098
  store i32 %or, ptr %flags, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call80, i32 0, i32 115
  %211 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 500, ptr %watchdog_timeo, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %call80, i32 0, i32 21
  %212 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 100, ptr %needed_headroom, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call80, i32 0, i32 44
  %213 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @mwifiex_ethtool_ops, ptr %ethtool_ops, align 16
  %add.ptr.i = getelementptr i8, ptr %call80, i32 2304
  %214 = ptrtoint ptr %priv.0 to i32
  %215 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %add.ptr.i, align 4
  %dev127 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 9
  %216 = ptrtoint ptr %dev127 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev127, align 4
  store ptr %217, ptr %parent, align 8
  %call130 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.7, i32 noundef 26, i32 noundef 1, ptr noundef %name) #12
  %dfs_cac_workqueue = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 151
  %218 = ptrtoint ptr %dfs_cac_workqueue to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call130, ptr %dfs_cac_workqueue, align 8
  %tobool132.not = icmp eq ptr %call130, null
  br i1 %tobool132.not, label %if.then133, label %do.body135

if.then133:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.8) #12
  br label %err_alloc_cac

do.body135:                                       ; preds = %if.end118
  %dfs_cac_work = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 152
  call void @__init_work(ptr noundef %dfs_cac_work, i32 noundef 0) #12
  %219 = ptrtoint ptr %dfs_cac_work to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 -64, ptr %dfs_cac_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 152, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @mwifiex_add_virtual_intf.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry142 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 152, i32 0, i32 1
  %220 = ptrtoint ptr %entry142 to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile ptr %entry142, ptr %entry142, align 4
  %prev.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 152, i32 0, i32 1, i32 1
  %221 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %entry142, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 152, i32 0, i32 2
  %222 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr @mwifiex_dfs_cac_work_queue, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 152, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.11, ptr noundef nonnull @mwifiex_add_virtual_intf.__key.10) #12
  %call151 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.12, i32 noundef 26, i32 noundef 1, ptr noundef %name) #12
  %dfs_chan_sw_workqueue = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 154
  %223 = ptrtoint ptr %dfs_chan_sw_workqueue to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %call151, ptr %dfs_chan_sw_workqueue, align 8
  %tobool153.not = icmp eq ptr %call151, null
  br i1 %tobool153.not, label %if.then154, label %do.body157

if.then154:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.13) #12
  br label %err_alloc_chsw

do.body157:                                       ; preds = %do.body135
  %dfs_chan_sw_work = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 155
  call void @__init_work(ptr noundef %dfs_chan_sw_work, i32 noundef 0) #12
  %224 = ptrtoint ptr %dfs_chan_sw_work to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -64, ptr %dfs_chan_sw_work, align 4
  %lockdep_map166 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 155, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map166, ptr noundef nonnull @.str.15, ptr noundef nonnull @mwifiex_add_virtual_intf.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry169 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 155, i32 0, i32 1
  %225 = ptrtoint ptr %entry169 to i32
  call void @__asan_store4_noabort(i32 %225)
  store volatile ptr %entry169, ptr %entry169, align 4
  %prev.i445 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 155, i32 0, i32 1, i32 1
  %226 = ptrtoint ptr %prev.i445 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %entry169, ptr %prev.i445, align 4
  %func172 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 155, i32 0, i32 2
  %227 = ptrtoint ptr %func172 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr @mwifiex_dfs_chan_sw_work_queue, ptr %func172, align 4
  %timer177 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 155, i32 1
  call void @init_timer_key(ptr noundef %timer177, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.17, ptr noundef nonnull @mwifiex_add_virtual_intf.__key.16) #12
  %async_mutex = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 110
  call void @__mutex_init(ptr noundef %async_mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @mwifiex_add_virtual_intf.__key.18) #12
  %call185 = call i32 @cfg80211_register_netdevice(ptr noundef nonnull %call80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %if.then187

if.then187:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @.str.20) #12
  %228 = ptrtoint ptr %dfs_chan_sw_workqueue to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dfs_chan_sw_workqueue, align 8
  call void @destroy_workqueue(ptr noundef %229) #12
  %230 = ptrtoint ptr %dfs_chan_sw_workqueue to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr null, ptr %dfs_chan_sw_workqueue, align 8
  br label %err_alloc_chsw

if.end188:                                        ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %2, i32 noundef 1073741824, ptr noundef nonnull @.str.21, ptr noundef nonnull %call80) #12
  call void @mwifiex_dev_debugfs_init(ptr noundef nonnull %priv.0) #12
  call fastcc void @update_vif_type_counter(ptr noundef nonnull %2, i32 noundef %type, i32 noundef 1)
  br label %cleanup

err_alloc_chsw:                                   ; preds = %if.then187, %if.then154
  %ret.0 = phi i32 [ -14, %if.then187 ], [ -12, %if.then154 ]
  %231 = ptrtoint ptr %dfs_cac_workqueue to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dfs_cac_workqueue, align 8
  call void @destroy_workqueue(ptr noundef %232) #12
  %233 = ptrtoint ptr %dfs_cac_workqueue to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr null, ptr %dfs_cac_workqueue, align 8
  br label %err_alloc_cac

err_alloc_cac:                                    ; preds = %err_alloc_chsw, %if.then133
  %ret.1 = phi i32 [ %ret.0, %err_alloc_chsw ], [ -12, %if.then133 ]
  call void @free_netdev(ptr noundef nonnull %call80) #12
  %234 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr null, ptr %netdev, align 4
  br label %err_alloc_netdev

err_alloc_netdev:                                 ; preds = %err_alloc_cac, %if.end90.err_alloc_netdev_crit_edge, %if.then85.err_alloc_netdev_crit_edge, %if.then82
  %ret.2 = phi i32 [ %ret.1, %err_alloc_cac ], [ %call87, %if.then85.err_alloc_netdev_crit_edge ], [ %call91, %if.end90.err_alloc_netdev_crit_edge ], [ -12, %if.then82 ]
  %wdev196 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 103
  %bss_mode199 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 18
  %235 = ptrtoint ptr %bss_mode199 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 0, ptr %bss_mode199, align 8
  %236 = inttoptr i32 %ret.2 to ptr
  %237 = call ptr @memset(ptr %wdev196, i32 0, i32 964)
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_netdev, %if.end188, %sw.default, %if.then73, %if.then58, %if.then53, %if.then33, %if.then28, %if.then10, %if.then5, %mwifiex_cfg80211_get_adapter.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %sw.default ], [ inttoptr (i32 -22 to ptr), %if.then53 ], [ inttoptr (i32 -14 to ptr), %if.then73 ], [ %236, %err_alloc_netdev ], [ %wdev120, %if.end188 ], [ inttoptr (i32 -14 to ptr), %if.then58 ], [ inttoptr (i32 -22 to ptr), %if.then28 ], [ inttoptr (i32 -14 to ptr), %if.then33 ], [ inttoptr (i32 -22 to ptr), %if.then5 ], [ inttoptr (i32 -14 to ptr), %if.then10 ], [ inttoptr (i32 -14 to ptr), %mwifiex_cfg80211_get_adapter.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_init_priv_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_mac_address(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_sta_init_cmd(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mwifiex_setup_ht_caps(ptr noundef %ht_info, ptr nocapture noundef readonly %priv) unnamed_addr #4 align 64 {
entry:
  %mcs_set = alloca %struct.ieee80211_mcs_info, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mcs_set) #12
  %0 = getelementptr inbounds [10 x i8], ptr %mcs_set, i32 0, i32 4
  %1 = call ptr @memset(ptr %mcs_set, i32 255, i32 16)
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 1
  %4 = ptrtoint ptr %ht_supported to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %ht_supported, align 2
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 2
  %5 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %ampdu_factor, align 1
  %ampdu_density = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 3
  %hw_dot_11n_dev_cap = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 113
  %6 = call ptr @memset(ptr %ampdu_density, i32 0, i32 17)
  %7 = ptrtoint ptr %hw_dot_11n_dev_cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_dot_11n_dev_cap, align 4
  %9 = ptrtoint ptr %ht_info to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ht_info, align 2
  %11 = and i16 %10, -3
  %and = lshr i32 %8, 16
  %12 = trunc i32 %and to i16
  %13 = and i16 %12, 2
  %storemerge = or i16 %11, %13
  store i16 %storemerge, ptr %ht_info, align 2
  %14 = load i32, ptr %hw_dot_11n_dev_cap, align 4
  %15 = and i16 %storemerge, -33
  %and9 = lshr i32 %14, 18
  %16 = trunc i32 %and9 to i16
  %17 = and i16 %16, 32
  %storemerge166 = or i16 %17, %15
  store i16 %storemerge166, ptr %ht_info, align 2
  %18 = load i32, ptr %hw_dot_11n_dev_cap, align 4
  %19 = and i16 %storemerge166, -65
  %and23 = lshr i32 %18, 18
  %20 = trunc i32 %and23 to i16
  %21 = and i16 %20, 64
  %storemerge167 = or i16 %19, %21
  store i16 %storemerge167, ptr %ht_info, align 2
  %user_dev_mcs_support = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 115
  %22 = ptrtoint ptr %user_dev_mcs_support to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %user_dev_mcs_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %23)
  %cmp = icmp eq i8 %23, 34
  %storemerge168.v = select i1 %cmp, i16 512, i16 256
  %storemerge168 = or i16 %storemerge167, %storemerge168.v
  %24 = ptrtoint ptr %ht_info to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %storemerge168, ptr %ht_info, align 2
  %25 = ptrtoint ptr %hw_dot_11n_dev_cap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_dot_11n_dev_cap, align 4
  %27 = and i16 %storemerge168, -129
  %and50 = lshr i32 %26, 18
  %28 = trunc i32 %and50 to i16
  %29 = and i16 %28, 128
  %storemerge169 = or i16 %29, %27
  store i16 %storemerge169, ptr %ht_info, align 2
  %30 = load i32, ptr %hw_dot_11n_dev_cap, align 4
  %31 = and i16 %storemerge169, -17
  %and64 = lshr i32 %30, 25
  %32 = trunc i32 %and64 to i16
  %33 = and i16 %32, 16
  %storemerge170 = or i16 %31, %33
  store i16 %storemerge170, ptr %ht_info, align 2
  %34 = load i32, ptr %hw_dot_11n_dev_cap, align 4
  %35 = and i16 %storemerge170, -16385
  %36 = trunc i32 %34 to i16
  %37 = shl i16 %36, 6
  %38 = and i16 %37, 16384
  %storemerge171 = or i16 %35, %38
  store i16 %storemerge171, ptr %ht_info, align 2
  %39 = load i32, ptr %hw_dot_11n_dev_cap, align 4
  %40 = and i16 %storemerge171, -2062
  %and92 = lshr i32 %39, 22
  %41 = trunc i32 %and92 to i16
  %42 = and i16 %41, 1
  %storemerge172 = or i16 %42, %40
  %43 = or i16 %storemerge172, 12
  store i16 %43, ptr %ht_info, align 2
  %44 = ptrtoint ptr %user_dev_mcs_support to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %user_dev_mcs_support, align 1
  %46 = and i8 %45, 15
  %and115 = zext i8 %46 to i32
  %47 = call ptr @memset(ptr %mcs_set, i32 255, i32 %and115)
  %arrayidx = getelementptr i8, ptr %mcs_set, i32 %and115
  %sub = sub nuw nsw i32 16, %and115
  %48 = call ptr @memset(ptr %arrayidx, i32 0, i32 %sub)
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %49 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bss_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp116 = icmp eq i32 %50, 2
  br i1 %cmp116, label %entry.if.then121_crit_edge, label %lor.lhs.false

entry.if.then121_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then121

lor.lhs.false:                                    ; preds = %entry
  %51 = ptrtoint ptr %hw_dot_11n_dev_cap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hw_dot_11n_dev_cap, align 4
  %and119 = and i32 %52, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %lor.lhs.false.if.end126_crit_edge, label %lor.lhs.false.if.then121_crit_edge

lor.lhs.false.if.then121_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then121

lor.lhs.false.if.end126_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end126

if.then121:                                       ; preds = %lor.lhs.false.if.then121_crit_edge, %entry.if.then121_crit_edge
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %0, align 1
  %55 = or i8 %54, 1
  store i8 %55, ptr %0, align 1
  br label %if.end126

if.end126:                                        ; preds = %if.then121, %lor.lhs.false.if.end126_crit_edge
  %mcs2 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 4
  %56 = call ptr @memcpy(ptr %mcs2, ptr %mcs_set, i32 16)
  %tx_params = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 4, i32 2
  %57 = ptrtoint ptr %tx_params to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %tx_params, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mcs_set) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_dfs_cac_work_queue(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_dfs_chan_sw_work_queue(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_register_netdevice(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_dev_debugfs_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_vif_type_counter(ptr noundef %adapter, i32 noundef %iftype, i32 noundef %change) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %iftype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %iftype, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge18
    i32 2, label %entry.sw.bb_crit_edge19
    i32 3, label %sw.bb2
    i32 8, label %entry.sw.bb7_crit_edge
    i32 9, label %entry.sw.bb7_crit_edge20
  ]

entry.sw.bb7_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge18, %entry.sw.bb_crit_edge19
  %curr_iface_comb = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 3
  %1 = ptrtoint ptr %curr_iface_comb to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %curr_iface_comb, align 1
  %3 = trunc i32 %change to i8
  %conv1 = add i8 %2, %3
  store i8 %conv1, ptr %curr_iface_comb, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %uap_intf = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %uap_intf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %uap_intf, align 1
  %6 = trunc i32 %change to i8
  %conv6 = add i8 %5, %6
  store i8 %conv6, ptr %uap_intf, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge20
  %p2p_intf = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %p2p_intf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %p2p_intf, align 1
  %9 = trunc i32 %change to i8
  %conv11 = add i8 %8, %9
  store i8 %conv11, ptr %p2p_intf, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %iftype) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_del_virtual_intf(ptr nocapture readnone %wiphy, ptr nocapture noundef readonly %wdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void @mwifiex_dev_debugfs_remove(ptr noundef %4) #12
  %sched_scanning = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 131
  %7 = ptrtoint ptr %sched_scanning to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sched_scanning, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %sched_scanning to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %sched_scanning, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %netdev3 = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 15
  %10 = ptrtoint ptr %netdev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev3, align 4
  tail call void @mwifiex_stop_net_dev_queue(ptr noundef %11, ptr noundef %6) #12
  %bypass_txq = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 160
  %12 = ptrtoint ptr %bypass_txq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bypass_txq, align 4
  %cmp.not71 = icmp eq ptr %13, %bypass_txq
  br i1 %cmp.not71, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %skb.072 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %13, %if.end.for.body_crit_edge ]
  %14 = ptrtoint ptr %skb.072 to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp.0 = load ptr, ptr %skb.072, align 8
  tail call void @skb_unlink(ptr noundef %skb.072, ptr noundef %bypass_txq) #12
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 8
  %call8 = tail call i32 @mwifiex_write_data_complete(ptr noundef %16, ptr noundef %skb.072, i32 noundef 0, i32 noundef -1) #12
  %cmp.not = icmp eq ptr %tmp.0, %bypass_txq
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %17 = ptrtoint ptr %netdev3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev3, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then12, label %for.end.if.end14_crit_edge

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_off(ptr noundef %18) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.end.if.end14_crit_edge
  %22 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev, align 4
  %reg_state = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 121
  %24 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp16 = icmp eq i8 %bf.load, 1
  br i1 %cmp16, label %if.then17, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %ieee80211_ptr.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 82
  %25 = ptrtoint ptr %ieee80211_ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ieee80211_ptr.i, align 16
  tail call void @cfg80211_unregister_wdev(ptr noundef %26) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %dfs_cac_workqueue = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 151
  %27 = ptrtoint ptr %dfs_cac_workqueue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dfs_cac_workqueue, align 8
  %tobool20.not = icmp eq ptr %28, null
  br i1 %tobool20.not, label %if.end19.if.end24_crit_edge, label %if.then21

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @destroy_workqueue(ptr noundef nonnull %28) #12
  %29 = ptrtoint ptr %dfs_cac_workqueue to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %dfs_cac_workqueue, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19.if.end24_crit_edge
  %dfs_chan_sw_workqueue = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 154
  %30 = ptrtoint ptr %dfs_chan_sw_workqueue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dfs_chan_sw_workqueue, align 8
  %tobool25.not = icmp eq ptr %31, null
  br i1 %tobool25.not, label %if.end24.if.end29_crit_edge, label %if.then26

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @destroy_workqueue(ptr noundef nonnull %31) #12
  %32 = ptrtoint ptr %dfs_chan_sw_workqueue to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %dfs_chan_sw_workqueue, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24.if.end29_crit_edge
  %33 = ptrtoint ptr %netdev3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %netdev3, align 4
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 18
  %34 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bss_mode, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %35, label %sw.default.i [
    i32 0, label %if.end29.sw.bb.i_crit_edge
    i32 1, label %if.end29.sw.bb.i_crit_edge73
    i32 2, label %if.end29.sw.bb.i_crit_edge74
    i32 3, label %sw.bb2.i
    i32 8, label %if.end29.sw.bb7.i_crit_edge
    i32 9, label %if.end29.sw.bb7.i_crit_edge75
  ]

if.end29.sw.bb7.i_crit_edge75:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

if.end29.sw.bb7.i_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

if.end29.sw.bb.i_crit_edge74:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end29.sw.bb.i_crit_edge73:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end29.sw.bb.i_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end29.sw.bb.i_crit_edge, %if.end29.sw.bb.i_crit_edge73, %if.end29.sw.bb.i_crit_edge74
  %curr_iface_comb.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %6, i32 0, i32 3
  %37 = ptrtoint ptr %curr_iface_comb.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %curr_iface_comb.i, align 1
  %conv1.i = add i8 %38, -1
  store i8 %conv1.i, ptr %curr_iface_comb.i, align 1
  br label %update_vif_type_counter.exit

sw.bb2.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %uap_intf.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %6, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %uap_intf.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %uap_intf.i, align 1
  %conv6.i = add i8 %40, -1
  store i8 %conv6.i, ptr %uap_intf.i, align 1
  br label %update_vif_type_counter.exit

sw.bb7.i:                                         ; preds = %if.end29.sw.bb7.i_crit_edge, %if.end29.sw.bb7.i_crit_edge75
  %p2p_intf.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %6, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %p2p_intf.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %p2p_intf.i, align 1
  %conv11.i = add i8 %42, -1
  store i8 %conv11.i, ptr %p2p_intf.i, align 1
  br label %update_vif_type_counter.exit

sw.default.i:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %35) #12
  br label %update_vif_type_counter.exit

update_vif_type_counter.exit:                     ; preds = %sw.default.i, %sw.bb7.i, %sw.bb2.i, %sw.bb.i
  %43 = ptrtoint ptr %bss_mode to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %bss_mode, align 8
  %hist_data = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 149
  %44 = ptrtoint ptr %hist_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hist_data, align 8
  tail call void @kfree(ptr noundef %45) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_dev_debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_stop_net_dev_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_write_data_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_init_channel_scan_gap(ptr nocapture noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @mwifiex_band_2ghz, i32 0, i32 3), align 4
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 84
  %1 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %config_bands, align 2
  %3 = and i8 %2, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = load i32, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @mwifiex_band_5ghz, i32 0, i32 3), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %n_channels_a.0 = phi i32 [ %4, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %add = add i32 %n_channels_a.0, %0
  %mul = shl i32 %add, 1
  %num_in_chan_stats = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 149
  %5 = ptrtoint ptr %num_in_chan_stats to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %num_in_chan_stats, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 10) #12
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %retval.0.i = select i1 %7, i32 -1, i32 %8
  %call2 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #15
  %chan_stats = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 148
  %9 = ptrtoint ptr %chan_stats to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %chan_stats, align 4
  %tobool4.not = icmp eq ptr %call2, null
  %. = select i1 %tobool4.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_register_cfg80211(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  %thr = alloca i32, align 4
  %retry = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thr) #12
  %2 = ptrtoint ptr %thr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %thr, align 4, !annotation !381
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retry) #12
  %3 = ptrtoint ptr %retry to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %retry, align 4, !annotation !381
  %call.i = tail call ptr @wiphy_new_nm(ptr noundef nonnull @mwifiex_cfg80211_ops, i32 noundef 4, ptr noundef null) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mwifiex_register_cfg80211) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 18
  %4 = ptrtoint ptr %max_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %max_scan_ssids, align 32
  %max_scan_ie_len = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 22
  %5 = ptrtoint ptr %max_scan_ie_len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 256, ptr %max_scan_ie_len, align 4
  %mgmt_stypes = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %mgmt_stypes to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mwifiex_mgmt_stypes, ptr %mgmt_stypes, align 4
  %max_remain_on_channel_duration = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 42
  %7 = ptrtoint ptr %max_remain_on_channel_duration to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 5000, ptr %max_remain_on_channel_duration, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 780, ptr %interface_modes, align 4
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 47
  %9 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool2.not, i16 780, i16 782
  %11 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %spec.store.select, ptr %interface_modes, align 4
  %bands = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 53
  %12 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mwifiex_band_2ghz, ptr %bands, align 16
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 84
  %13 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %config_bands, align 2
  %15 = and i8 %14, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool10.not = icmp eq i8 %15, 0
  %spec.select = select i1 %tobool10.not, ptr null, ptr @mwifiex_band_5ghz
  %16 = getelementptr %struct.wiphy, ptr %call.i, i32 0, i32 53, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spec.select, ptr %16, align 4
  %drcs_enabled = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 158
  %18 = ptrtoint ptr %drcs_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %drcs_enabled, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool17.not = icmp eq i8 %19, 0
  br i1 %tobool17.not, label %if.end.if.else23_crit_edge, label %land.lhs.true

if.end.if.else23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else23

land.lhs.true:                                    ; preds = %if.end
  %20 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_cap_info, align 4
  %and20 = and i32 %21, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true.if.else23_crit_edge, label %if.then22

land.lhs.true.if.else23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else23

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %iface_combinations = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %iface_combinations to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mwifiex_iface_comb_ap_sta_drcs, ptr %iface_combinations, align 16
  br label %if.end30

if.else23:                                        ; preds = %land.lhs.true.if.else23_crit_edge, %if.end.if.else23_crit_edge
  %is_hw_11ac_capable = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 128
  %23 = ptrtoint ptr %is_hw_11ac_capable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %is_hw_11ac_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool24.not = icmp eq i32 %24, 0
  %iface_combinations28 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 5
  br i1 %tobool24.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %iface_combinations28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mwifiex_iface_comb_ap_sta_vht, ptr %iface_combinations28, align 16
  br label %if.end30

if.else27:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %iface_combinations28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mwifiex_iface_comb_ap_sta, ptr %iface_combinations28, align 16
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then25, %if.then22
  %n_iface_combinations = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %n_iface_combinations to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %n_iface_combinations, align 4
  %max_sta_conn = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 142
  %28 = ptrtoint ptr %max_sta_conn to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %max_sta_conn, align 2
  %max_p2p_conn = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 141
  %30 = ptrtoint ptr %max_p2p_conn to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %max_p2p_conn, align 1
  %32 = call i8 @llvm.umax.i8(i8 %29, i8 %31)
  %conv39.sink = zext i8 %32 to i16
  %33 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 69
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv39.sink, ptr %33, align 4
  %cipher_suites = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 28
  %35 = ptrtoint ptr %cipher_suites to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mwifiex_cipher_suites, ptr %cipher_suites, align 8
  %n_cipher_suites = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 27
  %36 = ptrtoint ptr %n_cipher_suites to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 6, ptr %n_cipher_suites, align 4
  %regd = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 163
  %37 = ptrtoint ptr %regd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regd, align 4
  %tobool42.not = icmp eq ptr %38, null
  br i1 %tobool42.not, label %if.end30.if.end46_crit_edge, label %if.then43

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then43:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %regulatory_flags = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 12
  %39 = ptrtoint ptr %regulatory_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %regulatory_flags, align 4
  %or44 = or i32 %40, 21
  store i32 %or44, ptr %regulatory_flags, align 4
  %41 = ptrtoint ptr %regd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regd, align 4
  tail call void @wiphy_apply_custom_regulatory(ptr noundef nonnull %call.i, ptr noundef %42) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end30.if.end46_crit_edge
  %perm_addr = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 1
  %perm_addr47 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 11
  %43 = ptrtoint ptr %perm_addr47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %perm_addr47, align 4
  %45 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %perm_addr, align 4
  %add.ptr.i = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 11, i32 4
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.wiphy, ptr %call.i, i32 0, i32 1, i32 4
  %48 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %add.ptr1.i, align 2
  %signal_type = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 16
  %49 = ptrtoint ptr %signal_type to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %signal_type, align 8
  %flags = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 11
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 32
  %or49 = or i32 %51, 11157520
  store i32 %or49, ptr %flags, align 32
  %52 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fw_cap_info, align 4
  %and51 = and i32 %53, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end46.if.end56_crit_edge, label %if.then53

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then53:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %or55 = or i32 %51, 11255824
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or55, ptr %flags, align 32
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end46.if.end56_crit_edge
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %fw_cap_info58 = getelementptr inbounds %struct.mwifiex_adapter, ptr %56, i32 0, i32 47
  %57 = ptrtoint ptr %fw_cap_info58 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fw_cap_info58, align 4
  %and59 = and i32 %58, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %spec.select244 = select i1 %tobool60.not, ptr @mwifiex_wowlan_support_no_gtk, ptr @mwifiex_wowlan_support
  %59 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 40
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %spec.select244, ptr %59, align 32
  %coalesce = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 64
  %61 = ptrtoint ptr %coalesce to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @mwifiex_coalesce_support, ptr %coalesce, align 16
  %probe_resp_offload = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 46
  %62 = ptrtoint ptr %probe_resp_offload to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 7, ptr %probe_resp_offload, align 4
  %max_sched_scan_reqs = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 19
  %63 = ptrtoint ptr %max_sched_scan_reqs to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %max_sched_scan_reqs, align 1
  %max_sched_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 20
  %64 = ptrtoint ptr %max_sched_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 10, ptr %max_sched_scan_ssids, align 2
  %max_sched_scan_ie_len = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 23
  %65 = ptrtoint ptr %max_sched_scan_ie_len to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 256, ptr %max_sched_scan_ie_len, align 2
  %max_match_sets = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 21
  %66 = ptrtoint ptr %max_match_sets to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 10, ptr %max_match_sets, align 1
  %number_of_antenna = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 46
  %67 = ptrtoint ptr %number_of_antenna to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %number_of_antenna, align 4
  %conv65 = zext i16 %68 to i32
  %notmask = shl nsw i32 -1, %conv65
  %sub = xor i32 %notmask, -1
  %available_antennas_tx = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 44
  %69 = ptrtoint ptr %available_antennas_tx to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub, ptr %available_antennas_tx, align 4
  %70 = load i16, ptr %number_of_antenna, align 4
  %conv67 = zext i16 %70 to i32
  %notmask239 = shl nsw i32 -1, %conv67
  %sub69 = xor i32 %notmask239, -1
  %available_antennas_rx = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 45
  %71 = ptrtoint ptr %available_antennas_rx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub69, ptr %available_antennas_rx, align 16
  %features = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 13
  %72 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %features, align 8
  %or70 = or i32 %73, 1092
  store i32 %or70, ptr %features, align 8
  %74 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fw_cap_info, align 4
  %and72 = and i32 %75, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end56.if.end77_crit_edge, label %if.then74

if.end56.if.end77_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then74:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %or76 = or i32 %73, 1094
  %76 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or76, ptr %features, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end56.if.end77_crit_edge
  %77 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fw_cap_info, align 4
  %and79 = and i32 %78, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end77.if.end84_crit_edge, label %if.then81

if.end77.if.end84_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %features, align 8
  %or83 = or i32 %80, -536870912
  store i32 %or83, ptr %features, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end77.if.end84_crit_edge
  %81 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fw_cap_info, align 4
  %and86 = and i32 %82, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end84.if.end91_crit_edge, label %if.then88

if.end84.if.end91_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %features, align 8
  %or90 = or i32 %84, 268435456
  store i32 %or90, ptr %features, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end84.if.end91_crit_edge
  %fw_api_ver = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 138
  %85 = ptrtoint ptr %fw_api_ver to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %fw_api_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %86)
  %cmp93 = icmp eq i8 %86, 15
  br i1 %cmp93, label %if.then95, label %if.end91.wiphy_priv.exit_crit_edge

if.end91.wiphy_priv.exit_crit_edge:               ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %wiphy_priv.exit

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %features, align 8
  %or97 = or i32 %88, 1
  store i32 %or97, ptr %features, align 8
  br label %wiphy_priv.exit

wiphy_priv.exit:                                  ; preds = %if.then95, %if.end91.wiphy_priv.exit_crit_edge
  %bss_priv_size = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 17
  %89 = ptrtoint ptr %bss_priv_size to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 16, ptr %bss_priv_size, align 4
  %reg_notifier = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 54
  %90 = ptrtoint ptr %reg_notifier to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @mwifiex_reg_notifier, ptr %reg_notifier, align 8
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 86
  %91 = ptrtoint ptr %adapter to i32
  %92 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %priv.i, align 4
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.mwifiex_adapter, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 4
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 56, i32 1
  %97 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %parent.i, align 8
  %call101 = tail call i32 @wiphy_register(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.mwifiex_register_cfg80211, i32 noundef %call101) #12
  tail call void @wiphy_free(ptr noundef nonnull %call.i) #12
  br label %cleanup

if.end105:                                        ; preds = %wiphy_priv.exit
  %98 = ptrtoint ptr %regd to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regd, align 4
  %tobool107.not = icmp eq ptr %99, null
  br i1 %tobool107.not, label %if.then108, label %if.end105.if.end135_crit_edge

if.end105.if.end135_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then108:                                       ; preds = %if.end105
  %100 = load ptr, ptr @reg_alpha2, align 4
  %tobool109.not = icmp eq ptr %100, null
  br i1 %tobool109.not, label %if.then108.if.else115_crit_edge, label %lor.lhs.false.i

if.then108.if.else115_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else115

lor.lhs.false.i:                                  ; preds = %if.then108
  %call.i241 = tail call i32 @strlen(ptr noundef nonnull %100) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i241)
  %cmp.not.i = icmp eq i32 %call.i241, 2
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.if.else115_crit_edge

lor.lhs.false.i.if.else115_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else115

if.end.i:                                         ; preds = %lor.lhs.false.i
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 1
  %conv.i = zext i8 %102 to i32
  %arrayidx1.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %103 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx1.i, align 1
  %105 = and i8 %104, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %cmp3.not.i = icmp eq i8 %105, 0
  br i1 %cmp3.not.i, label %if.end.i.if.else115_crit_edge, label %land.lhs.true.i

if.end.i.if.else115_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else115

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx5.i = getelementptr i8, ptr %100, i32 1
  %106 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %107 to i32
  %arrayidx7.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv6.i
  %108 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx7.i, align 1
  %110 = and i8 %109, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp10.not.i = icmp eq i8 %110, 0
  br i1 %cmp10.not.i, label %land.lhs.true.i.if.else115_crit_edge, label %if.then113

land.lhs.true.i.if.else115_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else115

if.then113:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.24, ptr noundef nonnull %100) #12
  %111 = load ptr, ptr @reg_alpha2, align 4
  %call114 = tail call i32 @regulatory_hint(ptr noundef nonnull %call.i, ptr noundef %111) #12
  br label %if.end135

if.else115:                                       ; preds = %land.lhs.true.i.if.else115_crit_edge, %if.end.i.if.else115_crit_edge, %lor.lhs.false.i.if.else115_crit_edge, %if.then108.if.else115_crit_edge
  %region_code = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 74
  %112 = ptrtoint ptr %region_code to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %region_code, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %cmp117 = icmp eq i16 %113, 0
  br i1 %cmp117, label %if.then119, label %if.else120

if.then119:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 536870912, ptr noundef nonnull @.str.25) #12
  br label %if.end135

if.else120:                                       ; preds = %if.else115
  %regulatory_flags121 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 12
  %114 = ptrtoint ptr %regulatory_flags121 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %regulatory_flags121, align 4
  %or122 = or i32 %115, 20
  store i32 %or122, ptr %regulatory_flags121, align 4
  %116 = ptrtoint ptr %region_code to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %region_code, align 4
  %conv124 = trunc i16 %117 to i8
  %call125 = tail call ptr @mwifiex_11d_code_2_region(i8 noundef zeroext %conv124) #12
  %tobool126.not = icmp eq ptr %call125, null
  br i1 %tobool126.not, label %if.else120.if.end135_crit_edge, label %land.lhs.true127

if.else120.if.end135_crit_edge:                   ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

land.lhs.true127:                                 ; preds = %if.else120
  %call128 = tail call i32 @regulatory_hint(ptr noundef nonnull %call.i, ptr noundef nonnull %call125) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %land.lhs.true127.if.end135_crit_edge, label %if.then130

land.lhs.true127.if.end135_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then130:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %119, i32 noundef 4, ptr noundef nonnull @.str.26) #12
  br label %if.end135

if.end135:                                        ; preds = %if.then130, %land.lhs.true127.if.end135_crit_edge, %if.else120.if.end135_crit_edge, %if.then119, %if.then113, %if.end105.if.end135_crit_edge
  %call136 = call i32 @mwifiex_send_cmd(ptr noundef %1, i16 noundef zeroext 22, i16 noundef zeroext 0, i32 noundef 8, ptr noundef nonnull %thr, i1 noundef zeroext true) #12
  %120 = ptrtoint ptr %thr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %thr, align 4
  %frag_threshold = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 35
  %122 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %frag_threshold, align 16
  %call137 = call i32 @mwifiex_send_cmd(ptr noundef %1, i16 noundef zeroext 22, i16 noundef zeroext 0, i32 noundef 5, ptr noundef nonnull %thr, i1 noundef zeroext true) #12
  %123 = ptrtoint ptr %thr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %thr, align 4
  %rts_threshold = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 36
  %125 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %rts_threshold, align 4
  %call138 = call i32 @mwifiex_send_cmd(ptr noundef %1, i16 noundef zeroext 22, i16 noundef zeroext 0, i32 noundef 6, ptr noundef nonnull %retry, i1 noundef zeroext true) #12
  %126 = ptrtoint ptr %retry to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %retry, align 4
  %conv139 = trunc i32 %127 to i8
  %retry_short = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 33
  %128 = ptrtoint ptr %retry_short to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv139, ptr %retry_short, align 4
  %call140 = call i32 @mwifiex_send_cmd(ptr noundef %1, i16 noundef zeroext 22, i16 noundef zeroext 0, i32 noundef 7, ptr noundef nonnull %retry, i1 noundef zeroext true) #12
  %129 = ptrtoint ptr %retry to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %retry, align 4
  %conv141 = trunc i32 %130 to i8
  %retry_long = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 34
  %131 = ptrtoint ptr %retry_long to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv141, ptr %retry_long, align 1
  %wiphy142 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 10
  %132 = ptrtoint ptr %wiphy142 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call.i, ptr %wiphy142, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %if.then104, %if.then
  %retval.0 = phi i32 [ %call101, %if.then104 ], [ %call101, %if.end135 ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retry) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_apply_custom_regulatory(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_reg_notifier(ptr noundef %wiphy, ptr nocapture noundef readonly %request) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %mwifiex_cfg80211_get_adapter.exit, !prof !382

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !383
  unreachable

mwifiex_cfg80211_get_adapter.exit:                ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp29.not.i = icmp eq i8 %4, 0
  br i1 %cmp29.not.i, label %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge, label %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge

mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  br label %for.body.i

mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %i.030.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.mwifiex_get_priv.exit_crit_edge

for.body.i.mwifiex_get_priv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %for.body.i.mwifiex_get_priv.exit_crit_edge, %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge ], [ %6, %for.body.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %alpha2 = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 4
  %7 = ptrtoint ptr %alpha2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %alpha2, align 4
  %conv = zext i8 %8 to i32
  %arrayidx3 = getelementptr %struct.regulatory_request, ptr %request, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %10 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1073741824, ptr noundef nonnull @.str.157, i32 noundef %conv, i32 noundef %conv4) #12
  %arrayidx.i31 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 1
  %11 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i31, align 4
  %tobool.not.i32 = icmp eq ptr %12, null
  br i1 %tobool.not.i32, label %mwifiex_get_priv.exit.mwifiex_reg_apply_radar_flags.exit_crit_edge, label %for.cond.preheader.i

mwifiex_get_priv.exit.mwifiex_reg_apply_radar_flags.exit_crit_edge: ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_reg_apply_radar_flags.exit

for.cond.preheader.i:                             ; preds = %mwifiex_get_priv.exit
  %n_channels.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp19.not.i = icmp eq i32 %14, 0
  br i1 %cmp19.not.i, label %for.cond.preheader.i.mwifiex_reg_apply_radar_flags.exit_crit_edge, label %for.cond.preheader.i.for.body.i33_crit_edge

for.cond.preheader.i.for.body.i33_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i33

for.cond.preheader.i.mwifiex_reg_apply_radar_flags.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_reg_apply_radar_flags.exit

for.body.i33:                                     ; preds = %for.inc.i35.for.body.i33_crit_edge, %for.cond.preheader.i.for.body.i33_crit_edge
  %i.020.i = phi i32 [ %inc.i34, %for.inc.i35.for.body.i33_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i33_crit_edge ]
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %flags.i = getelementptr %struct.ieee80211_channel, ptr %16, i32 %i.020.i, i32 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %19 = and i32 %18, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %.not.i = icmp eq i32 %19, 8
  br i1 %.not.i, label %if.then8.i, label %for.body.i33.for.inc.i35_crit_edge

for.body.i33.for.inc.i35_crit_edge:               ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i35

if.then8.i:                                       ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %18, 2
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %flags.i, align 4
  br label %for.inc.i35

for.inc.i35:                                      ; preds = %if.then8.i, %for.body.i33.for.inc.i35_crit_edge
  %inc.i34 = add nuw i32 %i.020.i, 1
  %21 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_channels.i, align 4
  %cmp.i = icmp ult i32 %inc.i34, %22
  br i1 %cmp.i, label %for.inc.i35.for.body.i33_crit_edge, label %for.inc.i35.mwifiex_reg_apply_radar_flags.exit_crit_edge

for.inc.i35.mwifiex_reg_apply_radar_flags.exit_crit_edge: ; preds = %for.inc.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_reg_apply_radar_flags.exit

for.inc.i35.for.body.i33_crit_edge:               ; preds = %for.inc.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i33

mwifiex_reg_apply_radar_flags.exit:               ; preds = %for.inc.i35.mwifiex_reg_apply_radar_flags.exit_crit_edge, %for.cond.preheader.i.mwifiex_reg_apply_radar_flags.exit_crit_edge, %mwifiex_get_priv.exit.mwifiex_reg_apply_radar_flags.exit_crit_edge
  %initiator = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %23 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %switch = icmp ult i32 %24, 4
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %mwifiex_reg_apply_radar_flags.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.158, i32 noundef %24) #12
  br label %cleanup

sw.epilog:                                        ; preds = %mwifiex_reg_apply_radar_flags.exit
  %call7 = tail call i32 @strncmp(ptr noundef %alpha2, ptr noundef nonnull dereferenceable(3) @.str.159, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %land.lhs.true

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.epilog
  %country_code = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 124
  %call11 = tail call i32 @strncmp(ptr noundef %alpha2, ptr noundef %country_code, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %25 = call ptr @memcpy(ptr %country_code, ptr %alpha2, i32 3)
  %call17 = tail call i32 @mwifiex_send_domain_info_cmd_fw(ptr noundef nonnull %wiphy)
  tail call void @mwifiex_dnld_txpwr_table(ptr noundef %cond.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.default
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_11d_code_2_region(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cfg80211_deinit_p2p(ptr noundef %priv) unnamed_addr #1 align 64 {
entry:
  %mode = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #12
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %mode, align 2
  %call = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %mode, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %. = sext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #12
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_suspend(ptr noundef %wiphy, ptr noundef readonly %wowlan) #1 align 64 {
entry:
  %byte_seq.i42.i = alloca [7 x i8], align 2
  %ips.i.i = alloca [4 x i32], align 4
  %mef_cfg.i = alloca %struct.mwifiex_ds_mef_cfg, align 4
  %hs_cfg = alloca %struct.mwifiex_ds_hs_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %mwifiex_cfg80211_get_adapter.exit, !prof !382

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !383
  unreachable

mwifiex_cfg80211_get_adapter.exit:                ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hs_cfg) #12
  %3 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hs_cfg, i32 0, i32 1
  %4 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hs_cfg, i32 0, i32 2
  %5 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hs_cfg, i32 0, i32 3
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 5
  %6 = call ptr @memset(ptr %hs_cfg, i32 255, i32 16)
  %7 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp29.not.i = icmp eq i8 %8, 0
  br i1 %cmp29.not.i, label %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge, label %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge

mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  br label %for.body.i

mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %i.030.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %bss_role6.i = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bss_role6.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bss_role6.i, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp8.i = icmp eq i8 %13, 0
  br i1 %cmp8.i, label %if.then.i.mwifiex_get_priv.exit_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %if.then.i.mwifiex_get_priv.exit_crit_edge, %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge ], [ %10, %if.then.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %scan_aborting = getelementptr inbounds %struct.mwifiex_private, ptr %cond.i, i32 0, i32 130
  %14 = ptrtoint ptr %scan_aborting to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %scan_aborting, align 8
  %15 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %priv_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp128.not = icmp eq i8 %16, 0
  br i1 %cmp128.not, label %mwifiex_get_priv.exit.for.end_crit_edge, label %mwifiex_get_priv.exit.for.body_crit_edge

mwifiex_get_priv.exit.for.body_crit_edge:         ; preds = %mwifiex_get_priv.exit
  br label %for.body

mwifiex_get_priv.exit.for.end_crit_edge:          ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mwifiex_get_priv.exit.for.body_crit_edge
  %i.0129 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %mwifiex_get_priv.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %i.0129
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  tail call void @mwifiex_abort_cac(ptr noundef %18) #12
  %inc = add nuw nsw i32 %i.0129, 1
  %19 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %priv_num.i, align 4
  %conv = zext i8 %20 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %mwifiex_get_priv.exit.for.end_crit_edge
  tail call void @mwifiex_cancel_all_pending_cmd(ptr noundef %2) #12
  %21 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %priv_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp7131.not = icmp eq i8 %22, 0
  br i1 %cmp7131.not, label %for.end.for.cond17.preheader_crit_edge, label %for.end.for.body9_crit_edge

for.end.for.body9_crit_edge:                      ; preds = %for.end
  br label %for.body9

for.end.for.cond17.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.inc14.for.cond17.preheader_crit_edge, %for.end.for.cond17.preheader_crit_edge
  %tx_data_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 71
  br label %for.body20

for.body9:                                        ; preds = %for.inc14.for.body9_crit_edge, %for.end.for.body9_crit_edge
  %i.1132 = phi i32 [ %inc15, %for.inc14.for.body9_crit_edge ], [ 0, %for.end.for.body9_crit_edge ]
  %arrayidx11 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %i.1132
  %23 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx11, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %for.body9.for.inc14_crit_edge, label %land.lhs.true

for.body9.for.inc14_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc14

land.lhs.true:                                    ; preds = %for.body9
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 4
  %tobool12.not = icmp eq ptr %26, null
  br i1 %tobool12.not, label %land.lhs.true.for.inc14_crit_edge, label %if.then

land.lhs.true.for.inc14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc14

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_device_detach(ptr noundef nonnull %26) #12
  br label %for.inc14

for.inc14:                                        ; preds = %if.then, %land.lhs.true.for.inc14_crit_edge, %for.body9.for.inc14_crit_edge
  %inc15 = add nuw nsw i32 %i.1132, 1
  %27 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %priv_num.i, align 4
  %conv6 = zext i8 %28 to i32
  %cmp7 = icmp ult i32 %inc15, %conv6
  br i1 %cmp7, label %for.inc14.for.body9_crit_edge, label %for.inc14.for.cond17.preheader_crit_edge

for.inc14.for.cond17.preheader_crit_edge:         ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond17.preheader

for.inc14.for.body9_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9

for.body20:                                       ; preds = %if.then28.for.body20_crit_edge, %for.cond17.preheader
  %i.2133 = phi i32 [ 0, %for.cond17.preheader ], [ %inc31, %if.then28.for.body20_crit_edge ]
  %call21 = tail call i32 @mwifiex_wmm_lists_empty(ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.body20.if.then28_crit_edge, label %lor.lhs.false

for.body20.if.then28_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

lor.lhs.false:                                    ; preds = %for.body20
  %call23 = tail call i32 @mwifiex_bypass_txlist_empty(ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %lor.lhs.false.if.then28_crit_edge, label %lor.lhs.false25

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %29 = ptrtoint ptr %tx_data_q to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_data_q, align 4
  %cmp.i.not = icmp eq ptr %30, %tx_data_q
  br i1 %cmp.i.not, label %lor.lhs.false25.for.end32_crit_edge, label %lor.lhs.false25.if.then28_crit_edge

lor.lhs.false25.if.then28_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

lor.lhs.false25.for.end32_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end32

if.then28:                                        ; preds = %lor.lhs.false25.if.then28_crit_edge, %lor.lhs.false.if.then28_crit_edge, %for.body20.if.then28_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #12
  %inc31 = add nuw nsw i32 %i.2133, 1
  %exitcond.not = icmp eq i32 %inc31, 10
  br i1 %exitcond.not, label %if.then28.for.end32_crit_edge, label %if.then28.for.body20_crit_edge

if.then28.for.body20_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body20

if.then28.for.end32_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end32

for.end32:                                        ; preds = %if.then28.for.end32_crit_edge, %lor.lhs.false25.for.end32_crit_edge
  %tobool33.not = icmp eq ptr %wowlan, null
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1073741824, ptr noundef nonnull @.str.28) #12
  br label %done

if.end35:                                         ; preds = %for.end32
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %cond.i, i32 0, i32 8
  %31 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool36.not = icmp eq i8 %32, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %if.end35.if.end40_crit_edge

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true37:                                  ; preds = %if.end35
  %nd_config = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 10
  %33 = ptrtoint ptr %nd_config to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nd_config, align 4
  %tobool38.not = icmp eq ptr %34, null
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true37.if.end40_crit_edge

land.lhs.true37.if.end40_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.29) #12
  br label %done

if.end40:                                         ; preds = %land.lhs.true37.if.end40_crit_edge, %if.end35.if.end40_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mef_cfg.i) #12
  %n_patterns.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 9
  %35 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_patterns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i114 = icmp eq i32 %36, 0
  br i1 %tobool.not.i114, label %lor.lhs.false.i, label %if.end40.if.then.i115_crit_edge

if.end40.if.then.i115_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i115

lor.lhs.false.i:                                  ; preds = %if.end40
  %magic_pkt.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 2
  %37 = ptrtoint ptr %magic_pkt.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %magic_pkt.i, align 2, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool1.not.i = icmp eq i8 %38, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end7.i.i.i_crit_edge, label %lor.lhs.false.i.if.then.i115_crit_edge

lor.lhs.false.i.if.then.i115_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i115

lor.lhs.false.i.if.end7.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i.i

if.then.i115:                                     ; preds = %lor.lhs.false.i.if.then.i115_crit_edge, %if.end40.if.then.i115_crit_edge
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.then.i115, %lor.lhs.false.i.if.end7.i.i.i_crit_edge
  %num_entries.0.i = phi i32 [ 2, %if.then.i115 ], [ 1, %lor.lhs.false.i.if.end7.i.i.i_crit_edge ]
  %39 = mul nuw nsw i32 %num_entries.0.i, 142
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #15
  %tobool2.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool2.not.i, label %mwifiex_set_mef_filter.exit.thread, label %if.end4.i

mwifiex_set_mef_filter.exit.thread:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mef_cfg.i) #12
  br label %if.then43

if.end4.i:                                        ; preds = %if.end7.i.i.i
  %40 = getelementptr inbounds i8, ptr %mef_cfg.i, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %40, align 4
  %42 = ptrtoint ptr %mef_cfg.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %mef_cfg.i, align 4
  %conv.i116 = trunc i32 %num_entries.0.i to i16
  store i16 %conv.i116, ptr %40, align 4
  %mef_entry6.i = getelementptr inbounds %struct.mwifiex_ds_mef_cfg, ptr %mef_cfg.i, i32 0, i32 2
  %43 = ptrtoint ptr %mef_entry6.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call8.i.i.i, ptr %mef_entry6.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ips.i.i) #12
  %44 = getelementptr inbounds [4 x i32], ptr %ips.i.i, i32 0, i32 1
  %45 = getelementptr inbounds [4 x i32], ptr %ips.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cond.i, align 8
  %48 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %call8.i.i.i, align 128
  %action.i.i = getelementptr inbounds %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %action.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 16, ptr %action.i.i, align 1
  %50 = call ptr @memset(ptr %ips.i.i, i32 0, i32 16)
  %arrayidx.i.i = getelementptr %struct.mwifiex_adapter, ptr %47, i32 0, i32 4, i32 0
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i, align 4
  %netdev.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %52, i32 0, i32 15
  %53 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %netdev.i.i, align 4
  %tobool.not.i.i117 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i117, label %if.end4.i.for.inc.i.i_crit_edge, label %if.then.i.i

if.end4.i.for.inc.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.body25.preheader.i.i:                         ; preds = %for.inc.2.i.i.for.body25.preheader.i.i_crit_edge, %for.inc.2.thread.i.i
  %num_ipv4.1.2129.i.i = phi i32 [ %inc.2.i.i, %for.inc.2.thread.i.i ], [ %num_ipv4.1.1.i.i, %for.inc.2.i.i.for.body25.preheader.i.i_crit_edge ]
  br label %for.body25.i.i

if.then.i.i:                                      ; preds = %if.end4.i
  %call.i.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i.i.i, label %if.then.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 249, ptr noundef nonnull @.str.35) #12
  br label %__in_dev_get_rtnl.exit.i.i

__in_dev_get_rtnl.exit.i.i:                       ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge, %land.lhs.true.i.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge, %if.then.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge
  %ip_ptr.i.i.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 78
  %55 = ptrtoint ptr %ip_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ip_ptr.i.i.i, align 32
  %tobool6.not.i.i = icmp eq ptr %56, null
  br i1 %tobool6.not.i.i, label %__in_dev_get_rtnl.exit.i.i.for.inc.i.i_crit_edge, label %do.body.i.i

__in_dev_get_rtnl.exit.i.i.for.inc.i.i_crit_edge: ; preds = %__in_dev_get_rtnl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

do.body.i.i:                                      ; preds = %__in_dev_get_rtnl.exit.i.i
  %call8.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call8.i.i, label %do.body.i.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b119.i.i = load i1, ptr @mwifiex_set_auto_arp_mef_entry.__warned, align 1
  br i1 %.b119.i.i, label %land.lhs.true11.i.i.do.end.i.i_crit_edge, label %if.then13.i.i

land.lhs.true11.i.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.then13.i.i:                                    ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mwifiex_set_auto_arp_mef_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 3306, ptr noundef nonnull @.str.35) #12
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then13.i.i, %land.lhs.true11.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %ifa_list.i.i = getelementptr inbounds %struct.in_device, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %ifa_list.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ifa_list.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %58, null
  br i1 %tobool15.not.i.i, label %do.end.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %do.end.i.i
  %ifa_local.i.i = getelementptr inbounds %struct.in_ifaddr, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %ifa_local.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ifa_local.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool16.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool16.not.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge, label %if.end18.i.i

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end18.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %ips.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %ips.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end18.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %do.end.i.i.for.inc.i.i_crit_edge, %__in_dev_get_rtnl.exit.i.i.for.inc.i.i_crit_edge, %if.end4.i.for.inc.i.i_crit_edge
  %num_ipv4.1.i.i = phi i32 [ 1, %if.end18.i.i ], [ 0, %lor.lhs.false.i.i.for.inc.i.i_crit_edge ], [ 0, %do.end.i.i.for.inc.i.i_crit_edge ], [ 0, %__in_dev_get_rtnl.exit.i.i.for.inc.i.i_crit_edge ], [ 0, %if.end4.i.for.inc.i.i_crit_edge ]
  %arrayidx.1.i.i = getelementptr %struct.mwifiex_adapter, ptr %47, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.1.i.i, align 4
  %netdev.1.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %63, i32 0, i32 15
  %64 = ptrtoint ptr %netdev.1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %netdev.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.then.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  %call.i.1.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i.1.i.i, label %if.then.1.i.i.__in_dev_get_rtnl.exit.1.i.i_crit_edge, label %land.lhs.true.i.1.i.i

if.then.1.i.i.__in_dev_get_rtnl.exit.1.i.i_crit_edge: ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit.1.i.i

land.lhs.true.i.1.i.i:                            ; preds = %if.then.1.i.i
  %call1.i.1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1.i.i)
  %tobool.not.i.1.i.i = icmp eq i32 %call1.i.1.i.i, 0
  br i1 %tobool.not.i.1.i.i, label %land.lhs.true.i.1.i.i.__in_dev_get_rtnl.exit.1.i.i_crit_edge, label %land.lhs.true2.i.1.i.i

land.lhs.true.i.1.i.i.__in_dev_get_rtnl.exit.1.i.i_crit_edge: ; preds = %land.lhs.true.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit.1.i.i

land.lhs.true2.i.1.i.i:                           ; preds = %land.lhs.true.i.1.i.i
  %.b4.i.1.i.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i.1.i.i, label %land.lhs.true2.i.1.i.i.__in_dev_get_rtnl.exit.1.i.i_crit_edge, label %if.then.i.1.i.i

land.lhs.true2.i.1.i.i.__in_dev_get_rtnl.exit.1.i.i_crit_edge: ; preds = %land.lhs.true2.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit.1.i.i

if.then.i.1.i.i:                                  ; preds = %land.lhs.true2.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 249, ptr noundef nonnull @.str.35) #12
  br label %__in_dev_get_rtnl.exit.1.i.i

__in_dev_get_rtnl.exit.1.i.i:                     ; preds = %if.then.i.1.i.i, %land.lhs.true2.i.1.i.i.__in_dev_get_rtnl.exit.1.i.i_crit_edge, %land.lhs.true.i.1.i.i.__in_dev_get_rtnl.exit.1.i.i_crit_edge, %if.then.1.i.i.__in_dev_get_rtnl.exit.1.i.i_crit_edge
  %ip_ptr.i.1.i.i = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 78
  %66 = ptrtoint ptr %ip_ptr.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ip_ptr.i.1.i.i, align 32
  %tobool6.not.1.i.i = icmp eq ptr %67, null
  br i1 %tobool6.not.1.i.i, label %__in_dev_get_rtnl.exit.1.i.i.for.inc.1.i.i_crit_edge, label %do.body.1.i.i

__in_dev_get_rtnl.exit.1.i.i.for.inc.1.i.i_crit_edge: ; preds = %__in_dev_get_rtnl.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i.i

do.body.1.i.i:                                    ; preds = %__in_dev_get_rtnl.exit.1.i.i
  %call8.1.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call8.1.i.i, label %do.body.1.i.i.do.end.1.i.i_crit_edge, label %land.lhs.true.1.i.i

do.body.1.i.i.do.end.1.i.i_crit_edge:             ; preds = %do.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.1.i.i

land.lhs.true.1.i.i:                              ; preds = %do.body.1.i.i
  %call9.1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1.i.i)
  %tobool10.not.1.i.i = icmp eq i32 %call9.1.i.i, 0
  br i1 %tobool10.not.1.i.i, label %land.lhs.true.1.i.i.do.end.1.i.i_crit_edge, label %land.lhs.true11.1.i.i

land.lhs.true.1.i.i.do.end.1.i.i_crit_edge:       ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.1.i.i

land.lhs.true11.1.i.i:                            ; preds = %land.lhs.true.1.i.i
  %.b119.1.i.i = load i1, ptr @mwifiex_set_auto_arp_mef_entry.__warned, align 1
  br i1 %.b119.1.i.i, label %land.lhs.true11.1.i.i.do.end.1.i.i_crit_edge, label %if.then13.1.i.i

land.lhs.true11.1.i.i.do.end.1.i.i_crit_edge:     ; preds = %land.lhs.true11.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.1.i.i

if.then13.1.i.i:                                  ; preds = %land.lhs.true11.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mwifiex_set_auto_arp_mef_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 3306, ptr noundef nonnull @.str.35) #12
  br label %do.end.1.i.i

do.end.1.i.i:                                     ; preds = %if.then13.1.i.i, %land.lhs.true11.1.i.i.do.end.1.i.i_crit_edge, %land.lhs.true.1.i.i.do.end.1.i.i_crit_edge, %do.body.1.i.i.do.end.1.i.i_crit_edge
  %ifa_list.1.i.i = getelementptr inbounds %struct.in_device, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %ifa_list.1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ifa_list.1.i.i, align 4
  %tobool15.not.1.i.i = icmp eq ptr %69, null
  br i1 %tobool15.not.1.i.i, label %do.end.1.i.i.for.inc.1.i.i_crit_edge, label %lor.lhs.false.1.i.i

do.end.1.i.i.for.inc.1.i.i_crit_edge:             ; preds = %do.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i.i

lor.lhs.false.1.i.i:                              ; preds = %do.end.1.i.i
  %ifa_local.1.i.i = getelementptr inbounds %struct.in_ifaddr, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %ifa_local.1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ifa_local.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool16.not.1.i.i = icmp eq i32 %71, 0
  br i1 %tobool16.not.1.i.i, label %lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge, label %if.end18.1.i.i

lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge:      ; preds = %lor.lhs.false.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i.i

if.end18.1.i.i:                                   ; preds = %lor.lhs.false.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %44, align 4
  %inc.1.i.i = add nuw nsw i32 %num_ipv4.1.i.i, 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end18.1.i.i, %lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge, %do.end.1.i.i.for.inc.1.i.i_crit_edge, %__in_dev_get_rtnl.exit.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %num_ipv4.1.1.i.i = phi i32 [ %inc.1.i.i, %if.end18.1.i.i ], [ %num_ipv4.1.i.i, %lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge ], [ %num_ipv4.1.i.i, %do.end.1.i.i.for.inc.1.i.i_crit_edge ], [ %num_ipv4.1.i.i, %__in_dev_get_rtnl.exit.1.i.i.for.inc.1.i.i_crit_edge ], [ %num_ipv4.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %arrayidx.2.i.i = getelementptr %struct.mwifiex_adapter, ptr %47, i32 0, i32 4, i32 2
  %73 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.2.i.i, align 4
  %netdev.2.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %74, i32 0, i32 15
  %75 = ptrtoint ptr %netdev.2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %netdev.2.i.i, align 4
  %tobool.not.2.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.then.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i.i
  %call.i.2.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i.2.i.i, label %if.then.2.i.i.__in_dev_get_rtnl.exit.2.i.i_crit_edge, label %land.lhs.true.i.2.i.i

if.then.2.i.i.__in_dev_get_rtnl.exit.2.i.i_crit_edge: ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit.2.i.i

land.lhs.true.i.2.i.i:                            ; preds = %if.then.2.i.i
  %call1.i.2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2.i.i)
  %tobool.not.i.2.i.i = icmp eq i32 %call1.i.2.i.i, 0
  br i1 %tobool.not.i.2.i.i, label %land.lhs.true.i.2.i.i.__in_dev_get_rtnl.exit.2.i.i_crit_edge, label %land.lhs.true2.i.2.i.i

land.lhs.true.i.2.i.i.__in_dev_get_rtnl.exit.2.i.i_crit_edge: ; preds = %land.lhs.true.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit.2.i.i

land.lhs.true2.i.2.i.i:                           ; preds = %land.lhs.true.i.2.i.i
  %.b4.i.2.i.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i.2.i.i, label %land.lhs.true2.i.2.i.i.__in_dev_get_rtnl.exit.2.i.i_crit_edge, label %if.then.i.2.i.i

land.lhs.true2.i.2.i.i.__in_dev_get_rtnl.exit.2.i.i_crit_edge: ; preds = %land.lhs.true2.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit.2.i.i

if.then.i.2.i.i:                                  ; preds = %land.lhs.true2.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 249, ptr noundef nonnull @.str.35) #12
  br label %__in_dev_get_rtnl.exit.2.i.i

__in_dev_get_rtnl.exit.2.i.i:                     ; preds = %if.then.i.2.i.i, %land.lhs.true2.i.2.i.i.__in_dev_get_rtnl.exit.2.i.i_crit_edge, %land.lhs.true.i.2.i.i.__in_dev_get_rtnl.exit.2.i.i_crit_edge, %if.then.2.i.i.__in_dev_get_rtnl.exit.2.i.i_crit_edge
  %ip_ptr.i.2.i.i = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 78
  %77 = ptrtoint ptr %ip_ptr.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ip_ptr.i.2.i.i, align 32
  %tobool6.not.2.i.i = icmp eq ptr %78, null
  br i1 %tobool6.not.2.i.i, label %__in_dev_get_rtnl.exit.2.i.i.for.inc.2.i.i_crit_edge, label %do.body.2.i.i

__in_dev_get_rtnl.exit.2.i.i.for.inc.2.i.i_crit_edge: ; preds = %__in_dev_get_rtnl.exit.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i.i

do.body.2.i.i:                                    ; preds = %__in_dev_get_rtnl.exit.2.i.i
  %call8.2.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call8.2.i.i, label %do.body.2.i.i.do.end.2.i.i_crit_edge, label %land.lhs.true.2.i.i

do.body.2.i.i.do.end.2.i.i_crit_edge:             ; preds = %do.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.2.i.i

land.lhs.true.2.i.i:                              ; preds = %do.body.2.i.i
  %call9.2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2.i.i)
  %tobool10.not.2.i.i = icmp eq i32 %call9.2.i.i, 0
  br i1 %tobool10.not.2.i.i, label %land.lhs.true.2.i.i.do.end.2.i.i_crit_edge, label %land.lhs.true11.2.i.i

land.lhs.true.2.i.i.do.end.2.i.i_crit_edge:       ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.2.i.i

land.lhs.true11.2.i.i:                            ; preds = %land.lhs.true.2.i.i
  %.b119.2.i.i = load i1, ptr @mwifiex_set_auto_arp_mef_entry.__warned, align 1
  br i1 %.b119.2.i.i, label %land.lhs.true11.2.i.i.do.end.2.i.i_crit_edge, label %if.then13.2.i.i

land.lhs.true11.2.i.i.do.end.2.i.i_crit_edge:     ; preds = %land.lhs.true11.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.2.i.i

if.then13.2.i.i:                                  ; preds = %land.lhs.true11.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mwifiex_set_auto_arp_mef_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 3306, ptr noundef nonnull @.str.35) #12
  br label %do.end.2.i.i

do.end.2.i.i:                                     ; preds = %if.then13.2.i.i, %land.lhs.true11.2.i.i.do.end.2.i.i_crit_edge, %land.lhs.true.2.i.i.do.end.2.i.i_crit_edge, %do.body.2.i.i.do.end.2.i.i_crit_edge
  %ifa_list.2.i.i = getelementptr inbounds %struct.in_device, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %ifa_list.2.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ifa_list.2.i.i, align 4
  %tobool15.not.2.i.i = icmp eq ptr %80, null
  br i1 %tobool15.not.2.i.i, label %do.end.2.i.i.for.inc.2.i.i_crit_edge, label %lor.lhs.false.2.i.i

do.end.2.i.i.for.inc.2.i.i_crit_edge:             ; preds = %do.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i.i

lor.lhs.false.2.i.i:                              ; preds = %do.end.2.i.i
  %ifa_local.2.i.i = getelementptr inbounds %struct.in_ifaddr, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %ifa_local.2.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ifa_local.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool16.not.2.i.i = icmp eq i32 %82, 0
  br i1 %tobool16.not.2.i.i, label %lor.lhs.false.2.i.i.for.inc.2.i.i_crit_edge, label %for.inc.2.thread.i.i

lor.lhs.false.2.i.i.for.inc.2.i.i_crit_edge:      ; preds = %lor.lhs.false.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i.i

for.inc.2.thread.i.i:                             ; preds = %lor.lhs.false.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %45, align 4
  %inc.2.i.i = add nuw nsw i32 %num_ipv4.1.1.i.i, 1
  br label %for.body25.preheader.i.i

for.inc.2.i.i:                                    ; preds = %lor.lhs.false.2.i.i.for.inc.2.i.i_crit_edge, %do.end.2.i.i.for.inc.2.i.i_crit_edge, %__in_dev_get_rtnl.exit.2.i.i.for.inc.2.i.i_crit_edge, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_ipv4.1.1.i.i)
  %cmp24123.not.i.i = icmp eq i32 %num_ipv4.1.1.i.i, 0
  br i1 %cmp24123.not.i.i, label %for.inc.2.i.i.mwifiex_set_auto_arp_mef_entry.exit.i_crit_edge, label %for.inc.2.i.i.for.body25.preheader.i.i_crit_edge

for.inc.2.i.i.for.body25.preheader.i.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body25.preheader.i.i

for.inc.2.i.i.mwifiex_set_auto_arp_mef_entry.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_set_auto_arp_mef_entry.exit.i

for.body25.i.i:                                   ; preds = %for.inc49.i.i.for.body25.i.i_crit_edge, %for.body25.preheader.i.i
  %i.1126.i.i = phi i32 [ %inc50.i.i, %for.inc49.i.i.for.body25.i.i_crit_edge ], [ 0, %for.body25.preheader.i.i ]
  %filt_num.0124.i.i = phi i32 [ %filt_num.1.i.i, %for.inc49.i.i.for.body25.i.i_crit_edge ], [ 0, %for.body25.preheader.i.i ]
  %arrayidx26.i.i = getelementptr [4 x i32], ptr %ips.i.i, i32 0, i32 %i.1126.i.i
  %84 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx26.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool27.not.i.i = icmp eq i32 %85, 0
  br i1 %tobool27.not.i.i, label %for.body25.i.i.for.inc49.i.i_crit_edge, label %if.end29.i.i

for.body25.i.i.for.inc49.i.i_crit_edge:           ; preds = %for.body25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49.i.i

if.end29.i.i:                                     ; preds = %for.body25.i.i
  %arrayidx30.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 0, i32 2, i32 %filt_num.0124.i.i
  %86 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 1, ptr %arrayidx30.i.i, align 2
  %byte_seq.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 0, i32 2, i32 %filt_num.0124.i.i, i32 2
  %87 = ptrtoint ptr %byte_seq.i.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %85, ptr %byte_seq.i.i, align 2
  %arrayidx38.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 0, i32 2, i32 %filt_num.0124.i.i, i32 2, i32 6
  %88 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 4, ptr %arrayidx38.i.i, align 2
  %offset.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 0, i32 2, i32 %filt_num.0124.i.i, i32 1
  %89 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 46, ptr %offset.i.i, align 2
  %filt_type.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 0, i32 2, i32 %filt_num.0124.i.i, i32 3
  %90 = ptrtoint ptr %filt_type.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 65, ptr %filt_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %filt_num.0124.i.i)
  %tobool43.not.i.i = icmp eq i32 %filt_num.0124.i.i, 0
  br i1 %tobool43.not.i.i, label %if.end29.i.i.if.end47.i.i_crit_edge, label %if.then44.i.i

if.end29.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i.i

if.then44.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %filt_action.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 0, i32 2, i32 %filt_num.0124.i.i, i32 4
  %91 = ptrtoint ptr %filt_action.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 69, ptr %filt_action.i.i, align 2
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.then44.i.i, %if.end29.i.i.if.end47.i.i_crit_edge
  %inc48.i.i = add i32 %filt_num.0124.i.i, 1
  br label %for.inc49.i.i

for.inc49.i.i:                                    ; preds = %if.end47.i.i, %for.body25.i.i.for.inc49.i.i_crit_edge
  %filt_num.1.i.i = phi i32 [ %inc48.i.i, %if.end47.i.i ], [ %filt_num.0124.i.i, %for.body25.i.i.for.inc49.i.i_crit_edge ]
  %inc50.i.i = add nuw nsw i32 %i.1126.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc50.i.i, %num_ipv4.1.2129.i.i
  br i1 %exitcond.not.i.i, label %for.inc49.i.i.mwifiex_set_auto_arp_mef_entry.exit.i_crit_edge, label %for.inc49.i.i.for.body25.i.i_crit_edge

for.inc49.i.i.for.body25.i.i_crit_edge:           ; preds = %for.inc49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body25.i.i

for.inc49.i.i.mwifiex_set_auto_arp_mef_entry.exit.i_crit_edge: ; preds = %for.inc49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_set_auto_arp_mef_entry.exit.i

mwifiex_set_auto_arp_mef_entry.exit.i:            ; preds = %for.inc49.i.i.mwifiex_set_auto_arp_mef_entry.exit.i_crit_edge, %for.inc.2.i.i.mwifiex_set_auto_arp_mef_entry.exit.i_crit_edge
  %filt_num.0.lcssa.i.i = phi i32 [ 0, %for.inc.2.i.i.mwifiex_set_auto_arp_mef_entry.exit.i_crit_edge ], [ %filt_num.1.i.i, %for.inc49.i.i.mwifiex_set_auto_arp_mef_entry.exit.i_crit_edge ]
  %arrayidx53.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 0, i32 2, i32 %filt_num.0.lcssa.i.i
  %92 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %arrayidx53.i.i, align 2
  %byte_seq57.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 0, i32 2, i32 %filt_num.0.lcssa.i.i, i32 2
  %93 = ptrtoint ptr %byte_seq57.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 8, ptr %byte_seq57.i.i, align 2
  %arrayidx62.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 0, i32 2, i32 %filt_num.0.lcssa.i.i, i32 2, i32 1
  %94 = ptrtoint ptr %arrayidx62.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 6, ptr %arrayidx62.i.i, align 1
  %arrayidx66.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 0, i32 2, i32 %filt_num.0.lcssa.i.i, i32 2, i32 6
  %95 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 2, ptr %arrayidx66.i.i, align 2
  %offset69.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 0, i32 2, i32 %filt_num.0.lcssa.i.i, i32 1
  %96 = ptrtoint ptr %offset69.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 20, ptr %offset69.i.i, align 2
  %filt_type72.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 0, i32 2, i32 %filt_num.0.lcssa.i.i, i32 3
  %97 = ptrtoint ptr %filt_type72.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 65, ptr %filt_type72.i.i, align 1
  %filt_action75.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 0, i32 2, i32 %filt_num.0.lcssa.i.i, i32 4
  %98 = ptrtoint ptr %filt_action75.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 68, ptr %filt_action75.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ips.i.i) #12
  %99 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %n_patterns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool8.not.i = icmp eq i32 %100, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %if.then13.i

lor.lhs.false9.i:                                 ; preds = %mwifiex_set_auto_arp_mef_entry.exit.i
  %magic_pkt10.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 2
  %101 = ptrtoint ptr %magic_pkt10.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %magic_pkt10.i, align 2, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool11.not.i = icmp eq i8 %102, 0
  br i1 %tobool11.not.i, label %lor.lhs.false9.i.if.end19.i_crit_edge, label %if.then13.i.thread

lor.lhs.false9.i.if.end19.i_crit_edge:            ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then13.i.thread:                               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx14.i118 = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %byte_seq.i42.i) #12
  %103 = ptrtoint ptr %arrayidx14.i118 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %arrayidx14.i118, align 2
  %action.i43.i119 = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 1
  %104 = ptrtoint ptr %action.i43.i119 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 3, ptr %action.i43.i119, align 1
  br label %for.end.i.i

if.then13.i:                                      ; preds = %mwifiex_set_auto_arp_mef_entry.exit.i
  %arrayidx14.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %byte_seq.i42.i) #12
  %105 = getelementptr inbounds [7 x i8], ptr %byte_seq.i42.i, i32 0, i32 2
  %106 = getelementptr inbounds [7 x i8], ptr %byte_seq.i42.i, i32 0, i32 4
  %107 = getelementptr inbounds [7 x i8], ptr %byte_seq.i42.i, i32 0, i32 6
  %108 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %arrayidx14.i, align 2
  %action.i43.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 1
  %109 = ptrtoint ptr %action.i43.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 3, ptr %action.i43.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp183.i.i = icmp sgt i32 %100, 0
  br i1 %cmp183.i.i, label %for.body.lr.ph.i.i, label %if.then13.i.for.end.i.i_crit_edge

if.then13.i.for.end.i.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then13.i
  %patterns.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i56.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %first_pat.0.off0191.i.i = phi i1 [ true, %for.body.lr.ph.i.i ], [ %first_pat.2.off0.i.i, %for.inc.i56.i.for.body.i.i_crit_edge ]
  %filt_num.0188.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %filt_num.1.i55.i, %for.inc.i56.i.for.body.i.i_crit_edge ]
  %i.0184.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc62.i.i, %for.inc.i56.i.for.body.i.i_crit_edge ]
  %110 = call ptr @memset(ptr %byte_seq.i42.i, i32 0, i32 6)
  %111 = ptrtoint ptr %patterns.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %patterns.i.i, align 4
  %arrayidx.i44.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %112, i32 %i.0184.i.i
  %pattern_len.i.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %112, i32 %i.0184.i.i, i32 2
  %113 = ptrtoint ptr %pattern_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pattern_len.i.i.i, align 4
  %sub62.i.i.i = add i32 %114, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub62.i.i.i)
  %cmp64.i.i.i = icmp sgt i32 %sub62.i.i.i, 7
  br i1 %cmp64.i.i.i, label %for.cond1.preheader.lr.ph.i.i.i, label %for.body.i.i.if.end.i.i_crit_edge

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

for.cond1.preheader.lr.ph.i.i.i:                  ; preds = %for.body.i.i
  %pattern.i.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %112, i32 %i.0184.i.i, i32 1
  %pkt_offset.i.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %112, i32 %i.0184.i.i, i32 3
  br label %for.cond1.preheader.i.i.i

for.cond1.preheader.i.i.i:                        ; preds = %for.inc23.i.i.i.for.cond1.preheader.i.i.i_crit_edge, %for.cond1.preheader.lr.ph.i.i.i
  %dont_care_byte.0.off067.i.i.i = phi i1 [ false, %for.cond1.preheader.lr.ph.i.i.i ], [ %dont_care_byte.2.off0.i.i.i, %for.inc23.i.i.i.for.cond1.preheader.i.i.i_crit_edge ]
  %valid_byte_cnt.066.i.i.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i.i.i ], [ %valid_byte_cnt.2.i.i.i, %for.inc23.i.i.i.for.cond1.preheader.i.i.i_crit_edge ]
  %j.065.i.i.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i.i.i ], [ %inc24.i.i.i, %for.inc23.i.i.i.for.cond1.preheader.i.i.i_crit_edge ]
  %mul.i.i.i = shl i32 %j.065.i.i.i, 3
  br label %for.body3.i.i.i

for.cond1.i.i.i:                                  ; preds = %if.end16.i.i.i.for.cond1.i.i.i_crit_edge, %if.end16.i.thread.i.i
  %inc22.i.i.i = add nuw nsw i32 %k.058.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc22.i.i.i, 8
  br i1 %exitcond.not.i.i.i, label %for.inc23.i.i.i, label %for.cond1.i.i.i.for.body3.i.i.i_crit_edge

for.cond1.i.i.i.for.body3.i.i.i_crit_edge:        ; preds = %for.cond1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.i.i.i

for.body3.i.i.i:                                  ; preds = %for.cond1.i.i.i.for.body3.i.i.i_crit_edge, %for.cond1.preheader.i.i.i
  %dont_care_byte.1.off061.i.i.i = phi i1 [ %dont_care_byte.0.off067.i.i.i, %for.cond1.preheader.i.i.i ], [ %dont_care_byte.2.off0.i.i.i, %for.cond1.i.i.i.for.body3.i.i.i_crit_edge ]
  %valid_byte_cnt.160.i.i.i = phi i32 [ %valid_byte_cnt.066.i.i.i, %for.cond1.preheader.i.i.i ], [ %valid_byte_cnt.2.i.i.i, %for.cond1.i.i.i.for.body3.i.i.i_crit_edge ]
  %k.058.i.i.i = phi i32 [ 0, %for.cond1.preheader.i.i.i ], [ %inc22.i.i.i, %for.cond1.i.i.i.for.body3.i.i.i_crit_edge ]
  %115 = ptrtoint ptr %arrayidx.i44.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i44.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %116, i32 %j.065.i.i.i
  %117 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %118 to i32
  %shl.i.i.i = shl nuw nsw i32 1, %k.058.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i45.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i45.i, label %if.else.i.i.i, label %if.then.i.i46.i

if.then.i.i46.i:                                  ; preds = %for.body3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %byte_seq.i42.i, i32 %valid_byte_cnt.160.i.i.i
  %119 = ptrtoint ptr %pattern.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pattern.i.i.i, align 4
  %add4.i.i.i = add nuw nsw i32 %k.058.i.i.i, %mul.i.i.i
  %arrayidx5.i.i.i = getelementptr i8, ptr %120, i32 %add4.i.i.i
  %121 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx5.i.i.i, align 1
  %123 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %add.ptr.i.i.i, align 1
  %inc.i.i.i = add nsw i32 %valid_byte_cnt.160.i.i.i, 1
  br i1 %dont_care_byte.1.off061.i.i.i, label %if.then.i.i46.i.mwifiex_set_mef_filter.exit.thread124_crit_edge, label %if.then.i.i46.i.if.end11.i.i.i_crit_edge

if.then.i.i46.i.if.end11.i.i.i_crit_edge:         ; preds = %if.then.i.i46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i.i

if.then.i.i46.i.mwifiex_set_mef_filter.exit.thread124_crit_edge: ; preds = %if.then.i.i46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_set_mef_filter.exit.thread124

if.else.i.i.i:                                    ; preds = %for.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid_byte_cnt.160.i.i.i)
  %tobool8.not.i.i.i = icmp ne i32 %valid_byte_cnt.160.i.i.i, 0
  %spec.select52.i.i.i = select i1 %tobool8.not.i.i.i, i1 true, i1 %dont_care_byte.1.off061.i.i.i
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then.i.i46.i.if.end11.i.i.i_crit_edge
  %valid_byte_cnt.2.i.i.i = phi i32 [ %inc.i.i.i, %if.then.i.i46.i.if.end11.i.i.i_crit_edge ], [ %valid_byte_cnt.160.i.i.i, %if.else.i.i.i ]
  %dont_care_byte.2.off0.i.i.i = phi i1 [ false, %if.then.i.i46.i.if.end11.i.i.i_crit_edge ], [ %spec.select52.i.i.i, %if.else.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid_byte_cnt.2.i.i.i)
  %tobool12.not.i.i.i = icmp ne i32 %valid_byte_cnt.2.i.i.i, 0
  %brmerge.i.i.i = select i1 %tobool12.not.i.i.i, i1 true, i1 %dont_care_byte.2.off0.i.i.i
  br i1 %brmerge.i.i.i, label %if.end16.i.i.i, label %if.end16.i.thread.i.i

if.end16.i.thread.i.i:                            ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %pkt_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pkt_offset.i.i.i, align 4
  %inc15.i.i.i = add i32 %125, 1
  store i32 %inc15.i.i.i, ptr %pkt_offset.i.i.i, align 4
  br label %for.cond1.i.i.i

if.end16.i.i.i:                                   ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %valid_byte_cnt.2.i.i.i)
  %cmp18.i.i.i = icmp sgt i32 %valid_byte_cnt.2.i.i.i, 6
  br i1 %cmp18.i.i.i, label %if.end16.i.i.i.mwifiex_set_mef_filter.exit.thread124_crit_edge, label %if.end16.i.i.i.for.cond1.i.i.i_crit_edge

if.end16.i.i.i.for.cond1.i.i.i_crit_edge:         ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.i.i.i

if.end16.i.i.i.mwifiex_set_mef_filter.exit.thread124_crit_edge: ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_set_mef_filter.exit.thread124

for.inc23.i.i.i:                                  ; preds = %for.cond1.i.i.i
  %inc24.i.i.i = add nuw nsw i32 %j.065.i.i.i, 1
  %126 = ptrtoint ptr %pattern_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pattern_len.i.i.i, align 4
  %sub.i.i.i = add i32 %127, 7
  %div.i.i.i = sdiv i32 %sub.i.i.i, 8
  %cmp.i.i.i = icmp slt i32 %inc24.i.i.i, %div.i.i.i
  br i1 %cmp.i.i.i, label %for.inc23.i.i.i.for.cond1.preheader.i.i.i_crit_edge, label %for.inc23.i.i.i.if.end.i.i_crit_edge

for.inc23.i.i.i.if.end.i.i_crit_edge:             ; preds = %for.inc23.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

for.inc23.i.i.i.for.cond1.preheader.i.i.i_crit_edge: ; preds = %for.inc23.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.preheader.i.i.i

if.end.i.i:                                       ; preds = %for.inc23.i.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  %valid_byte_cnt.0.lcssa.i.i.i = phi i32 [ 0, %for.body.i.i.if.end.i.i_crit_edge ], [ %valid_byte_cnt.2.i.i.i, %for.inc23.i.i.i.if.end.i.i_crit_edge ]
  %conv26.i.i.i = trunc i32 %valid_byte_cnt.0.lcssa.i.i.i to i8
  %128 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv26.i.i.i, ptr %107, align 2
  %129 = ptrtoint ptr %patterns.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %patterns.i.i, align 4
  %pkt_offset.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %130, i32 %i.0184.i.i, i32 3
  %131 = ptrtoint ptr %pkt_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pkt_offset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i48.i = icmp eq i32 %132, 0
  br i1 %tobool.not.i48.i, label %if.then4.i.i, label %if.end.i.i.if.end40.i.i_crit_edge

if.end.i.i.if.end40.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %133 = ptrtoint ptr %byte_seq.i42.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %byte_seq.i42.i, align 2
  %135 = and i8 %134, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool6.not.i49.i = icmp eq i8 %135, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv26.i.i.i)
  %cmp9.i.i = icmp eq i8 %conv26.i.i.i, 1
  %or.cond.i = select i1 %tobool6.not.i49.i, i1 %cmp9.i.i, i1 false
  br i1 %or.cond.i, label %if.then11.i.i, label %if.else.i.i

if.then11.i.i:                                    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %mef_cfg.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mef_cfg.i, align 4
  %or.i.i = or i32 %137, 2
  store i32 %or.i.i, ptr %mef_cfg.i, align 4
  br label %for.inc.i56.i

if.else.i.i:                                      ; preds = %if.then4.i.i
  %138 = ptrtoint ptr %byte_seq.i42.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %byte_seq.i42.i, align 2
  %140 = ptrtoint ptr %105 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %105, align 2
  %and9.i.i.i = and i16 %141, %139
  %142 = ptrtoint ptr %106 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %106, align 2
  %and510.i.i.i = and i16 %and9.i.i.i, %143
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i.i)
  %cmp.i178.i.i = icmp eq i16 %and510.i.i.i, -1
  br i1 %cmp.i178.i.i, label %if.then14.i.i, label %if.else17.i.i

if.then14.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %144 = ptrtoint ptr %mef_cfg.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %mef_cfg.i, align 4
  %or16.i.i = or i32 %145, 1
  store i32 %or16.i.i, ptr %mef_cfg.i, align 4
  br label %for.inc.i56.i

if.else17.i.i:                                    ; preds = %if.else.i.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %byte_seq.i42.i, ptr noundef nonnull dereferenceable(2) @mwifiex_set_wowlan_mef_entry.ipv4_mc_mac, i32 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool20.not.i.i = icmp eq i32 %bcmp.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv26.i.i.i)
  %cmp24.i.i = icmp eq i8 %conv26.i.i.i, 2
  %or.cond62.i = select i1 %tobool20.not.i.i, i1 %cmp24.i.i, i1 false
  br i1 %or.cond62.i, label %if.else17.i.i.if.then34.i.i_crit_edge, label %lor.lhs.false.i51.i

if.else17.i.i.if.then34.i.i_crit_edge:            ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34.i.i

lor.lhs.false.i51.i:                              ; preds = %if.else17.i.i
  %bcmp177.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %byte_seq.i42.i, ptr noundef nonnull dereferenceable(3) @mwifiex_set_wowlan_mef_entry.ipv6_mc_mac, i32 3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp177.i.i)
  %tobool28.not.i.i = icmp eq i32 %bcmp177.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv26.i.i.i)
  %cmp32.i.i = icmp eq i8 %conv26.i.i.i, 3
  %or.cond63.i = select i1 %tobool28.not.i.i, i1 %cmp32.i.i, i1 false
  br i1 %or.cond63.i, label %lor.lhs.false.i51.i.if.then34.i.i_crit_edge, label %lor.lhs.false.i51.i.if.end40.i.i_crit_edge

lor.lhs.false.i51.i.if.end40.i.i_crit_edge:       ; preds = %lor.lhs.false.i51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i.i

lor.lhs.false.i51.i.if.then34.i.i_crit_edge:      ; preds = %lor.lhs.false.i51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34.i.i

if.then34.i.i:                                    ; preds = %lor.lhs.false.i51.i.if.then34.i.i_crit_edge, %if.else17.i.i.if.then34.i.i_crit_edge
  %146 = ptrtoint ptr %mef_cfg.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %mef_cfg.i, align 4
  %or36.i.i = or i32 %147, 8
  store i32 %or36.i.i, ptr %mef_cfg.i, align 4
  br label %for.inc.i56.i

if.end40.i.i:                                     ; preds = %lor.lhs.false.i51.i.if.end40.i.i_crit_edge, %if.end.i.i.if.end40.i.i_crit_edge
  %arrayidx41.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %filt_num.0188.i.i
  %148 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 1, ptr %arrayidx41.i.i, align 2
  %149 = ptrtoint ptr %pkt_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %pkt_offset.i.i, align 4
  %conv45.i.i = trunc i32 %150 to i16
  %offset.i52.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %filt_num.0188.i.i, i32 1
  %151 = ptrtoint ptr %offset.i52.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv45.i.i, ptr %offset.i52.i, align 2
  %byte_seq50.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %filt_num.0188.i.i, i32 2
  %152 = call ptr @memcpy(ptr %byte_seq50.i.i, ptr %byte_seq.i42.i, i32 7)
  %filt_type.i53.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %filt_num.0188.i.i, i32 3
  %153 = ptrtoint ptr %filt_type.i53.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 65, ptr %filt_type.i53.i, align 1
  br i1 %first_pat.0.off0191.i.i, label %if.then56.i.i, label %if.else58.i.i

if.then56.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %154 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cond.i, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %155, i32 noundef 1073741824, ptr noundef nonnull @.str.38) #12
  br label %if.end61.i.i

if.else58.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %filt_action.i54.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %filt_num.0188.i.i, i32 4
  %156 = ptrtoint ptr %filt_action.i54.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 68, ptr %filt_action.i54.i, align 2
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %if.else58.i.i, %if.then56.i.i
  %inc.i.i = add i32 %filt_num.0188.i.i, 1
  br label %for.inc.i56.i

for.inc.i56.i:                                    ; preds = %if.end61.i.i, %if.then34.i.i, %if.then14.i.i, %if.then11.i.i
  %filt_num.1.i55.i = phi i32 [ %inc.i.i, %if.end61.i.i ], [ %filt_num.0188.i.i, %if.then14.i.i ], [ %filt_num.0188.i.i, %if.then34.i.i ], [ %filt_num.0188.i.i, %if.then11.i.i ]
  %first_pat.2.off0.i.i = phi i1 [ false, %if.end61.i.i ], [ %first_pat.0.off0191.i.i, %if.then14.i.i ], [ %first_pat.0.off0191.i.i, %if.then34.i.i ], [ %first_pat.0.off0191.i.i, %if.then11.i.i ]
  %inc62.i.i = add nuw nsw i32 %i.0184.i.i, 1
  %157 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %n_patterns.i, align 4
  %cmp.i.i = icmp slt i32 %inc62.i.i, %158
  br i1 %cmp.i.i, label %for.inc.i56.i.for.body.i.i_crit_edge, label %for.inc.i56.i.for.end.i.i_crit_edge

for.inc.i56.i.for.end.i.i_crit_edge:              ; preds = %for.inc.i56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.inc.i56.i.for.body.i.i_crit_edge:             ; preds = %for.inc.i56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i56.i.for.end.i.i_crit_edge, %if.then13.i.for.end.i.i_crit_edge, %if.then13.i.thread
  %filt_num.0.lcssa.i57.i = phi i32 [ 0, %if.then13.i.for.end.i.i_crit_edge ], [ 0, %if.then13.i.thread ], [ %filt_num.1.i55.i, %for.inc.i56.i.for.end.i.i_crit_edge ]
  %magic_pkt.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 2
  %159 = ptrtoint ptr %magic_pkt.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %magic_pkt.i.i, align 2, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool63.not.i.i = icmp eq i8 %160, 0
  br i1 %tobool63.not.i.i, label %for.end.i.i.mwifiex_set_wowlan_mef_entry.exit.thread.i_crit_edge, label %if.then64.i.i

for.end.i.i.mwifiex_set_wowlan_mef_entry.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_set_wowlan_mef_entry.exit.thread.i

if.then64.i.i:                                    ; preds = %for.end.i.i
  %161 = ptrtoint ptr %mef_cfg.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %mef_cfg.i, align 4
  %or66.i.i = or i32 %162, 2
  store i32 %or66.i.i, ptr %mef_cfg.i, align 4
  %arrayidx68.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %filt_num.0.lcssa.i57.i
  %163 = ptrtoint ptr %arrayidx68.i.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 16, ptr %arrayidx68.i.i, align 2
  %byte_seq72.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %filt_num.0.lcssa.i57.i, i32 2
  %curr_addr.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %cond.i, i32 0, i32 7
  %164 = call ptr @memcpy(ptr %byte_seq72.i.i, ptr %curr_addr.i.i, i32 6)
  %arrayidx78.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %filt_num.0.lcssa.i57.i, i32 2, i32 6
  %165 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 6, ptr %arrayidx78.i.i, align 2
  %offset81.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %filt_num.0.lcssa.i57.i, i32 1
  %166 = ptrtoint ptr %offset81.i.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 28, ptr %offset81.i.i, align 2
  %filt_type84.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %filt_num.0.lcssa.i57.i, i32 3
  %167 = ptrtoint ptr %filt_type84.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 65, ptr %filt_type84.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %filt_num.0.lcssa.i57.i)
  %tobool85.not.i.i = icmp eq i32 %filt_num.0.lcssa.i57.i, 0
  br i1 %tobool85.not.i.i, label %if.then64.i.i.if.end90.i.i_crit_edge, label %if.then86.i.i

if.then64.i.i.if.end90.i.i_crit_edge:             ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90.i.i

if.then86.i.i:                                    ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %filt_action89.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %filt_num.0.lcssa.i57.i, i32 4
  %168 = ptrtoint ptr %filt_action89.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 69, ptr %filt_action89.i.i, align 2
  br label %if.end90.i.i

if.end90.i.i:                                     ; preds = %if.then86.i.i, %if.then64.i.i.if.end90.i.i_crit_edge
  %inc91.i.i = add i32 %filt_num.0.lcssa.i57.i, 1
  %arrayidx93.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %inc91.i.i
  %169 = ptrtoint ptr %arrayidx93.i.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 16, ptr %arrayidx93.i.i, align 2
  %byte_seq97.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %inc91.i.i, i32 2
  %170 = call ptr @memcpy(ptr %byte_seq97.i.i, ptr %curr_addr.i.i, i32 6)
  %arrayidx104.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %inc91.i.i, i32 2, i32 6
  %171 = ptrtoint ptr %arrayidx104.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 6, ptr %arrayidx104.i.i, align 2
  %offset107.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %inc91.i.i, i32 1
  %172 = ptrtoint ptr %offset107.i.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 56, ptr %offset107.i.i, align 2
  %filt_type110.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %inc91.i.i, i32 3
  %173 = ptrtoint ptr %filt_type110.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 65, ptr %filt_type110.i.i, align 1
  %filt_action113.i.i = getelementptr %struct.mwifiex_mef_entry, ptr %call8.i.i.i, i32 1, i32 2, i32 %inc91.i.i, i32 4
  %174 = ptrtoint ptr %filt_action113.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 69, ptr %filt_action113.i.i, align 2
  %175 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cond.i, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %176, i32 noundef 1073741824, ptr noundef nonnull @.str.39) #12
  br label %mwifiex_set_wowlan_mef_entry.exit.thread.i

mwifiex_set_wowlan_mef_entry.exit.thread.i:       ; preds = %if.end90.i.i, %for.end.i.i.mwifiex_set_wowlan_mef_entry.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %byte_seq.i42.i) #12
  br label %if.end19.i

mwifiex_set_mef_filter.exit.thread124:            ; preds = %if.end16.i.i.i.mwifiex_set_mef_filter.exit.thread124_crit_edge, %if.then.i.i46.i.mwifiex_set_mef_filter.exit.thread124_crit_edge
  %177 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cond.i, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %178, i32 noundef 4, ptr noundef nonnull @.str.37) #12
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %byte_seq.i42.i) #12
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mef_cfg.i) #12
  br label %if.then43

if.end19.i:                                       ; preds = %mwifiex_set_wowlan_mef_entry.exit.thread.i, %lor.lhs.false9.i.if.end19.i_crit_edge
  %179 = ptrtoint ptr %mef_cfg.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %mef_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool21.not.i = icmp eq i32 %180, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end19.i.mwifiex_set_mef_filter.exit_crit_edge

if.end19.i.mwifiex_set_mef_filter.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_set_mef_filter.exit

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %181 = ptrtoint ptr %mef_cfg.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 11, ptr %mef_cfg.i, align 4
  br label %mwifiex_set_mef_filter.exit

mwifiex_set_mef_filter.exit:                      ; preds = %if.then22.i, %if.end19.i.mwifiex_set_mef_filter.exit_crit_edge
  %call25.i = call i32 @mwifiex_send_cmd(ptr noundef %cond.i, i16 noundef zeroext 154, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %mef_cfg.i, i1 noundef zeroext true) #12
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mef_cfg.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool42.not = icmp eq i32 %call25.i, 0
  br i1 %tobool42.not, label %if.end44, label %mwifiex_set_mef_filter.exit.if.then43_crit_edge

mwifiex_set_mef_filter.exit.if.then43_crit_edge:  ; preds = %mwifiex_set_mef_filter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then43

if.then43:                                        ; preds = %mwifiex_set_mef_filter.exit.if.then43_crit_edge, %mwifiex_set_mef_filter.exit.thread124, %mwifiex_set_mef_filter.exit.thread
  %retval.0.i123 = phi i32 [ -12, %mwifiex_set_mef_filter.exit.thread ], [ %call25.i, %mwifiex_set_mef_filter.exit.if.then43_crit_edge ], [ -95, %mwifiex_set_mef_filter.exit.thread124 ]
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.30) #12
  br label %done

if.end44:                                         ; preds = %mwifiex_set_mef_filter.exit
  %182 = call ptr @memset(ptr %hs_cfg, i32 0, i32 16)
  %hs_cfg45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 107
  %183 = ptrtoint ptr %hs_cfg45 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %hs_cfg45, align 4
  %185 = call i32 @llvm.bswap.i32(i32 %184)
  %186 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %3, align 4
  %nd_config47 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 10
  %187 = ptrtoint ptr %nd_config47 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %nd_config47, align 4
  %tobool48.not = icmp eq ptr %188, null
  br i1 %tobool48.not, label %if.end44.if.end54_crit_edge, label %if.then49

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1073741824, ptr noundef nonnull @.str.31) #12
  %189 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %3, align 4
  %or = or i32 %190, 4
  store i32 %or, ptr %3, align 4
  %netdev51 = getelementptr inbounds %struct.mwifiex_private, ptr %cond.i, i32 0, i32 15
  %191 = ptrtoint ptr %netdev51 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %netdev51, align 4
  %193 = ptrtoint ptr %nd_config47 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %nd_config47, align 4
  %call53 = call i32 @mwifiex_cfg80211_sched_scan_start(ptr noundef nonnull %wiphy, ptr noundef %192, ptr noundef %194)
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.end44.if.end54_crit_edge
  %disconnect = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 1
  %195 = ptrtoint ptr %disconnect to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %disconnect, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool55.not = icmp eq i8 %196, 0
  br i1 %tobool55.not, label %if.end54.if.end60_crit_edge, label %if.then56

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %197 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %3, align 4
  %or58 = or i32 %198, 4
  store i32 %or58, ptr %3, align 4
  %199 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cond.i, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %200, i32 noundef 1073741824, ptr noundef nonnull @.str.32) #12
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end54.if.end60_crit_edge
  %201 = ptrtoint ptr %hs_cfg to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %hs_cfg, align 4
  %gpio = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 107, i32 1
  %202 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %gpio, align 4
  %conv62 = zext i8 %203 to i32
  %204 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %conv62, ptr %4, align 4
  %gap = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 107, i32 2
  %205 = ptrtoint ptr %gap to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %gap, align 1
  %conv65 = zext i8 %206 to i32
  %207 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %conv65, ptr %5, align 4
  %call67 = call i32 @mwifiex_set_hs_params(ptr noundef %cond.i, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %hs_cfg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end60.done_crit_edge, label %if.then69

if.end60.done_crit_edge:                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then69:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.33) #12
  br label %done

done:                                             ; preds = %if.then69, %if.end60.done_crit_edge, %if.then43, %if.then39, %if.then34
  %ret.0 = phi i32 [ %retval.0.i123, %if.then43 ], [ %call67, %if.then69 ], [ 0, %if.end60.done_crit_edge ], [ 0, %if.then39 ], [ 0, %if.then34 ]
  %208 = ptrtoint ptr %scan_aborting to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %scan_aborting, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hs_cfg) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_resume(ptr noundef readonly %wiphy) #1 align 64 {
entry:
  %wakeup_reason = alloca %struct.mwifiex_ds_wakeup_reason, align 2
  %wakeup_report = alloca %struct.cfg80211_wowlan_wakeup, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %mwifiex_cfg80211_get_adapter.exit, !prof !382

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !383
  unreachable

mwifiex_cfg80211_get_adapter.exit:                ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wakeup_reason) #12
  %3 = ptrtoint ptr %wakeup_reason to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %wakeup_reason, align 2, !annotation !381
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wakeup_report) #12
  %4 = call ptr @memset(ptr %wakeup_report, i32 255, i32 32)
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp83.not = icmp eq i8 %6, 0
  br i1 %cmp83.not, label %for.end.thread, label %mwifiex_cfg80211_get_adapter.exit.for.body_crit_edge

mwifiex_cfg80211_get_adapter.exit.for.body_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mwifiex_cfg80211_get_adapter.exit.for.body_crit_edge
  %i.084 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %mwifiex_cfg80211_get_adapter.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %i.084
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_device_attach(ptr noundef nonnull %10) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.084, 1
  %11 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %priv_num, align 4
  %conv = zext i8 %12 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %conv.le = zext i8 %12 to i32
  %wowlan_config = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 41
  %13 = ptrtoint ptr %wowlan_config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wowlan_config, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %for.end.done_crit_edge, label %if.end7

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

for.end.thread:                                   ; preds = %mwifiex_cfg80211_get_adapter.exit
  %wowlan_config93 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 41
  %15 = ptrtoint ptr %wowlan_config93 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wowlan_config93, align 4
  %tobool5.not94 = icmp eq ptr %16, null
  br i1 %tobool5.not94, label %for.end.thread.done_crit_edge, label %for.end.thread.mwifiex_get_priv.exit_crit_edge

for.end.thread.mwifiex_get_priv.exit_crit_edge:   ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.end.thread.done_crit_edge:                    ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end7:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp29.not.i = icmp eq i8 %12, 0
  br i1 %cmp29.not.i, label %if.end7.mwifiex_get_priv.exit_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.mwifiex_get_priv.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end7.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %i.030.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %bss_role6.i = getelementptr inbounds %struct.mwifiex_private, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bss_role6.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bss_role6.i, align 1
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp8.i = icmp eq i8 %21, 0
  br i1 %cmp8.i, label %if.then.i.mwifiex_get_priv.exit_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.le
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %if.then.i.mwifiex_get_priv.exit_crit_edge, %if.end7.mwifiex_get_priv.exit_crit_edge, %for.end.thread.mwifiex_get_priv.exit_crit_edge
  %wowlan_config97102 = phi ptr [ %wowlan_config, %if.end7.mwifiex_get_priv.exit_crit_edge ], [ %wowlan_config93, %for.end.thread.mwifiex_get_priv.exit_crit_edge ], [ %wowlan_config, %for.inc.i.mwifiex_get_priv.exit_crit_edge ], [ %wowlan_config, %if.then.i.mwifiex_get_priv.exit_crit_edge ]
  %cond.i = phi ptr [ null, %if.end7.mwifiex_get_priv.exit_crit_edge ], [ null, %for.end.thread.mwifiex_get_priv.exit_crit_edge ], [ %18, %if.then.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %call9 = call i32 @mwifiex_get_wakeup_reason(ptr noundef %cond.i, i16 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %wakeup_reason) #12
  %22 = call ptr @memset(ptr %wakeup_report, i32 0, i32 32)
  %pattern_idx = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup_report, i32 0, i32 10
  %23 = ptrtoint ptr %pattern_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %pattern_idx, align 4
  %24 = ptrtoint ptr %wakeup_reason to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %wakeup_reason, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.164)
  switch i16 %25, label %mwifiex_get_priv.exit.done_crit_edge [
    i16 0, label %mwifiex_get_priv.exit.if.then38_crit_edge
    i16 1, label %mwifiex_get_priv.exit.if.then38_crit_edge111
    i16 2, label %mwifiex_get_priv.exit.if.then38_crit_edge112
    i16 3, label %mwifiex_get_priv.exit.if.then38_crit_edge113
    i16 4, label %mwifiex_get_priv.exit.if.then38_crit_edge114
    i16 5, label %sw.bb
    i16 6, label %mwifiex_get_priv.exit.if.then38_crit_edge115
    i16 7, label %sw.bb20
    i16 10, label %sw.bb31
  ]

mwifiex_get_priv.exit.if.then38_crit_edge115:     ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

mwifiex_get_priv.exit.if.then38_crit_edge114:     ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

mwifiex_get_priv.exit.if.then38_crit_edge113:     ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

mwifiex_get_priv.exit.if.then38_crit_edge112:     ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

mwifiex_get_priv.exit.if.then38_crit_edge111:     ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

mwifiex_get_priv.exit.if.then38_crit_edge:        ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

mwifiex_get_priv.exit.done_crit_edge:             ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

sw.bb:                                            ; preds = %mwifiex_get_priv.exit
  %27 = ptrtoint ptr %wowlan_config97102 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wowlan_config97102, align 4
  %disconnect = getelementptr inbounds %struct.cfg80211_wowlan, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %disconnect to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %disconnect, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool12.not = icmp eq i8 %30, 0
  br i1 %tobool12.not, label %sw.bb.if.end15_crit_edge, label %if.then13

sw.bb.if.end15_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %wakeup_report to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %wakeup_report, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %sw.bb.if.end15_crit_edge
  %nd_config = getelementptr inbounds %struct.cfg80211_wowlan, ptr %28, i32 0, i32 10
  %32 = ptrtoint ptr %nd_config to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nd_config, align 4
  %tobool17.not = icmp eq ptr %33, null
  br i1 %tobool17.not, label %if.end15.if.then38_crit_edge, label %if.then18

if.end15.if.then38_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %nd_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 162
  %34 = ptrtoint ptr %nd_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nd_info, align 4
  %net_detect = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup_report, i32 0, i32 14
  %36 = ptrtoint ptr %net_detect to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %net_detect, align 4
  br label %if.then38

sw.bb20:                                          ; preds = %mwifiex_get_priv.exit
  %37 = ptrtoint ptr %wowlan_config97102 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wowlan_config97102, align 4
  %magic_pkt = getelementptr inbounds %struct.cfg80211_wowlan, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %magic_pkt to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %magic_pkt, align 2, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool22.not = icmp eq i8 %40, 0
  br i1 %tobool22.not, label %sw.bb20.if.end25_crit_edge, label %if.then23

sw.bb20.if.end25_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then23:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  %magic_pkt24 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup_report, i32 0, i32 1
  %41 = ptrtoint ptr %magic_pkt24 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %magic_pkt24, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %sw.bb20.if.end25_crit_edge
  %n_patterns = getelementptr inbounds %struct.cfg80211_wowlan, ptr %38, i32 0, i32 9
  %42 = ptrtoint ptr %n_patterns to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_patterns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool27.not = icmp eq i32 %43, 0
  br i1 %tobool27.not, label %if.end25.if.then38_crit_edge, label %if.then28

if.end25.if.then38_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %pattern_idx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %pattern_idx, align 4
  br label %if.then38

sw.bb31:                                          ; preds = %mwifiex_get_priv.exit
  %45 = ptrtoint ptr %wowlan_config97102 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wowlan_config97102, align 4
  %gtk_rekey_failure = getelementptr inbounds %struct.cfg80211_wowlan, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %gtk_rekey_failure to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %gtk_rekey_failure, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool33.not = icmp eq i8 %48, 0
  br i1 %tobool33.not, label %sw.bb31.if.then38_crit_edge, label %if.then34

sw.bb31.if.then38_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

if.then34:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #14
  %gtk_rekey_failure35 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup_report, i32 0, i32 2
  %49 = ptrtoint ptr %gtk_rekey_failure35 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %gtk_rekey_failure35, align 2
  br label %if.then38

if.then38:                                        ; preds = %if.then34, %sw.bb31.if.then38_crit_edge, %if.then28, %if.end25.if.then38_crit_edge, %if.then18, %if.end15.if.then38_crit_edge, %mwifiex_get_priv.exit.if.then38_crit_edge, %mwifiex_get_priv.exit.if.then38_crit_edge111, %mwifiex_get_priv.exit.if.then38_crit_edge112, %mwifiex_get_priv.exit.if.then38_crit_edge113, %mwifiex_get_priv.exit.if.then38_crit_edge114, %mwifiex_get_priv.exit.if.then38_crit_edge115
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %cond.i, i32 0, i32 103
  call void @cfg80211_report_wowlan_wakeup(ptr noundef %wdev, ptr noundef nonnull %wakeup_report, i32 noundef 3264) #12
  br label %done

done:                                             ; preds = %if.then38, %mwifiex_get_priv.exit.done_crit_edge, %for.end.thread.done_crit_edge, %for.end.done_crit_edge
  %nd_info40 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 162
  %50 = ptrtoint ptr %nd_info40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nd_info40, align 4
  %tobool41.not = icmp eq ptr %51, null
  br i1 %tobool41.not, label %done.if.end55_crit_edge, label %for.cond43.preheader

done.if.end55_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

for.cond43.preheader:                             ; preds = %done
  %52 = ptrtoint ptr %nd_info40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nd_info40, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp4586 = icmp sgt i32 %55, 0
  br i1 %cmp4586, label %for.cond43.preheader.for.body47_crit_edge, label %for.cond43.preheader.for.end52_crit_edge

for.cond43.preheader.for.end52_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end52

for.cond43.preheader.for.body47_crit_edge:        ; preds = %for.cond43.preheader
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.cond43.preheader.for.body47_crit_edge
  %56 = phi ptr [ %60, %for.body47.for.body47_crit_edge ], [ %53, %for.cond43.preheader.for.body47_crit_edge ]
  %i.187 = phi i32 [ %inc51, %for.body47.for.body47_crit_edge ], [ 0, %for.cond43.preheader.for.body47_crit_edge ]
  %arrayidx49 = getelementptr %struct.cfg80211_wowlan_nd_info, ptr %56, i32 0, i32 1, i32 %i.187
  %57 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx49, align 4
  call void @kfree(ptr noundef %58) #12
  %inc51 = add nuw nsw i32 %i.187, 1
  %59 = ptrtoint ptr %nd_info40 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nd_info40, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %cmp45 = icmp slt i32 %inc51, %62
  br i1 %cmp45, label %for.body47.for.body47_crit_edge, label %for.body47.for.end52_crit_edge

for.body47.for.end52_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end52

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body47

for.end52:                                        ; preds = %for.body47.for.end52_crit_edge, %for.cond43.preheader.for.end52_crit_edge
  %.lcssa = phi ptr [ %53, %for.cond43.preheader.for.end52_crit_edge ], [ %60, %for.body47.for.end52_crit_edge ]
  call void @kfree(ptr noundef %.lcssa) #12
  %63 = ptrtoint ptr %nd_info40 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %nd_info40, align 4
  br label %if.end55

if.end55:                                         ; preds = %for.end52, %done.if.end55_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wakeup_report) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wakeup_reason) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_cfg80211_set_wakeup(ptr noundef readonly %wiphy, i1 noundef zeroext %enabled) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %mwifiex_cfg80211_get_adapter.exit, !prof !382

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !383
  unreachable

mwifiex_cfg80211_get_adapter.exit:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %dev = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call1 = tail call i32 @device_set_wakeup_enable(ptr noundef %4, i1 noundef zeroext %enabled) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_change_virtual_intf(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, i32 noundef %type, ptr nocapture noundef readnone %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %3 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iftype, align 4
  %scan_request = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 111
  %7 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scan_request, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.40) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 1073741824, ptr noundef nonnull @.str.41, ptr noundef %dev, i32 noundef %6) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %type)
  %cmp4 = icmp eq i32 %6, %type
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 8
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 1073741824, ptr noundef nonnull @.str.42, ptr noundef %dev, i32 noundef %type) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %15 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %6, label %if.end9.if.then12_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb14.i
    i32 3, label %sw.bb35.i
    i32 8, label %sw.bb54.i
    i32 9, label %sw.bb67.i
  ]

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

sw.bb.i:                                          ; preds = %if.end9
  %16 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %type, label %sw.bb.i.if.then12_crit_edge [
    i32 2, label %sw.bb17
    i32 8, label %sw.bb.i.is_vif_type_change_allowed.exit_crit_edge
    i32 9, label %sw.bb.i.is_vif_type_change_allowed.exit_crit_edge181
    i32 3, label %sw.bb6.i
  ]

sw.bb.i.is_vif_type_change_allowed.exit_crit_edge181: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_vif_type_change_allowed.exit

sw.bb.i.is_vif_type_change_allowed.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_vif_type_change_allowed.exit

sw.bb.i.if.then12_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

sw.bb6.i:                                         ; preds = %sw.bb.i
  %uap_intf.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %uap_intf.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %uap_intf.i, align 1
  %uap_intf10.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %uap_intf10.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %uap_intf10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp12.i.not = icmp eq i8 %18, %20
  br i1 %cmp12.i.not, label %sw.bb6.i.if.then12_crit_edge, label %sw.bb24

sw.bb6.i.if.then12_crit_edge:                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

sw.bb14.i:                                        ; preds = %if.end9
  %21 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %type, label %sw.bb14.i.if.then12_crit_edge [
    i32 1, label %sw.bb27
    i32 8, label %sw.bb14.i.sw.bb16.i_crit_edge
    i32 9, label %sw.bb14.i.sw.bb16.i_crit_edge182
    i32 3, label %sw.bb25.i
  ]

sw.bb14.i.sw.bb16.i_crit_edge182:                 ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16.i

sw.bb14.i.sw.bb16.i_crit_edge:                    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16.i

sw.bb14.i.if.then12_crit_edge:                    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

sw.bb16.i:                                        ; preds = %sw.bb14.i.sw.bb16.i_crit_edge, %sw.bb14.i.sw.bb16.i_crit_edge182
  %p2p_intf18.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %p2p_intf18.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %p2p_intf18.i, align 1
  %p2p_intf21.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %p2p_intf21.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %p2p_intf21.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp23.i.not = icmp eq i8 %23, %25
  br i1 %cmp23.i.not, label %sw.bb16.i.if.then12_crit_edge, label %sw.bb26

sw.bb16.i.if.then12_crit_edge:                    ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

sw.bb25.i:                                        ; preds = %sw.bb14.i
  %uap_intf27.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %uap_intf27.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %uap_intf27.i, align 1
  %uap_intf30.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %uap_intf30.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %uap_intf30.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp32.i.not = icmp eq i8 %27, %29
  br i1 %cmp32.i.not, label %sw.bb25.i.if.then12_crit_edge, label %sw.bb37

sw.bb25.i.if.then12_crit_edge:                    ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

sw.bb35.i:                                        ; preds = %if.end9
  %30 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %type, label %sw.bb35.i.if.then12_crit_edge [
    i32 1, label %sw.bb35.i.sw.bb36.i_crit_edge
    i32 2, label %sw.bb35.i.sw.bb36.i_crit_edge183
    i32 8, label %sw.bb35.i.sw.bb44.i_crit_edge
    i32 9, label %sw.bb35.i.sw.bb44.i_crit_edge184
  ]

sw.bb35.i.sw.bb44.i_crit_edge184:                 ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb44.i

sw.bb35.i.sw.bb44.i_crit_edge:                    ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb44.i

sw.bb35.i.sw.bb36.i_crit_edge183:                 ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb36.i

sw.bb35.i.sw.bb36.i_crit_edge:                    ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb36.i

sw.bb35.i.if.then12_crit_edge:                    ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

sw.bb36.i:                                        ; preds = %sw.bb35.i.sw.bb36.i_crit_edge, %sw.bb35.i.sw.bb36.i_crit_edge183
  %curr_iface_comb37.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 3
  %31 = ptrtoint ptr %curr_iface_comb37.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %curr_iface_comb37.i, align 1
  %iface_limit39.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 2
  %33 = ptrtoint ptr %iface_limit39.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %iface_limit39.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp42.i.not = icmp eq i8 %32, %34
  br i1 %cmp42.i.not, label %sw.bb36.i.if.then12_crit_edge, label %sw.bb36.i.sw.bb40_crit_edge

sw.bb36.i.sw.bb40_crit_edge:                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb40

sw.bb36.i.if.then12_crit_edge:                    ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

sw.bb44.i:                                        ; preds = %sw.bb35.i.sw.bb44.i_crit_edge, %sw.bb35.i.sw.bb44.i_crit_edge184
  %p2p_intf46.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %p2p_intf46.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %p2p_intf46.i, align 1
  %p2p_intf49.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %p2p_intf49.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %p2p_intf49.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp51.i.not = icmp eq i8 %36, %38
  br i1 %cmp51.i.not, label %sw.bb44.i.if.then12_crit_edge, label %sw.bb44.i.sw.bb40_crit_edge

sw.bb44.i.sw.bb40_crit_edge:                      ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb40

sw.bb44.i.if.then12_crit_edge:                    ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

sw.bb54.i:                                        ; preds = %if.end9
  %39 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %type, label %sw.bb54.i.if.then12_crit_edge [
    i32 1, label %sw.bb54.i.sw.bb46_crit_edge
    i32 2, label %sw.bb54.i.sw.bb46_crit_edge185
    i32 9, label %sw.bb54.i.sw.bb46_crit_edge186
    i32 3, label %sw.bb57.i
  ]

sw.bb54.i.sw.bb46_crit_edge186:                   ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb46

sw.bb54.i.sw.bb46_crit_edge185:                   ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb46

sw.bb54.i.sw.bb46_crit_edge:                      ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb46

sw.bb54.i.if.then12_crit_edge:                    ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

sw.bb57.i:                                        ; preds = %sw.bb54.i
  %uap_intf59.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %uap_intf59.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %uap_intf59.i, align 1
  %uap_intf62.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %uap_intf62.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %uap_intf62.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp64.i.not = icmp eq i8 %41, %43
  br i1 %cmp64.i.not, label %sw.bb57.i.if.then12_crit_edge, label %sw.bb57.i.sw.bb46_crit_edge

sw.bb57.i.sw.bb46_crit_edge:                      ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb46

sw.bb57.i.if.then12_crit_edge:                    ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

sw.bb67.i:                                        ; preds = %if.end9
  %44 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %type, label %sw.bb67.i.if.then12_crit_edge [
    i32 1, label %sw.bb67.i.sw.bb58_crit_edge
    i32 2, label %sw.bb67.i.sw.bb58_crit_edge187
    i32 8, label %sw.bb67.i.sw.bb58_crit_edge188
    i32 3, label %sw.bb70.i
  ]

sw.bb67.i.sw.bb58_crit_edge188:                   ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb58

sw.bb67.i.sw.bb58_crit_edge187:                   ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb58

sw.bb67.i.sw.bb58_crit_edge:                      ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb58

sw.bb67.i.if.then12_crit_edge:                    ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

sw.bb70.i:                                        ; preds = %sw.bb67.i
  %uap_intf72.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %uap_intf72.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %uap_intf72.i, align 1
  %uap_intf75.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %uap_intf75.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %uap_intf75.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %48)
  %cmp77.i.not = icmp eq i8 %46, %48
  br i1 %cmp77.i.not, label %sw.bb70.i.if.then12_crit_edge, label %sw.bb70.i.sw.bb58_crit_edge

sw.bb70.i.sw.bb58_crit_edge:                      ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb58

sw.bb70.i.if.then12_crit_edge:                    ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

is_vif_type_change_allowed.exit:                  ; preds = %sw.bb.i.is_vif_type_change_allowed.exit_crit_edge, %sw.bb.i.is_vif_type_change_allowed.exit_crit_edge181
  %p2p_intf.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 3, i32 2
  %49 = ptrtoint ptr %p2p_intf.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %p2p_intf.i, align 1
  %p2p_intf3.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 2, i32 2
  %51 = ptrtoint ptr %p2p_intf3.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %p2p_intf3.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %cmp.i.not = icmp eq i8 %50, %52
  br i1 %cmp.i.not, label %is_vif_type_change_allowed.exit.if.then12_crit_edge, label %sw.bb

is_vif_type_change_allowed.exit.if.then12_crit_edge: ; preds = %is_vif_type_change_allowed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.then12:                                        ; preds = %is_vif_type_change_allowed.exit.if.then12_crit_edge, %sw.bb70.i.if.then12_crit_edge, %sw.bb67.i.if.then12_crit_edge, %sw.bb57.i.if.then12_crit_edge, %sw.bb54.i.if.then12_crit_edge, %sw.bb44.i.if.then12_crit_edge, %sw.bb36.i.if.then12_crit_edge, %sw.bb35.i.if.then12_crit_edge, %sw.bb25.i.if.then12_crit_edge, %sw.bb16.i.if.then12_crit_edge, %sw.bb14.i.if.then12_crit_edge, %sw.bb6.i.if.then12_crit_edge, %sw.bb.i.if.then12_crit_edge, %if.end9.if.then12_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 4, ptr noundef nonnull @.str.43, ptr noundef %dev, i32 noundef %6, i32 noundef %type) #12
  br label %cleanup

sw.bb:                                            ; preds = %is_vif_type_change_allowed.exit
  %53 = and i32 %type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %53)
  %switch = icmp eq i32 %53, 8
  br i1 %switch, label %sw.bb22, label %sw.bb.errnotsupp_crit_edge

sw.bb.errnotsupp_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %errnotsupp

sw.bb17:                                          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 18
  %54 = ptrtoint ptr %bss_mode to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %bss_mode, align 8
  %authentication_mode = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 60, i32 5
  %55 = ptrtoint ptr %authentication_mode to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %authentication_mode, align 4
  %56 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype19 = getelementptr inbounds %struct.wireless_dev, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %iftype19 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %iftype19, align 4
  %call20 = tail call i32 @mwifiex_deauthenticate(ptr noundef %2, ptr noundef null) #12
  %call21 = tail call i32 @mwifiex_send_cmd(ptr noundef %2, i16 noundef zeroext 247, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #12
  br label %cleanup

sw.bb22:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call23 = tail call fastcc i32 @mwifiex_change_vif_to_p2p(ptr noundef %dev, i32 noundef 1, i32 noundef %type)
  br label %cleanup

sw.bb24:                                          ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call25 = tail call fastcc i32 @mwifiex_change_vif_to_ap(ptr noundef %dev, i32 noundef 1, i32 noundef 3)
  br label %cleanup

sw.bb26:                                          ; preds = %sw.bb16.i
  %59 = and i32 %type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %59)
  %switch180 = icmp eq i32 %59, 8
  br i1 %switch180, label %sw.bb35, label %sw.bb26.errnotsupp_crit_edge

sw.bb26.errnotsupp_crit_edge:                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #14
  br label %errnotsupp

sw.bb27:                                          ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #14
  %bss_mode28 = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 18
  %60 = ptrtoint ptr %bss_mode28 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %bss_mode28, align 8
  %authentication_mode30 = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 60, i32 5
  %61 = ptrtoint ptr %authentication_mode30 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %authentication_mode30, align 4
  %62 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype32 = getelementptr inbounds %struct.wireless_dev, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %iftype32 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %iftype32, align 4
  %call33 = tail call i32 @mwifiex_deauthenticate(ptr noundef %2, ptr noundef null) #12
  %call34 = tail call i32 @mwifiex_send_cmd(ptr noundef %2, i16 noundef zeroext 247, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #12
  br label %cleanup

sw.bb35:                                          ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #14
  %call36 = tail call fastcc i32 @mwifiex_change_vif_to_p2p(ptr noundef %dev, i32 noundef 2, i32 noundef %type)
  br label %cleanup

sw.bb37:                                          ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #14
  %call38 = tail call fastcc i32 @mwifiex_change_vif_to_ap(ptr noundef %dev, i32 noundef 2, i32 noundef 3)
  br label %cleanup

sw.bb40:                                          ; preds = %sw.bb44.i.sw.bb40_crit_edge, %sw.bb36.i.sw.bb40_crit_edge
  %65 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %type, label %sw.bb40.errnotsupp_crit_edge [
    i32 1, label %sw.bb40.sw.bb41_crit_edge
    i32 2, label %sw.bb40.sw.bb41_crit_edge189
    i32 8, label %sw.bb40.sw.bb43_crit_edge
    i32 9, label %sw.bb40.sw.bb43_crit_edge190
  ]

sw.bb40.sw.bb43_crit_edge190:                     ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb43

sw.bb40.sw.bb43_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb43

sw.bb40.sw.bb41_crit_edge189:                     ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb41

sw.bb40.sw.bb41_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb41

sw.bb40.errnotsupp_crit_edge:                     ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #14
  br label %errnotsupp

sw.bb41:                                          ; preds = %sw.bb40.sw.bb41_crit_edge, %sw.bb40.sw.bb41_crit_edge189
  %call42 = tail call fastcc i32 @mwifiex_change_vif_to_sta_adhoc(ptr noundef %dev, i32 noundef 3, i32 noundef %type)
  br label %cleanup

sw.bb43:                                          ; preds = %sw.bb40.sw.bb43_crit_edge, %sw.bb40.sw.bb43_crit_edge190
  %call44 = tail call fastcc i32 @mwifiex_change_vif_to_p2p(ptr noundef %dev, i32 noundef 3, i32 noundef %type)
  br label %cleanup

sw.bb46:                                          ; preds = %sw.bb57.i.sw.bb46_crit_edge, %sw.bb54.i.sw.bb46_crit_edge, %sw.bb54.i.sw.bb46_crit_edge185, %sw.bb54.i.sw.bb46_crit_edge186
  %call47 = tail call fastcc i32 @mwifiex_cfg80211_deinit_p2p(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %sw.bb46.cleanup_crit_edge

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end50:                                         ; preds = %sw.bb46
  %66 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %type, label %if.end50.errnotsupp_crit_edge [
    i32 1, label %if.end50.sw.bb51_crit_edge
    i32 2, label %if.end50.sw.bb51_crit_edge191
    i32 9, label %sw.bb53
    i32 3, label %sw.bb55
  ]

if.end50.sw.bb51_crit_edge191:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb51

if.end50.sw.bb51_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb51

if.end50.errnotsupp_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %errnotsupp

sw.bb51:                                          ; preds = %if.end50.sw.bb51_crit_edge, %if.end50.sw.bb51_crit_edge191
  %call52 = tail call fastcc i32 @mwifiex_change_vif_to_sta_adhoc(ptr noundef %dev, i32 noundef 8, i32 noundef %type)
  br label %cleanup

sw.bb53:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %call54 = tail call fastcc i32 @mwifiex_change_vif_to_p2p(ptr noundef %dev, i32 noundef 8, i32 noundef 9)
  br label %cleanup

sw.bb55:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %call56 = tail call fastcc i32 @mwifiex_change_vif_to_ap(ptr noundef %dev, i32 noundef 8, i32 noundef 3)
  br label %cleanup

sw.bb58:                                          ; preds = %sw.bb70.i.sw.bb58_crit_edge, %sw.bb67.i.sw.bb58_crit_edge, %sw.bb67.i.sw.bb58_crit_edge187, %sw.bb67.i.sw.bb58_crit_edge188
  %call59 = tail call fastcc i32 @mwifiex_cfg80211_deinit_p2p(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %sw.bb58.cleanup_crit_edge

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end62:                                         ; preds = %sw.bb58
  %67 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %type, label %if.end62.errnotsupp_crit_edge [
    i32 1, label %if.end62.sw.bb63_crit_edge
    i32 2, label %if.end62.sw.bb63_crit_edge192
    i32 8, label %sw.bb65
    i32 3, label %sw.bb67
  ]

if.end62.sw.bb63_crit_edge192:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb63

if.end62.sw.bb63_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb63

if.end62.errnotsupp_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %errnotsupp

sw.bb63:                                          ; preds = %if.end62.sw.bb63_crit_edge, %if.end62.sw.bb63_crit_edge192
  %call64 = tail call fastcc i32 @mwifiex_change_vif_to_sta_adhoc(ptr noundef %dev, i32 noundef 9, i32 noundef %type)
  br label %cleanup

sw.bb65:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %call66 = tail call fastcc i32 @mwifiex_change_vif_to_p2p(ptr noundef %dev, i32 noundef 9, i32 noundef 8)
  br label %cleanup

sw.bb67:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %call68 = tail call fastcc i32 @mwifiex_change_vif_to_ap(ptr noundef %dev, i32 noundef 9, i32 noundef 3)
  br label %cleanup

errnotsupp:                                       ; preds = %if.end62.errnotsupp_crit_edge, %if.end50.errnotsupp_crit_edge, %sw.bb40.errnotsupp_crit_edge, %sw.bb26.errnotsupp_crit_edge, %sw.bb.errnotsupp_crit_edge
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %69, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %6, i32 noundef %type) #12
  br label %cleanup

cleanup:                                          ; preds = %errnotsupp, %sw.bb67, %sw.bb65, %sw.bb63, %sw.bb58.cleanup_crit_edge, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb46.cleanup_crit_edge, %sw.bb43, %sw.bb41, %sw.bb37, %sw.bb35, %sw.bb27, %sw.bb24, %sw.bb22, %sw.bb17, %if.then12, %if.then5, %if.then1, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.then1 ], [ 0, %if.then5 ], [ -95, %errnotsupp ], [ %call68, %sw.bb67 ], [ %call66, %sw.bb65 ], [ %call64, %sw.bb63 ], [ %call56, %sw.bb55 ], [ %call54, %sw.bb53 ], [ %call52, %sw.bb51 ], [ %call44, %sw.bb43 ], [ %call42, %sw.bb41 ], [ %call38, %sw.bb37 ], [ %call36, %sw.bb35 ], [ %call34, %sw.bb27 ], [ %call25, %sw.bb24 ], [ %call23, %sw.bb22 ], [ %call21, %sw.bb17 ], [ -95, %if.then12 ], [ -14, %sw.bb46.cleanup_crit_edge ], [ -14, %sw.bb58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_add_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %netdev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef %mac_addr, ptr noundef %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %spec.select = select i1 %pairwise, ptr %mac_addr, ptr @mwifiex_cfg80211_add_key.bc_mac
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bss_role, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %entry.if.end17_crit_edge, label %land.lhs.true

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %cipher = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 5
  %6 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cipher, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %7, label %land.lhs.true.if.end17_crit_edge [
    i32 1027073, label %land.lhs.true.if.then_crit_edge
    i32 1027077, label %land.lhs.true.if.then_crit_edge44
  ]

land.lhs.true.if.then_crit_edge44:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge44
  %9 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %params, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.then.cleanup_crit_edge, label %land.lhs.true8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true8:                                   ; preds = %if.then
  %key_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %11 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %land.lhs.true8.cleanup_crit_edge, label %if.then10

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  %idxprom = zext i8 %key_index to i32
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 61, i32 %idxprom
  %13 = call ptr @memset(ptr %arrayidx, i32 0, i32 28)
  %key_material = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 61, i32 %idxprom, i32 3
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %params, align 4
  %16 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key_len, align 4
  %18 = call ptr @memcpy(ptr %key_material, ptr %15, i32 %17)
  %key_index15 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 61, i32 %idxprom, i32 1
  %19 = ptrtoint ptr %key_index15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %idxprom, ptr %key_index15, align 4
  %20 = load i32, ptr %key_len, align 4
  %key_length = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 61, i32 %idxprom, i32 2
  %21 = ptrtoint ptr %key_length to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %key_length, align 4
  %wep_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 60, i32 4
  %22 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %wep_enabled, align 4
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  %23 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %params, align 4
  %key_len19 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %25 = ptrtoint ptr %key_len19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %key_len19, align 4
  %call20 = tail call i32 @mwifiex_set_encode(ptr noundef %2, ptr noundef %params, ptr noundef %24, i32 noundef %26, i8 noundef zeroext %key_index, ptr noundef %spec.select, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end17.cleanup_crit_edge, label %if.then22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %28, i32 noundef 4, ptr noundef nonnull @.str.51) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end17.cleanup_crit_edge, %if.then10, %land.lhs.true8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then22 ], [ 0, %if.then10 ], [ 0, %land.lhs.true8.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_del_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %netdev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef %mac_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %spec.select = select i1 %pairwise, ptr %mac_addr, ptr @mwifiex_cfg80211_del_key.bc_mac
  %call1 = tail call i32 @mwifiex_set_encode(ptr noundef %2, ptr noundef null, ptr noundef null, i32 noundef 0, i8 noundef zeroext %key_index, ptr noundef %spec.select, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.52) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.53) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -14, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_default_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %netdev, i8 noundef zeroext %key_index, i1 noundef zeroext %unicast, i1 noundef zeroext %multicast) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %wep_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 60, i32 4
  %3 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wep_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bss_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv4 = zext i8 %key_index to i16
  %wep_key_curr_index = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 62
  %7 = ptrtoint ptr %wep_key_curr_index to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv4, ptr %wep_key_curr_index, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call5 = tail call i32 @mwifiex_set_encode(ptr noundef %2, ptr noundef null, ptr noundef null, i32 noundef 0, i8 noundef zeroext %key_index, ptr noundef null, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else.cleanup_crit_edge, label %if.then7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.54) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.else.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then7 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_default_mgmt_key(ptr noundef %wiphy, ptr nocapture noundef readonly %netdev, i8 noundef zeroext %key_index) #1 align 64 {
entry:
  %encrypt_key = alloca %struct.mwifiex_ds_encrypt_key, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %encrypt_key) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_cfg80211_set_default_mgmt_key.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_cfg80211_set_default_mgmt_key, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !385

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  %conv = zext i8 %key_index to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mwifiex_cfg80211_set_default_mgmt_key.__UNIQUE_ID_ddebug489, ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = call ptr @memset(ptr %encrypt_key, i32 0, i32 80)
  %key_len = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 2
  %4 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %key_len, align 4
  %conv4 = zext i8 %key_index to i32
  %key_index5 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 1
  %5 = ptrtoint ptr %key_index5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv4, ptr %key_index5, align 4
  %is_igtk_def_key = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 11
  %6 = ptrtoint ptr %is_igtk_def_key to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_igtk_def_key, align 4
  %mac_addr = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 4
  %7 = call ptr @memset(ptr %mac_addr, i32 255, i32 6)
  %call6 = call i32 @mwifiex_send_cmd(ptr noundef %2, i16 noundef zeroext 94, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %encrypt_key, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.then8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.58) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then8 ], [ 0, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %encrypt_key) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_start_ap(ptr noundef %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bss_role, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not.not = icmp eq i8 %5, 0
  br i1 %cmp.not.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 292) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @mwifiex_set_sys_config_invalid_data(ptr noundef nonnull %call7.i.i) #12
  %beacon_interval = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 2
  %7 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %beacon_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %conv8 = trunc i32 %8 to i16
  %beacon_period = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %call7.i.i, i32 0, i32 11
  %9 = ptrtoint ptr %beacon_period to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv8, ptr %beacon_period, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %dtim_period = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 3
  %10 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dtim_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %if.then11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %conv13 = trunc i32 %11 to i8
  %dtim_period14 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %call7.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %dtim_period14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13, ptr %dtim_period14, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9.if.end15_crit_edge
  %ssid = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 4
  %13 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ssid, align 4
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %if.end15.if.end26_crit_edge, label %land.lhs.true

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end15
  %ssid_len = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 5
  %15 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not = icmp eq i32 %16, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end26_crit_edge, label %if.then18

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %ssid19 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %call7.i.i, i32 0, i32 6
  %ssid20 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %call7.i.i, i32 0, i32 6, i32 1
  %17 = call ptr @memcpy(ptr %ssid20, ptr %14, i32 %16)
  %18 = ptrtoint ptr %ssid19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %ssid19, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %land.lhs.true.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %inactivity_timeout = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 11
  %19 = ptrtoint ptr %inactivity_timeout to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inactivity_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp27 = icmp sgt i32 %20, 0
  br i1 %cmp27, label %if.then29, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %mul = mul i32 %20, 10
  %sta_ao_timer = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %call7.i.i, i32 0, i32 22
  %21 = ptrtoint ptr %sta_ao_timer to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul, ptr %sta_ao_timer, align 8
  %ps_sta_ao_timer = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %call7.i.i, i32 0, i32 23
  %22 = ptrtoint ptr %ps_sta_ao_timer to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %ps_sta_ao_timer, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end26.if.end33_crit_edge
  %hidden_ssid = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 6
  %23 = ptrtoint ptr %hidden_ssid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hidden_ssid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %25 = icmp ult i32 %24, 3
  br i1 %25, label %switch.lookup, label %if.end33.cleanup.sink.split_crit_edge

if.end33.cleanup.sink.split_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %if.end33
  %switch.cast = trunc i32 %24 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 131073, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %bcast_ssid_ctl37 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %bcast_ssid_ctl37 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %switch.masked, ptr %bcast_ssid_ctl37, align 4
  %27 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack = load i32, ptr %params, align 4
  %28 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.elt166 = getelementptr inbounds [7 x i32], ptr %params, i32 0, i32 1
  %29 = ptrtoint ptr %.elt166 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack167 = load i32, ptr %.elt166, align 4
  %30 = insertvalue [7 x i32] %28, i32 %.unpack167, 1
  %.elt168 = getelementptr inbounds [7 x i32], ptr %params, i32 0, i32 2
  %31 = ptrtoint ptr %.elt168 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack169 = load i32, ptr %.elt168, align 4
  %32 = insertvalue [7 x i32] %30, i32 %.unpack169, 2
  %.elt170 = getelementptr inbounds [7 x i32], ptr %params, i32 0, i32 3
  %33 = ptrtoint ptr %.elt170 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack171 = load i32, ptr %.elt170, align 4
  %34 = insertvalue [7 x i32] %32, i32 %.unpack171, 3
  %.elt172 = getelementptr inbounds [7 x i32], ptr %params, i32 0, i32 4
  %35 = ptrtoint ptr %.elt172 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack173 = load i32, ptr %.elt172, align 4
  %36 = insertvalue [7 x i32] %34, i32 %.unpack173, 4
  %.elt174 = getelementptr inbounds [7 x i32], ptr %params, i32 0, i32 5
  %37 = ptrtoint ptr %.elt174 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack175 = load i32, ptr %.elt174, align 4
  %38 = insertvalue [7 x i32] %36, i32 %.unpack175, 5
  %.elt176 = getelementptr inbounds [7 x i32], ptr %params, i32 0, i32 6
  %39 = ptrtoint ptr %.elt176 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack177 = load i32, ptr %.elt176, align 4
  %40 = insertvalue [7 x i32] %38, i32 %.unpack177, 6
  tail call void @mwifiex_uap_set_channel(ptr noundef %2, ptr noundef nonnull %call7.i.i, [7 x i32] %40) #12
  tail call void @mwifiex_set_uap_rates(ptr noundef nonnull %call7.i.i, ptr noundef %params) #12
  %call38 = tail call i32 @mwifiex_set_secure_params(ptr noundef %2, ptr noundef nonnull %call7.i.i, ptr noundef %params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %switch.lookup.out.sink.split_crit_edge

switch.lookup.out.sink.split_crit_edge:           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.end41:                                         ; preds = %switch.lookup
  tail call void @mwifiex_set_ht_params(ptr noundef %2, ptr noundef nonnull %call7.i.i, ptr noundef %params) #12
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %2, align 8
  %is_hw_11ac_capable = getelementptr inbounds %struct.mwifiex_adapter, ptr %42, i32 0, i32 128
  %43 = ptrtoint ptr %is_hw_11ac_capable to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %is_hw_11ac_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool43.not = icmp eq i32 %44, 0
  br i1 %tobool43.not, label %if.end41.if.end47_crit_edge, label %if.then44

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mwifiex_set_vht_params(ptr noundef %2, ptr noundef nonnull %call7.i.i, ptr noundef %params) #12
  %45 = ptrtoint ptr %.elt166 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %.elt166, align 4
  %ap_11ac_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 126
  %47 = ptrtoint ptr %ap_11ac_enabled to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ap_11ac_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool46 = icmp ne i8 %48, 0
  tail call void @mwifiex_set_vht_width(ptr noundef %2, i32 noundef %46, i1 noundef zeroext %tobool46) #12
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end41.if.end47_crit_edge
  %ap_11ac_enabled48 = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 126
  %49 = ptrtoint ptr %ap_11ac_enabled48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ap_11ac_enabled48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool49.not = icmp eq i8 %50, 0
  br i1 %tobool49.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mwifiex_set_11ac_ba_params(ptr noundef %2) #12
  br label %if.end51

if.else:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mwifiex_set_ba_params(ptr noundef %2) #12
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then50
  tail call void @mwifiex_set_wmm_params(ptr noundef %2, ptr noundef nonnull %call7.i.i, ptr noundef %params) #12
  %call52 = tail call i32 @mwifiex_is_11h_active(ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end51.if.end55_crit_edge, label %if.then54

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mwifiex_set_tpc_params(ptr noundef %2, ptr noundef nonnull %call7.i.i, ptr noundef %params) #12
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51.if.end55_crit_edge
  %call56 = tail call i32 @mwifiex_is_11h_active(ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end55.if.end69_crit_edge, label %land.lhs.true58

if.end55.if.end69_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

land.lhs.true58:                                  ; preds = %if.end55
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 18
  %51 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bss_mode, align 8
  %call60 = tail call i32 @cfg80211_chandef_dfs_required(ptr noundef %wiphy, ptr noundef %params, i32 noundef %52) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then62, label %land.lhs.true58.if.end69_crit_edge

land.lhs.true58.if.end69_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then62:                                        ; preds = %land.lhs.true58
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %54, i32 noundef 1073741824, ptr noundef nonnull @.str.60) #12
  %call64 = tail call i32 @mwifiex_11h_activate(ptr noundef %2, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end68, label %if.then62.out.sink.split_crit_edge

if.then62.out.sink.split_crit_edge:               ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.end68:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  %is_11h_active = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 157, i32 1
  %55 = ptrtoint ptr %is_11h_active to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %is_11h_active, align 1
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %land.lhs.true58.if.end69_crit_edge, %if.end55.if.end69_crit_edge
  %beacon = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %params, i32 0, i32 1
  tail call void @mwifiex_config_uap_11d(ptr noundef %2, ptr noundef %beacon) #12
  %call70 = tail call i32 @mwifiex_config_start_uap(ptr noundef %2, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end74, label %if.end69.out.sink.split_crit_edge

if.end69.out.sink.split_crit_edge:                ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.end74:                                         ; preds = %if.end69
  %call76 = tail call i32 @mwifiex_set_mgmt_ies(ptr noundef %2, ptr noundef %beacon) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end74.cleanup.sink.split_crit_edge

if.end74.cleanup.sink.split_crit_edge:            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end79:                                         ; preds = %if.end74
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 15
  %56 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %state.i, align 4
  %60 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i, label %if.end79.if.end83_crit_edge, label %if.then81

if.end79.if.end83_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_on(ptr noundef %57) #12
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end79.if.end83_crit_edge
  %61 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %netdev, align 4
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %2, align 8
  tail call void @mwifiex_wake_up_net_dev_queue(ptr noundef %62, ptr noundef %64) #12
  %bss_cfg86 = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 138
  %65 = call ptr @memcpy(ptr %bss_cfg86, ptr %call7.i.i, i32 292)
  br label %cleanup.sink.split

out.sink.split:                                   ; preds = %if.end69.out.sink.split_crit_edge, %if.then62.out.sink.split_crit_edge, %switch.lookup.out.sink.split_crit_edge
  %.str.62.sink = phi ptr [ @.str.59, %switch.lookup.out.sink.split_crit_edge ], [ @.str.61, %if.then62.out.sink.split_crit_edge ], [ @.str.62, %if.end69.out.sink.split_crit_edge ]
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %67, i32 noundef 4, ptr noundef nonnull %.str.62.sink) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out.sink.split, %if.end83, %if.end74.cleanup.sink.split_crit_edge, %if.end33.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end83 ], [ -22, %if.end33.cleanup.sink.split_crit_edge ], [ -1, %out.sink.split ], [ -1, %if.end74.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_change_beacon(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  tail call void @mwifiex_cancel_scan(ptr noundef %4) #12
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bss_role, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.not = icmp eq i8 %7, 0
  br i1 %cmp.not.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %bss_started = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 5
  %8 = ptrtoint ptr %bss_started to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bss_started, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @mwifiex_set_mgmt_ies(ptr noundef %2, ptr noundef %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end6.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.65.sink = phi ptr [ @.str.63, %entry.cleanup.sink.split_crit_edge ], [ @.str.64, %if.end.cleanup.sink.split_crit_edge ], [ @.str.65, %if.end6.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ -14, %if.end6.cleanup.sink.split_crit_edge ]
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 4, ptr noundef nonnull %.str.65.sink, ptr noundef nonnull @__func__.mwifiex_cfg80211_change_beacon) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_stop_ap(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call void @mwifiex_abort_cac(ptr noundef %2) #12
  %call1 = tail call i32 @mwifiex_del_mgmt_ies(ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.66) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ap_11n_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 125
  %5 = ptrtoint ptr %ap_11n_enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ap_11n_enabled, align 2
  %bss_cfg = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 138
  %6 = call ptr @memset(ptr %bss_cfg, i32 0, i32 292)
  %call2 = tail call i32 @mwifiex_send_cmd(ptr noundef %2, i16 noundef zeroext 178, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 4, ptr noundef nonnull @.str.67) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @mwifiex_send_cmd(ptr noundef %2, i16 noundef zeroext 175, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.68) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 15
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then13, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_off(ptr noundef %12) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 8
  tail call void @mwifiex_stop_net_dev_queue(ptr noundef %17, ptr noundef %19) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then9, %if.then4
  %retval.0 = phi i32 [ -1, %if.then4 ], [ -1, %if.then9 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_add_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %mac, ptr nocapture noundef readonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %sta_flags_set = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 3
  %3 = ptrtoint ptr %sta_flags_set to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sta_flags_set, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bss_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 8
  %7 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 @mwifiex_tdls_oper(ptr noundef %2, ptr noundef %mac, i8 noundef zeroext 2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_del_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %params) #1 align 64 {
entry:
  %deauth_mac = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %deauth_mac) #12
  %3 = getelementptr inbounds [6 x i8], ptr %deauth_mac, i32 0, i32 4
  %bss_started = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 5
  %4 = ptrtoint ptr %bss_started to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bss_started, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cac_started = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 103, i32 36
  %6 = ptrtoint ptr %cac_started to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cac_started, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.mwifiex_cfg80211_del_station) #12
  tail call void @mwifiex_abort_cac(ptr noundef %2) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sta_list = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 79
  %10 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %sta_list, align 4
  %cmp.i.not = icmp eq ptr %11, %sta_list
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %bss_started to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bss_started, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %params, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %lor.lhs.false9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end7
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %add.ptr1.i = getelementptr i8, ptr %15, i32 2
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %19, %17
  %add.ptr3.i = getelementptr i8, ptr %15, i32 4
  %20 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %21
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i49 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i49, label %lor.lhs.false9.cleanup_crit_edge, label %if.end13

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false9
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %23, i32 noundef 1073741824, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.mwifiex_cfg80211_del_station, ptr noundef nonnull %15) #12
  %24 = call ptr @memset(ptr %deauth_mac, i32 0, i32 6)
  %sta_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_list_spinlock) #12
  %25 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %params, align 4
  %call17 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %2, ptr noundef %26) #12
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end13.if.end22_crit_edge, label %if.then19

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %params, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = ptrtoint ptr %deauth_mac to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %deauth_mac, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i, align 2
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %3, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end13.if.end22_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #12
  %35 = ptrtoint ptr %deauth_mac to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %deauth_mac, align 4
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not.i = icmp eq i32 %37, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end22.if.end32_crit_edge

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

is_valid_ether_addr.exit:                         ; preds = %if.end22
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %3, align 4
  %conv.i.i = zext i16 %39 to i32
  %or.i.i = or i32 %36, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end32_crit_edge, label %if.then26

is_valid_ether_addr.exit.if.end32_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then26:                                        ; preds = %is_valid_ether_addr.exit
  %call28 = call i32 @mwifiex_send_cmd(ptr noundef %2, i16 noundef zeroext 181, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %deauth_mac, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then26.if.end32_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.end32:                                         ; preds = %if.then26.if.end32_crit_edge, %is_valid_ether_addr.exit.if.end32_crit_edge, %if.end22.if.end32_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then26.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false9.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -1, %if.then26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %deauth_mac) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_change_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %mac, ptr noundef %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %sta_flags_set = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 3
  %3 = ptrtoint ptr %sta_flags_set to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sta_flags_set, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bss_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 8
  %7 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %sta_params = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 140
  %9 = ptrtoint ptr %sta_params to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %params, ptr %sta_params, align 4
  %call5 = tail call i32 @mwifiex_tdls_oper(ptr noundef %2, ptr noundef %mac, i8 noundef zeroext 3) #12
  %10 = ptrtoint ptr %sta_params to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sta_params, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_get_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %mac, ptr noundef %sinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 112
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %cfg_bssid, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call fastcc i32 @mwifiex_dump_station_info(ptr noundef %2, ptr noundef null, ptr noundef %sinfo)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_dump_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, i32 noundef %idx, ptr nocapture noundef writeonly %mac, ptr noundef %sinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bss_role, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.then12

land.lhs.true:                                    ; preds = %entry
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 8
  %6 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp ne i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp4 = icmp eq i32 %idx, 0
  %or.cond = and i1 %cmp4, %tobool.not
  br i1 %or.cond, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %cfg_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 112
  %8 = ptrtoint ptr %cfg_bssid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg_bssid, align 4
  %10 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mac, align 4
  %add.ptr.i = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 112, i32 4
  br label %cleanup.sink.split

if.then12:                                        ; preds = %entry
  %call13 = tail call i32 @mwifiex_send_cmd(ptr noundef %2, i16 noundef zeroext 179, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #12
  %sta_list = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 79
  %11 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %node.048 = load ptr, ptr %sta_list, align 8
  %cmp15.not49 = icmp eq ptr %node.048, %sta_list
  br i1 %cmp15.not49, label %if.then12.cleanup_crit_edge, label %if.then12.for.body_crit_edge

if.then12.for.body_crit_edge:                     ; preds = %if.then12
  br label %for.body

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.050, 1
  %12 = ptrtoint ptr %node.051 to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.0 = load ptr, ptr %node.051, align 8
  %cmp15.not = icmp eq ptr %node.0, %sta_list
  br i1 %cmp15.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then12.for.body_crit_edge
  %node.051 = phi ptr [ %node.0, %for.cond.for.body_crit_edge ], [ %node.048, %if.then12.for.body_crit_edge ]
  %i.050 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.then12.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.050, i32 %idx)
  %cmp17.not = icmp eq i32 %i.050, %idx
  br i1 %cmp17.not, label %if.end, label %for.cond

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %mac_addr = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node.051, i32 0, i32 1
  %13 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mac_addr, align 4
  %15 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %mac, align 4
  %add.ptr.i45 = getelementptr %struct.mwifiex_sta_node, ptr %node.051, i32 0, i32 1, i32 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then
  %add.ptr.i45.sink = phi ptr [ %add.ptr.i45, %if.end ], [ %add.ptr.i, %if.then ]
  %node.051.lcssa.sink = phi ptr [ %node.051, %if.end ], [ null, %if.then ]
  %16 = ptrtoint ptr %add.ptr.i45.sink to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i45.sink, align 2
  %add.ptr1.i46 = getelementptr i8, ptr %mac, i32 4
  %18 = ptrtoint ptr %add.ptr1.i46 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %add.ptr1.i46, align 2
  %call21 = tail call fastcc i32 @mwifiex_dump_station_info(ptr noundef %2, ptr noundef %node.051.lcssa.sink, ptr noundef %sinfo)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.cond.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %land.lhs.true.cleanup_crit_edge ], [ -2, %if.then12.cleanup_crit_edge ], [ %call21, %cleanup.sink.split ], [ -2, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_scan(ptr nocapture noundef readnone %wiphy, ptr noundef %request) #1 align 64 {
entry:
  %mac_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wdev = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 10
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 8
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %6 = inttoptr i32 %5 to ptr
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #12
  %7 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 1
  %8 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 2
  %9 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 3
  %10 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %11 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 5
  %12 = call ptr @memset(ptr %mac_addr, i32 255, i32 6)
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 16, ptr noundef nonnull @.str.73, ptr noundef %3) #12
  %scan_request = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 111
  %15 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scan_request, align 8
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %scan_aborting = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 130
  %17 = ptrtoint ptr %scan_aborting to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %scan_aborting, align 8, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not = icmp eq i8 %18, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 536870912, ptr noundef nonnull @.str.74) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %wdev3 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 103
  %current_bss = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 103, i32 25
  %21 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %current_bss, align 8
  %tobool4.not = icmp eq ptr %22, null
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %scan_block = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 114
  %23 = ptrtoint ptr %scan_block to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %scan_block, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool5.not = icmp eq i8 %24, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end8_crit_edge, label %if.then6

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %scan_block to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %scan_block, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call i32 @mwifiex_stop_bg_scan(ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %wdev3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wdev3, align 8
  tail call void @cfg80211_sched_scan_stopped_locked(ptr noundef %27, i64 noundef 0) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 422) #17
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %29 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %request, ptr %scan_request, align 8
  %flags = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 8
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %and = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end18.if.end31_crit_edge, label %if.then21

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %mac_addr23 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 11
  %mac_addr_mask = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 12
  call void @get_random_bytes(ptr noundef nonnull %mac_addr, i32 noundef 6) #12
  %32 = ptrtoint ptr %mac_addr_mask to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mac_addr_mask, align 1
  %neg.i = xor i8 %33, -1
  %34 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mac_addr, align 4
  %and.i = and i8 %35, %neg.i
  %36 = ptrtoint ptr %mac_addr23 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %mac_addr23, align 1
  %and821.i = and i8 %37, %33
  %or22.i = or i8 %and821.i, %and.i
  store i8 %or22.i, ptr %mac_addr, align 4
  %arrayidx.1.i = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 12, i32 1
  %38 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.1.i, align 1
  %neg.1.i = xor i8 %39, -1
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %7, align 1
  %and.1.i = and i8 %41, %neg.1.i
  %arrayidx4.1.i = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 11, i32 1
  %42 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx4.1.i, align 1
  %and821.1.i = and i8 %43, %39
  %or22.1.i = or i8 %and821.1.i, %and.1.i
  store i8 %or22.1.i, ptr %7, align 1
  %arrayidx.2.i = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 12, i32 2
  %44 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.2.i, align 1
  %neg.2.i = xor i8 %45, -1
  %46 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %8, align 2
  %and.2.i = and i8 %47, %neg.2.i
  %arrayidx4.2.i = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 11, i32 2
  %48 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx4.2.i, align 1
  %and821.2.i = and i8 %49, %45
  %or22.2.i = or i8 %and821.2.i, %and.2.i
  store i8 %or22.2.i, ptr %8, align 2
  %arrayidx.3.i = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 12, i32 3
  %50 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.3.i, align 1
  %neg.3.i = xor i8 %51, -1
  %52 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %9, align 1
  %and.3.i = and i8 %53, %neg.3.i
  %arrayidx4.3.i = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 11, i32 3
  %54 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx4.3.i, align 1
  %and821.3.i = and i8 %55, %51
  %or22.3.i = or i8 %and821.3.i, %and.3.i
  store i8 %or22.3.i, ptr %9, align 1
  %arrayidx.4.i = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 12, i32 4
  %56 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.4.i, align 1
  %neg.4.i = xor i8 %57, -1
  %58 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %10, align 4
  %and.4.i = and i8 %59, %neg.4.i
  %arrayidx4.4.i = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 11, i32 4
  %60 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx4.4.i, align 1
  %and821.4.i = and i8 %61, %57
  %or22.4.i = or i8 %and821.4.i, %and.4.i
  store i8 %or22.4.i, ptr %10, align 4
  %arrayidx.5.i = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 12, i32 5
  %62 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.5.i, align 1
  %neg.5.i = xor i8 %63, -1
  %64 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %11, align 1
  %and.5.i = and i8 %65, %neg.5.i
  %arrayidx4.5.i = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 11, i32 5
  %66 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx4.5.i, align 1
  %and821.5.i = and i8 %67, %63
  %or22.5.i = or i8 %and821.5.i, %and.5.i
  store i8 %or22.5.i, ptr %11, align 1
  %68 = load i32, ptr %mac_addr, align 4
  store i32 %68, ptr %mac_addr23, align 4
  %69 = load i16, ptr %10, align 4
  store i16 %69, ptr %arrayidx4.4.i, align 2
  %random_mac = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %call7.i.i, i32 0, i32 8
  %70 = ptrtoint ptr %random_mac to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %68, ptr %random_mac, align 8
  %add.ptr1.i223 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %call7.i.i, i32 0, i32 8, i32 4
  %71 = ptrtoint ptr %add.ptr1.i223 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %69, ptr %add.ptr1.i223, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then21, %if.end18.if.end31_crit_edge
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 1
  %72 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %n_ssids, align 4
  %conv32 = trunc i32 %73 to i8
  %num_ssids = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %call7.i.i, i32 0, i32 5
  %74 = ptrtoint ptr %num_ssids to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv32, ptr %num_ssids, align 1
  %75 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %request, align 8
  %ssid_list = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %call7.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %ssid_list to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store ptr %76, ptr %ssid_list, align 1
  %ie33 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 4
  %78 = ptrtoint ptr %ie33 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ie33, align 8
  %tobool34.not = icmp eq ptr %79, null
  br i1 %tobool34.not, label %if.end31.if.end61_crit_edge, label %land.lhs.true35

if.end31.if.end61_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

land.lhs.true35:                                  ; preds = %if.end31
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 5
  %80 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool36.not = icmp eq i32 %81, 0
  br i1 %tobool36.not, label %land.lhs.true35.if.end61_crit_edge, label %for.body.preheader

land.lhs.true35.if.end61_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

for.body.preheader:                               ; preds = %land.lhs.true35
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 0
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %cmp40.not = icmp eq i16 %83, 0
  br i1 %cmp40.not, label %if.end43, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end43:                                         ; preds = %for.body.preheader
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %arrayidx, align 2
  %85 = ptrtoint ptr %ie33 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ie33, align 8
  %ie50 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 0, i32 2
  %len = getelementptr inbounds %struct.ieee_types_header, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %len, align 1
  %conv51 = zext i8 %88 to i32
  %add = add nuw nsw i32 %conv51, 2
  %89 = call ptr @memcpy(ptr %ie50, ptr %86, i32 %add)
  %90 = load i8, ptr %len, align 1
  %conv53 = zext i8 %90 to i32
  %add55 = add nuw nsw i32 %conv53, 2
  %91 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add55, i32 %92)
  %cmp57.not = icmp ult i32 %add55, %92
  br i1 %cmp57.not, label %if.end43.for.inc_crit_edge, label %if.end43.if.end61_crit_edge

if.end43.if.end61_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end43.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %offset.1 = phi i32 [ 0, %for.body.preheader.for.inc_crit_edge ], [ %add55, %if.end43.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 1
  %93 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %cmp40.not.1 = icmp eq i16 %94, 0
  br i1 %cmp40.not.1, label %if.end43.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end43.1:                                       ; preds = %for.inc
  %95 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 1, ptr %arrayidx.1, align 2
  %96 = ptrtoint ptr %ie33 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ie33, align 8
  %add.ptr.1 = getelementptr i8, ptr %97, i32 %offset.1
  %ie50.1 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 1, i32 2
  %len.1 = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.1, i32 0, i32 1
  %98 = ptrtoint ptr %len.1 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %len.1, align 1
  %conv51.1 = zext i8 %99 to i32
  %add.1 = add nuw nsw i32 %conv51.1, 2
  %100 = call ptr @memcpy(ptr %ie50.1, ptr %add.ptr.1, i32 %add.1)
  %101 = load i8, ptr %len.1, align 1
  %conv53.1 = zext i8 %101 to i32
  %add54.1 = add nuw nsw i32 %offset.1, 2
  %add55.1 = add nuw nsw i32 %add54.1, %conv53.1
  %102 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add55.1, i32 %103)
  %cmp57.not.1 = icmp ult i32 %add55.1, %103
  br i1 %cmp57.not.1, label %if.end43.1.for.inc.1_crit_edge, label %if.end43.1.if.end61_crit_edge

if.end43.1.if.end61_crit_edge:                    ; preds = %if.end43.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end43.1.for.inc.1_crit_edge:                   ; preds = %if.end43.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end43.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %offset.1.1 = phi i32 [ %offset.1, %for.inc.for.inc.1_crit_edge ], [ %add55.1, %if.end43.1.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 2
  %104 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %cmp40.not.2 = icmp eq i16 %105, 0
  br i1 %cmp40.not.2, label %if.end43.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end43.2:                                       ; preds = %for.inc.1
  %106 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 1, ptr %arrayidx.2, align 2
  %107 = ptrtoint ptr %ie33 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ie33, align 8
  %add.ptr.2 = getelementptr i8, ptr %108, i32 %offset.1.1
  %ie50.2 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 2, i32 2
  %len.2 = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.2, i32 0, i32 1
  %109 = ptrtoint ptr %len.2 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %len.2, align 1
  %conv51.2 = zext i8 %110 to i32
  %add.2 = add nuw nsw i32 %conv51.2, 2
  %111 = call ptr @memcpy(ptr %ie50.2, ptr %add.ptr.2, i32 %add.2)
  %112 = load i8, ptr %len.2, align 1
  %conv53.2 = zext i8 %112 to i32
  %add54.2 = add nuw nsw i32 %offset.1.1, 2
  %add55.2 = add nuw nsw i32 %add54.2, %conv53.2
  %113 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add55.2, i32 %114)
  %cmp57.not.2 = icmp ult i32 %add55.2, %114
  br i1 %cmp57.not.2, label %if.end43.2.for.inc.2_crit_edge, label %if.end43.2.if.end61_crit_edge

if.end43.2.if.end61_crit_edge:                    ; preds = %if.end43.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end43.2.for.inc.2_crit_edge:                   ; preds = %if.end43.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end43.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %offset.1.2 = phi i32 [ %offset.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %add55.2, %if.end43.2.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 3
  %115 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %cmp40.not.3 = icmp eq i16 %116, 0
  br i1 %cmp40.not.3, label %if.end43.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end43.3:                                       ; preds = %for.inc.2
  %117 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 1, ptr %arrayidx.3, align 2
  %118 = ptrtoint ptr %ie33 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ie33, align 8
  %add.ptr.3 = getelementptr i8, ptr %119, i32 %offset.1.2
  %ie50.3 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 3, i32 2
  %len.3 = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.3, i32 0, i32 1
  %120 = ptrtoint ptr %len.3 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %len.3, align 1
  %conv51.3 = zext i8 %121 to i32
  %add.3 = add nuw nsw i32 %conv51.3, 2
  %122 = call ptr @memcpy(ptr %ie50.3, ptr %add.ptr.3, i32 %add.3)
  %123 = load i8, ptr %len.3, align 1
  %conv53.3 = zext i8 %123 to i32
  %add54.3 = add nuw nsw i32 %offset.1.2, 2
  %add55.3 = add nuw nsw i32 %add54.3, %conv53.3
  %124 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add55.3, i32 %125)
  %cmp57.not.3 = icmp ult i32 %add55.3, %125
  br i1 %cmp57.not.3, label %if.end43.3.for.inc.3_crit_edge, label %if.end43.3.if.end61_crit_edge

if.end43.3.if.end61_crit_edge:                    ; preds = %if.end43.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end43.3.for.inc.3_crit_edge:                   ; preds = %if.end43.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end43.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %offset.1.3 = phi i32 [ %offset.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %add55.3, %if.end43.3.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 4
  %126 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %127)
  %cmp40.not.4 = icmp eq i16 %127, 0
  br i1 %cmp40.not.4, label %if.end43.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end43.4:                                       ; preds = %for.inc.3
  %128 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 1, ptr %arrayidx.4, align 2
  %129 = ptrtoint ptr %ie33 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ie33, align 8
  %add.ptr.4 = getelementptr i8, ptr %130, i32 %offset.1.3
  %ie50.4 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 4, i32 2
  %len.4 = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.4, i32 0, i32 1
  %131 = ptrtoint ptr %len.4 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %len.4, align 1
  %conv51.4 = zext i8 %132 to i32
  %add.4 = add nuw nsw i32 %conv51.4, 2
  %133 = call ptr @memcpy(ptr %ie50.4, ptr %add.ptr.4, i32 %add.4)
  %134 = load i8, ptr %len.4, align 1
  %conv53.4 = zext i8 %134 to i32
  %add54.4 = add nuw nsw i32 %offset.1.3, 2
  %add55.4 = add nuw nsw i32 %add54.4, %conv53.4
  %135 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add55.4, i32 %136)
  %cmp57.not.4 = icmp ult i32 %add55.4, %136
  br i1 %cmp57.not.4, label %if.end43.4.for.inc.4_crit_edge, label %if.end43.4.if.end61_crit_edge

if.end43.4.if.end61_crit_edge:                    ; preds = %if.end43.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end43.4.for.inc.4_crit_edge:                   ; preds = %if.end43.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end43.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %offset.1.4 = phi i32 [ %offset.1.3, %for.inc.3.for.inc.4_crit_edge ], [ %add55.4, %if.end43.4.for.inc.4_crit_edge ]
  %arrayidx.5 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 5
  %137 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %cmp40.not.5 = icmp eq i16 %138, 0
  br i1 %cmp40.not.5, label %if.end43.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.end43.5:                                       ; preds = %for.inc.4
  %139 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 1, ptr %arrayidx.5, align 2
  %140 = ptrtoint ptr %ie33 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ie33, align 8
  %add.ptr.5 = getelementptr i8, ptr %141, i32 %offset.1.4
  %ie50.5 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 5, i32 2
  %len.5 = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.5, i32 0, i32 1
  %142 = ptrtoint ptr %len.5 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %len.5, align 1
  %conv51.5 = zext i8 %143 to i32
  %add.5 = add nuw nsw i32 %conv51.5, 2
  %144 = call ptr @memcpy(ptr %ie50.5, ptr %add.ptr.5, i32 %add.5)
  %145 = load i8, ptr %len.5, align 1
  %conv53.5 = zext i8 %145 to i32
  %add54.5 = add nuw nsw i32 %offset.1.4, 2
  %add55.5 = add nuw nsw i32 %add54.5, %conv53.5
  %146 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add55.5, i32 %147)
  %cmp57.not.5 = icmp ult i32 %add55.5, %147
  br i1 %cmp57.not.5, label %if.end43.5.for.inc.5_crit_edge, label %if.end43.5.if.end61_crit_edge

if.end43.5.if.end61_crit_edge:                    ; preds = %if.end43.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end43.5.for.inc.5_crit_edge:                   ; preds = %if.end43.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end43.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %offset.1.5 = phi i32 [ %offset.1.4, %for.inc.4.for.inc.5_crit_edge ], [ %add55.5, %if.end43.5.for.inc.5_crit_edge ]
  %arrayidx.6 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 6
  %148 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %arrayidx.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %cmp40.not.6 = icmp eq i16 %149, 0
  br i1 %cmp40.not.6, label %if.end43.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.end43.6:                                       ; preds = %for.inc.5
  %150 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 1, ptr %arrayidx.6, align 2
  %151 = ptrtoint ptr %ie33 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ie33, align 8
  %add.ptr.6 = getelementptr i8, ptr %152, i32 %offset.1.5
  %ie50.6 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 6, i32 2
  %len.6 = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.6, i32 0, i32 1
  %153 = ptrtoint ptr %len.6 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %len.6, align 1
  %conv51.6 = zext i8 %154 to i32
  %add.6 = add nuw nsw i32 %conv51.6, 2
  %155 = call ptr @memcpy(ptr %ie50.6, ptr %add.ptr.6, i32 %add.6)
  %156 = load i8, ptr %len.6, align 1
  %conv53.6 = zext i8 %156 to i32
  %add54.6 = add nuw nsw i32 %offset.1.5, 2
  %add55.6 = add nuw nsw i32 %add54.6, %conv53.6
  %157 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add55.6, i32 %158)
  %cmp57.not.6 = icmp ult i32 %add55.6, %158
  br i1 %cmp57.not.6, label %if.end43.6.for.inc.6_crit_edge, label %if.end43.6.if.end61_crit_edge

if.end43.6.if.end61_crit_edge:                    ; preds = %if.end43.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end43.6.for.inc.6_crit_edge:                   ; preds = %if.end43.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end43.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %offset.1.6 = phi i32 [ %offset.1.5, %for.inc.5.for.inc.6_crit_edge ], [ %add55.6, %if.end43.6.for.inc.6_crit_edge ]
  %arrayidx.7 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 7
  %159 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %arrayidx.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %cmp40.not.7 = icmp eq i16 %160, 0
  br i1 %cmp40.not.7, label %if.end43.7, label %for.inc.6.if.end61_crit_edge

for.inc.6.if.end61_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end43.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  %161 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 1, ptr %arrayidx.7, align 2
  %162 = ptrtoint ptr %ie33 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ie33, align 8
  %add.ptr.7 = getelementptr i8, ptr %163, i32 %offset.1.6
  %ie50.7 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 7, i32 2
  %len.7 = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.7, i32 0, i32 1
  %164 = ptrtoint ptr %len.7 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %len.7, align 1
  %conv51.7 = zext i8 %165 to i32
  %add.7 = add nuw nsw i32 %conv51.7, 2
  %166 = call ptr @memcpy(ptr %ie50.7, ptr %add.ptr.7, i32 %add.7)
  br label %if.end61

if.end61:                                         ; preds = %if.end43.7, %for.inc.6.if.end61_crit_edge, %if.end43.6.if.end61_crit_edge, %if.end43.5.if.end61_crit_edge, %if.end43.4.if.end61_crit_edge, %if.end43.3.if.end61_crit_edge, %if.end43.2.if.end61_crit_edge, %if.end43.1.if.end61_crit_edge, %if.end43.if.end61_crit_edge, %land.lhs.true35.if.end61_crit_edge, %if.end31.if.end61_crit_edge
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 2
  %167 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %n_channels, align 8
  %169 = call i32 @llvm.umin.i32(i32 %168, i32 50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp65229.not = icmp eq i32 %169, 0
  br i1 %cmp65229.not, label %if.end61.for.end91_crit_edge, label %if.end61.for.body67_crit_edge

if.end61.for.body67_crit_edge:                    ; preds = %if.end61
  br label %for.body67

if.end61.for.end91_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end91

for.body67:                                       ; preds = %if.end86.for.body67_crit_edge, %if.end61.for.body67_crit_edge
  %i.1230 = phi i32 [ %inc90, %if.end86.for.body67_crit_edge ], [ 0, %if.end61.for.body67_crit_edge ]
  %arrayidx68 = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 22, i32 %i.1230
  %170 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx68, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %171, i32 0, i32 3
  %172 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %hw_value, align 2
  %conv69 = trunc i16 %173 to i8
  %arrayidx70 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %call7.i.i, i32 0, i32 6, i32 %i.1230
  %174 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv69, ptr %arrayidx70, align 2
  %175 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %171, align 4
  %conv71 = trunc i32 %176 to i8
  %radio_type = getelementptr %struct.mwifiex_user_scan_cfg, ptr %call7.i.i, i32 0, i32 6, i32 %i.1230, i32 1
  %177 = ptrtoint ptr %radio_type to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv71, ptr %radio_type, align 1
  %flags74 = getelementptr inbounds %struct.ieee80211_channel, ptr %171, i32 0, i32 4
  %178 = ptrtoint ptr %flags74 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %flags74, align 4
  %and75 = and i32 %179, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %lor.lhs.false77, label %for.body67.if.end86_crit_edge

for.body67.if.end86_crit_edge:                    ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

lor.lhs.false77:                                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #14
  %180 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool79.not = icmp eq i32 %181, 0
  %spec.select = select i1 %tobool79.not, i8 2, i8 1
  br label %if.end86

if.end86:                                         ; preds = %lor.lhs.false77, %for.body67.if.end86_crit_edge
  %.sink = phi i8 [ 2, %for.body67.if.end86_crit_edge ], [ %spec.select, %lor.lhs.false77 ]
  %scan_type85 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %call7.i.i, i32 0, i32 6, i32 %i.1230, i32 2
  %182 = ptrtoint ptr %scan_type85 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %.sink, ptr %scan_type85, align 8
  %scan_time = getelementptr %struct.mwifiex_user_scan_cfg, ptr %call7.i.i, i32 0, i32 6, i32 %i.1230, i32 4
  %183 = ptrtoint ptr %scan_time to i32
  call void @__asan_storeN_noabort(i32 %183, i32 4)
  store i32 0, ptr %scan_time, align 2
  %inc90 = add nuw nsw i32 %i.1230, 1
  %exitcond.not = icmp eq i32 %inc90, %169
  br i1 %exitcond.not, label %if.end86.for.end91_crit_edge, label %if.end86.for.body67_crit_edge

if.end86.for.body67_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body67

if.end86.for.end91_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end91

for.end91:                                        ; preds = %if.end86.for.end91_crit_edge, %if.end61.for.end91_crit_edge
  %184 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %6, align 8
  %scan_chan_gap_enabled = getelementptr inbounds %struct.mwifiex_adapter, ptr %185, i32 0, i32 145
  %186 = ptrtoint ptr %scan_chan_gap_enabled to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %scan_chan_gap_enabled, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool93.not = icmp eq i8 %187, 0
  br i1 %tobool93.not, label %for.end91.if.end101_crit_edge, label %land.lhs.true95

for.end91.if.end101_crit_edge:                    ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

land.lhs.true95:                                  ; preds = %for.end91
  %priv_num1.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %185, i32 0, i32 5
  %188 = ptrtoint ptr %priv_num1.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %priv_num1.i, align 4
  %conv.i = zext i8 %189 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %cmp28.not.i = icmp eq i8 %189, 0
  br i1 %cmp28.not.i, label %land.lhs.true95.if.end101_crit_edge, label %land.lhs.true95.for.body.i_crit_edge

land.lhs.true95.for.body.i_crit_edge:             ; preds = %land.lhs.true95
  br label %for.body.i

land.lhs.true95.if.end101_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %land.lhs.true95.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %land.lhs.true95.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %185, i32 0, i32 4, i32 %i.029.i
  %190 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %191, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %bss_role.i = getelementptr inbounds %struct.mwifiex_private, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %bss_role.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %bss_role.i, align 1
  %194 = and i8 %193, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %cmp6.not.i = icmp eq i8 %194, 0
  br i1 %cmp6.not.i, label %land.lhs.true15.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %bss_started.i = getelementptr inbounds %struct.mwifiex_private, ptr %191, i32 0, i32 5
  %195 = ptrtoint ptr %bss_started.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %bss_started.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool9.not.i = icmp eq i8 %196, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.then99_crit_edge

land.lhs.true.i.if.then99_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then99

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %if.then.i
  %media_connected.i = getelementptr inbounds %struct.mwifiex_private, ptr %191, i32 0, i32 8
  %197 = ptrtoint ptr %media_connected.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %media_connected.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool17.not.i = icmp eq i8 %198, 0
  br i1 %tobool17.not.i, label %land.lhs.true15.i.for.inc.i_crit_edge, label %land.lhs.true15.i.if.then99_crit_edge

land.lhs.true15.i.if.then99_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then99

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true15.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end101_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end101_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then99:                                        ; preds = %land.lhs.true15.i.if.then99_crit_edge, %land.lhs.true.i.if.then99_crit_edge
  %scan_chan_gap_time = getelementptr inbounds %struct.mwifiex_adapter, ptr %185, i32 0, i32 81
  %199 = ptrtoint ptr %scan_chan_gap_time to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %scan_chan_gap_time, align 2
  %scan_chan_gap = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %call7.i.i, i32 0, i32 7
  %201 = ptrtoint ptr %scan_chan_gap to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %200, ptr %scan_chan_gap, align 2
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %for.inc.i.if.end101_crit_edge, %land.lhs.true95.if.end101_crit_edge, %for.end91.if.end101_crit_edge
  %call102 = call i32 @mwifiex_scan_networks(ptr noundef %6, ptr noundef nonnull %call7.i.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end108, label %if.then104

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  %202 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %203, i32 noundef 4, ptr noundef nonnull @.str.75, i32 noundef %call102) #12
  %204 = ptrtoint ptr %scan_aborting to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 0, ptr %scan_aborting, align 8
  %205 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %scan_request, align 8
  br label %cleanup

if.end108:                                        ; preds = %if.end101
  %206 = ptrtoint ptr %ie33 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ie33, align 8
  %tobool110.not = icmp eq ptr %207, null
  br i1 %tobool110.not, label %if.end108.cleanup_crit_edge, label %land.lhs.true111

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true111:                                 ; preds = %if.end108
  %ie_len112 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 5
  %208 = ptrtoint ptr %ie_len112 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %ie_len112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool113.not = icmp eq i32 %209, 0
  br i1 %tobool113.not, label %land.lhs.true111.cleanup_crit_edge, label %for.body118.preheader

land.lhs.true111.cleanup_crit_edge:               ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body118.preheader:                            ; preds = %land.lhs.true111
  %arrayidx120 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 0
  %210 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %arrayidx120, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %211)
  %cmp123 = icmp eq i16 %211, 1
  br i1 %cmp123, label %if.then125, label %for.body118.preheader.for.inc133_crit_edge

for.body118.preheader.for.inc133_crit_edge:       ; preds = %for.body118.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc133

if.then125:                                       ; preds = %for.body118.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %212 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 0, ptr %arrayidx120, align 2
  %ie131 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 0, i32 2
  %213 = call ptr @memset(ptr %ie131, i32 0, i32 256)
  br label %for.inc133

for.inc133:                                       ; preds = %if.then125, %for.body118.preheader.for.inc133_crit_edge
  %arrayidx120.1 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 1
  %214 = ptrtoint ptr %arrayidx120.1 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %arrayidx120.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %215)
  %cmp123.1 = icmp eq i16 %215, 1
  br i1 %cmp123.1, label %if.then125.1, label %for.inc133.for.inc133.1_crit_edge

for.inc133.for.inc133.1_crit_edge:                ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc133.1

if.then125.1:                                     ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #14
  %216 = ptrtoint ptr %arrayidx120.1 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 0, ptr %arrayidx120.1, align 2
  %ie131.1 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 1, i32 2
  %217 = call ptr @memset(ptr %ie131.1, i32 0, i32 256)
  br label %for.inc133.1

for.inc133.1:                                     ; preds = %if.then125.1, %for.inc133.for.inc133.1_crit_edge
  %arrayidx120.2 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 2
  %218 = ptrtoint ptr %arrayidx120.2 to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %arrayidx120.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %219)
  %cmp123.2 = icmp eq i16 %219, 1
  br i1 %cmp123.2, label %if.then125.2, label %for.inc133.1.for.inc133.2_crit_edge

for.inc133.1.for.inc133.2_crit_edge:              ; preds = %for.inc133.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc133.2

if.then125.2:                                     ; preds = %for.inc133.1
  call void @__sanitizer_cov_trace_pc() #14
  %220 = ptrtoint ptr %arrayidx120.2 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 0, ptr %arrayidx120.2, align 2
  %ie131.2 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 2, i32 2
  %221 = call ptr @memset(ptr %ie131.2, i32 0, i32 256)
  br label %for.inc133.2

for.inc133.2:                                     ; preds = %if.then125.2, %for.inc133.1.for.inc133.2_crit_edge
  %arrayidx120.3 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 3
  %222 = ptrtoint ptr %arrayidx120.3 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %arrayidx120.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %223)
  %cmp123.3 = icmp eq i16 %223, 1
  br i1 %cmp123.3, label %if.then125.3, label %for.inc133.2.for.inc133.3_crit_edge

for.inc133.2.for.inc133.3_crit_edge:              ; preds = %for.inc133.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc133.3

if.then125.3:                                     ; preds = %for.inc133.2
  call void @__sanitizer_cov_trace_pc() #14
  %224 = ptrtoint ptr %arrayidx120.3 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 0, ptr %arrayidx120.3, align 2
  %ie131.3 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 3, i32 2
  %225 = call ptr @memset(ptr %ie131.3, i32 0, i32 256)
  br label %for.inc133.3

for.inc133.3:                                     ; preds = %if.then125.3, %for.inc133.2.for.inc133.3_crit_edge
  %arrayidx120.4 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 4
  %226 = ptrtoint ptr %arrayidx120.4 to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %arrayidx120.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %227)
  %cmp123.4 = icmp eq i16 %227, 1
  br i1 %cmp123.4, label %if.then125.4, label %for.inc133.3.for.inc133.4_crit_edge

for.inc133.3.for.inc133.4_crit_edge:              ; preds = %for.inc133.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc133.4

if.then125.4:                                     ; preds = %for.inc133.3
  call void @__sanitizer_cov_trace_pc() #14
  %228 = ptrtoint ptr %arrayidx120.4 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 0, ptr %arrayidx120.4, align 2
  %ie131.4 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 4, i32 2
  %229 = call ptr @memset(ptr %ie131.4, i32 0, i32 256)
  br label %for.inc133.4

for.inc133.4:                                     ; preds = %if.then125.4, %for.inc133.3.for.inc133.4_crit_edge
  %arrayidx120.5 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 5
  %230 = ptrtoint ptr %arrayidx120.5 to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %arrayidx120.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %231)
  %cmp123.5 = icmp eq i16 %231, 1
  br i1 %cmp123.5, label %if.then125.5, label %for.inc133.4.for.inc133.5_crit_edge

for.inc133.4.for.inc133.5_crit_edge:              ; preds = %for.inc133.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc133.5

if.then125.5:                                     ; preds = %for.inc133.4
  call void @__sanitizer_cov_trace_pc() #14
  %232 = ptrtoint ptr %arrayidx120.5 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 0, ptr %arrayidx120.5, align 2
  %ie131.5 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 5, i32 2
  %233 = call ptr @memset(ptr %ie131.5, i32 0, i32 256)
  br label %for.inc133.5

for.inc133.5:                                     ; preds = %if.then125.5, %for.inc133.4.for.inc133.5_crit_edge
  %arrayidx120.6 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 6
  %234 = ptrtoint ptr %arrayidx120.6 to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %arrayidx120.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %235)
  %cmp123.6 = icmp eq i16 %235, 1
  br i1 %cmp123.6, label %if.then125.6, label %for.inc133.5.for.inc133.6_crit_edge

for.inc133.5.for.inc133.6_crit_edge:              ; preds = %for.inc133.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc133.6

if.then125.6:                                     ; preds = %for.inc133.5
  call void @__sanitizer_cov_trace_pc() #14
  %236 = ptrtoint ptr %arrayidx120.6 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 0, ptr %arrayidx120.6, align 2
  %ie131.6 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 6, i32 2
  %237 = call ptr @memset(ptr %ie131.6, i32 0, i32 256)
  br label %for.inc133.6

for.inc133.6:                                     ; preds = %if.then125.6, %for.inc133.5.for.inc133.6_crit_edge
  %arrayidx120.7 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 7
  %238 = ptrtoint ptr %arrayidx120.7 to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %arrayidx120.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %239)
  %cmp123.7 = icmp eq i16 %239, 1
  br i1 %cmp123.7, label %if.then125.7, label %for.inc133.6.cleanup_crit_edge

for.inc133.6.cleanup_crit_edge:                   ; preds = %for.inc133.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then125.7:                                     ; preds = %for.inc133.6
  call void @__sanitizer_cov_trace_pc() #14
  %240 = ptrtoint ptr %arrayidx120.7 to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 0, ptr %arrayidx120.7, align 2
  %ie131.7 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 7, i32 2
  %241 = call ptr @memset(ptr %ie131.7, i32 0, i32 256)
  br label %cleanup

cleanup:                                          ; preds = %if.then125.7, %for.inc133.6.cleanup_crit_edge, %land.lhs.true111.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %if.then104, %if.end14.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ %call102, %if.then104 ], [ -12, %if.end14.cleanup_crit_edge ], [ 0, %land.lhs.true111.cleanup_crit_edge ], [ 0, %if.end108.cleanup_crit_edge ], [ 0, %if.then125.7 ], [ 0, %for.inc133.6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_connect(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr nocapture noundef readonly %sme) #1 align 64 {
entry:
  %params.i.i106 = alloca %struct.cfg80211_connect_resp_params, align 4
  %params.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  %params.i = alloca %struct.cfg80211_connect_resp_params, align 4
  %bss = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bss) #12
  %5 = ptrtoint ptr %bss to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bss, align 4
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bss_role, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not = icmp eq i8 %8, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.76, ptr noundef %dev) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 103
  %current_bss = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 103, i32 25
  %9 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %current_bss, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.77, ptr noundef %dev) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %scan_block = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 114
  %11 = ptrtoint ptr %scan_block to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %scan_block, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %scan_block to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %scan_block, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 12
  %14 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %work_flags, align 4
  %and1.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool12.not = icmp eq i32 %and1.i, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end10.if.then16_crit_edge

if.end10.if.then16_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end10
  %16 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %work_flags, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15.not = icmp eq i32 %18, 0
  br i1 %tobool15.not, label %if.end19, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end10.if.then16_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.78, ptr noundef %dev) #12
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  %bssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 2
  %19 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bssid, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.79, ptr noundef %20) #12
  %call20 = tail call i32 @mwifiex_stop_bg_scan(ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wdev, align 8
  tail call void @cfg80211_sched_scan_stopped_locked(ptr noundef %22, i64 noundef 0) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19.if.end25_crit_edge
  %ssid_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 5
  %23 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ssid_len, align 4
  %ssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 4
  %25 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ssid, align 4
  %27 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bssid, align 4
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 18
  %29 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bss_mode, align 8
  %31 = ptrtoint ptr %sme to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sme, align 4
  %call27 = call fastcc i32 @mwifiex_cfg80211_assoc(ptr noundef %2, i32 noundef %24, ptr noundef %26, ptr noundef %28, i32 noundef %30, ptr noundef %32, ptr noundef %sme, i1 noundef zeroext false, ptr noundef nonnull %bss)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end25
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 15
  %33 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev, align 4
  %cfg_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 112
  %35 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bss, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i) #12
  %37 = getelementptr inbounds i8, ptr %params.i, i32 28
  %38 = call ptr @memset(ptr %37, i32 0, i32 24)
  %39 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %params.i, align 4
  %bssid2.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i, i32 0, i32 1
  %40 = ptrtoint ptr %bssid2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cfg_bssid, ptr %bssid2.i, align 4
  %bss3.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i, i32 0, i32 2
  %41 = ptrtoint ptr %bss3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %36, ptr %bss3.i, align 4
  %req_ie4.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i, i32 0, i32 3
  %timeout_reason8.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i, i32 0, i32 8
  %42 = ptrtoint ptr %timeout_reason8.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %timeout_reason8.i, align 4
  %43 = call ptr @memset(ptr %req_ie4.i, i32 0, i32 16)
  call void @cfg80211_connect_done(ptr noundef %34, ptr noundef nonnull %params.i, i32 noundef 3264) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i) #12
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %2, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %45, i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef %cfg_bssid) #12
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %2, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %47, i32 0, i32 47
  %48 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fw_cap_info, align 4
  %and35 = and i32 %49, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then29.cleanup_crit_edge, label %land.lhs.true

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then29
  %auto_tdls = getelementptr inbounds %struct.mwifiex_adapter, ptr %47, i32 0, i32 151
  %50 = ptrtoint ptr %auto_tdls to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %auto_tdls, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool38.not = icmp eq i8 %51, 0
  br i1 %tobool38.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true40

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true40:                                  ; preds = %land.lhs.true
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 1
  %52 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bss_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp42 = icmp eq i8 %53, 0
  br i1 %cmp42, label %if.then44, label %land.lhs.true40.cleanup_crit_edge

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then44:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  call void @mwifiex_setup_auto_tdls_timer(ptr noundef %2) #12
  br label %cleanup

if.else:                                          ; preds = %if.end25
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %2, align 8
  %cfg_bssid47 = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 112
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %55, i32 noundef 4, ptr noundef nonnull @.str.81, ptr noundef %cfg_bssid47) #12
  %56 = call ptr @memset(ptr %cfg_bssid47, i32 0, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp51 = icmp sgt i32 %call27, 0
  %netdev54 = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 15
  %57 = ptrtoint ptr %netdev54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %netdev54, align 4
  br i1 %cmp51, label %if.then53, label %if.else58

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = and i32 %call27, 65535
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i) #12
  %59 = getelementptr inbounds i8, ptr %params.i.i, i32 28
  %60 = call ptr @memset(ptr %59, i32 0, i32 24)
  %61 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv.i, ptr %params.i.i, align 4
  %bssid2.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %bssid2.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %cfg_bssid47, ptr %bssid2.i.i, align 4
  %bss3.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 2
  %timeout_reason8.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 8
  %63 = ptrtoint ptr %timeout_reason8.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %timeout_reason8.i.i, align 4
  %64 = call ptr @memset(ptr %bss3.i.i, i32 0, i32 20)
  call void @cfg80211_connect_done(ptr noundef %58, ptr noundef nonnull %params.i.i, i32 noundef 3264) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i) #12
  br label %cleanup

if.else58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i106) #12
  %65 = getelementptr inbounds i8, ptr %params.i.i106, i32 28
  %66 = call ptr @memset(ptr %65, i32 0, i32 24)
  %67 = ptrtoint ptr %params.i.i106 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %params.i.i106, align 4
  %bssid2.i.i107 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i106, i32 0, i32 1
  %68 = ptrtoint ptr %bssid2.i.i107 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %cfg_bssid47, ptr %bssid2.i.i107, align 4
  %bss3.i.i108 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i106, i32 0, i32 2
  %timeout_reason8.i.i109 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i106, i32 0, i32 8
  %69 = ptrtoint ptr %timeout_reason8.i.i109 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %timeout_reason8.i.i109, align 4
  %70 = call ptr @memset(ptr %bss3.i.i108, i32 0, i32 20)
  call void @cfg80211_connect_done(ptr noundef %58, ptr noundef nonnull %params.i.i106, i32 noundef 3264) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i106) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else58, %if.then53, %if.then44, %land.lhs.true40.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.then16, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -114, %if.then3 ], [ -14, %if.then16 ], [ 0, %if.then53 ], [ 0, %if.else58 ], [ 0, %if.then29.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true40.cleanup_crit_edge ], [ 0, %if.then44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bss) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_disconnect(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, i16 noundef zeroext %reason_code) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %call1 = tail call i32 @mwifiex_stop_bg_scan(ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 103
  %3 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wdev, align 8
  tail call void @cfg80211_sched_scan_stopped_locked(ptr noundef %4, i64 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @mwifiex_deauthenticate(ptr noundef %2, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %cfg_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 112
  %5 = call ptr @memset(ptr %cfg_bssid, i32 0, i32 6)
  %hs2_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 136
  %6 = ptrtoint ptr %hs2_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %hs2_enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -14, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_join_ibss(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bss_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  br i1 %cmp.not, label %if.end, label %done.thread

done.thread:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 4, ptr noundef nonnull @.str.87) #12
  br label %if.then7

if.end:                                           ; preds = %entry
  %bssid = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bssid, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.88, ptr noundef %8) #12
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 8
  %chandef.i = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 2
  %11 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chandef.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then.i, label %if.else28.i

if.then.i:                                        ; preds = %if.end
  %basic_rates.i = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 7
  %15 = ptrtoint ptr %basic_rates.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %basic_rates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.then.i.if.end19.i_crit_edge, label %for.cond.preheader.i

if.then.i.if.end19.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

for.cond.preheader.i:                             ; preds = %if.then.i
  %17 = load i32, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @mwifiex_band_2ghz, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp335.i = icmp sgt i32 %17, 0
  br i1 %cmp335.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.else11.i_crit_edge

for.cond.preheader.i.if.else11.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.036.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %bitrate.i = getelementptr [12 x %struct.ieee80211_rate], ptr @mwifiex_rates, i32 0, i32 %i.036.i, i32 1
  %18 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %bitrate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %19)
  %cmp4.i = icmp eq i16 %19, 60
  br i1 %cmp4.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.inc.i.if.else11.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.else11.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

for.end.i:                                        ; preds = %for.body.i
  %shl.i = shl nuw i32 1, %i.036.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %shl.i)
  %cmp8.i = icmp ult i32 %16, %shl.i
  br i1 %cmp8.i, label %for.end.i.if.end19.i_crit_edge, label %for.end.i.if.else11.i_crit_edge

for.end.i.if.else11.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

for.end.i.if.end19.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.else11.i:                                      ; preds = %for.end.i.if.else11.i_crit_edge, %for.inc.i.if.else11.i_crit_edge, %for.cond.preheader.i.if.else11.i_crit_edge
  %index.025.i = phi i32 [ %shl.i, %for.end.i.if.else11.i_crit_edge ], [ 0, %for.cond.preheader.i.if.else11.i_crit_edge ], [ 0, %for.inc.i.if.else11.i_crit_edge ]
  %rem.i = urem i32 %16, %index.025.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool13.not.i = icmp eq i32 %rem.i, 0
  %spec.select.i = select i1 %tobool13.not.i, i8 2, i8 3
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else11.i, %for.end.i.if.end19.i_crit_edge, %if.then.i.if.end19.i_crit_edge
  %config_bands.0.i = phi i8 [ 3, %if.then.i.if.end19.i_crit_edge ], [ 1, %for.end.i.if.end19.i_crit_edge ], [ %spec.select.i, %if.else11.i ]
  %width.i.i = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width.i.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %21, label %do.end.i.i [
    i32 0, label %if.end19.i.if.end36.i_crit_edge
    i32 1, label %if.end19.i.cfg80211_get_chandef_type.exit.i_crit_edge
    i32 2, label %if.end19.i.cfg80211_get_chandef_type.exit.i_crit_edge43
  ]

if.end19.i.cfg80211_get_chandef_type.exit.i_crit_edge43: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg80211_get_chandef_type.exit.i

if.end19.i.cfg80211_get_chandef_type.exit.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg80211_get_chandef_type.exit.i

if.end19.i.if.end36.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

do.end.i.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 778, i32 noundef 9, ptr noundef null) #12
  br label %if.end36.i

cfg80211_get_chandef_type.exit.i:                 ; preds = %if.end19.i.cfg80211_get_chandef_type.exit.i_crit_edge, %if.end19.i.cfg80211_get_chandef_type.exit.i_crit_edge43
  %23 = or i8 %config_bands.0.i, 10
  br label %if.end36.i

if.else28.i:                                      ; preds = %if.end
  %width.i3.i = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %width.i3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width.i3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %26 = icmp ult i32 %25, 3
  br i1 %26, label %switch.lookup, label %do.end.i10.i

do.end.i10.i:                                     ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 778, i32 noundef 9, ptr noundef null) #12
  br label %if.end36.i

switch.lookup:                                    ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.cast = trunc i32 %25 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 1315844, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %if.end36.i

if.end36.i:                                       ; preds = %switch.lookup, %do.end.i10.i, %cfg80211_get_chandef_type.exit.i, %do.end.i.i, %if.end19.i.if.end36.i_crit_edge
  %config_bands.1.i = phi i8 [ %23, %cfg80211_get_chandef_type.exit.i ], [ %config_bands.0.i, %do.end.i.i ], [ %config_bands.0.i, %if.end19.i.if.end36.i_crit_edge ], [ 4, %do.end.i10.i ], [ %switch.masked, %switch.lookup ]
  %conv37.i = zext i8 %config_bands.1.i to i32
  %fw_bands.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 82
  %27 = ptrtoint ptr %fw_bands.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fw_bands.i, align 4
  %conv38.i = zext i8 %28 to i32
  %or391.i = or i8 %28, %config_bands.1.i
  %or39.i = zext i8 %or391.i to i32
  %neg.i = xor i32 %conv38.i, -1
  %and.i = and i32 %or39.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool42.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %if.end36.i.if.end55.i_crit_edge

if.end36.i.if.end55.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

if.then43.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  %config_bands44.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 84
  %29 = ptrtoint ptr %config_bands44.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %config_bands.1.i, ptr %config_bands44.i, align 2
  %adhoc_start_band.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 83
  %30 = ptrtoint ptr %adhoc_start_band.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %config_bands.1.i, ptr %adhoc_start_band.i, align 1
  %31 = and i32 %conv37.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp ne i32 %31, 0
  %adhoc_11n_enabled53.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 116
  %..i = zext i1 %32 to i8
  %33 = ptrtoint ptr %adhoc_11n_enabled53.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %..i, ptr %adhoc_11n_enabled53.i, align 2
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then43.i, %if.end36.i.if.end55.i_crit_edge
  %width.i13.i = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %width.i13.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width.i13.i, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %35, label %do.end.i20.i [
    i32 0, label %if.end55.i.cfg80211_get_chandef_type.exit22.thread.i_crit_edge
    i32 1, label %if.end55.i.cfg80211_get_chandef_type.exit22.thread.i_crit_edge44
    i32 2, label %sw.bb2.i19.i
  ]

if.end55.i.cfg80211_get_chandef_type.exit22.thread.i_crit_edge44: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg80211_get_chandef_type.exit22.thread.i

if.end55.i.cfg80211_get_chandef_type.exit22.thread.i_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg80211_get_chandef_type.exit22.thread.i

sw.bb2.i19.i:                                     ; preds = %if.end55.i
  %center_freq1.i15.i = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %center_freq1.i15.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %center_freq1.i15.i, align 4
  %39 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chandef.i, align 4
  %center_freq.i16.i = getelementptr inbounds %struct.ieee80211_channel, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %center_freq.i16.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %center_freq.i16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %42)
  %cmp.i17.i = icmp ugt i32 %38, %42
  br i1 %cmp.i17.i, label %sw.bb2.i19.i.cfg80211_get_chandef_type.exit22.thread.i_crit_edge, label %sw.bb2.i19.i.done_crit_edge

sw.bb2.i19.i.done_crit_edge:                      ; preds = %sw.bb2.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

sw.bb2.i19.i.cfg80211_get_chandef_type.exit22.thread.i_crit_edge: ; preds = %sw.bb2.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg80211_get_chandef_type.exit22.thread.i

do.end.i20.i:                                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 778, i32 noundef 9, ptr noundef null) #12
  br label %cfg80211_get_chandef_type.exit22.thread.i

cfg80211_get_chandef_type.exit22.thread.i:        ; preds = %do.end.i20.i, %sw.bb2.i19.i.cfg80211_get_chandef_type.exit22.thread.i_crit_edge, %if.end55.i.cfg80211_get_chandef_type.exit22.thread.i_crit_edge, %if.end55.i.cfg80211_get_chandef_type.exit22.thread.i_crit_edge44
  %switch.selectcmp.i31.i = phi i1 [ false, %do.end.i20.i ], [ false, %if.end55.i.cfg80211_get_chandef_type.exit22.thread.i_crit_edge ], [ true, %sw.bb2.i19.i.cfg80211_get_chandef_type.exit22.thread.i_crit_edge ], [ false, %if.end55.i.cfg80211_get_chandef_type.exit22.thread.i_crit_edge44 ]
  %switch.select.i32.i = zext i1 %switch.selectcmp.i31.i to i8
  br label %done

done:                                             ; preds = %cfg80211_get_chandef_type.exit22.thread.i, %sw.bb2.i19.i.done_crit_edge
  %43 = phi i8 [ %switch.select.i32.i, %cfg80211_get_chandef_type.exit22.thread.i ], [ 3, %sw.bb2.i19.i.done_crit_edge ]
  %sec_chan_offset.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 117
  %44 = ptrtoint ptr %sec_chan_offset.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %sec_chan_offset.i, align 1
  %45 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chandef.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %center_freq.i, align 4
  %mul.i.i = mul i32 %48, 1000
  %call.i.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i) #12
  %conv62.i = trunc i32 %call.i.i to i8
  %adhoc_channel.i = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 56
  %49 = ptrtoint ptr %adhoc_channel.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv62.i, ptr %adhoc_channel.i, align 8
  %conv65.i = and i32 %call.i.i, 255
  %50 = ptrtoint ptr %sec_chan_offset.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sec_chan_offset.i, align 1
  %conv67.i = zext i8 %51 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 1073741824, ptr noundef nonnull @.str.91, i32 noundef %conv37.i, i32 noundef %conv65.i, i32 noundef %conv67.i) #12
  %ssid_len = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 4
  %52 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ssid_len, align 4
  %conv = zext i8 %53 to i32
  %54 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %params, align 4
  %56 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bssid, align 4
  %58 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bss_mode, align 8
  %60 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chandef.i, align 4
  %privacy = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 9
  %62 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %privacy, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool = icmp ne i8 %63, 0
  %call5 = tail call fastcc i32 @mwifiex_cfg80211_assoc(ptr noundef %2, i32 noundef %conv, ptr noundef %55, ptr noundef %57, i32 noundef %59, ptr noundef %61, ptr noundef null, i1 noundef zeroext %tobool, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %done.if.then7_crit_edge, label %if.else

done.if.then7_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7:                                         ; preds = %done.if.then7_crit_edge, %done.thread
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 15
  %64 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %netdev, align 4
  %cfg_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 112
  %chandef8 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 2
  %66 = ptrtoint ptr %chandef8 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chandef8, align 4
  tail call void @cfg80211_ibss_joined(ptr noundef %65, ptr noundef %cfg_bssid, ptr noundef %67, i32 noundef 3264) #12
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %69, i32 noundef 1, ptr noundef nonnull @.str.89, ptr noundef %cfg_bssid) #12
  br label %if.end14

if.else:                                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %71, i32 noundef 4, ptr noundef nonnull @.str.90) #12
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then7
  %ret.035 = phi i32 [ %call5, %if.else ], [ 0, %if.then7 ]
  ret i32 %ret.035
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_leave_ibss(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %cfg_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 112
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.93, ptr noundef %cfg_bssid) #12
  %call1 = tail call i32 @mwifiex_deauthenticate(ptr noundef %2, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = call ptr @memset(ptr %cfg_bssid, i32 0, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_wiphy_params(ptr noundef readonly %wiphy, i32 noundef %changed) #1 align 64 {
entry:
  %frag_thr.addr.i = alloca i32, align 4
  %rts_thr.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %mwifiex_cfg80211_get_adapter.exit, !prof !382

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !383
  unreachable

mwifiex_cfg80211_get_adapter.exit:                ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp29.not.i = icmp eq i8 %4, 0
  br i1 %cmp29.not.i, label %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge, label %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge

mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  br label %for.body.i

mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %i.030.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.mwifiex_get_priv.exit_crit_edge

for.body.i.mwifiex_get_priv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %for.body.i.mwifiex_get_priv.exit_crit_edge, %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge ], [ %6, %for.body.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %cond.i, i32 0, i32 2
  %7 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bss_role, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.177)
  switch i8 %8, label %mwifiex_get_priv.exit.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %sw.bb25
  ]

mwifiex_get_priv.exit.sw.epilog_crit_edge:        ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %mwifiex_get_priv.exit
  %bss_started = getelementptr inbounds %struct.mwifiex_private, ptr %cond.i, i32 0, i32 5
  %10 = ptrtoint ptr %bss_started to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bss_started, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.94) #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 292) #17
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @mwifiex_set_sys_config_invalid_data(ptr noundef nonnull %call7.i.i) #12
  %and = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %rts_threshold = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 36
  %13 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rts_threshold, align 4
  %conv8 = trunc i32 %14 to i16
  %rts_threshold9 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %rts_threshold9 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv8, ptr %rts_threshold9, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  %and11 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %if.then13

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %frag_threshold = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 35
  %16 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frag_threshold, align 16
  %conv14 = trunc i32 %17 to i16
  %frag_threshold15 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %frag_threshold15 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv14, ptr %frag_threshold15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10.if.end16_crit_edge
  %and17 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %retry_long = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 34
  %19 = ptrtoint ptr %retry_long to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %retry_long, align 1
  %retry_limit = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %retry_limit to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %retry_limit, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %call21 = tail call i32 @mwifiex_send_cmd(ptr noundef %cond.i, i16 noundef zeroext 176, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.sw.epilog_crit_edge, label %if.then23

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.95) #12
  br label %cleanup

sw.bb25:                                          ; preds = %mwifiex_get_priv.exit
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %cond.i, i32 0, i32 8
  %22 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool26.not = icmp eq i8 %23, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.96) #12
  br label %cleanup

if.end28:                                         ; preds = %sw.bb25
  %and29 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end37_crit_edge, label %if.then31

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then31:                                        ; preds = %if.end28
  %rts_threshold32 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 36
  %24 = ptrtoint ptr %rts_threshold32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rts_threshold32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rts_thr.addr.i)
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 2347) #12
  %27 = ptrtoint ptr %rts_thr.addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rts_thr.addr.i, align 4
  %call.i = call i32 @mwifiex_send_cmd(ptr noundef %cond.i, i16 noundef zeroext 22, i16 noundef zeroext 1, i32 noundef 5, ptr noundef nonnull %rts_thr.addr.i, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rts_thr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool34.not = icmp eq i32 %call.i, 0
  br i1 %tobool34.not, label %if.then31.if.end37_crit_edge, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end37:                                         ; preds = %if.then31.if.end37_crit_edge, %if.end28.if.end37_crit_edge
  %and38 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.sw.epilog_crit_edge, label %if.then40

if.end37.sw.epilog_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then40:                                        ; preds = %if.end37
  %frag_threshold41 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 35
  %28 = ptrtoint ptr %frag_threshold41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %frag_threshold41, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frag_thr.addr.i)
  %30 = add i32 %29, -2347
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2091, i32 %30)
  %31 = icmp ult i32 %30, -2091
  %spec.store.select.i = select i1 %31, i32 2346, i32 %29
  %32 = ptrtoint ptr %frag_thr.addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.store.select.i, ptr %frag_thr.addr.i, align 4
  %call.i78 = call i32 @mwifiex_send_cmd(ptr noundef %cond.i, i16 noundef zeroext 22, i16 noundef zeroext 1, i32 noundef 8, ptr noundef nonnull %frag_thr.addr.i, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frag_thr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool43.not = icmp eq i32 %call.i78, 0
  br i1 %tobool43.not, label %if.then40.sw.epilog_crit_edge, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then40.sw.epilog_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then40.sw.epilog_crit_edge, %if.end37.sw.epilog_crit_edge, %if.end20.sw.epilog_crit_edge, %mwifiex_get_priv.exit.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then40.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.then27, %if.then23, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.then27 ], [ -22, %if.then ], [ %call21, %if.then23 ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i, %if.then31.cleanup_crit_edge ], [ %call.i78, %if.then40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_tx_power(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %wdev, i32 noundef %type, i32 noundef %mbm) #1 align 64 {
entry:
  %power_cfg = alloca %struct.mwifiex_power_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %mwifiex_cfg80211_get_adapter.exit, !prof !382

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !383
  unreachable

mwifiex_cfg80211_get_adapter.exit:                ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %power_cfg) #12
  %3 = ptrtoint ptr %power_cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %power_cfg, align 4, !annotation !381
  %4 = getelementptr inbounds %struct.mwifiex_power_cfg, ptr %power_cfg, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !381
  %6 = getelementptr inbounds %struct.mwifiex_power_cfg, ptr %power_cfg, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !381
  %div = sdiv i32 %mbm, 100
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %type, label %mwifiex_cfg80211_get_adapter.exit.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 0, label %sw.bb5
  ]

mwifiex_cfg80211_get_adapter.exit.sw.epilog_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %mwifiex_cfg80211_get_adapter.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %power_cfg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %power_cfg, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %4, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %6, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %mwifiex_cfg80211_get_adapter.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %power_cfg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %power_cfg, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %4, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div, ptr %6, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %mwifiex_cfg80211_get_adapter.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %power_cfg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %power_cfg, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb1, %sw.bb, %mwifiex_cfg80211_get_adapter.exit.sw.epilog_crit_edge
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 5
  %16 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp29.not.i = icmp eq i8 %17, 0
  br i1 %cmp29.not.i, label %sw.epilog.mwifiex_get_priv.exit_crit_edge, label %sw.epilog.for.body.i_crit_edge

sw.epilog.for.body.i_crit_edge:                   ; preds = %sw.epilog
  br label %for.body.i

sw.epilog.mwifiex_get_priv.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.epilog.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.epilog.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %i.030.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.mwifiex_get_priv.exit_crit_edge

for.body.i.mwifiex_get_priv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %for.body.i.mwifiex_get_priv.exit_crit_edge, %sw.epilog.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %sw.epilog.mwifiex_get_priv.exit_crit_edge ], [ %19, %for.body.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %call8 = call i32 @mwifiex_set_tx_power(ptr noundef %cond.i, ptr noundef nonnull %power_cfg) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %power_cfg) #12
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_get_tx_power(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %wdev, ptr nocapture noundef writeonly %dbm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %mwifiex_cfg80211_get_adapter.exit, !prof !382

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !383
  unreachable

mwifiex_cfg80211_get_adapter.exit:                ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp29.not.i = icmp eq i8 %4, 0
  br i1 %cmp29.not.i, label %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge, label %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge

mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  br label %for.body.i

mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %i.030.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.mwifiex_get_priv.exit_crit_edge

for.body.i.mwifiex_get_priv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %for.body.i.mwifiex_get_priv.exit_crit_edge, %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge ], [ %6, %for.body.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %call2 = tail call i32 @mwifiex_send_cmd(ptr noundef %cond.i, i16 noundef zeroext 30, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %mwifiex_get_priv.exit.cleanup_crit_edge, label %if.end

mwifiex_get_priv.exit.cleanup_crit_edge:          ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  %tx_power_level = getelementptr inbounds %struct.mwifiex_private, ptr %cond.i, i32 0, i32 20
  %7 = ptrtoint ptr %tx_power_level to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tx_power_level, align 8
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %dbm to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %dbm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mwifiex_get_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2, %mwifiex_get_priv.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_tm_cmd(ptr noundef %wiphy, ptr nocapture noundef readonly %wdev, ptr noundef %data, i32 noundef %len) #1 align 64 {
entry:
  %tb = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #12
  %5 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !381
  %6 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !381
  %8 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !381
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %data, i32 noundef %len, ptr noundef nonnull @mwifiex_tm_policy, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %6, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %add.ptr.i.i65 = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i65 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cond = icmp eq i32 %13, 0
  br i1 %cond, label %sw.bb, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %8, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %sw.bb.cleanup_crit_edge, label %if.end13

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 2052) #17
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %8, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 2
  %conv.i = zext i16 %20 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.i, ptr %call7.i.i, align 8
  %cmd = getelementptr inbounds %struct.mwifiex_ds_misc_cmd, ptr %call7.i.i, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %18, i32 4
  %22 = call ptr @memcpy(ptr %cmd, ptr %add.ptr.i, i32 %sub.i)
  %call25 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %4, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %do.end

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %4, align 8
  %dev = getelementptr inbounds %struct.mwifiex_adapter, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.97) #19
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call7.i.i, align 8
  %call.i66 = call ptr @__cfg80211_alloc_reply_skb(ptr noundef %wiphy, i32 noundef 45, i32 noundef 69, i32 noundef %28) #12
  %tobool31.not = icmp eq ptr %call.i66, null
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call7.i.i, align 8
  %call37 = call i32 @nla_put(ptr noundef nonnull %call.i66, i32 noundef 2, i32 noundef %30, ptr noundef %cmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  call void @kfree_skb_reason(ptr noundef nonnull %call.i66, i32 noundef 0) #12
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %call.i67 = call i32 @cfg80211_vendor_cmd_reply(ptr noundef nonnull %call.i66) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then39, %if.then32, %do.end, %if.end13.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end ], [ -90, %if.then39 ], [ %call.i67, %if.end40 ], [ -12, %if.then32 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ -95, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_bitrate_mask(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %peer, ptr nocapture noundef readonly %mask) #1 align 64 {
entry:
  %bitmap_rates = alloca [18 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %bitmap_rates) #12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.101) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %band2 = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 50, i32 3
  %7 = ptrtoint ptr %band2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %band2, align 2
  %call3 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %8) #12
  %conv = zext i8 %call3 to i32
  %9 = call ptr @memset(ptr %bitmap_rates, i32 0, i32 36)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call3)
  %cmp = icmp eq i8 %call3, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %12 = trunc i32 %11 to i16
  %conv6 = and i16 %12, 15
  %13 = ptrtoint ptr %bitmap_rates to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv6, ptr %bitmap_rates, align 2
  %14 = lshr i16 %12, 4
  %conv16 = and i16 %14, 255
  br label %if.end23

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx19 = getelementptr [6 x %struct.anon.159], ptr %mask, i32 0, i32 %conv
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx19, align 4
  %conv21 = trunc i32 %16 to i16
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then5
  %conv21.sink = phi i16 [ %conv16, %if.then5 ], [ %conv21, %if.else ]
  %17 = getelementptr inbounds [18 x i16], ptr %bitmap_rates, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv21.sink, ptr %17, align 2
  %ht_mcs = getelementptr [6 x %struct.anon.159], ptr %mask, i32 0, i32 %conv, i32 1
  %19 = ptrtoint ptr %ht_mcs to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ht_mcs, align 4
  %conv27 = zext i8 %20 to i16
  %arrayidx28 = getelementptr inbounds [18 x i16], ptr %bitmap_rates, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv27, ptr %arrayidx28, align 2
  %hw_dev_mcs_support = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 114
  %22 = ptrtoint ptr %hw_dev_mcs_support to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hw_dev_mcs_support, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %23)
  %cmp30 = icmp eq i8 %23, 34
  br i1 %cmp30, label %if.then32, label %if.end23.if.end41_crit_edge

if.end23.if.end41_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then32:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx36 = getelementptr [6 x %struct.anon.159], ptr %mask, i32 0, i32 %conv, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %25 to i16
  %shl = shl nuw i16 %conv37, 8
  %or = or i16 %shl, %conv27
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %or, ptr %arrayidx28, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.then32, %if.end23.if.end41_crit_edge
  %fw_api_ver = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 138
  %27 = ptrtoint ptr %fw_api_ver to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fw_api_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %28)
  %cmp43 = icmp eq i8 %28, 15
  br i1 %cmp43, label %if.then45, label %if.end41.if.end61_crit_edge

if.end41.if.end61_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then45:                                        ; preds = %if.end41
  %vht_mcs = getelementptr [6 x %struct.anon.159], ptr %mask, i32 0, i32 %conv, i32 2
  %29 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vht_mcs, align 2
  %arrayidx49 = getelementptr inbounds [18 x i16], ptr %bitmap_rates, i32 0, i32 10
  %31 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %arrayidx49, align 2
  %32 = ptrtoint ptr %hw_dev_mcs_support to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hw_dev_mcs_support, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %33)
  %cmp52 = icmp eq i8 %33, 34
  br i1 %cmp52, label %if.then54, label %if.then45.if.end61_crit_edge

if.then45.if.end61_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then54:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx58 = getelementptr [6 x %struct.anon.159], ptr %mask, i32 0, i32 %conv, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx58, align 2
  %arrayidx59 = getelementptr inbounds [18 x i16], ptr %bitmap_rates, i32 0, i32 11
  %36 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %arrayidx59, align 2
  br label %if.end61

if.end61:                                         ; preds = %if.then54, %if.then45.if.end61_crit_edge, %if.end41.if.end61_crit_edge
  %call63 = call i32 @mwifiex_send_cmd(ptr noundef %2, i16 noundef zeroext 214, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %bitmap_rates, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  %retval.0 = phi i32 [ %call63, %if.end61 ], [ -22, %if.then ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %bitmap_rates) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_dump_survey(ptr noundef %wiphy, ptr nocapture noundef readonly %dev, i32 noundef %idx, ptr nocapture noundef writeonly %survey) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %chan_stats = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 148
  %5 = ptrtoint ptr %chan_stats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan_stats, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef -2147483648, ptr noundef nonnull @.str.102, i32 noundef %idx) #12
  %7 = call ptr @memset(ptr %survey, i32 0, i32 72)
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 2
  %8 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bss_role, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 8
  %11 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp ne i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp5 = icmp eq i32 %idx, 0
  %or.cond = and i1 %cmp5, %tobool.not
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then:                                          ; preds = %land.lhs.true
  %band7 = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 50, i32 3
  %13 = ptrtoint ptr %band7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %band7, align 2
  %channel = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 50, i32 0, i32 5
  %15 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel, align 8
  %call9 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %14) #12
  %conv10 = zext i8 %call9 to i32
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %16, i32 noundef %conv10) #12
  %17 = urem i32 %call.i, 1000
  %mul.i = sub i32 %call.i, %17
  %call.i76 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %wiphy, i32 noundef %mul.i) #12
  %18 = ptrtoint ptr %survey to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i76, ptr %survey, align 8
  %bcn_nf_last = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 42
  %19 = ptrtoint ptr %bcn_nf_last to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bcn_nf_last, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool14.not = icmp eq i16 %20, 0
  br i1 %tobool14.not, label %if.then.cleanup_crit_edge, label %if.then15

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %filled = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %21 = ptrtoint ptr %filled to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %filled, align 8
  %22 = ptrtoint ptr %bcn_nf_last to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bcn_nf_last, align 4
  %conv17 = trunc i16 %23 to i8
  %noise = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 9
  %24 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv17, ptr %noise, align 4
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %entry.if.end18_crit_edge
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 8
  %num_in_chan_stats = getelementptr inbounds %struct.mwifiex_adapter, ptr %26, i32 0, i32 149
  %27 = ptrtoint ptr %num_in_chan_stats to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_in_chan_stats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %idx)
  %cmp20.not = icmp ugt i32 %28, %idx
  br i1 %cmp20.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %cca_scan_dur = getelementptr %struct.mwifiex_chan_stats, ptr %6, i32 %idx, i32 5
  %29 = ptrtoint ptr %cca_scan_dur to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %cca_scan_dur, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool24.not = icmp eq i16 %30, 0
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.mwifiex_chan_stats, ptr %6, i32 %idx
  %bandcfg = getelementptr %struct.mwifiex_chan_stats, ptr %6, i32 %idx, i32 1
  %31 = ptrtoint ptr %bandcfg to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bandcfg, align 1
  %conv28 = zext i8 %32 to i32
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 1
  %conv30 = zext i8 %34 to i32
  %call.i77 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv30, i32 noundef %conv28) #12
  %35 = urem i32 %call.i77, 1000
  %mul.i79 = sub i32 %call.i77, %35
  %call.i80 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %wiphy, i32 noundef %mul.i79) #12
  %36 = ptrtoint ptr %survey to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i80, ptr %survey, align 8
  %filled34 = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %37 = ptrtoint ptr %filled34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 13, ptr %filled34, align 8
  %noise36 = getelementptr %struct.mwifiex_chan_stats, ptr %6, i32 %idx, i32 3
  %38 = ptrtoint ptr %noise36 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %noise36, align 1
  %noise37 = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 9
  %40 = ptrtoint ptr %noise37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %noise37, align 4
  %41 = ptrtoint ptr %cca_scan_dur to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %cca_scan_dur, align 1
  %conv40 = zext i16 %42 to i64
  %time = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 1
  %43 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv40, ptr %time, align 8
  %cca_busy_dur = getelementptr %struct.mwifiex_chan_stats, ptr %6, i32 %idx, i32 6
  %44 = ptrtoint ptr %cca_busy_dur to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %cca_busy_dur, align 1
  %conv42 = zext i16 %45 to i64
  %time_busy = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 2
  %46 = ptrtoint ptr %time_busy to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv42, ptr %time_busy, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then15, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ 0, %if.then15 ], [ 0, %if.then.cleanup_crit_edge ], [ -2, %if.end18.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_remain_on_channel(ptr nocapture noundef readnone %wiphy, ptr noundef %wdev, ptr noundef %chan, i32 noundef %duration, ptr noundef %cookie) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = inttoptr i32 %3 to ptr
  %tobool.not = icmp eq ptr %chan, null
  %tobool1.not = icmp eq ptr %cookie, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 4, ptr noundef nonnull @.str.103) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %roc_cfg = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 129
  %7 = ptrtoint ptr %roc_cfg to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %roc_cfg, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool3.not = icmp eq i64 %8, 0
  br i1 %tobool3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 1073741824, ptr noundef nonnull @.str.104, i64 noundef %8) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @mwifiex_remain_on_chan_cfg(ptr noundef %4, i16 noundef zeroext 1, ptr noundef nonnull %chan, i32 noundef %duration) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 @prandom_u32() #12
  %or = or i32 %call12, 1
  %conv = zext i32 %or to i64
  %11 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %cookie, align 8
  %12 = ptrtoint ptr %roc_cfg to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %roc_cfg, align 8
  %chan16 = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 129, i32 1
  %13 = call ptr @memcpy(ptr %chan16, ptr %chan, i32 56)
  %14 = load i64, ptr %cookie, align 8
  tail call void @cfg80211_ready_on_channel(ptr noundef %wdev, i64 noundef %14, ptr noundef nonnull %chan, i32 noundef %duration, i32 noundef 2592) #12
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 8
  %17 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cookie, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 1073741824, ptr noundef nonnull @.str.105, i64 noundef %18) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi i32 [ -16, %if.then4 ], [ -22, %if.then ], [ 0, %if.then11 ], [ %call9, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_cancel_remain_on_channel(ptr nocapture noundef readnone %wiphy, ptr noundef %wdev, i64 noundef %cookie) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = inttoptr i32 %3 to ptr
  %roc_cfg = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 129
  %5 = ptrtoint ptr %roc_cfg to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %roc_cfg, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %cookie)
  %cmp.not = icmp eq i64 %6, %cookie
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %chan = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 129, i32 1
  %call3 = tail call i32 @mwifiex_remain_on_chan_cfg(ptr noundef %4, i16 noundef zeroext 4, ptr noundef %chan, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %wdev, i64 noundef %cookie, ptr noundef %chan, i32 noundef 2592) #12
  %7 = call ptr @memset(ptr %roc_cfg, i32 0, i32 64)
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %4, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull @.str.106, i64 noundef %cookie) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_mgmt_tx(ptr nocapture noundef readnone %wiphy, ptr noundef %wdev, ptr nocapture noundef readonly %params, ptr noundef %cookie) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %buf1 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 3
  %0 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf1, align 4
  %len2 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 4
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2304
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %8 = inttoptr i32 %7 to ptr
  %tobool.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.107) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bss_role, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.not = icmp eq i8 %13, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 2
  %16 = and i16 %15, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %16)
  %cmp.i = icmp eq i16 %16, 20480
  br i1 %cmp.i, label %if.then7, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %8, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %18, i32 noundef 1073741824, ptr noundef nonnull @.str.108) #12
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %conv10 = add i32 %3, 6
  %conv11 = and i32 %conv10, 65535
  %add13 = add nuw nsw i32 %conv11, 110
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add13, i32 noundef 2592) #12
  %tobool15.not = icmp eq ptr %call.i.i, null
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %8, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 4, ptr noundef nonnull @.str.109) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %21 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 24)
  %bss_num = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 4
  %23 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bss_num, align 1
  %bss_num20 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 13
  %25 = ptrtoint ptr %bss_num20 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %bss_num20, align 1
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 1
  %26 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bss_type, align 4
  %bss_type21 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 14
  %28 = ptrtoint ptr %bss_type21 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %bss_type21, align 2
  %pkt_len23 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %29 = ptrtoint ptr %pkt_len23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv11, ptr %pkt_len23, align 8
  %30 = trunc i32 %3 to i16
  %conv.i = add i16 %30, 6
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %32, i32 110
  store ptr %add.ptr.i.i68, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %34, i32 110
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 2) #12
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %conv.i, ptr %call.i, align 1
  %call1.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 4) #12
  %36 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 0, ptr %call1.i, align 1
  %call2.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %call2.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 229, ptr %call2.i, align 1
  %call.i.i69 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #12
  %38 = call ptr @memcpy(ptr %call.i.i69, ptr %1, i32 24)
  %call.i1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 6) #12
  %39 = call ptr @memset(ptr %call.i1.i, i32 255, i32 6)
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %sub.i = add i32 %3, -24
  %call.i2.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub.i) #12
  %40 = call ptr @memcpy(ptr %call.i2.i, ptr %add.ptr.i, i32 %sub.i)
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %41 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %priority.i, align 4
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #12
  %42 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %call.i.i.i, ptr %42, align 8
  %call25 = tail call i32 @prandom_u32() #12
  %or = or i32 %call25, 1
  %conv26 = zext i32 %or to i64
  %44 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv26, ptr %cookie, align 8
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %1, align 2
  %47 = and i16 %46, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %47)
  %cmp.i70 = icmp eq i16 %47, -12288
  br i1 %cmp.i70, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %call30 = tail call ptr @mwifiex_clone_skb_for_tx_status(ptr noundef %8, ptr noundef nonnull %call.i.i, i8 noundef zeroext 16, ptr noundef %cookie) #12
  br label %if.end31

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cfg80211_mgmt_tx_status(ptr noundef %wdev, i64 noundef %conv26, ptr noundef nonnull %1, i32 noundef %3, i1 noundef zeroext true, i32 noundef 2592) #12
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then29
  %skb.0 = phi ptr [ %call30, %if.then29 ], [ %call.i.i, %if.else ]
  %call32 = tail call i32 @mwifiex_queue_tx_pkt(ptr noundef %8, ptr noundef %skb.0) #12
  %48 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %8, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %49, i32 noundef 1073741824, ptr noundef nonnull @.str.110) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then16, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.end31 ], [ -12, %if.then16 ], [ -14, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_power_mgmt(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, i1 noundef zeroext %enabled, i32 noundef %timeout) #1 align 64 {
entry:
  %ps_mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ps_mode) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not = icmp eq i32 %timeout, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.111) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv = zext i1 %enabled to i32
  %5 = ptrtoint ptr %ps_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %ps_mode, align 4
  %call2 = call i32 @mwifiex_drv_set_power(ptr noundef %2, ptr noundef nonnull %ps_mode) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ps_mode) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_cqm_rssi_config(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, i32 noundef %rssi_thold, i32 noundef %rssi_hyst) #1 align 64 {
entry:
  %subsc_evt = alloca %struct.mwifiex_ds_misc_subsc_evt, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %subsc_evt) #12
  %cqm_rssi_thold = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 115
  %3 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %rssi_thold, ptr %cqm_rssi_thold, align 4
  %cqm_rssi_hyst = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 116
  %4 = ptrtoint ptr %cqm_rssi_hyst to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %rssi_hyst, ptr %cqm_rssi_hyst, align 8
  %5 = ptrtoint ptr %subsc_evt to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 73014444032, ptr %subsc_evt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rssi_thold)
  %tobool.not = icmp eq i32 %rssi_thold, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rssi_hyst)
  %tobool1.not = icmp eq i32 %rssi_hyst, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %subsc_evt, i32 0, i32 3, i32 1
  %7 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %subsc_evt, i32 0, i32 3
  %8 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %subsc_evt, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %subsc_evt, i32 0, i32 2
  %10 = ptrtoint ptr %subsc_evt to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %subsc_evt, align 8
  %11 = tail call i32 @llvm.abs.i32(i32 %rssi_thold, i1 false)
  %conv = trunc i32 %11 to i8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %9, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %7, align 2
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %8, align 1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %6, align 1
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %subsc_evt to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 3, ptr %subsc_evt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %call18 = call i32 @mwifiex_send_cmd(ptr noundef %2, i16 noundef zeroext 117, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %subsc_evt, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %subsc_evt) #12
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_cfg80211_update_mgmt_frame_registrations(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %wdev, ptr nocapture noundef readonly %upd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = inttoptr i32 %3 to ptr
  %interface_stypes = getelementptr inbounds %struct.mgmt_frame_regs, ptr %upd, i32 0, i32 1
  %5 = ptrtoint ptr %interface_stypes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interface_stypes, align 4
  %mgmt_frame_mask = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 127
  %7 = ptrtoint ptr %mgmt_frame_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mgmt_frame_mask, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp eq i32 %6, %8
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %mgmt_frame_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %mgmt_frame_mask, align 8
  %call3 = tail call i32 @mwifiex_send_cmd(ptr noundef %4, i16 noundef zeroext 268, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %mgmt_frame_mask, i1 noundef zeroext false) #12
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 1073741824, ptr noundef nonnull @.str.112) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_antenna(ptr noundef readonly %wiphy, i32 noundef %tx_ant, i32 noundef %rx_ant) #1 align 64 {
entry:
  %ant_cfg = alloca %struct.mwifiex_ds_ant_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %mwifiex_cfg80211_get_adapter.exit, !prof !382

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !383
  unreachable

mwifiex_cfg80211_get_adapter.exit:                ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp29.not.i = icmp eq i8 %4, 0
  br i1 %cmp29.not.i, label %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge, label %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge

mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  br label %for.body.i

mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %i.030.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.mwifiex_get_priv.exit_crit_edge

for.body.i.mwifiex_get_priv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %for.body.i.mwifiex_get_priv.exit_crit_edge, %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge ], [ %6, %for.body.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ant_cfg) #12
  %7 = getelementptr inbounds %struct.mwifiex_ds_ant_cfg, ptr %ant_cfg, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_ant)
  %tobool.not = icmp eq i32 %tx_ant, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_ant)
  %tobool2.not = icmp eq i32 %rx_ant, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %mwifiex_get_priv.exit.cleanup_crit_edge, label %if.end

mwifiex_get_priv.exit.cleanup_crit_edge:          ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mwifiex_get_priv.exit
  %hw_dev_mcs_support = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 114
  %8 = ptrtoint ptr %hw_dev_mcs_support to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hw_dev_mcs_support, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %9)
  %cmp.not = icmp eq i8 %9, 34
  br i1 %cmp.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_ant, i32 %rx_ant)
  %cmp5.not = icmp eq i32 %tx_ant, %rx_ant
  br i1 %cmp5.not, label %if.end8, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %10 = tail call i32 @llvm.ctpop.i32(i32 %tx_ant), !range !386
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %tobool9.not = icmp ult i32 %10, 2
  br i1 %tobool9.not, label %if.end8.if.end15_crit_edge, label %land.lhs.true

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %number_of_antenna = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 46
  %11 = ptrtoint ptr %number_of_antenna to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %number_of_antenna, align 4
  %conv10 = zext i16 %12 to i32
  %notmask96 = shl nsw i32 -1, %conv10
  %sub11 = xor i32 %notmask96, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub11, i32 %tx_ant)
  %cmp12.not = icmp eq i32 %sub11, %tx_ant
  br i1 %cmp12.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %number_of_antenna16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 46
  %13 = ptrtoint ptr %number_of_antenna16 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %number_of_antenna16, align 4
  %conv17 = zext i16 %14 to i32
  %notmask = shl nsw i32 -1, %conv17
  %sub19 = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19, i32 %tx_ant)
  %cmp20 = icmp eq i32 %sub19, %tx_ant
  br i1 %cmp20, label %land.lhs.true22, label %if.end15.if.end62_crit_edge

if.end15.if.end62_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

land.lhs.true22:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cond.i, align 8
  %number_of_antenna24 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %number_of_antenna24 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %number_of_antenna24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %cmp26 = icmp ugt i16 %18, 1
  %spec.select = select i1 %cmp26, i32 65535, i32 %tx_ant
  br label %if.end62

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tx_ant)
  %cmp30 = icmp eq i32 %tx_ant, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rx_ant)
  %cmp33 = icmp eq i32 %rx_ant, 1
  %or.cond98 = and i1 %cmp30, %cmp33
  %user_dev_mcs_support = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 115
  br i1 %or.cond98, label %if.then35, label %if.else39

if.then35:                                        ; preds = %if.else
  %19 = ptrtoint ptr %user_dev_mcs_support to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 17, ptr %user_dev_mcs_support, align 1
  %is_hw_11ac_capable = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 128
  %20 = ptrtoint ptr %is_hw_11ac_capable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %is_hw_11ac_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool36.not = icmp eq i32 %21, 0
  br i1 %tobool36.not, label %if.then35.if.end46_crit_edge, label %if.then35.if.end46.sink.split_crit_edge

if.then35.if.end46.sink.split_crit_edge:          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.sink.split

if.then35.if.end46_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.else39:                                        ; preds = %if.else
  %22 = ptrtoint ptr %user_dev_mcs_support to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 34, ptr %user_dev_mcs_support, align 1
  %is_hw_11ac_capable41 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 128
  %23 = ptrtoint ptr %is_hw_11ac_capable41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %is_hw_11ac_capable41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool42.not = icmp eq i32 %24, 0
  br i1 %tobool42.not, label %if.else39.if.end46_crit_edge, label %if.else39.if.end46.sink.split_crit_edge

if.else39.if.end46.sink.split_crit_edge:          ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.sink.split

if.else39.if.end46_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.end46.sink.split:                              ; preds = %if.else39.if.end46.sink.split_crit_edge, %if.then35.if.end46.sink.split_crit_edge
  %.sink = phi i32 [ -65538, %if.then35.if.end46.sink.split_crit_edge ], [ -327686, %if.else39.if.end46.sink.split_crit_edge ]
  %usr_dot_11ac_mcs_support44 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 133
  %25 = ptrtoint ptr %usr_dot_11ac_mcs_support44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %usr_dot_11ac_mcs_support44, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end46.sink.split, %if.else39.if.end46_crit_edge, %if.then35.if.end46_crit_edge
  %wiphy49 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 10
  %user_dev_mcs_support56 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 115
  %number_of_antenna59 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 46
  %26 = ptrtoint ptr %wiphy49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy49, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %27, i32 0, i32 53, i32 0
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %tobool50.not = icmp eq ptr %29, null
  br i1 %tobool50.not, label %if.end46.for.inc_crit_edge, label %if.end52

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %user_dev_mcs_support56 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %user_dev_mcs_support56, align 1
  %32 = and i8 %31, 15
  %and58 = zext i8 %32 to i32
  %mcs = getelementptr inbounds %struct.ieee80211_supported_band, ptr %29, i32 0, i32 5, i32 4
  %33 = ptrtoint ptr %number_of_antenna59 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %number_of_antenna59, align 4
  %conv60 = zext i16 %34 to i32
  %35 = call ptr @memset(ptr %mcs, i32 0, i32 %conv60)
  %36 = call ptr @memset(ptr %mcs, i32 255, i32 %and58)
  br label %for.inc

for.inc:                                          ; preds = %if.end52, %if.end46.for.inc_crit_edge
  %37 = ptrtoint ptr %wiphy49 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wiphy49, align 4
  %arrayidx.1 = getelementptr %struct.wiphy, ptr %38, i32 0, i32 53, i32 1
  %39 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.1, align 4
  %tobool50.not.1 = icmp eq ptr %40, null
  br i1 %tobool50.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end52.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end52.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %user_dev_mcs_support56 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %user_dev_mcs_support56, align 1
  %43 = and i8 %42, 15
  %and58.1 = zext i8 %43 to i32
  %mcs.1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %40, i32 0, i32 5, i32 4
  %44 = ptrtoint ptr %number_of_antenna59 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %number_of_antenna59, align 4
  %conv60.1 = zext i16 %45 to i32
  %46 = call ptr @memset(ptr %mcs.1, i32 0, i32 %conv60.1)
  %47 = call ptr @memset(ptr %mcs.1, i32 255, i32 %and58.1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end52.1, %for.inc.for.inc.1_crit_edge
  %48 = ptrtoint ptr %wiphy49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wiphy49, align 4
  %arrayidx.2 = getelementptr %struct.wiphy, ptr %49, i32 0, i32 53, i32 2
  %50 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.2, align 4
  %tobool50.not.2 = icmp eq ptr %51, null
  br i1 %tobool50.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end52.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end52.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %user_dev_mcs_support56 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %user_dev_mcs_support56, align 1
  %54 = and i8 %53, 15
  %and58.2 = zext i8 %54 to i32
  %mcs.2 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %51, i32 0, i32 5, i32 4
  %55 = ptrtoint ptr %number_of_antenna59 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %number_of_antenna59, align 4
  %conv60.2 = zext i16 %56 to i32
  %57 = call ptr @memset(ptr %mcs.2, i32 0, i32 %conv60.2)
  %58 = call ptr @memset(ptr %mcs.2, i32 255, i32 %and58.2)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end52.2, %for.inc.1.for.inc.2_crit_edge
  %59 = ptrtoint ptr %wiphy49 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wiphy49, align 4
  %arrayidx.3 = getelementptr %struct.wiphy, ptr %60, i32 0, i32 53, i32 3
  %61 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.3, align 4
  %tobool50.not.3 = icmp eq ptr %62, null
  br i1 %tobool50.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end52.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end52.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %user_dev_mcs_support56 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %user_dev_mcs_support56, align 1
  %65 = and i8 %64, 15
  %and58.3 = zext i8 %65 to i32
  %mcs.3 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %62, i32 0, i32 5, i32 4
  %66 = ptrtoint ptr %number_of_antenna59 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %number_of_antenna59, align 4
  %conv60.3 = zext i16 %67 to i32
  %68 = call ptr @memset(ptr %mcs.3, i32 0, i32 %conv60.3)
  %69 = call ptr @memset(ptr %mcs.3, i32 255, i32 %and58.3)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end52.3, %for.inc.2.for.inc.3_crit_edge
  %70 = ptrtoint ptr %wiphy49 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wiphy49, align 4
  %arrayidx.4 = getelementptr %struct.wiphy, ptr %71, i32 0, i32 53, i32 4
  %72 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.4, align 4
  %tobool50.not.4 = icmp eq ptr %73, null
  br i1 %tobool50.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end52.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end52.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %user_dev_mcs_support56 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %user_dev_mcs_support56, align 1
  %76 = and i8 %75, 15
  %and58.4 = zext i8 %76 to i32
  %mcs.4 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %73, i32 0, i32 5, i32 4
  %77 = ptrtoint ptr %number_of_antenna59 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %number_of_antenna59, align 4
  %conv60.4 = zext i16 %78 to i32
  %79 = call ptr @memset(ptr %mcs.4, i32 0, i32 %conv60.4)
  %80 = call ptr @memset(ptr %mcs.4, i32 255, i32 %and58.4)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end52.4, %for.inc.3.for.inc.4_crit_edge
  %81 = ptrtoint ptr %wiphy49 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wiphy49, align 4
  %arrayidx.5 = getelementptr %struct.wiphy, ptr %82, i32 0, i32 53, i32 5
  %83 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.5, align 4
  %tobool50.not.5 = icmp eq ptr %84, null
  br i1 %tobool50.not.5, label %for.inc.4.if.end62_crit_edge, label %if.end52.5

for.inc.4.if.end62_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end52.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %user_dev_mcs_support56 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %user_dev_mcs_support56, align 1
  %87 = and i8 %86, 15
  %and58.5 = zext i8 %87 to i32
  %mcs.5 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %84, i32 0, i32 5, i32 4
  %88 = ptrtoint ptr %number_of_antenna59 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %number_of_antenna59, align 4
  %conv60.5 = zext i16 %89 to i32
  %90 = call ptr @memset(ptr %mcs.5, i32 0, i32 %conv60.5)
  %91 = call ptr @memset(ptr %mcs.5, i32 255, i32 %and58.5)
  br label %if.end62

if.end62:                                         ; preds = %if.end52.5, %for.inc.4.if.end62_crit_edge, %land.lhs.true22, %if.end15.if.end62_crit_edge
  %tx_ant.addr.0 = phi i32 [ %tx_ant, %if.end15.if.end62_crit_edge ], [ %spec.select, %land.lhs.true22 ], [ %tx_ant, %if.end52.5 ], [ %tx_ant, %for.inc.4.if.end62_crit_edge ]
  %rx_ant.addr.0 = phi i32 [ %tx_ant, %if.end15.if.end62_crit_edge ], [ %spec.select, %land.lhs.true22 ], [ %rx_ant, %if.end52.5 ], [ %rx_ant, %for.inc.4.if.end62_crit_edge ]
  %92 = ptrtoint ptr %ant_cfg to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %tx_ant.addr.0, ptr %ant_cfg, align 4
  %93 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %rx_ant.addr.0, ptr %7, align 4
  %call65 = call i32 @mwifiex_send_cmd(ptr noundef %cond.i, i16 noundef zeroext 32, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %ant_cfg, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %land.lhs.true.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %mwifiex_get_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call65, %if.end62 ], [ -95, %mwifiex_get_priv.exit.cleanup_crit_edge ], [ -95, %if.then4.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ant_cfg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_get_antenna(ptr noundef readonly %wiphy, ptr nocapture noundef writeonly %tx_ant, ptr nocapture noundef writeonly %rx_ant) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %mwifiex_cfg80211_get_adapter.exit, !prof !382

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !383
  unreachable

mwifiex_cfg80211_get_adapter.exit:                ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp29.not.i = icmp eq i8 %4, 0
  br i1 %cmp29.not.i, label %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge, label %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge

mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  br label %for.body.i

mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %i.030.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.mwifiex_get_priv.exit_crit_edge

for.body.i.mwifiex_get_priv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %for.body.i.mwifiex_get_priv.exit_crit_edge, %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge ], [ %6, %for.body.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %call2 = tail call i32 @mwifiex_send_cmd(ptr noundef %cond.i, i16 noundef zeroext 32, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #12
  %tx_ant3 = getelementptr inbounds %struct.mwifiex_private, ptr %cond.i, i32 0, i32 23
  %7 = ptrtoint ptr %tx_ant3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_ant3, align 4
  %9 = ptrtoint ptr %tx_ant to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tx_ant, align 4
  %rx_ant4 = getelementptr inbounds %struct.mwifiex_private, ptr %cond.i, i32 0, i32 24
  %10 = ptrtoint ptr %rx_ant4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_ant4, align 8
  %12 = ptrtoint ptr %rx_ant to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rx_ant, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_sched_scan_start(ptr noundef %wiphy, ptr nocapture noundef readonly %dev, ptr noundef readonly %request) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %tobool.not = icmp eq ptr %request, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %n_ssids = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 2
  %3 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false.do.end6_crit_edge

lor.lhs.false.do.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

land.lhs.true:                                    ; preds = %lor.lhs.false
  %n_match_sets = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 9
  %5 = ptrtoint ptr %n_match_sets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_match_sets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.do.end6_crit_edge

land.lhs.true.do.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %dev3 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114) #19
  br label %cleanup

do.end6:                                          ; preds = %land.lhs.true.do.end6_crit_edge, %lor.lhs.false.do.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  %n_match_sets9 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 9
  %7 = ptrtoint ptr %n_match_sets9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_match_sets9, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.116, i32 noundef %4, i32 noundef %8) #19
  %n_channels = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 3
  %9 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_channels, align 8
  %scan_plans = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 12
  %11 = ptrtoint ptr %scan_plans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scan_plans, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %ie_len = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 6
  %15 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ie_len, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.120, i32 noundef %10, i32 noundef %14, i32 noundef %16) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 331) #17
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %do.end6.cleanup_crit_edge, label %if.end17

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %do.end6
  %scan_request = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 111
  %18 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scan_request, align 8
  %tobool18.not = icmp eq ptr %19, null
  br i1 %tobool18.not, label %lor.lhs.false19, label %if.end17.if.then21_crit_edge

if.end17.if.then21_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

lor.lhs.false19:                                  ; preds = %if.end17
  %scan_aborting = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 130
  %20 = ptrtoint ptr %scan_aborting to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %scan_aborting, align 8, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool20.not = icmp eq i8 %21, 0
  br i1 %tobool20.not, label %lor.lhs.false19.if.end22_crit_edge, label %lor.lhs.false19.if.then21_crit_edge

lor.lhs.false19.if.then21_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

lor.lhs.false19.if.end22_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then21:                                        ; preds = %lor.lhs.false19.if.then21_crit_edge, %if.end17.if.then21_crit_edge
  %start_later = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %start_later to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %start_later, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %lor.lhs.false19.if.end22_crit_edge
  %23 = ptrtoint ptr %n_match_sets9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_match_sets9, align 8
  %conv = trunc i32 %24 to i8
  %num_ssids = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 12
  %25 = ptrtoint ptr %num_ssids to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %num_ssids, align 8
  %match_sets = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 8
  %26 = ptrtoint ptr %match_sets to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %match_sets, align 4
  %ssid_list = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 11
  %28 = ptrtoint ptr %ssid_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %ssid_list, align 4
  %ie24 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 5
  %29 = ptrtoint ptr %ie24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ie24, align 8
  %tobool25.not = icmp eq ptr %30, null
  br i1 %tobool25.not, label %if.end22.if.end53_crit_edge, label %land.lhs.true26

if.end22.if.end53_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

land.lhs.true26:                                  ; preds = %if.end22
  %31 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool28.not = icmp eq i32 %32, 0
  br i1 %tobool28.not, label %land.lhs.true26.if.end53_crit_edge, label %for.body.preheader

land.lhs.true26.if.end53_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

for.body.preheader:                               ; preds = %land.lhs.true26
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 0
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp32.not = icmp eq i16 %34, 0
  br i1 %cmp32.not, label %if.end35, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end35:                                         ; preds = %for.body.preheader
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 8, ptr %arrayidx, align 2
  %36 = ptrtoint ptr %ie24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ie24, align 8
  %ie42 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 0, i32 2
  %len = getelementptr inbounds %struct.ieee_types_header, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %len, align 1
  %conv43 = zext i8 %39 to i32
  %add = add nuw nsw i32 %conv43, 2
  %40 = call ptr @memcpy(ptr %ie42, ptr %37, i32 %add)
  %41 = load i8, ptr %len, align 1
  %conv45 = zext i8 %41 to i32
  %add47 = add nuw nsw i32 %conv45, 2
  %42 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add47, i32 %43)
  %cmp49.not = icmp ult i32 %add47, %43
  br i1 %cmp49.not, label %if.end35.for.inc_crit_edge, label %if.end35.if.end53_crit_edge

if.end35.if.end53_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end35.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %offset.1 = phi i32 [ 0, %for.body.preheader.for.inc_crit_edge ], [ %add47, %if.end35.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 1
  %44 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp32.not.1 = icmp eq i16 %45, 0
  br i1 %cmp32.not.1, label %if.end35.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end35.1:                                       ; preds = %for.inc
  %46 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 8, ptr %arrayidx.1, align 2
  %47 = ptrtoint ptr %ie24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ie24, align 8
  %add.ptr.1 = getelementptr i8, ptr %48, i32 %offset.1
  %ie42.1 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 1, i32 2
  %len.1 = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.1, i32 0, i32 1
  %49 = ptrtoint ptr %len.1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %len.1, align 1
  %conv43.1 = zext i8 %50 to i32
  %add.1 = add nuw nsw i32 %conv43.1, 2
  %51 = call ptr @memcpy(ptr %ie42.1, ptr %add.ptr.1, i32 %add.1)
  %52 = load i8, ptr %len.1, align 1
  %conv45.1 = zext i8 %52 to i32
  %add46.1 = add nuw nsw i32 %offset.1, 2
  %add47.1 = add nuw nsw i32 %add46.1, %conv45.1
  %53 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add47.1, i32 %54)
  %cmp49.not.1 = icmp ult i32 %add47.1, %54
  br i1 %cmp49.not.1, label %if.end35.1.for.inc.1_crit_edge, label %if.end35.1.if.end53_crit_edge

if.end35.1.if.end53_crit_edge:                    ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end35.1.for.inc.1_crit_edge:                   ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end35.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %offset.1.1 = phi i32 [ %offset.1, %for.inc.for.inc.1_crit_edge ], [ %add47.1, %if.end35.1.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 2
  %55 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp32.not.2 = icmp eq i16 %56, 0
  br i1 %cmp32.not.2, label %if.end35.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end35.2:                                       ; preds = %for.inc.1
  %57 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 8, ptr %arrayidx.2, align 2
  %58 = ptrtoint ptr %ie24 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ie24, align 8
  %add.ptr.2 = getelementptr i8, ptr %59, i32 %offset.1.1
  %ie42.2 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 2, i32 2
  %len.2 = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.2, i32 0, i32 1
  %60 = ptrtoint ptr %len.2 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %len.2, align 1
  %conv43.2 = zext i8 %61 to i32
  %add.2 = add nuw nsw i32 %conv43.2, 2
  %62 = call ptr @memcpy(ptr %ie42.2, ptr %add.ptr.2, i32 %add.2)
  %63 = load i8, ptr %len.2, align 1
  %conv45.2 = zext i8 %63 to i32
  %add46.2 = add nuw nsw i32 %offset.1.1, 2
  %add47.2 = add nuw nsw i32 %add46.2, %conv45.2
  %64 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add47.2, i32 %65)
  %cmp49.not.2 = icmp ult i32 %add47.2, %65
  br i1 %cmp49.not.2, label %if.end35.2.for.inc.2_crit_edge, label %if.end35.2.if.end53_crit_edge

if.end35.2.if.end53_crit_edge:                    ; preds = %if.end35.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end35.2.for.inc.2_crit_edge:                   ; preds = %if.end35.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end35.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %offset.1.2 = phi i32 [ %offset.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %add47.2, %if.end35.2.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 3
  %66 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp32.not.3 = icmp eq i16 %67, 0
  br i1 %cmp32.not.3, label %if.end35.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end35.3:                                       ; preds = %for.inc.2
  %68 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 8, ptr %arrayidx.3, align 2
  %69 = ptrtoint ptr %ie24 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ie24, align 8
  %add.ptr.3 = getelementptr i8, ptr %70, i32 %offset.1.2
  %ie42.3 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 3, i32 2
  %len.3 = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.3, i32 0, i32 1
  %71 = ptrtoint ptr %len.3 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %len.3, align 1
  %conv43.3 = zext i8 %72 to i32
  %add.3 = add nuw nsw i32 %conv43.3, 2
  %73 = call ptr @memcpy(ptr %ie42.3, ptr %add.ptr.3, i32 %add.3)
  %74 = load i8, ptr %len.3, align 1
  %conv45.3 = zext i8 %74 to i32
  %add46.3 = add nuw nsw i32 %offset.1.2, 2
  %add47.3 = add nuw nsw i32 %add46.3, %conv45.3
  %75 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add47.3, i32 %76)
  %cmp49.not.3 = icmp ult i32 %add47.3, %76
  br i1 %cmp49.not.3, label %if.end35.3.for.inc.3_crit_edge, label %if.end35.3.if.end53_crit_edge

if.end35.3.if.end53_crit_edge:                    ; preds = %if.end35.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end35.3.for.inc.3_crit_edge:                   ; preds = %if.end35.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end35.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %offset.1.3 = phi i32 [ %offset.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %add47.3, %if.end35.3.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 4
  %77 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp32.not.4 = icmp eq i16 %78, 0
  br i1 %cmp32.not.4, label %if.end35.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end35.4:                                       ; preds = %for.inc.3
  %79 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 8, ptr %arrayidx.4, align 2
  %80 = ptrtoint ptr %ie24 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ie24, align 8
  %add.ptr.4 = getelementptr i8, ptr %81, i32 %offset.1.3
  %ie42.4 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 4, i32 2
  %len.4 = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.4, i32 0, i32 1
  %82 = ptrtoint ptr %len.4 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %len.4, align 1
  %conv43.4 = zext i8 %83 to i32
  %add.4 = add nuw nsw i32 %conv43.4, 2
  %84 = call ptr @memcpy(ptr %ie42.4, ptr %add.ptr.4, i32 %add.4)
  %85 = load i8, ptr %len.4, align 1
  %conv45.4 = zext i8 %85 to i32
  %add46.4 = add nuw nsw i32 %offset.1.3, 2
  %add47.4 = add nuw nsw i32 %add46.4, %conv45.4
  %86 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add47.4, i32 %87)
  %cmp49.not.4 = icmp ult i32 %add47.4, %87
  br i1 %cmp49.not.4, label %if.end35.4.for.inc.4_crit_edge, label %if.end35.4.if.end53_crit_edge

if.end35.4.if.end53_crit_edge:                    ; preds = %if.end35.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end35.4.for.inc.4_crit_edge:                   ; preds = %if.end35.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end35.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %offset.1.4 = phi i32 [ %offset.1.3, %for.inc.3.for.inc.4_crit_edge ], [ %add47.4, %if.end35.4.for.inc.4_crit_edge ]
  %arrayidx.5 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 5
  %88 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %cmp32.not.5 = icmp eq i16 %89, 0
  br i1 %cmp32.not.5, label %if.end35.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.end35.5:                                       ; preds = %for.inc.4
  %90 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 8, ptr %arrayidx.5, align 2
  %91 = ptrtoint ptr %ie24 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ie24, align 8
  %add.ptr.5 = getelementptr i8, ptr %92, i32 %offset.1.4
  %ie42.5 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 5, i32 2
  %len.5 = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.5, i32 0, i32 1
  %93 = ptrtoint ptr %len.5 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %len.5, align 1
  %conv43.5 = zext i8 %94 to i32
  %add.5 = add nuw nsw i32 %conv43.5, 2
  %95 = call ptr @memcpy(ptr %ie42.5, ptr %add.ptr.5, i32 %add.5)
  %96 = load i8, ptr %len.5, align 1
  %conv45.5 = zext i8 %96 to i32
  %add46.5 = add nuw nsw i32 %offset.1.4, 2
  %add47.5 = add nuw nsw i32 %add46.5, %conv45.5
  %97 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add47.5, i32 %98)
  %cmp49.not.5 = icmp ult i32 %add47.5, %98
  br i1 %cmp49.not.5, label %if.end35.5.for.inc.5_crit_edge, label %if.end35.5.if.end53_crit_edge

if.end35.5.if.end53_crit_edge:                    ; preds = %if.end35.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end35.5.for.inc.5_crit_edge:                   ; preds = %if.end35.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end35.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %offset.1.5 = phi i32 [ %offset.1.4, %for.inc.4.for.inc.5_crit_edge ], [ %add47.5, %if.end35.5.for.inc.5_crit_edge ]
  %arrayidx.6 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 6
  %99 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %cmp32.not.6 = icmp eq i16 %100, 0
  br i1 %cmp32.not.6, label %if.end35.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.end35.6:                                       ; preds = %for.inc.5
  %101 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 8, ptr %arrayidx.6, align 2
  %102 = ptrtoint ptr %ie24 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ie24, align 8
  %add.ptr.6 = getelementptr i8, ptr %103, i32 %offset.1.5
  %ie42.6 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 6, i32 2
  %len.6 = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.6, i32 0, i32 1
  %104 = ptrtoint ptr %len.6 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %len.6, align 1
  %conv43.6 = zext i8 %105 to i32
  %add.6 = add nuw nsw i32 %conv43.6, 2
  %106 = call ptr @memcpy(ptr %ie42.6, ptr %add.ptr.6, i32 %add.6)
  %107 = load i8, ptr %len.6, align 1
  %conv45.6 = zext i8 %107 to i32
  %add46.6 = add nuw nsw i32 %offset.1.5, 2
  %add47.6 = add nuw nsw i32 %add46.6, %conv45.6
  %108 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add47.6, i32 %109)
  %cmp49.not.6 = icmp ult i32 %add47.6, %109
  br i1 %cmp49.not.6, label %if.end35.6.for.inc.6_crit_edge, label %if.end35.6.if.end53_crit_edge

if.end35.6.if.end53_crit_edge:                    ; preds = %if.end35.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end35.6.for.inc.6_crit_edge:                   ; preds = %if.end35.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end35.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %offset.1.6 = phi i32 [ %offset.1.5, %for.inc.5.for.inc.6_crit_edge ], [ %add47.6, %if.end35.6.for.inc.6_crit_edge ]
  %arrayidx.7 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 7
  %110 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %cmp32.not.7 = icmp eq i16 %111, 0
  br i1 %cmp32.not.7, label %if.end35.7, label %for.inc.6.if.end53_crit_edge

for.inc.6.if.end53_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end35.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 8, ptr %arrayidx.7, align 2
  %113 = ptrtoint ptr %ie24 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ie24, align 8
  %add.ptr.7 = getelementptr i8, ptr %114, i32 %offset.1.6
  %ie42.7 = getelementptr %struct.mwifiex_private, ptr %2, i32 0, i32 96, i32 7, i32 2
  %len.7 = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.7, i32 0, i32 1
  %115 = ptrtoint ptr %len.7 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %len.7, align 1
  %conv43.7 = zext i8 %116 to i32
  %add.7 = add nuw nsw i32 %conv43.7, 2
  %117 = call ptr @memcpy(ptr %ie42.7, ptr %add.ptr.7, i32 %add.7)
  br label %if.end53

if.end53:                                         ; preds = %if.end35.7, %for.inc.6.if.end53_crit_edge, %if.end35.6.if.end53_crit_edge, %if.end35.5.if.end53_crit_edge, %if.end35.4.if.end53_crit_edge, %if.end35.3.if.end53_crit_edge, %if.end35.2.if.end53_crit_edge, %if.end35.1.if.end53_crit_edge, %if.end35.if.end53_crit_edge, %land.lhs.true26.if.end53_crit_edge, %if.end22.if.end53_crit_edge
  %118 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %n_channels, align 8
  %120 = tail call i32 @llvm.umin.i32(i32 %119, i32 38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp58195.not = icmp eq i32 %120, 0
  br i1 %cmp58195.not, label %if.end53.for.end82_crit_edge, label %if.end53.for.body60_crit_edge

if.end53.for.body60_crit_edge:                    ; preds = %if.end53
  br label %for.body60

if.end53.for.end82_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end82

for.body60:                                       ; preds = %if.end77.for.body60_crit_edge, %if.end53.for.body60_crit_edge
  %i.1196 = phi i32 [ %inc81, %if.end77.for.body60_crit_edge ], [ 0, %if.end53.for.body60_crit_edge ]
  %arrayidx61 = getelementptr %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 27, i32 %i.1196
  %121 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx61, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %hw_value, align 2
  %conv62 = trunc i16 %124 to i8
  %arrayidx63 = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 13, i32 %i.1196
  %125 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv62, ptr %arrayidx63, align 1
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %122, align 4
  %conv64 = trunc i32 %127 to i8
  %radio_type = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 13, i32 %i.1196, i32 1
  %128 = ptrtoint ptr %radio_type to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv64, ptr %radio_type, align 2
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %122, i32 0, i32 4
  %129 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags, align 4
  %and = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool67.not = icmp eq i32 %and, 0
  br i1 %tobool67.not, label %lor.lhs.false68, label %for.body60.if.end77_crit_edge

for.body60.if.end77_crit_edge:                    ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

lor.lhs.false68:                                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #14
  %131 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool70.not = icmp eq i32 %132, 0
  %spec.select = select i1 %tobool70.not, i8 2, i8 1
  br label %if.end77

if.end77:                                         ; preds = %lor.lhs.false68, %for.body60.if.end77_crit_edge
  %.sink = phi i8 [ 2, %for.body60.if.end77_crit_edge ], [ %spec.select, %lor.lhs.false68 ]
  %scan_type76 = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 13, i32 %i.1196, i32 2
  %133 = ptrtoint ptr %scan_type76 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %.sink, ptr %scan_type76, align 1
  %scan_time = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 13, i32 %i.1196, i32 4
  %134 = ptrtoint ptr %scan_time to i32
  call void @__asan_storeN_noabort(i32 %134, i32 4)
  store i32 0, ptr %scan_time, align 1
  %inc81 = add nuw nsw i32 %i.1196, 1
  %exitcond.not = icmp eq i32 %inc81, %120
  br i1 %exitcond.not, label %if.end77.for.end82_crit_edge, label %if.end77.for.body60_crit_edge

if.end77.for.body60_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body60

if.end77.for.end82_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end82

for.end82:                                        ; preds = %if.end77.for.end82_crit_edge, %if.end53.for.end82_crit_edge
  %135 = trunc i32 %120 to i8
  %chan_per_scan = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 3
  %136 = ptrtoint ptr %chan_per_scan to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %chan_per_scan, align 4
  %137 = ptrtoint ptr %scan_plans to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %scan_plans, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 4
  %141 = tail call i32 @llvm.umax.i32(i32 %140, i32 15000)
  %scan_interval = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 4
  %142 = ptrtoint ptr %scan_interval to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 %141, ptr %scan_interval, align 1
  %repeat_count = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 9
  %143 = ptrtoint ptr %repeat_count to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 6, ptr %repeat_count, align 8
  %report_condition = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 5
  %144 = ptrtoint ptr %report_condition to i32
  call void @__asan_storeN_noabort(i32 %144, i32 4)
  store i32 -2147483647, ptr %report_condition, align 1
  %bss_type = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 2
  %145 = ptrtoint ptr %bss_type to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %bss_type, align 1
  %146 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 1, ptr %call7.i.i, align 8
  %enable = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 1
  %147 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 1, ptr %enable, align 2
  %min_rssi_thold = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 10
  %148 = ptrtoint ptr %min_rssi_thold to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %min_rssi_thold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -300, i32 %149)
  %cmp102.not = icmp eq i32 %149, -300
  br i1 %cmp102.not, label %for.end82.if.end108_crit_edge, label %if.then104

for.end82.if.end108_crit_edge:                    ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108

if.then104:                                       ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %report_condition to i32
  call void @__asan_storeN_noabort(i32 %150, i32 4)
  store i32 -2147483643, ptr %report_condition, align 1
  %conv107 = trunc i32 %149 to i8
  %rssi_threshold = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %call7.i.i, i32 0, i32 7
  %151 = ptrtoint ptr %rssi_threshold to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv107, ptr %rssi_threshold, align 2
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %for.end82.if.end108_crit_edge
  %call109 = tail call i32 @mwifiex_send_cmd(ptr noundef %2, i16 noundef zeroext 107, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %if.then111

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end112:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  %sched_scanning = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 131
  %152 = ptrtoint ptr %sched_scanning to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %sched_scanning, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %if.then111, %do.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -14, %if.then111 ], [ 0, %if.end112 ], [ -22, %do.end ], [ -12, %do.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_sched_scan_stop(ptr noundef %wiphy, ptr nocapture noundef readonly %dev, i64 noundef %reqid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %dev1 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.122) #19
  %call2 = tail call i32 @mwifiex_stop_bg_scan(ptr noundef %2) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_set_rekey_data(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @mwifiex_send_cmd(ptr noundef %2, i16 noundef zeroext 271, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %data, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_tdls_mgmt(ptr nocapture noundef readonly %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %peer, i8 noundef zeroext %action_code, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, i32 noundef %peer_capability, i1 noundef zeroext %initiator, ptr noundef %extra_ies, i32 noundef %extra_ies_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %flags = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 11
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 32
  %and = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bss_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 8
  %7 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true
  %9 = zext i8 %action_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.179)
  switch i8 %action_code, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb9
    i8 2, label %sw.bb13
    i8 3, label %sw.bb17
    i8 10, label %sw.bb20
    i8 14, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 8
  %conv7 = zext i16 %status_code to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @.str.124, ptr noundef %peer, i32 noundef %conv7) #12
  tail call void @mwifiex_add_auto_tdls_peer(ptr noundef %2, ptr noundef %peer) #12
  %call8 = tail call i32 @mwifiex_send_tdls_data_frame(ptr noundef %2, ptr noundef %peer, i8 noundef zeroext 0, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, ptr noundef %extra_ies, i32 noundef %extra_ies_len) #12
  br label %cleanup

sw.bb9:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mwifiex_add_auto_tdls_peer(ptr noundef %2, ptr noundef %peer) #12
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 8
  %conv11 = zext i16 %status_code to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %13, i32 noundef 1, ptr noundef nonnull @.str.125, ptr noundef %peer, i32 noundef %conv11) #12
  %call12 = tail call i32 @mwifiex_send_tdls_data_frame(ptr noundef %2, ptr noundef %peer, i8 noundef zeroext 1, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, ptr noundef %extra_ies, i32 noundef %extra_ies_len) #12
  br label %cleanup

sw.bb13:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 8
  %conv15 = zext i16 %status_code to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %15, i32 noundef 1, ptr noundef nonnull @.str.126, ptr noundef %peer, i32 noundef %conv15) #12
  %call16 = tail call i32 @mwifiex_send_tdls_data_frame(ptr noundef %2, ptr noundef %peer, i8 noundef zeroext 2, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, ptr noundef %extra_ies, i32 noundef %extra_ies_len) #12
  br label %cleanup

sw.bb17:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 1, ptr noundef nonnull @.str.127, ptr noundef %peer) #12
  %call19 = tail call i32 @mwifiex_send_tdls_data_frame(ptr noundef %2, ptr noundef %peer, i8 noundef zeroext 3, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, ptr noundef %extra_ies, i32 noundef %extra_ies_len) #12
  br label %cleanup

sw.bb20:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.128, ptr noundef %peer) #12
  %call22 = tail call i32 @mwifiex_send_tdls_data_frame(ptr noundef %2, ptr noundef %peer, i8 noundef zeroext 10, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, ptr noundef %extra_ies, i32 noundef %extra_ies_len) #12
  br label %cleanup

sw.bb23:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 1, ptr noundef nonnull @.str.129, ptr noundef %peer) #12
  %call25 = tail call i32 @mwifiex_send_tdls_action_frame(ptr noundef %2, ptr noundef %peer, i8 noundef zeroext 14, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, ptr noundef %extra_ies, i32 noundef %extra_ies_len) #12
  br label %cleanup

sw.default:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %23, i32 noundef 4, ptr noundef nonnull @.str.130, ptr noundef %peer) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb23, %sw.bb20, %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %sw.default ], [ %call25, %sw.bb23 ], [ %call22, %sw.bb20 ], [ %call19, %sw.bb17 ], [ %call16, %sw.bb13 ], [ %call12, %sw.bb9 ], [ %call8, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_tdls_oper(ptr nocapture noundef readonly %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %peer, i32 noundef %action) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %flags = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 11
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 32
  %5 = and i32 %4, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 98304, i32 %5)
  %.not = icmp eq i32 %5, 98304
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bss_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 8
  %8 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @.str.131, ptr noundef %peer, i32 noundef %action) #12
  %12 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %action, label %sw.default [
    i32 3, label %if.end8.sw.epilog_crit_edge
    i32 4, label %sw.bb9
    i32 2, label %sw.bb10
    i32 1, label %sw.bb12
    i32 0, label %sw.bb14
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 4, ptr noundef nonnull @.str.132) #12
  br label %cleanup

sw.bb12:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 4, ptr noundef nonnull @.str.133) #12
  br label %cleanup

sw.bb14:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %18, i32 noundef 4, ptr noundef nonnull @.str.134) #12
  br label %cleanup

sw.default:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 4, ptr noundef nonnull @.str.135) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9, %if.end8.sw.epilog_crit_edge
  %action.addr.0 = phi i8 [ 0, %sw.bb9 ], [ 1, %if.end8.sw.epilog_crit_edge ]
  %call18 = tail call i32 @mwifiex_tdls_oper(ptr noundef %2, ptr noundef %peer, i8 noundef zeroext %action.addr.0) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %sw.bb14, %sw.bb12, %sw.bb10, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ -22, %sw.bb14 ], [ -22, %sw.bb12 ], [ -22, %sw.bb10 ], [ %call18, %sw.epilog ], [ -95, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_get_channel(ptr noundef %wiphy, ptr nocapture noundef readonly %wdev, ptr noundef %chandef) #1 align 64 {
entry:
  %channel_band.i = alloca %struct.mwifiex_channel_band, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = inttoptr i32 %3 to ptr
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bss_role, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %bss_chandef = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 139
  %call2 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %bss_chandef) #12
  br i1 %call2, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %8 = call ptr @memcpy(ptr %chandef, ptr %bss_chandef, i32 28)
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 8
  %9 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.else.if.end18_crit_edge, label %if.then5

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then5:                                         ; preds = %if.else
  %band7 = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 50, i32 3
  %11 = ptrtoint ptr %band7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %band7, align 2
  %call8 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %12) #12
  %conv9 = zext i8 %call8 to i32
  %channel = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 50, i32 0, i32 5
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel, align 8
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %14, i32 noundef %conv9) #12
  %15 = urem i32 %call.i, 1000
  %mul.i = sub i32 %call.i, %15
  %call.i29 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %wiphy, i32 noundef %mul.i) #12
  %ht_param_present = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 163
  %16 = ptrtoint ptr %ht_param_present to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ht_param_present, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  br i1 %tobool12.not, label %if.else16, label %if.then13

if.then13:                                        ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %channel_band.i) #12
  %18 = ptrtoint ptr %channel_band.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %channel_band.i, align 1, !annotation !381
  %19 = getelementptr inbounds %struct.mwifiex_channel_band, ptr %channel_band.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %19, align 1, !annotation !381
  %call.i30 = call i32 @mwifiex_get_chan_info(ptr noundef %4, ptr noundef nonnull %channel_band.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then13.mwifiex_get_chan_type.exit_crit_edge

if.then13.mwifiex_get_chan_type.exit_crit_edge:   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_chan_type.exit

if.then.i:                                        ; preds = %if.then13
  %21 = ptrtoint ptr %channel_band.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %channel_band.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %bf.clear.i = and i8 %bf.lshr.i, 3
  %conv.i = zext i8 %bf.clear.i to i32
  %22 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %conv.i, label %if.then.i.mwifiex_get_chan_type.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb14.i
  ]

if.then.i.mwifiex_get_chan_type.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_chan_type.exit

sw.bb.i:                                          ; preds = %if.then.i
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %4, align 8
  %config_bands.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %24, i32 0, i32 84
  %25 = ptrtoint ptr %config_bands.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %config_bands.i, align 2
  %27 = and i8 %26, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %sw.bb.i.if.else.i_crit_edge, label %land.lhs.true.i

sw.bb.i.if.else.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %bcn_ht_cap.i = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 50, i32 0, i32 24
  %29 = ptrtoint ptr %bcn_ht_cap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bcn_ht_cap.i, align 8
  %tobool8.not.i = icmp eq ptr %30, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %disable_11n.i = getelementptr inbounds %struct.mwifiex_private, ptr %4, i32 0, i32 50, i32 0, i32 22
  %31 = ptrtoint ptr %disable_11n.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %disable_11n.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool12.not.i = icmp eq i8 %32, 0
  br i1 %tobool12.not.i, label %land.lhs.true9.i.mwifiex_get_chan_type.exit_crit_edge, label %land.lhs.true9.i.if.else.i_crit_edge

land.lhs.true9.i.if.else.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true9.i.mwifiex_get_chan_type.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_chan_type.exit

if.else.i:                                        ; preds = %land.lhs.true9.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %sw.bb.i.if.else.i_crit_edge
  br label %mwifiex_get_chan_type.exit

sw.bb14.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = and i8 %bf.load.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %cmp.i = icmp eq i8 %33, 4
  %..i = select i1 %cmp.i, i32 3, i32 2
  br label %mwifiex_get_chan_type.exit

mwifiex_get_chan_type.exit:                       ; preds = %sw.bb14.i, %if.else.i, %land.lhs.true9.i.mwifiex_get_chan_type.exit_crit_edge, %if.then.i.mwifiex_get_chan_type.exit_crit_edge, %if.then13.mwifiex_get_chan_type.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.else.i ], [ 1, %land.lhs.true9.i.mwifiex_get_chan_type.exit_crit_edge ], [ %..i, %sw.bb14.i ], [ 1, %if.then.i.mwifiex_get_chan_type.exit_crit_edge ], [ 1, %if.then13.mwifiex_get_chan_type.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %channel_band.i) #12
  call void @cfg80211_chandef_create(ptr noundef %chandef, ptr noundef %call.i29, i32 noundef %retval.0.i) #12
  br label %if.end18

if.else16:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cfg80211_chandef_create(ptr noundef %chandef, ptr noundef %call.i29, i32 noundef 0) #12
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %mwifiex_get_chan_type.exit, %if.else.if.end18_crit_edge, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ -61, %if.else.if.end18_crit_edge ], [ 0, %if.else16 ], [ 0, %mwifiex_get_chan_type.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_start_radar_detection(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %chandef, i32 noundef %cac_time_ms) #1 align 64 {
entry:
  %radar_params = alloca %struct.mwifiex_radar_params, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %radar_params) #12
  %3 = getelementptr inbounds %struct.mwifiex_radar_params, ptr %radar_params, i32 0, i32 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 8
  %scan_processing = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 73
  %6 = ptrtoint ptr %scan_processing to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_processing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str.136) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mwifiex_is_11h_active(ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull @.str.137) #12
  %call6 = tail call i32 @mwifiex_11h_activate(ptr noundef %2, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 4, ptr noundef nonnull @.str.138) #12
  br label %cleanup

if.end10:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %is_11h_active = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 157, i32 1
  %12 = ptrtoint ptr %is_11h_active to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %is_11h_active, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end.if.end11_crit_edge
  %13 = ptrtoint ptr %radar_params to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %chandef, ptr %radar_params, align 8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cac_time_ms, ptr %3, align 4
  %dfs_chandef = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 150
  %15 = call ptr @memcpy(ptr %dfs_chandef, ptr %chandef, i32 28)
  %call14 = call i32 @mwifiex_send_cmd(ptr noundef %2, i16 noundef zeroext 221, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %radar_params, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %dfs_cac_workqueue = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 151
  %16 = ptrtoint ptr %dfs_cac_workqueue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dfs_cac_workqueue, align 8
  %dfs_cac_work = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 152
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %cac_time_ms) #12
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %dfs_cac_work, i32 noundef %call2.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end11.cleanup_crit_edge, %if.then8, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.end17 ], [ -1, %if.then8 ], [ -1, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %radar_params) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_coalesce(ptr noundef readonly %wiphy, ptr noundef readonly %coalesce) #1 align 64 {
entry:
  %byte_seq.i = alloca [5 x i8], align 4
  %coalesce_cfg = alloca %struct.mwifiex_ds_coalesce_cfg, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %mwifiex_cfg80211_get_adapter.exit, !prof !382

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !383
  unreachable

mwifiex_cfg80211_get_adapter.exit:                ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 290, ptr nonnull %coalesce_cfg) #12
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp29.not.i = icmp eq i8 %4, 0
  br i1 %cmp29.not.i, label %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge, label %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge

mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  br label %for.body.i

mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge: ; preds = %mwifiex_cfg80211_get_adapter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %mwifiex_cfg80211_get_adapter.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 4, i32 %i.030.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %bss_role6.i = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bss_role6.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bss_role6.i, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp8.i = icmp eq i8 %9, 0
  br i1 %cmp8.i, label %if.then.i.mwifiex_get_priv.exit_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %if.then.i.mwifiex_get_priv.exit_crit_edge, %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %mwifiex_cfg80211_get_adapter.exit.mwifiex_get_priv.exit_crit_edge ], [ %6, %if.then.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %10 = call ptr @memset(ptr %coalesce_cfg, i32 0, i32 290)
  %tobool.not = icmp eq ptr %coalesce, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 536870912, ptr noundef nonnull @.str.139) #12
  %call2 = call i32 @mwifiex_send_cmd(ptr noundef %cond.i, i16 noundef zeroext 266, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %coalesce_cfg, i1 noundef zeroext true) #12
  br label %cleanup

if.end:                                           ; preds = %mwifiex_get_priv.exit
  %n_rules = getelementptr inbounds %struct.cfg80211_coalesce, ptr %coalesce, i32 0, i32 1
  %11 = ptrtoint ptr %n_rules to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_rules, align 4
  %conv = trunc i32 %12 to i16
  %13 = ptrtoint ptr %coalesce_cfg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %coalesce_cfg, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp45 = icmp sgt i32 %12, 0
  br i1 %cmp45, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %14 = getelementptr inbounds [5 x i8], ptr %byte_seq.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %coalesce to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %coalesce, align 4
  %arrayidx = getelementptr %struct.cfg80211_coalesce_rules, ptr %16, i32 %i.046
  %arrayidx5 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %coalesce_cfg, i32 0, i32 1, i32 %i.046
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %byte_seq.i) #12
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %conv.i27 = trunc i32 %18 to i16
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i27, ptr %arrayidx5, align 2
  %n_patterns.i = getelementptr %struct.cfg80211_coalesce_rules, ptr %16, i32 %i.046, i32 3
  %20 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_patterns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp88.i = icmp sgt i32 %21, 0
  br i1 %cmp88.i, label %for.body.lr.ph.i28, label %for.body.for.end.i_crit_edge

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i28:                               ; preds = %for.body
  %params.i = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %coalesce_cfg, i32 0, i32 1, i32 %i.046, i32 3
  %patterns.i = getelementptr %struct.cfg80211_coalesce_rules, ptr %16, i32 %i.046, i32 2
  %condition.i = getelementptr %struct.cfg80211_coalesce_rules, ptr %16, i32 %i.046, i32 1
  %num_of_fields.i = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %coalesce_cfg, i32 0, i32 1, i32 %i.046, i32 1
  %pkt_type12.i = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %coalesce_cfg, i32 0, i32 1, i32 %i.046, i32 2
  br label %for.body.i30

for.body.i30:                                     ; preds = %for.inc.i34.for.body.i30_crit_edge, %for.body.lr.ph.i28
  %i.091.i = phi i32 [ 0, %for.body.lr.ph.i28 ], [ %inc38.i, %for.inc.i34.for.body.i30_crit_edge ]
  %param.089.i = phi ptr [ %params.i, %for.body.lr.ph.i28 ], [ %param.1.i, %for.inc.i34.for.body.i30_crit_edge ]
  %22 = ptrtoint ptr %byte_seq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %byte_seq.i, align 4
  %23 = ptrtoint ptr %patterns.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %patterns.i, align 4
  %arrayidx.i29 = getelementptr %struct.cfg80211_pkt_pattern, ptr %24, i32 %i.091.i
  %pattern_len.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %24, i32 %i.091.i, i32 2
  %25 = ptrtoint ptr %pattern_len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pattern_len.i.i, align 4
  %sub62.i.i = add i32 %26, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub62.i.i)
  %cmp64.i.i = icmp sgt i32 %sub62.i.i, 7
  br i1 %cmp64.i.i, label %for.cond1.preheader.lr.ph.i.i, label %for.body.i30.if.end.i_crit_edge

for.body.i30.if.end.i_crit_edge:                  ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.cond1.preheader.lr.ph.i.i:                    ; preds = %for.body.i30
  %pattern.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %24, i32 %i.091.i, i32 1
  %pkt_offset.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %24, i32 %i.091.i, i32 3
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.inc23.i.i.for.cond1.preheader.i.i_crit_edge, %for.cond1.preheader.lr.ph.i.i
  %dont_care_byte.0.off067.i.i = phi i1 [ false, %for.cond1.preheader.lr.ph.i.i ], [ %dont_care_byte.2.off0.i.i, %for.inc23.i.i.for.cond1.preheader.i.i_crit_edge ]
  %valid_byte_cnt.066.i.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i.i ], [ %valid_byte_cnt.2.i.i, %for.inc23.i.i.for.cond1.preheader.i.i_crit_edge ]
  %j.065.i.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i.i ], [ %inc24.i.i, %for.inc23.i.i.for.cond1.preheader.i.i_crit_edge ]
  %mul.i.i = shl i32 %j.065.i.i, 3
  br label %for.body3.i.i

for.cond1.i.i:                                    ; preds = %if.end16.i.i.for.cond1.i.i_crit_edge, %if.end16.i.thread.i
  %inc22.i.i = add nuw nsw i32 %k.058.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc22.i.i, 8
  br i1 %exitcond.not.i.i, label %for.inc23.i.i, label %for.cond1.i.i.for.body3.i.i_crit_edge

for.cond1.i.i.for.body3.i.i_crit_edge:            ; preds = %for.cond1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.cond1.i.i.for.body3.i.i_crit_edge, %for.cond1.preheader.i.i
  %dont_care_byte.1.off061.i.i = phi i1 [ %dont_care_byte.0.off067.i.i, %for.cond1.preheader.i.i ], [ %dont_care_byte.2.off0.i.i, %for.cond1.i.i.for.body3.i.i_crit_edge ]
  %valid_byte_cnt.160.i.i = phi i32 [ %valid_byte_cnt.066.i.i, %for.cond1.preheader.i.i ], [ %valid_byte_cnt.2.i.i, %for.cond1.i.i.for.body3.i.i_crit_edge ]
  %k.058.i.i = phi i32 [ 0, %for.cond1.preheader.i.i ], [ %inc22.i.i, %for.cond1.i.i.for.body3.i.i_crit_edge ]
  %27 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i29, align 4
  %arrayidx.i.i = getelementptr i8, ptr %28, i32 %j.065.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %30 to i32
  %shl.i.i = shl nuw nsw i32 1, %k.058.i.i
  %and.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i31 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i31, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %byte_seq.i, i32 %valid_byte_cnt.160.i.i
  %31 = ptrtoint ptr %pattern.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pattern.i.i, align 4
  %add4.i.i = add nuw nsw i32 %k.058.i.i, %mul.i.i
  %arrayidx5.i.i = getelementptr i8, ptr %32, i32 %add4.i.i
  %33 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx5.i.i, align 1
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %add.ptr.i.i, align 1
  %inc.i.i = add nsw i32 %valid_byte_cnt.160.i.i, 1
  br i1 %dont_care_byte.1.off061.i.i, label %if.then.i.i.if.then8_crit_edge, label %if.then.i.i.if.end11.i.i_crit_edge

if.then.i.i.if.end11.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i

if.then.i.i.if.then8_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.else.i.i:                                      ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid_byte_cnt.160.i.i)
  %tobool8.not.i.i = icmp ne i32 %valid_byte_cnt.160.i.i, 0
  %spec.select52.i.i = select i1 %tobool8.not.i.i, i1 true, i1 %dont_care_byte.1.off061.i.i
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.else.i.i, %if.then.i.i.if.end11.i.i_crit_edge
  %valid_byte_cnt.2.i.i = phi i32 [ %inc.i.i, %if.then.i.i.if.end11.i.i_crit_edge ], [ %valid_byte_cnt.160.i.i, %if.else.i.i ]
  %dont_care_byte.2.off0.i.i = phi i1 [ false, %if.then.i.i.if.end11.i.i_crit_edge ], [ %spec.select52.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid_byte_cnt.2.i.i)
  %tobool12.not.i.i = icmp ne i32 %valid_byte_cnt.2.i.i, 0
  %brmerge.i.i = select i1 %tobool12.not.i.i, i1 true, i1 %dont_care_byte.2.off0.i.i
  br i1 %brmerge.i.i, label %if.end16.i.i, label %if.end16.i.thread.i

if.end16.i.thread.i:                              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %pkt_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pkt_offset.i.i, align 4
  %inc15.i.i = add i32 %37, 1
  store i32 %inc15.i.i, ptr %pkt_offset.i.i, align 4
  br label %for.cond1.i.i

if.end16.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %valid_byte_cnt.2.i.i)
  %cmp18.i.i = icmp sgt i32 %valid_byte_cnt.2.i.i, 4
  br i1 %cmp18.i.i, label %if.end16.i.i.if.then8_crit_edge, label %if.end16.i.i.for.cond1.i.i_crit_edge

if.end16.i.i.for.cond1.i.i_crit_edge:             ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.i.i

if.end16.i.i.if.then8_crit_edge:                  ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

for.inc23.i.i:                                    ; preds = %for.cond1.i.i
  %inc24.i.i = add nuw nsw i32 %j.065.i.i, 1
  %38 = ptrtoint ptr %pattern_len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pattern_len.i.i, align 4
  %sub.i.i = add i32 %39, 7
  %div.i.i = sdiv i32 %sub.i.i, 8
  %cmp.i.i = icmp slt i32 %inc24.i.i, %div.i.i
  br i1 %cmp.i.i, label %for.inc23.i.i.for.cond1.preheader.i.i_crit_edge, label %for.inc23.i.i.if.end.i_crit_edge

for.inc23.i.i.if.end.i_crit_edge:                 ; preds = %for.inc23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.inc23.i.i.for.cond1.preheader.i.i_crit_edge:  ; preds = %for.inc23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.preheader.i.i

if.end.i:                                         ; preds = %for.inc23.i.i.if.end.i_crit_edge, %for.body.i30.if.end.i_crit_edge
  %valid_byte_cnt.0.lcssa.i.i = phi i32 [ 0, %for.body.i30.if.end.i_crit_edge ], [ %valid_byte_cnt.2.i.i, %for.inc23.i.i.if.end.i_crit_edge ]
  %conv26.i.i = trunc i32 %valid_byte_cnt.0.lcssa.i.i to i8
  %40 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv26.i.i, ptr %14, align 4
  %41 = ptrtoint ptr %patterns.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %patterns.i, align 4
  %pkt_offset.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %42, i32 %i.091.i, i32 3
  %43 = ptrtoint ptr %pkt_offset.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pkt_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i32 = icmp eq i32 %44, 0
  br i1 %tobool.not.i32, label %if.then6.i, label %if.end.i.if.end22.i_crit_edge

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then6.i:                                       ; preds = %if.end.i
  %45 = ptrtoint ptr %byte_seq.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %byte_seq.i, align 4
  %47 = and i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i71.i = icmp ne i8 %47, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv26.i.i)
  %cmp.i72.i = icmp eq i8 %conv26.i.i, 1
  %or.cond = select i1 %tobool.not.i71.i, i1 %cmp.i72.i, i1 false
  br i1 %or.cond, label %if.then6.i.land.lhs.true.i_crit_edge, label %if.else.i73.i

if.then6.i.land.lhs.true.i_crit_edge:             ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.else.i73.i:                                    ; preds = %if.then6.i
  %48 = ptrtoint ptr %byte_seq.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %lhsv.i = load i32, ptr %byte_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lhsv.i)
  %.not.i = icmp eq i32 %lhsv.i, -1
  br i1 %.not.i, label %if.else.i73.i.land.lhs.true.i_crit_edge, label %if.else6.i.i

if.else.i73.i.land.lhs.true.i_crit_edge:          ; preds = %if.else.i73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.else6.i.i:                                     ; preds = %if.else.i73.i
  %bcmp30.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %byte_seq.i, ptr noundef nonnull dereferenceable(2) @mwifiex_get_coalesce_pkt_type.ipv4_mc_mac, i32 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp30.i.i)
  %tobool8.not.i74.i = icmp eq i32 %bcmp30.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv26.i.i)
  %cmp12.i.i = icmp eq i8 %conv26.i.i, 2
  %or.cond37 = select i1 %tobool8.not.i74.i, i1 %cmp12.i.i, i1 false
  br i1 %or.cond37, label %if.else6.i.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.i

if.else6.i.i.land.lhs.true.i_crit_edge:           ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

lor.lhs.false.i.i:                                ; preds = %if.else6.i.i
  %bcmp31.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %byte_seq.i, ptr noundef nonnull dereferenceable(3) @mwifiex_get_coalesce_pkt_type.ipv6_mc_mac, i32 3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp31.i.i)
  %tobool15.not.i.i = icmp eq i32 %bcmp31.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv26.i.i)
  %cmp19.i.i = icmp eq i8 %conv26.i.i, 3
  %or.cond38 = select i1 %tobool15.not.i.i, i1 %cmp19.i.i, i1 false
  br i1 %or.cond38, label %lor.lhs.false.i.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.i.if.end22.i_crit_edge

lor.lhs.false.i.i.if.end22.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

lor.lhs.false.i.i.land.lhs.true.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.i.land.lhs.true.i_crit_edge, %if.else6.i.i.land.lhs.true.i_crit_edge, %if.else.i73.i.land.lhs.true.i_crit_edge, %if.then6.i.land.lhs.true.i_crit_edge
  %retval.0.i.ph.i = phi i8 [ 3, %if.else.i73.i.land.lhs.true.i_crit_edge ], [ 1, %if.then6.i.land.lhs.true.i_crit_edge ], [ 2, %if.else6.i.i.land.lhs.true.i_crit_edge ], [ 2, %lor.lhs.false.i.i.land.lhs.true.i_crit_edge ]
  %49 = ptrtoint ptr %pkt_type12.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pkt_type12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool14.not.i = icmp eq i8 %50, 0
  br i1 %tobool14.not.i, label %cleanup.i, label %land.lhs.true.i.if.then8_crit_edge

land.lhs.true.i.if.then8_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

cleanup.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %pkt_type12.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %retval.0.i.ph.i, ptr %pkt_type12.i, align 1
  br label %for.inc.i34

if.end22.i:                                       ; preds = %lor.lhs.false.i.i.if.end22.i_crit_edge, %if.end.i.if.end22.i_crit_edge
  %52 = ptrtoint ptr %condition.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %condition.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp23.i = icmp eq i32 %53, 0
  %..i = select i1 %cmp23.i, i8 -128, i8 -127
  %54 = ptrtoint ptr %param.089.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %..i, ptr %param.089.i, align 2
  %55 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %14, align 4
  %operand_len.i = getelementptr inbounds %struct.filt_field_param, ptr %param.089.i, i32 0, i32 1
  %57 = ptrtoint ptr %operand_len.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %operand_len.i, align 1
  %operand_byte_stream.i = getelementptr inbounds %struct.filt_field_param, ptr %param.089.i, i32 0, i32 3
  %conv33.i = zext i8 %56 to i32
  %58 = call ptr @memcpy(ptr %operand_byte_stream.i, ptr %byte_seq.i, i32 %conv33.i)
  %59 = ptrtoint ptr %patterns.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %patterns.i, align 4
  %pkt_offset36.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %60, i32 %i.091.i, i32 3
  %61 = ptrtoint ptr %pkt_offset36.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pkt_offset36.i, align 4
  %conv37.i = trunc i32 %62 to i16
  %offset.i = getelementptr inbounds %struct.filt_field_param, ptr %param.089.i, i32 0, i32 2
  %63 = ptrtoint ptr %offset.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv37.i, ptr %offset.i, align 2
  %incdec.ptr.i = getelementptr %struct.filt_field_param, ptr %param.089.i, i32 1
  %64 = ptrtoint ptr %num_of_fields.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %num_of_fields.i, align 2
  %inc.i33 = add i8 %65, 1
  store i8 %inc.i33, ptr %num_of_fields.i, align 2
  br label %for.inc.i34

for.inc.i34:                                      ; preds = %if.end22.i, %cleanup.i
  %param.1.i = phi ptr [ %incdec.ptr.i, %if.end22.i ], [ %param.089.i, %cleanup.i ]
  %inc38.i = add nuw nsw i32 %i.091.i, 1
  %66 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_patterns.i, align 4
  %cmp.i = icmp slt i32 %inc38.i, %67
  br i1 %cmp.i, label %for.inc.i34.for.body.i30_crit_edge, label %for.inc.i34.for.end.i_crit_edge

for.inc.i34.for.end.i_crit_edge:                  ; preds = %for.inc.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i34.for.body.i30_crit_edge:               ; preds = %for.inc.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i30

for.end.i:                                        ; preds = %for.inc.i34.for.end.i_crit_edge, %for.body.for.end.i_crit_edge
  %pkt_type39.i = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %coalesce_cfg, i32 0, i32 1, i32 %i.046, i32 2
  %68 = ptrtoint ptr %pkt_type39.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pkt_type39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool40.not.i = icmp eq i8 %69, 0
  br i1 %tobool40.not.i, label %for.end.i.if.then8_crit_edge, label %for.inc

for.end.i.if.then8_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then8:                                         ; preds = %for.end.i.if.then8_crit_edge, %land.lhs.true.i.if.then8_crit_edge, %if.end16.i.i.if.then8_crit_edge, %if.then.i.i.if.then8_crit_edge
  %.str.141.sink.i = phi ptr [ @.str.37, %if.then.i.i.if.then8_crit_edge ], [ @.str.37, %if.end16.i.i.if.then8_crit_edge ], [ @.str.141, %land.lhs.true.i.if.then8_crit_edge ], [ @.str.142, %for.end.i.if.then8_crit_edge ]
  %70 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cond.i, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %71, i32 noundef 4, ptr noundef nonnull %.str.141.sink.i) #12
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %byte_seq.i) #12
  %add = add nuw i32 %i.046, 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.140, i32 noundef %add) #12
  br label %cleanup

for.inc:                                          ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %byte_seq.i) #12
  %inc = add nuw nsw i32 %i.046, 1
  %72 = ptrtoint ptr %n_rules to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %n_rules, align 4
  %cmp = icmp slt i32 %inc, %73
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %call10 = call i32 @mwifiex_send_cmd(ptr noundef %cond.i, i16 noundef zeroext 266, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %coalesce_cfg, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then8, %if.then
  %retval.0 = phi i32 [ -95, %if.then8 ], [ %call10, %for.end ], [ %call2, %if.then ]
  call void @llvm.lifetime.end.p0(i64 290, ptr nonnull %coalesce_cfg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_channel_switch(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %scan_processing = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 73
  %5 = ptrtoint ptr %scan_processing to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scan_processing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.143) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cac_started = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 103, i32 36
  %7 = ptrtoint ptr %cac_started to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cac_started, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dfs_chandef = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 150
  %9 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %params, align 4
  %11 = ptrtoint ptr %dfs_chandef to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dfs_chandef, align 4
  %cmp.i = icmp eq ptr %10, %12
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.end4
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 1
  %13 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width.i, align 4
  %width2.i = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 150, i32 1
  %15 = ptrtoint ptr %width2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp3.i = icmp eq i32 %14, %16
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end7_crit_edge

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %center_freq1.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 2
  %17 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %center_freq1.i, align 4
  %center_freq15.i = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 150, i32 2
  %19 = ptrtoint ptr %center_freq15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %center_freq15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp6.i = icmp eq i32 %18, %20
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true4.i.if.end7_crit_edge

land.lhs.true4.i.if.end7_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %freq1_offset.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 5
  %21 = ptrtoint ptr %freq1_offset.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %freq1_offset.i, align 4
  %freq1_offset8.i = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 150, i32 5
  %23 = ptrtoint ptr %freq1_offset8.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %freq1_offset8.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp10.i = icmp eq i16 %22, %24
  br i1 %cmp10.i, label %cfg80211_chandef_identical.exit, label %land.lhs.true7.i.if.end7_crit_edge

land.lhs.true7.i.if.end7_crit_edge:               ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

cfg80211_chandef_identical.exit:                  ; preds = %land.lhs.true7.i
  %center_freq2.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 3
  %25 = ptrtoint ptr %center_freq2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %center_freq2.i, align 4
  %center_freq212.i = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 150, i32 3
  %27 = ptrtoint ptr %center_freq212.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %center_freq212.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp13.i = icmp eq i32 %26, %28
  br i1 %cmp13.i, label %cfg80211_chandef_identical.exit.cleanup_crit_edge, label %cfg80211_chandef_identical.exit.if.end7_crit_edge

cfg80211_chandef_identical.exit.if.end7_crit_edge: ; preds = %cfg80211_chandef_identical.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

cfg80211_chandef_identical.exit.cleanup_crit_edge: ; preds = %cfg80211_chandef_identical.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %cfg80211_chandef_identical.exit.if.end7_crit_edge, %land.lhs.true7.i.if.end7_crit_edge, %land.lhs.true4.i.if.end7_crit_edge, %land.lhs.true.i.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  %beacon_csa = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 1
  %tail = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail, align 4
  %tail_len = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 1, i32 11
  %31 = ptrtoint ptr %tail_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tail_len, align 4
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 37, ptr noundef %30, i32 noundef %32, ptr noundef null, i32 noundef 0, i32 noundef 0) #12
  %tobool10.not = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %34, i32 noundef 4, ptr noundef nonnull @.str.144) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %add.ptr = getelementptr %struct.ieee_types_header, ptr %call.i.i, i32 1
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool14.not = icmp eq i8 %36, 0
  br i1 %tobool14.not, label %if.end13.if.end22_crit_edge, label %if.then15

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then15:                                        ; preds = %if.end13
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 15
  %37 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %state.i, align 4
  %41 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %if.then17, label %if.then15.if.end19_crit_edge

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_off(ptr noundef %38) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then15.if.end19_crit_edge
  %42 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev, align 4
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %2, align 8
  tail call void @mwifiex_stop_net_dev_queue(ptr noundef %43, ptr noundef %45) #12
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %if.end13.if.end22_crit_edge
  %call23 = tail call i32 @mwifiex_del_mgmt_ies(ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %if.then25

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %47, i32 noundef 4, ptr noundef nonnull @.str.66) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  %call29 = tail call i32 @mwifiex_set_mgmt_ies(ptr noundef %2, ptr noundef %beacon_csa) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %49, i32 noundef 4, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.mwifiex_cfg80211_channel_switch) #12
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %50 = call ptr @memcpy(ptr %dfs_chandef, ptr %params, i32 28)
  %beacon_after = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 156
  %beacon_after36 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 6
  %51 = call ptr @memcpy(ptr %beacon_after, ptr %beacon_after36, i32 72)
  %dfs_chan_sw_workqueue = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 154
  %52 = ptrtoint ptr %dfs_chan_sw_workqueue to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dfs_chan_sw_workqueue, align 8
  %dfs_chan_sw_work = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 155
  %beacon_period = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 138, i32 11
  %54 = ptrtoint ptr %beacon_period to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %beacon_period, align 4
  %conv37 = zext i16 %55 to i32
  %count = getelementptr %struct.ieee_types_header, ptr %call.i.i, i32 2
  %56 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %count, align 1
  %conv = zext i8 %57 to i32
  %mul = mul nuw nsw i32 %conv37, %conv
  %58 = tail call i32 @llvm.umax.i32(i32 %mul, i32 100)
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %58) #12
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %53, ptr noundef %dfs_chan_sw_work, i32 noundef %call2.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then31, %if.then11, %cfg80211_chandef_identical.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ -14, %if.then31 ], [ 0, %if.end33 ], [ -22, %if.then11 ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %cfg80211_chandef_identical.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_tdls_chan_switch(ptr noundef %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %addr, i8 noundef zeroext %oper_class, ptr nocapture noundef readonly %chandef) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %sta_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_list_spinlock) #12
  %call1 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %2, ptr noundef %addr) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #12
  %dev3 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146, ptr noundef %addr) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.mwifiex_sta_node, ptr %call1, i32 0, i32 10, i32 9, i32 1, i32 3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #12
  %dev10 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.148, ptr noundef %addr) #19
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %tdls_status = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call1, i32 0, i32 8
  %6 = ptrtoint ptr %tdls_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tdls_status, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.182)
  switch i8 %7, label %if.end24 [
    i8 5, label %if.end11.if.then18_crit_edge
    i8 7, label %if.end11.if.then18_crit_edge54
  ]

if.end11.if.then18_crit_edge54:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.end11.if.then18_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.then18:                                        ; preds = %if.end11.if.then18_crit_edge, %if.end11.if.then18_crit_edge54
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #12
  %dev23 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.151) #19
  br label %cleanup

if.end24:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #12
  %9 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hw_value, align 2
  %conv27 = zext i16 %12 to i32
  %call28 = tail call zeroext i8 @mwifiex_get_sec_chan_offset(i32 noundef %conv27) #12
  %13 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chandef, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %conv31 = trunc i32 %16 to i8
  %conv32 = trunc i16 %12 to i8
  %call33 = tail call i32 @mwifiex_start_tdls_cs(ptr noundef %2, ptr noundef %addr, i8 noundef zeroext %conv32, i8 noundef zeroext %call28, i8 noundef zeroext %conv31) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then18, %if.then5, %if.then
  %retval.0 = phi i32 [ -114, %if.then18 ], [ 0, %if.end24 ], [ -2, %if.then5 ], [ -2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_cfg80211_tdls_cancel_chan_switch(ptr noundef %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %sta_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %2, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_list_spinlock) #12
  %call1 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %2, ptr noundef %addr) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #12
  %dev3 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.153, ptr noundef %addr) #19
  br label %if.end23

if.else:                                          ; preds = %entry
  %tdls_status = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call1, i32 0, i32 8
  %3 = ptrtoint ptr %tdls_status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tdls_status, align 4
  %.off = add i8 %4, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #12
  br i1 %switch, label %if.else20, label %if.then14

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %dev19 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.155, ptr noundef %addr) #19
  br label %if.end23

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 @mwifiex_stop_tdls_cs(ptr noundef %2, ptr noundef %addr) #12
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.then14, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_abort_cac(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_cancel_all_pending_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_wmm_lists_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_bypass_txlist_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_hs_params(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_wakeup_reason(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_report_wowlan_wakeup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_deauthenticate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_change_vif_to_p2p(ptr noundef %dev, i32 noundef %curr_iftype, i32 noundef %type) unnamed_addr #1 align 64 {
entry:
  %mode.i.i12 = alloca i16, align 2
  %mode.i13 = alloca i16, align 2
  %mode.i.i = alloca i16, align 2
  %mode.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.45, ptr noundef %dev) #12
  %call2 = tail call fastcc i32 @mwifiex_deinit_priv_params(ptr noundef nonnull %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @mwifiex_init_new_priv_params(ptr noundef nonnull %2, ptr noundef %dev, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %5 = zext i32 %curr_iftype to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %curr_iftype, label %sw.default.i [
    i32 0, label %if.end9.sw.bb.i_crit_edge
    i32 1, label %if.end9.sw.bb.i_crit_edge30
    i32 2, label %if.end9.sw.bb.i_crit_edge31
    i32 3, label %sw.bb2.i
    i32 8, label %if.end9.sw.bb7.i_crit_edge
    i32 9, label %if.end9.sw.bb7.i_crit_edge32
  ]

if.end9.sw.bb7.i_crit_edge32:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

if.end9.sw.bb7.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

if.end9.sw.bb.i_crit_edge31:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end9.sw.bb.i_crit_edge30:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end9.sw.bb.i_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end9.sw.bb.i_crit_edge, %if.end9.sw.bb.i_crit_edge30, %if.end9.sw.bb.i_crit_edge31
  %curr_iface_comb.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %curr_iface_comb.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %curr_iface_comb.i, align 1
  %conv1.i = add i8 %7, -1
  store i8 %conv1.i, ptr %curr_iface_comb.i, align 1
  br label %update_vif_type_counter.exit

sw.bb2.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %uap_intf.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %uap_intf.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %uap_intf.i, align 1
  %conv6.i = add i8 %9, -1
  store i8 %conv6.i, ptr %uap_intf.i, align 1
  br label %update_vif_type_counter.exit

sw.bb7.i:                                         ; preds = %if.end9.sw.bb7.i_crit_edge, %if.end9.sw.bb7.i_crit_edge32
  %p2p_intf.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %p2p_intf.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %p2p_intf.i, align 1
  %conv11.i = add i8 %11, -1
  store i8 %conv11.i, ptr %p2p_intf.i, align 1
  br label %update_vif_type_counter.exit

sw.default.i:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %curr_iftype) #12
  br label %update_vif_type_counter.exit

update_vif_type_counter.exit:                     ; preds = %sw.default.i, %sw.bb7.i, %sw.bb2.i, %sw.bb.i
  %12 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %type, label %sw.default.i10 [
    i32 0, label %update_vif_type_counter.exit.sw.bb.i3_crit_edge
    i32 1, label %update_vif_type_counter.exit.sw.bb.i3_crit_edge33
    i32 2, label %update_vif_type_counter.exit.sw.bb.i3_crit_edge34
    i32 3, label %update_vif_type_counter.exit11.thread
    i32 8, label %update_vif_type_counter.exit.sw.bb7.i9_crit_edge
    i32 9, label %update_vif_type_counter.exit.sw.bb7.i9_crit_edge35
  ]

update_vif_type_counter.exit.sw.bb7.i9_crit_edge35: ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i9

update_vif_type_counter.exit.sw.bb7.i9_crit_edge: ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i9

update_vif_type_counter.exit.sw.bb.i3_crit_edge34: ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i3

update_vif_type_counter.exit.sw.bb.i3_crit_edge33: ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i3

update_vif_type_counter.exit.sw.bb.i3_crit_edge:  ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i3

sw.bb.i3:                                         ; preds = %update_vif_type_counter.exit.sw.bb.i3_crit_edge, %update_vif_type_counter.exit.sw.bb.i3_crit_edge33, %update_vif_type_counter.exit.sw.bb.i3_crit_edge34
  %curr_iface_comb.i1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %curr_iface_comb.i1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %curr_iface_comb.i1, align 1
  %conv1.i2 = add i8 %14, 1
  store i8 %conv1.i2, ptr %curr_iface_comb.i1, align 1
  br label %update_vif_type_counter.exit11

update_vif_type_counter.exit11.thread:            ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  %uap_intf.i4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %uap_intf.i4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %uap_intf.i4, align 1
  %conv6.i5 = add i8 %16, 1
  store i8 %conv6.i5, ptr %uap_intf.i4, align 1
  %ieee80211_ptr24 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %17 = ptrtoint ptr %ieee80211_ptr24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ieee80211_ptr24, align 16
  %iftype25 = getelementptr inbounds %struct.wireless_dev, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %iftype25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %iftype25, align 4
  br label %sw.default

sw.bb7.i9:                                        ; preds = %update_vif_type_counter.exit.sw.bb7.i9_crit_edge, %update_vif_type_counter.exit.sw.bb7.i9_crit_edge35
  %p2p_intf.i7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %p2p_intf.i7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %p2p_intf.i7, align 1
  %conv11.i8 = add i8 %21, 1
  store i8 %conv11.i8, ptr %p2p_intf.i7, align 1
  br label %update_vif_type_counter.exit11

sw.default.i10:                                   ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %type) #12
  br label %update_vif_type_counter.exit11

update_vif_type_counter.exit11:                   ; preds = %sw.default.i10, %sw.bb7.i9, %sw.bb.i3
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %22 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %type, ptr %iftype, align 4
  %25 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %type, label %update_vif_type_counter.exit11.sw.default_crit_edge [
    i32 8, label %sw.bb
    i32 9, label %sw.bb14
  ]

update_vif_type_counter.exit11.sw.default_crit_edge: ; preds = %update_vif_type_counter.exit11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

sw.bb:                                            ; preds = %update_vif_type_counter.exit11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode.i.i) #12
  %26 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %mode.i.i, align 2
  %call.i.i = call i32 @mwifiex_send_cmd(ptr noundef nonnull %2, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %mode.i.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.not.i = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode.i.i) #12
  br i1 %tobool.not.i.not.i, label %if.end.i, label %sw.bb.mwifiex_cfg80211_init_p2p_client.exit.thread_crit_edge

sw.bb.mwifiex_cfg80211_init_p2p_client.exit.thread_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_cfg80211_init_p2p_client.exit.thread

if.end.i:                                         ; preds = %sw.bb
  %27 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %mode.i, align 2
  %call1.i = call i32 @mwifiex_send_cmd(ptr noundef nonnull %2, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %mode.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %mwifiex_cfg80211_init_p2p_client.exit, label %if.end.i.mwifiex_cfg80211_init_p2p_client.exit.thread_crit_edge

if.end.i.mwifiex_cfg80211_init_p2p_client.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_cfg80211_init_p2p_client.exit.thread

mwifiex_cfg80211_init_p2p_client.exit.thread:     ; preds = %if.end.i.mwifiex_cfg80211_init_p2p_client.exit.thread_crit_edge, %sw.bb.mwifiex_cfg80211_init_p2p_client.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode.i) #12
  br label %cleanup

mwifiex_cfg80211_init_p2p_client.exit:            ; preds = %if.end.i
  %28 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 3, ptr %mode.i, align 2
  %call5.i = call i32 @mwifiex_send_cmd(ptr noundef nonnull %2, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %mode.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i.not = icmp eq i32 %call5.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode.i) #12
  br i1 %tobool6.not.i.not, label %mwifiex_cfg80211_init_p2p_client.exit.sw.epilog_crit_edge, label %mwifiex_cfg80211_init_p2p_client.exit.cleanup_crit_edge

mwifiex_cfg80211_init_p2p_client.exit.cleanup_crit_edge: ; preds = %mwifiex_cfg80211_init_p2p_client.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mwifiex_cfg80211_init_p2p_client.exit.sw.epilog_crit_edge: ; preds = %mwifiex_cfg80211_init_p2p_client.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb14:                                          ; preds = %update_vif_type_counter.exit11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode.i13) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode.i.i12) #12
  %29 = ptrtoint ptr %mode.i.i12 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %mode.i.i12, align 2
  %call.i.i14 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %2, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %mode.i.i12, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %tobool.not.i.not.i15 = icmp eq i32 %call.i.i14, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode.i.i12) #12
  br i1 %tobool.not.i.not.i15, label %if.end.i18, label %sw.bb14.mwifiex_cfg80211_init_p2p_go.exit.thread_crit_edge

sw.bb14.mwifiex_cfg80211_init_p2p_go.exit.thread_crit_edge: ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_cfg80211_init_p2p_go.exit.thread

if.end.i18:                                       ; preds = %sw.bb14
  %30 = ptrtoint ptr %mode.i13 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %mode.i13, align 2
  %call1.i16 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %2, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %mode.i13, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool2.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool2.not.i17, label %mwifiex_cfg80211_init_p2p_go.exit, label %if.end.i18.mwifiex_cfg80211_init_p2p_go.exit.thread_crit_edge

if.end.i18.mwifiex_cfg80211_init_p2p_go.exit.thread_crit_edge: ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_cfg80211_init_p2p_go.exit.thread

mwifiex_cfg80211_init_p2p_go.exit.thread:         ; preds = %if.end.i18.mwifiex_cfg80211_init_p2p_go.exit.thread_crit_edge, %sw.bb14.mwifiex_cfg80211_init_p2p_go.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode.i13) #12
  br label %cleanup

mwifiex_cfg80211_init_p2p_go.exit:                ; preds = %if.end.i18
  %31 = ptrtoint ptr %mode.i13 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 2, ptr %mode.i13, align 2
  %call5.i19 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %2, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %mode.i13, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i19)
  %tobool6.not.i20.not = icmp eq i32 %call5.i19, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode.i13) #12
  br i1 %tobool6.not.i20.not, label %mwifiex_cfg80211_init_p2p_go.exit.sw.epilog_crit_edge, label %mwifiex_cfg80211_init_p2p_go.exit.cleanup_crit_edge

mwifiex_cfg80211_init_p2p_go.exit.cleanup_crit_edge: ; preds = %mwifiex_cfg80211_init_p2p_go.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mwifiex_cfg80211_init_p2p_go.exit.sw.epilog_crit_edge: ; preds = %mwifiex_cfg80211_init_p2p_go.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %update_vif_type_counter.exit11.sw.default_crit_edge, %update_vif_type_counter.exit11.thread
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.46, ptr noundef %dev, i32 noundef %type) #12
  br label %cleanup

sw.epilog:                                        ; preds = %mwifiex_cfg80211_init_p2p_go.exit.sw.epilog_crit_edge, %mwifiex_cfg80211_init_p2p_client.exit.sw.epilog_crit_edge
  %call21 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %2, i16 noundef zeroext 247, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %call25 = call i32 @mwifiex_sta_init_cmd(ptr noundef nonnull %2, i8 noundef zeroext 0, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp ne i32 %call25, 0
  %. = sext i1 %tobool26.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %sw.epilog.cleanup_crit_edge, %sw.default, %mwifiex_cfg80211_init_p2p_go.exit.cleanup_crit_edge, %mwifiex_cfg80211_init_p2p_go.exit.thread, %mwifiex_cfg80211_init_p2p_client.exit.cleanup_crit_edge, %mwifiex_cfg80211_init_p2p_client.exit.thread, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end5.cleanup_crit_edge ], [ -14, %mwifiex_cfg80211_init_p2p_client.exit.cleanup_crit_edge ], [ -14, %mwifiex_cfg80211_init_p2p_go.exit.cleanup_crit_edge ], [ -1, %sw.epilog.cleanup_crit_edge ], [ %., %if.end24 ], [ -14, %mwifiex_cfg80211_init_p2p_client.exit.thread ], [ -14, %mwifiex_cfg80211_init_p2p_go.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_change_vif_to_ap(ptr noundef %dev, i32 noundef %curr_iftype, i32 noundef %type) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.48, ptr noundef %dev) #12
  %call2 = tail call fastcc i32 @mwifiex_deinit_priv_params(ptr noundef nonnull %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @mwifiex_init_new_priv_params(ptr noundef nonnull %2, ptr noundef %dev, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %5 = zext i32 %curr_iftype to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %curr_iftype, label %sw.default.i [
    i32 0, label %if.end9.sw.bb.i_crit_edge
    i32 1, label %if.end9.sw.bb.i_crit_edge12
    i32 2, label %if.end9.sw.bb.i_crit_edge13
    i32 3, label %sw.bb2.i
    i32 8, label %if.end9.sw.bb7.i_crit_edge
    i32 9, label %if.end9.sw.bb7.i_crit_edge14
  ]

if.end9.sw.bb7.i_crit_edge14:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

if.end9.sw.bb7.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

if.end9.sw.bb.i_crit_edge13:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end9.sw.bb.i_crit_edge12:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end9.sw.bb.i_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end9.sw.bb.i_crit_edge, %if.end9.sw.bb.i_crit_edge12, %if.end9.sw.bb.i_crit_edge13
  %curr_iface_comb.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %curr_iface_comb.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %curr_iface_comb.i, align 1
  %conv1.i = add i8 %7, -1
  store i8 %conv1.i, ptr %curr_iface_comb.i, align 1
  br label %update_vif_type_counter.exit

sw.bb2.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %uap_intf.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %uap_intf.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %uap_intf.i, align 1
  %conv6.i = add i8 %9, -1
  store i8 %conv6.i, ptr %uap_intf.i, align 1
  br label %update_vif_type_counter.exit

sw.bb7.i:                                         ; preds = %if.end9.sw.bb7.i_crit_edge, %if.end9.sw.bb7.i_crit_edge14
  %p2p_intf.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %p2p_intf.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %p2p_intf.i, align 1
  %conv11.i = add i8 %11, -1
  store i8 %conv11.i, ptr %p2p_intf.i, align 1
  br label %update_vif_type_counter.exit

sw.default.i:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %curr_iftype) #12
  br label %update_vif_type_counter.exit

update_vif_type_counter.exit:                     ; preds = %sw.default.i, %sw.bb7.i, %sw.bb2.i, %sw.bb.i
  %12 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %type, label %sw.default.i10 [
    i32 0, label %update_vif_type_counter.exit.sw.bb.i3_crit_edge
    i32 1, label %update_vif_type_counter.exit.sw.bb.i3_crit_edge15
    i32 2, label %update_vif_type_counter.exit.sw.bb.i3_crit_edge16
    i32 3, label %sw.bb2.i6
    i32 8, label %update_vif_type_counter.exit.sw.bb7.i9_crit_edge
    i32 9, label %update_vif_type_counter.exit.sw.bb7.i9_crit_edge17
  ]

update_vif_type_counter.exit.sw.bb7.i9_crit_edge17: ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i9

update_vif_type_counter.exit.sw.bb7.i9_crit_edge: ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i9

update_vif_type_counter.exit.sw.bb.i3_crit_edge16: ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i3

update_vif_type_counter.exit.sw.bb.i3_crit_edge15: ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i3

update_vif_type_counter.exit.sw.bb.i3_crit_edge:  ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i3

sw.bb.i3:                                         ; preds = %update_vif_type_counter.exit.sw.bb.i3_crit_edge, %update_vif_type_counter.exit.sw.bb.i3_crit_edge15, %update_vif_type_counter.exit.sw.bb.i3_crit_edge16
  %curr_iface_comb.i1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %curr_iface_comb.i1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %curr_iface_comb.i1, align 1
  %conv1.i2 = add i8 %14, 1
  store i8 %conv1.i2, ptr %curr_iface_comb.i1, align 1
  br label %update_vif_type_counter.exit11

sw.bb2.i6:                                        ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  %uap_intf.i4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %uap_intf.i4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %uap_intf.i4, align 1
  %conv6.i5 = add i8 %16, 1
  store i8 %conv6.i5, ptr %uap_intf.i4, align 1
  br label %update_vif_type_counter.exit11

sw.bb7.i9:                                        ; preds = %update_vif_type_counter.exit.sw.bb7.i9_crit_edge, %update_vif_type_counter.exit.sw.bb7.i9_crit_edge17
  %p2p_intf.i7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %p2p_intf.i7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %p2p_intf.i7, align 1
  %conv11.i8 = add i8 %18, 1
  store i8 %conv11.i8, ptr %p2p_intf.i7, align 1
  br label %update_vif_type_counter.exit11

sw.default.i10:                                   ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %type) #12
  br label %update_vif_type_counter.exit11

update_vif_type_counter.exit11:                   ; preds = %sw.default.i10, %sw.bb7.i9, %sw.bb2.i6, %sw.bb.i3
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %19 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %type, ptr %iftype, align 4
  %call10 = tail call i32 @mwifiex_send_cmd(ptr noundef nonnull %2, i16 noundef zeroext 247, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %update_vif_type_counter.exit11.cleanup_crit_edge

update_vif_type_counter.exit11.cleanup_crit_edge: ; preds = %update_vif_type_counter.exit11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %update_vif_type_counter.exit11
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = tail call i32 @mwifiex_sta_init_cmd(ptr noundef nonnull %2, i8 noundef zeroext 0, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp ne i32 %call14, 0
  %. = sext i1 %tobool15.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %update_vif_type_counter.exit11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end5.cleanup_crit_edge ], [ -1, %update_vif_type_counter.exit11.cleanup_crit_edge ], [ %., %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_change_vif_to_sta_adhoc(ptr noundef %dev, i32 noundef %curr_iftype, i32 noundef %type) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp eq i32 %type, 2
  %.str.49..str.50 = select i1 %cmp, ptr @.str.49, ptr @.str.50
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull %.str.49..str.50, ptr noundef %dev) #12
  %call6 = tail call fastcc i32 @mwifiex_deinit_priv_params(ptr noundef nonnull %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call fastcc i32 @mwifiex_init_new_priv_params(ptr noundef nonnull %2, ptr noundef %dev, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %5 = zext i32 %curr_iftype to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %curr_iftype, label %sw.default.i [
    i32 0, label %if.end13.sw.bb.i_crit_edge
    i32 1, label %if.end13.sw.bb.i_crit_edge12
    i32 2, label %if.end13.sw.bb.i_crit_edge13
    i32 3, label %sw.bb2.i
    i32 8, label %if.end13.sw.bb7.i_crit_edge
    i32 9, label %if.end13.sw.bb7.i_crit_edge14
  ]

if.end13.sw.bb7.i_crit_edge14:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

if.end13.sw.bb7.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

if.end13.sw.bb.i_crit_edge13:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end13.sw.bb.i_crit_edge12:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end13.sw.bb.i_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end13.sw.bb.i_crit_edge, %if.end13.sw.bb.i_crit_edge12, %if.end13.sw.bb.i_crit_edge13
  %curr_iface_comb.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %curr_iface_comb.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %curr_iface_comb.i, align 1
  %conv1.i = add i8 %7, -1
  store i8 %conv1.i, ptr %curr_iface_comb.i, align 1
  br label %update_vif_type_counter.exit

sw.bb2.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %uap_intf.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %uap_intf.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %uap_intf.i, align 1
  %conv6.i = add i8 %9, -1
  store i8 %conv6.i, ptr %uap_intf.i, align 1
  br label %update_vif_type_counter.exit

sw.bb7.i:                                         ; preds = %if.end13.sw.bb7.i_crit_edge, %if.end13.sw.bb7.i_crit_edge14
  %p2p_intf.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %p2p_intf.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %p2p_intf.i, align 1
  %conv11.i = add i8 %11, -1
  store i8 %conv11.i, ptr %p2p_intf.i, align 1
  br label %update_vif_type_counter.exit

sw.default.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %curr_iftype) #12
  br label %update_vif_type_counter.exit

update_vif_type_counter.exit:                     ; preds = %sw.default.i, %sw.bb7.i, %sw.bb2.i, %sw.bb.i
  %12 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %type, label %sw.default.i10 [
    i32 0, label %update_vif_type_counter.exit.sw.bb.i3_crit_edge
    i32 1, label %update_vif_type_counter.exit.sw.bb.i3_crit_edge15
    i32 2, label %update_vif_type_counter.exit.sw.bb.i3_crit_edge16
    i32 3, label %sw.bb2.i6
    i32 8, label %update_vif_type_counter.exit.sw.bb7.i9_crit_edge
    i32 9, label %update_vif_type_counter.exit.sw.bb7.i9_crit_edge17
  ]

update_vif_type_counter.exit.sw.bb7.i9_crit_edge17: ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i9

update_vif_type_counter.exit.sw.bb7.i9_crit_edge: ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i9

update_vif_type_counter.exit.sw.bb.i3_crit_edge16: ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i3

update_vif_type_counter.exit.sw.bb.i3_crit_edge15: ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i3

update_vif_type_counter.exit.sw.bb.i3_crit_edge:  ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i3

sw.bb.i3:                                         ; preds = %update_vif_type_counter.exit.sw.bb.i3_crit_edge, %update_vif_type_counter.exit.sw.bb.i3_crit_edge15, %update_vif_type_counter.exit.sw.bb.i3_crit_edge16
  %curr_iface_comb.i1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %curr_iface_comb.i1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %curr_iface_comb.i1, align 1
  %conv1.i2 = add i8 %14, 1
  store i8 %conv1.i2, ptr %curr_iface_comb.i1, align 1
  br label %update_vif_type_counter.exit11

sw.bb2.i6:                                        ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  %uap_intf.i4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %uap_intf.i4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %uap_intf.i4, align 1
  %conv6.i5 = add i8 %16, 1
  store i8 %conv6.i5, ptr %uap_intf.i4, align 1
  br label %update_vif_type_counter.exit11

sw.bb7.i9:                                        ; preds = %update_vif_type_counter.exit.sw.bb7.i9_crit_edge, %update_vif_type_counter.exit.sw.bb7.i9_crit_edge17
  %p2p_intf.i7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %p2p_intf.i7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %p2p_intf.i7, align 1
  %conv11.i8 = add i8 %18, 1
  store i8 %conv11.i8, ptr %p2p_intf.i7, align 1
  br label %update_vif_type_counter.exit11

sw.default.i10:                                   ; preds = %update_vif_type_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %type) #12
  br label %update_vif_type_counter.exit11

update_vif_type_counter.exit11:                   ; preds = %sw.default.i10, %sw.bb7.i9, %sw.bb2.i6, %sw.bb.i3
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %19 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %type, ptr %iftype, align 4
  %call14 = tail call i32 @mwifiex_send_cmd(ptr noundef nonnull %2, i16 noundef zeroext 247, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %update_vif_type_counter.exit11.cleanup_crit_edge

update_vif_type_counter.exit11.cleanup_crit_edge: ; preds = %update_vif_type_counter.exit11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %update_vif_type_counter.exit11
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i32 @mwifiex_sta_init_cmd(ptr noundef nonnull %2, i8 noundef zeroext 0, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp ne i32 %call18, 0
  %. = sext i1 %tobool19.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %update_vif_type_counter.exit11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end9.cleanup_crit_edge ], [ -1, %update_vif_type_counter.exit11.cleanup_crit_edge ], [ %., %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_deinit_priv_params(ptr noundef %priv) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mgmt_frame_mask = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 127
  %2 = ptrtoint ptr %mgmt_frame_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mgmt_frame_mask, align 8
  %call = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 268, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %mgmt_frame_mask, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.47) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @mwifiex_deauthenticate(ptr noundef %priv, ptr noundef null) #12
  %main_proc_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 36
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %main_proc_lock) #12
  %main_locked = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 34
  %3 = ptrtoint ptr %main_locked to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %main_locked, align 4
  %mwifiex_processing = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 37
  %4 = ptrtoint ptr %mwifiex_processing to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mwifiex_processing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %main_proc_lock, i32 noundef %call6) #12
  br i1 %tobool9.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %workqueue = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %7) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %rx_proc_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 70
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_proc_lock) #12
  %rx_locked = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %rx_locked to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %rx_locked, align 1
  %rx_processing = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 31
  %9 = ptrtoint ptr %rx_processing to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rx_processing, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool14.not = icmp eq i8 %10, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_proc_lock) #12
  br i1 %tobool14.not, label %if.end13.if.end19_crit_edge, label %if.then15

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %rx_workqueue = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 26
  %11 = ptrtoint ptr %rx_workqueue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %12) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13.if.end19_crit_edge
  tail call void @mwifiex_free_priv(ptr noundef %priv) #12
  %iftype = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103, i32 1
  %13 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %iftype, align 4
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %14 = ptrtoint ptr %bss_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %bss_mode, align 8
  %authentication_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 5
  %15 = ptrtoint ptr %authentication_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %authentication_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_init_new_priv_params(ptr noundef %priv, ptr noundef %dev, i32 noundef %type) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @mwifiex_init_priv(ptr noundef %priv) #12
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %bss_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %bss_mode, align 8
  %iftype = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103, i32 1
  %3 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %iftype, align 4
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void @mwifiex_init_priv_params(ptr noundef %priv, ptr noundef %5) #12
  %bss_started = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 5
  %6 = ptrtoint ptr %bss_started to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %bss_started, align 8
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 9
  br i1 %7, label %switch.hole_check, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %entry.sw.default_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.46, ptr noundef %dev, i32 noundef %type) #12
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 391, %switch.maskindex
  %8 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %switch.lobit.not = icmp eq i16 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.mwifiex_init_new_priv_params, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %9)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep46 = getelementptr inbounds [9 x i8], ptr @switch.table.mwifiex_init_new_priv_params.160, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep46 to i32
  call void @__asan_load1_noabort(i32 %10)
  %switch.load47 = load i8, ptr %switch.gep46, align 1
  %bss_role9 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %11 = ptrtoint ptr %bss_role9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %switch.load, ptr %bss_role9, align 1
  %bss_type10 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %bss_type10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %switch.load47, ptr %bss_type10, align 4
  %main_proc_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 36
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %main_proc_lock) #12
  %main_locked = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 34
  %13 = ptrtoint ptr %main_locked to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %main_locked, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %main_proc_lock, i32 noundef %call13) #12
  %rx_proc_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 70
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_proc_lock) #12
  %rx_locked = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %rx_locked to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %rx_locked, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_proc_lock) #12
  %call18 = tail call i32 @mwifiex_set_mac_address(ptr noundef %priv, ptr noundef %dev, i1 noundef zeroext false, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %sw.default
  %retval.0 = phi i32 [ -95, %sw.default ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_free_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_init_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_encode(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_sys_config_invalid_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_uap_set_channel(ptr noundef, ptr noundef, [7 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_uap_rates(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_secure_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_ht_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_vht_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_vht_width(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_11ac_ba_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_ba_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_wmm_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_is_11h_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_tpc_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_chandef_dfs_required(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11h_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_config_uap_11d(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_config_start_uap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_mgmt_ies(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wake_up_net_dev_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_cancel_scan(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_del_mgmt_ies(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_tdls_oper(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_dump_station_info(ptr noundef %priv, ptr noundef readonly %node, ptr noundef %sinfo) unnamed_addr #1 align 64 {
entry:
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #12
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rate, align 4, !annotation !381
  %1 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 10124, ptr %sinfo, align 8
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bss_role, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %if.end24, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 14222, ptr %sinfo, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %stats = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 11
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %stats, align 8
  %9 = trunc i64 %8 to i32
  %conv5 = sub i32 %6, %9
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %conv5) #12
  %inactive_time = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 2
  %10 = ptrtoint ptr %inactive_time to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %inactive_time, align 4
  %rssi = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rssi, align 8
  %signal = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %13 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %signal, align 1
  %14 = load i8, ptr %rssi, align 8
  %signal_avg = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 10
  %15 = ptrtoint ptr %signal_avg to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %signal_avg, align 2
  %rx_bytes = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 11, i32 2
  %16 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rx_bytes, align 8
  %rx_bytes10 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 4
  %18 = ptrtoint ptr %rx_bytes10 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %rx_bytes10, align 8
  %tx_bytes = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 11, i32 3
  %19 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tx_bytes, align 8
  %tx_bytes12 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 5
  %21 = ptrtoint ptr %tx_bytes12 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %tx_bytes12, align 8
  %rx_packets = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 11, i32 4
  %22 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_packets, align 8
  %rx_packets14 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 16
  %24 = ptrtoint ptr %rx_packets14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rx_packets14, align 4
  %tx_packets = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 11, i32 5
  %25 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_packets, align 4
  %tx_packets16 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 17
  %27 = ptrtoint ptr %tx_packets16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tx_packets16, align 8
  %tx_failed = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 11, i32 6
  %28 = ptrtoint ptr %tx_failed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_failed, align 8
  %tx_failed18 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 19
  %30 = ptrtoint ptr %tx_failed18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tx_failed18, align 8
  %tx_rate = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 25
  %31 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tx_rate, align 4
  %last_tx_htinfo = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 11, i32 8
  %33 = ptrtoint ptr %last_tx_htinfo to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %last_tx_htinfo, align 1
  %txrate = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14
  tail call fastcc void @mwifiex_parse_htinfo(ptr noundef %priv, i8 noundef zeroext %32, i8 noundef zeroext %34, ptr noundef %txrate)
  %last_tx_rate = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 11, i32 7
  %35 = ptrtoint ptr %last_tx_rate to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %last_tx_rate, align 4
  %conv21 = zext i8 %36 to i16
  %mul = mul nuw nsw i16 %conv21, 5
  %legacy = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 2
  %37 = ptrtoint ptr %legacy to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %mul, ptr %legacy, align 2
  br label %cleanup

if.end24:                                         ; preds = %entry
  %call25 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 164, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %39, i32 noundef 4, ptr noundef nonnull @.str.71) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @mwifiex_drv_get_data_rate(ptr noundef %priv, ptr noundef nonnull %rate) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %41, i32 noundef 4, ptr noundef nonnull @.str.72) #12
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %dtim_period = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 52
  %call34 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 22, i16 noundef zeroext 0, i32 noundef 3, ptr noundef %dtim_period, i1 noundef zeroext true) #12
  %tx_rate35 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 25
  %42 = ptrtoint ptr %tx_rate35 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tx_rate35, align 4
  %tx_htinfo = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 26
  %44 = ptrtoint ptr %tx_htinfo to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tx_htinfo, align 1
  %txrate36 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14
  call fastcc void @mwifiex_parse_htinfo(ptr noundef %priv, i8 noundef zeroext %43, i8 noundef zeroext %45, ptr noundef %txrate36)
  %bcn_rssi_avg = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 43
  %46 = ptrtoint ptr %bcn_rssi_avg to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %bcn_rssi_avg, align 2
  %conv37 = trunc i16 %47 to i8
  %signal_avg38 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 10
  %48 = ptrtoint ptr %signal_avg38 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv37, ptr %signal_avg38, align 2
  %stats39 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 16
  %rx_bytes40 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 16, i32 2
  %49 = ptrtoint ptr %rx_bytes40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_bytes40, align 8
  %conv41 = zext i32 %50 to i64
  %rx_bytes42 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 4
  %51 = ptrtoint ptr %rx_bytes42 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv41, ptr %rx_bytes42, align 8
  %tx_bytes44 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 16, i32 3
  %52 = ptrtoint ptr %tx_bytes44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_bytes44, align 4
  %conv45 = zext i32 %53 to i64
  %tx_bytes46 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 5
  %54 = ptrtoint ptr %tx_bytes46 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv45, ptr %tx_bytes46, align 8
  %55 = ptrtoint ptr %stats39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stats39, align 8
  %rx_packets49 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 16
  %57 = ptrtoint ptr %rx_packets49 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %rx_packets49, align 4
  %tx_packets51 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 16, i32 1
  %58 = ptrtoint ptr %tx_packets51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_packets51, align 4
  %tx_packets52 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 17
  %60 = ptrtoint ptr %tx_packets52 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %tx_packets52, align 8
  %61 = load i16, ptr %bcn_rssi_avg, align 2
  %conv54 = trunc i16 %61 to i8
  %signal55 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %62 = ptrtoint ptr %signal55 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv54, ptr %signal55, align 1
  %63 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rate, align 4
  %65 = trunc i32 %64 to i16
  %conv57 = mul i16 %65, 5
  %legacy59 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 2
  %66 = ptrtoint ptr %legacy59 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv57, ptr %legacy59, align 2
  %67 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %sinfo, align 8
  %or61 = or i64 %68, 16384
  store i64 %or61, ptr %sinfo, align 8
  %rxpd_rate = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 28
  %69 = ptrtoint ptr %rxpd_rate to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %rxpd_rate, align 1
  %rxpd_htinfo = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 27
  %71 = ptrtoint ptr %rxpd_htinfo to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rxpd_htinfo, align 2
  %rxrate = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 15
  call fastcc void @mwifiex_parse_htinfo(ptr noundef %priv, i8 noundef zeroext %70, i8 noundef zeroext %72, ptr noundef %rxrate)
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %73 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bss_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp62 = icmp eq i32 %74, 2
  br i1 %cmp62, label %if.then64, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then64:                                        ; preds = %if.end33
  %75 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %sinfo, align 8
  %or66 = or i64 %76, 32768
  store i64 %or66, ptr %sinfo, align 8
  %bss_param = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 21
  %77 = ptrtoint ptr %bss_param to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %bss_param, align 8
  %cap_info_bitmap = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 20
  %78 = ptrtoint ptr %cap_info_bitmap to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %cap_info_bitmap, align 8
  %80 = trunc i16 %79 to i8
  %81 = lshr i8 %80, 4
  %82 = and i8 %81, 2
  store i8 %82, ptr %bss_param, align 8
  %83 = load i16, ptr %cap_info_bitmap, align 8
  %84 = and i16 %83, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool82.not = icmp eq i16 %84, 0
  br i1 %tobool82.not, label %if.then64.if.end89_crit_edge, label %if.then83

if.then64.if.end89_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then83:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %85 = or i8 %82, 4
  %86 = ptrtoint ptr %bss_param to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %bss_param, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then83, %if.then64.if.end89_crit_edge
  %87 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %dtim_period, align 2
  %dtim_period92 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 21, i32 1
  %89 = ptrtoint ptr %dtim_period92 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %dtim_period92, align 1
  %beacon_period = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 7
  %90 = ptrtoint ptr %beacon_period to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %beacon_period, align 8
  %beacon_interval = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 21, i32 2
  %92 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %beacon_interval, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.end33.cleanup_crit_edge, %if.then31, %if.then27, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %if.then27 ], [ -14, %if.then31 ], [ -2, %if.then.cleanup_crit_edge ], [ 0, %if.end89 ], [ 0, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mwifiex_parse_htinfo(ptr nocapture noundef readonly %priv, i8 noundef zeroext %rateinfo, i8 noundef zeroext %htinfo, ptr noundef %rate) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %conv47 = zext i8 %htinfo to i32
  %and48 = and i32 %conv47, 1
  br i1 %tobool.not, label %if.else46, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool2.not = icmp eq i32 %and48, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %mcs = getelementptr inbounds %struct.rate_info, ptr %rate, i32 0, i32 1
  %4 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %rateinfo, ptr %mcs, align 1
  %5 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rate, align 2
  %7 = or i8 %6, 1
  store i8 %7, ptr %rate, align 2
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %and7 = and i32 %conv47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end18_crit_edge, label %if.then9

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = and i8 %rateinfo, 15
  %mcs13 = getelementptr inbounds %struct.rate_info, ptr %rate, i32 0, i32 1
  %9 = ptrtoint ptr %mcs13 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %mcs13, align 1
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rate, align 2
  %12 = or i8 %11, 2
  store i8 %12, ptr %rate, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %if.end.if.end18_crit_edge
  %and20 = and i32 %conv47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end76_crit_edge, label %if.then22

if.end18.if.end76_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then22:                                        ; preds = %if.end18
  %13 = shl nuw nsw i32 %conv47, 1
  %switch.shiftamt = and i32 %13, 24
  %switch.downshift = lshr i32 84148992, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %bw30 = getelementptr inbounds %struct.rate_info, ptr %rate, i32 0, i32 4
  %14 = ptrtoint ptr %bw30 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %switch.masked, ptr %bw30, align 1
  %and32 = and i32 %conv47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then22.if.end39_crit_edge, label %if.then34

if.then22.if.end39_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then34:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rate, align 2
  %17 = or i8 %16, 4
  store i8 %17, ptr %rate, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.then22.if.end39_crit_edge
  %.mask = and i8 %rateinfo, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %.mask)
  %cmp = icmp eq i8 %.mask, 16
  %nss = getelementptr inbounds %struct.rate_info, ptr %rate, i32 0, i32 3
  br i1 %cmp, label %if.end76.thread, label %if.else

if.end76.thread:                                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %nss to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %nss, align 2
  br label %if.end87

if.else:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %nss to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %nss, align 2
  br label %if.end76

if.else46:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp ne i32 %and48, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %rateinfo)
  %cmp51 = icmp ult i8 %rateinfo, 16
  %or.cond = and i1 %cmp51, %tobool49.not
  br i1 %or.cond, label %if.then53, label %if.else46.if.end76_crit_edge

if.else46.if.end76_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then53:                                        ; preds = %if.else46
  %mcs54 = getelementptr inbounds %struct.rate_info, ptr %rate, i32 0, i32 1
  %20 = ptrtoint ptr %mcs54 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %rateinfo, ptr %mcs54, align 1
  %21 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rate, align 2
  %23 = or i8 %22, 1
  store i8 %23, ptr %rate, align 2
  %bw59 = getelementptr inbounds %struct.rate_info, ptr %rate, i32 0, i32 4
  %and61 = and i32 %conv47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %spec.select = select i1 %tobool62.not, i8 0, i8 3
  %24 = ptrtoint ptr %bw59 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %spec.select, ptr %bw59, align 1
  %and67 = and i32 %conv47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then53.if.end76_crit_edge, label %if.then69

if.then53.if.end76_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then69:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  %25 = or i8 %22, 5
  %26 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %rate, align 2
  br label %if.end76

if.end76:                                         ; preds = %if.then69, %if.then53.if.end76_crit_edge, %if.else46.if.end76_crit_edge, %if.else, %if.end18.if.end76_crit_edge
  %27 = and i8 %htinfo, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool79.not = icmp eq i8 %27, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %rateinfo)
  %cmp82 = icmp ult i8 %rateinfo, 13
  %or.cond118 = and i1 %cmp82, %tobool79.not
  br i1 %or.cond118, label %if.then84, label %if.end76.if.end87_crit_edge

if.end76.if.end87_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then84:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %conv81 = zext i8 %rateinfo to i32
  %arrayidx = getelementptr [13 x i32], ptr @mwifiex_parse_htinfo.legacy_rates, i32 0, i32 %conv81
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %conv85 = trunc i32 %29 to i16
  %legacy = getelementptr inbounds %struct.rate_info, ptr %rate, i32 0, i32 2
  %30 = ptrtoint ptr %legacy to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv85, ptr %legacy, align 2
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end76.if.end87_crit_edge, %if.end76.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_drv_get_data_rate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_stop_bg_scan(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_stopped_locked(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_scan_networks(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cfg80211_assoc(ptr noundef %priv, i32 noundef %ssid_len, ptr noundef %ssid, ptr noundef %bssid, i32 noundef %mode, ptr noundef %channel, ptr nocapture noundef readonly %sme, i1 noundef zeroext %privacy, ptr noundef writeonly %sel_bss) unnamed_addr #1 align 64 {
entry:
  %req_ssid = alloca %struct.cfg80211_ssid, align 1
  %enable = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %req_ssid) #12
  %0 = call ptr @memset(ptr %req_ssid, i32 0, i32 32)
  %conv = trunc i32 %ssid_len to i8
  %ssid_len1 = getelementptr inbounds %struct.cfg80211_ssid, ptr %req_ssid, i32 0, i32 1
  %1 = ptrtoint ptr %ssid_len1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %ssid_len1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %ssid_len)
  %cmp = icmp ugt i32 %ssid_len, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.82) #12
  br label %cleanup135

if.end:                                           ; preds = %entry
  %4 = call ptr @memcpy(ptr %req_ssid, ptr %ssid, i32 %ssid_len)
  %5 = ptrtoint ptr %ssid_len1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ssid_len1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.if.then9_crit_edge, label %lor.lhs.false

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %req_ssid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %req_ssid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %8)
  %cmp7 = icmp ult i8 %8, 32
  br i1 %cmp7, label %lor.lhs.false.if.then9_crit_edge, label %if.end11

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.82) #12
  br label %cleanup135

if.end11:                                         ; preds = %lor.lhs.false
  %sec_info = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60
  %11 = ptrtoint ptr %sec_info to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %sec_info, align 4
  %wpa2_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 1
  %12 = ptrtoint ptr %wpa2_enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %wpa2_enabled, align 1
  %wep_key_curr_index = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 62
  %13 = ptrtoint ptr %wep_key_curr_index to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %wep_key_curr_index, align 8
  %encryption_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 7
  %14 = ptrtoint ptr %encryption_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %encryption_mode, align 4
  %is_authtype_auto = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 6
  %15 = ptrtoint ptr %is_authtype_auto to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %is_authtype_auto, align 4
  %call = tail call i32 @mwifiex_set_encode(ptr noundef %priv, ptr noundef null, ptr noundef null, i32 noundef 0, i8 noundef zeroext 0, ptr noundef null, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp15 = icmp eq i32 %mode, 1
  br i1 %cmp15, label %if.then17, label %if.end28

if.then17:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %enable) #12
  %16 = ptrtoint ptr %enable to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %enable, align 2
  %call18 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 131, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %enable, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %cleanup135.critedge

if.end21:                                         ; preds = %if.then17
  br i1 %privacy, label %if.then23, label %done.critedge

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %encryption_mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1027077, ptr %encryption_mode, align 4
  %authentication_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 5
  %18 = ptrtoint ptr %authentication_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %authentication_mode, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %enable) #12
  br label %if.end95

if.end28:                                         ; preds = %if.end11
  %auth_type29 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 6
  %19 = ptrtoint ptr %auth_type29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %auth_type29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %cmp30 = icmp eq i32 %20, 8
  br i1 %cmp30, label %if.then32, label %if.end28.if.end36_crit_edge

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %is_authtype_auto to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %is_authtype_auto, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end28.if.end36_crit_edge
  %auth_type.0 = phi i32 [ 0, %if.then32 ], [ %20, %if.end28.if.end36_crit_edge ]
  %n_ciphers_pairwise = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 2
  %22 = ptrtoint ptr %n_ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_ciphers_pairwise, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool37.not = icmp eq i32 %23, 0
  br i1 %tobool37.not, label %if.end36.if.end45_crit_edge, label %if.then38

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %ciphers_pairwise = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 3
  %24 = ptrtoint ptr %ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ciphers_pairwise, align 4
  %26 = ptrtoint ptr %encryption_mode to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %encryption_mode, align 4
  %authentication_mode44 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 5
  %27 = ptrtoint ptr %authentication_mode44 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %auth_type.0, ptr %authentication_mode44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %if.end36.if.end45_crit_edge
  %cipher_group = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 1
  %28 = ptrtoint ptr %cipher_group to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cipher_group, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool47.not = icmp eq i32 %29, 0
  br i1 %tobool47.not, label %if.end45.if.end55_crit_edge, label %if.then48

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %encryption_mode to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %encryption_mode, align 4
  %authentication_mode54 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 5
  %31 = ptrtoint ptr %authentication_mode54 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %auth_type.0, ptr %authentication_mode54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then48, %if.end45.if.end55_crit_edge
  %ie = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 7
  %32 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ie, align 4
  %tobool56.not = icmp eq ptr %33, null
  br i1 %tobool56.not, label %if.end55.if.end60_crit_edge, label %if.then57

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %ie_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 8
  %34 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ie_len, align 4
  %call59 = tail call i32 @mwifiex_set_gen_ie(ptr noundef %priv, ptr noundef nonnull %33, i32 noundef %35) #12
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end55.if.end60_crit_edge
  %key = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 12
  %36 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %key, align 4
  %tobool61.not = icmp eq ptr %37, null
  br i1 %tobool61.not, label %if.end60.if.end95_crit_edge, label %if.then62

if.end60.if.end95_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then62:                                        ; preds = %if.end60
  %38 = ptrtoint ptr %encryption_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %encryption_mode, align 4
  %40 = add i32 %39, -1027073
  %switch.and.i = and i32 %40, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i.not = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i.not, label %if.then67, label %if.then62.if.end95_crit_edge

if.then62.if.end95_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then67:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  %key_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 13
  %43 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %key_len, align 4
  %conv69 = zext i8 %44 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %42, i32 noundef 1073741824, ptr noundef nonnull @.str.83, i32 noundef %conv69) #12
  %key_idx = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 14
  %45 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %key_idx, align 1
  %conv70 = zext i8 %46 to i16
  %47 = ptrtoint ptr %wep_key_curr_index to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv70, ptr %wep_key_curr_index, align 8
  %48 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %key, align 4
  %50 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %key_len, align 4
  %conv74 = zext i8 %51 to i32
  %52 = load i8, ptr %key_idx, align 1
  %call76 = tail call i32 @mwifiex_set_encode(ptr noundef %priv, ptr noundef null, ptr noundef %49, i32 noundef %conv74, i8 noundef zeroext %52, ptr noundef null, i32 noundef 0) #12
  br label %if.end95

done.critedge:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %enable) #12
  br label %if.end95

if.then83:                                        ; preds = %if.then80.1
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %54, i32 noundef 4, ptr noundef nonnull @.str.84) #12
  br label %cleanup135

if.end95:                                         ; preds = %done.critedge, %if.then67, %if.then62.if.end95_crit_edge, %if.end60.if.end95_crit_edge, %if.then23
  %.sink222 = phi i32 [ 2, %if.then23 ], [ 2, %done.critedge ], [ 0, %if.then62.if.end95_crit_edge ], [ 0, %if.then67 ], [ 0, %if.end60.if.end95_crit_edge ]
  %wdev92219.sink = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %55 = ptrtoint ptr %wdev92219.sink to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wdev92219.sink, align 8
  %call94 = call ptr @cfg80211_get_bss(ptr noundef %56, ptr noundef %channel, ptr noundef %bssid, ptr noundef %ssid, i32 noundef %ssid_len, i32 noundef %.sink222, i32 noundef 2) #12
  %tobool96.not = icmp eq ptr %call94, null
  br i1 %tobool96.not, label %if.then80.1, label %if.end95.if.else102_crit_edge

if.end95.if.else102_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else102

if.then80.1:                                      ; preds = %if.end95
  %call81.1 = call i32 @mwifiex_request_scan(ptr noundef %priv, ptr noundef nonnull %req_ssid) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.1)
  %tobool82.not.1 = icmp eq i32 %call81.1, 0
  br i1 %tobool82.not.1, label %if.end86.1, label %if.then83

if.end86.1:                                       ; preds = %if.then80.1
  %57 = ptrtoint ptr %wdev92219.sink to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wdev92219.sink, align 8
  %. = select i1 %cmp15, i32 2, i32 0
  %call90.1 = call ptr @cfg80211_get_bss(ptr noundef %58, ptr noundef %channel, ptr noundef %bssid, ptr noundef %ssid, i32 noundef %ssid_len, i32 noundef %., i32 noundef 2) #12
  %tobool96.not.1 = icmp eq ptr %call90.1, null
  br i1 %tobool96.not.1, label %if.then97.1, label %if.end86.1.if.else102_crit_edge

if.end86.1.if.else102_crit_edge:                  ; preds = %if.end86.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else102

if.then97.1:                                      ; preds = %if.end86.1
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %60, i32 noundef 1, ptr noundef nonnull @.str.85) #12
  br label %if.end113

if.else102:                                       ; preds = %if.end86.1.if.else102_crit_edge, %if.end95.if.else102_crit_edge
  %bss.0.lcssa = phi ptr [ %call94, %if.end95.if.else102_crit_edge ], [ %call90.1, %if.end86.1.if.else102_crit_edge ]
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 8
  %bssid104 = getelementptr inbounds %struct.cfg80211_bss, ptr %bss.0.lcssa, i32 0, i32 11
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %62, i32 noundef 1, ptr noundef nonnull @.str.86, ptr noundef %bssid104) #12
  %cfg_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 112
  %63 = call ptr @memcpy(ptr %cfg_bssid, ptr %bssid104, i32 6)
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 8
  %wiphy112 = getelementptr inbounds %struct.mwifiex_adapter, ptr %65, i32 0, i32 10
  %66 = ptrtoint ptr %wiphy112 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wiphy112, align 4
  call void @cfg80211_ref_bss(ptr noundef %67, ptr noundef nonnull %bss.0.lcssa) #12
  br label %if.end113

if.end113:                                        ; preds = %if.else102, %if.then97.1
  %bss.0218 = phi ptr [ null, %if.then97.1 ], [ %bss.0.lcssa, %if.else102 ]
  %call114 = call i32 @mwifiex_bss_start(ptr noundef %priv, ptr noundef %bss.0218, ptr noundef nonnull %req_ssid) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.end113.cleanup129_crit_edge

if.end113.cleanup129_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup129

if.end117:                                        ; preds = %if.end113
  br i1 %cmp15, label %if.then120, label %if.end117.if.end125_crit_edge

if.end117.if.end125_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.then120:                                       ; preds = %if.end117
  %call121 = call fastcc i32 @mwifiex_cfg80211_inform_ibss_bss(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then120.if.end125_crit_edge, label %if.then120.cleanup129_crit_edge

if.then120.cleanup129_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup129

if.then120.if.end125_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.end125:                                        ; preds = %if.then120.if.end125_crit_edge, %if.end117.if.end125_crit_edge
  %tobool126.not = icmp eq ptr %sel_bss, null
  br i1 %tobool126.not, label %if.end125.cleanup129_crit_edge, label %cleanup129.thread

if.end125.cleanup129_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup129

cleanup129.thread:                                ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %sel_bss to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %bss.0218, ptr %sel_bss, align 4
  br label %cleanup135

cleanup129:                                       ; preds = %if.end125.cleanup129_crit_edge, %if.then120.cleanup129_crit_edge, %if.end113.cleanup129_crit_edge
  %ret.0 = phi i32 [ %call114, %if.end113.cleanup129_crit_edge ], [ 0, %if.end125.cleanup129_crit_edge ], [ -14, %if.then120.cleanup129_crit_edge ]
  %tobool130.not = icmp eq ptr %bss.0218, null
  br i1 %tobool130.not, label %cleanup129.cleanup135_crit_edge, label %if.then131

cleanup129.cleanup135_crit_edge:                  ; preds = %cleanup129
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup135

if.then131:                                       ; preds = %cleanup129
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 8
  %wiphy133 = getelementptr inbounds %struct.mwifiex_adapter, ptr %70, i32 0, i32 10
  %71 = ptrtoint ptr %wiphy133 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wiphy133, align 4
  call void @cfg80211_put_bss(ptr noundef %72, ptr noundef nonnull %bss.0218) #12
  br label %cleanup135

cleanup135.critedge:                              ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %enable) #12
  br label %cleanup135

cleanup135:                                       ; preds = %cleanup135.critedge, %if.then131, %cleanup129.cleanup135_crit_edge, %cleanup129.thread, %if.then83, %if.then9, %if.then
  %retval.1 = phi i32 [ -22, %if.then ], [ -22, %if.then9 ], [ -14, %if.then83 ], [ %call18, %cleanup135.critedge ], [ %ret.0, %if.then131 ], [ %ret.0, %cleanup129.cleanup135_crit_edge ], [ 0, %cleanup129.thread ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %req_ssid) #12
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_setup_auto_tdls_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_gen_ie(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_request_scan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ref_bss(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_bss_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cfg80211_inform_ibss_bss(ptr noundef %priv) unnamed_addr #1 align 64 {
entry:
  %data.i = alloca %struct.cfg80211_inform_bss, align 8
  %bss_info = alloca %struct.mwifiex_bss_info, align 4
  %ie_buf = alloca [34 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %bss_info) #12
  %0 = call ptr @memset(ptr %bss_info, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %ie_buf) #12
  %1 = getelementptr inbounds i8, ptr %ie_buf, i32 2
  %2 = call ptr @memset(ptr %1, i32 255, i32 32)
  %call = call i32 @mwifiex_get_bss_info(ptr noundef %priv, ptr noundef nonnull %bss_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ie_buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %ie_buf, align 1
  %ssid = getelementptr inbounds %struct.mwifiex_bss_info, ptr %bss_info, i32 0, i32 1
  %ssid_len = getelementptr inbounds %struct.mwifiex_bss_info, ptr %bss_info, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssid_len, align 4
  %arrayidx1 = getelementptr inbounds [34 x i8], ptr %ie_buf, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr inbounds [34 x i8], ptr %ie_buf, i32 0, i32 2
  %conv = zext i8 %5 to i32
  %7 = call ptr @memcpy(ptr %arrayidx2, ptr %ssid, i32 %conv)
  %add = add nuw nsw i32 %conv, 2
  %band9 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 3
  %8 = ptrtoint ptr %band9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %band9, align 2
  %call10 = call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %9) #12
  %conv11 = zext i8 %call10 to i32
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %10 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wdev, align 8
  %bss_chan = getelementptr inbounds %struct.mwifiex_bss_info, ptr %bss_info, i32 0, i32 2
  %12 = ptrtoint ptr %bss_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bss_chan, align 4
  %call.i = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %13, i32 noundef %conv11) #12
  %14 = urem i32 %call.i, 1000
  %mul.i = sub i32 %call.i, %14
  %call.i37 = call ptr @ieee80211_get_channel_khz(ptr noundef %11, i32 noundef %mul.i) #12
  %15 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wdev, align 8
  %bssid = getelementptr inbounds %struct.mwifiex_bss_info, ptr %bss_info, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i) #12
  %17 = getelementptr inbounds i8, ptr %data.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i37, ptr %data.i, align 8
  %scan_width.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i, i32 0, i32 1
  %20 = ptrtoint ptr %scan_width.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %scan_width.i, align 4
  %call.i38 = call ptr @cfg80211_inform_bss_data(ptr noundef %16, ptr noundef nonnull %data.i, i32 noundef 0, ptr noundef %bssid, i64 noundef 0, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef nonnull %ie_buf, i32 noundef %add, i32 noundef 3264) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #12
  %tobool18.not = icmp eq ptr %call.i38, null
  br i1 %tobool18.not, label %if.end.cleanup_crit_edge, label %if.then19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wdev, align 8
  call void @cfg80211_put_bss(ptr noundef %22, ptr noundef nonnull %call.i38) #12
  %cfg_bssid = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 112
  %23 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bssid, align 4
  %25 = ptrtoint ptr %cfg_bssid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %cfg_bssid, align 4
  %add.ptr.i = getelementptr inbounds %struct.mwifiex_bss_info, ptr %bss_info, i32 0, i32 12, i32 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i, align 4
  %add.ptr1.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 112, i32 4
  %28 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %ie_buf) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %bss_info) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_bss_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_connect_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ibss_joined(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_tx_power(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__cfg80211_alloc_reply_skb(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_vendor_cmd_reply(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_remain_on_chan_cfg(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ready_on_channel(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_remain_on_channel_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_clone_skb_for_tx_status(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mgmt_tx_status(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_queue_tx_pkt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_drv_set_power(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_add_auto_tdls_peer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_tdls_data_frame(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_tdls_action_frame(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_get_sec_chan_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_start_tdls_cs(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_stop_tdls_cs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_dnld_txpwr_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 187)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 187)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !38, !40, !42, !44, !46, !48, !49, !51, !53, !55, !57, !59, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !141, !142, !143, !145, !147, !149, !151, !153, !155, !156, !158, !160, !162, !164, !166, !168, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !228, !229, !230, !231, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !261, !262, !263, !265, !266, !267, !268, !270, !271, !272, !274, !275, !276, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370}
!llvm.module.flags = !{!372, !373, !374, !375, !376, !377, !378, !379}
!llvm.ident = !{!380}

!0 = !{ptr @__param_reg_alpha2, !1, !"__param_reg_alpha2", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_reg_alpha2type488, !1, !"__UNIQUE_ID_reg_alpha2type488", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 560, i32 3}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2979, i32 4}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2987, i32 4}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3009, i32 4}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3036, i32 4}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3075, i32 3}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3083, i32 3}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3134, i32 44}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3139, i32 3}
!21 = !{ptr @mwifiex_add_virtual_intf.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3144, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mwifiex_add_virtual_intf.__key.10, !22, !"__key", i1 false, i1 false}
!25 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3146, i32 48}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3150, i32 3}
!30 = !{ptr @mwifiex_add_virtual_intf.__key.14, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3155, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mwifiex_add_virtual_intf.__key.16, !31, !"__key", i1 false, i1 false}
!34 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mwifiex_add_virtual_intf.__key.18, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3158, i32 2}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3162, i32 3}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3167, i32 2}
!42 = !{ptr @__ksymtab_mwifiex_add_virtual_intf, !43, !"__ksymtab_mwifiex_add_virtual_intf", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3195, i32 1}
!44 = !{ptr @__ksymtab_mwifiex_del_virtual_intf, !45, !"__ksymtab_mwifiex_del_virtual_intf", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3248, i32 1}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4351, i32 3}
!48 = !{ptr @__func__.mwifiex_register_cfg80211, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4462, i32 3}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4470, i32 4}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4475, i32 5}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4486, i32 6}
!57 = !{ptr @reg_alpha2, !58, !"reg_alpha2", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 25, i32 14}
!59 = !{ptr @__param_str_reg_alpha2, !1, !"__param_str_reg_alpha2", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1056, i32 3}
!62 = !{ptr @__func__.update_vif_type_counter, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mwifiex_band_2ghz, !64, !"mwifiex_band_2ghz", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1662, i32 40}
!65 = !{ptr @mwifiex_channels_2ghz, !66, !"mwifiex_channels_2ghz", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1645, i32 33}
!67 = !{ptr @mwifiex_rates, !68, !"mwifiex_rates", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1629, i32 30}
!69 = !{ptr @mwifiex_band_5ghz, !70, !"mwifiex_band_5ghz", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1703, i32 40}
!71 = !{ptr @mwifiex_channels_5ghz, !72, !"mwifiex_channels_5ghz", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1669, i32 33}
!73 = !{ptr @mwifiex_cfg80211_ops, !74, !"mwifiex_cfg80211_ops", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4211, i32 28}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3501, i32 3}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3508, i32 3}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3516, i32 3}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3524, i32 3}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3532, i32 3}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3541, i32 3}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3306, i32 10}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/inetdevice.h", i32 249, i32 9}
!93 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mwifiex_set_wowlan_mef_entry.ipv4_mc_mac, !95, !"ipv4_mc_mac", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3349, i32 18}
!96 = !{ptr @mwifiex_set_wowlan_mef_entry.ipv6_mc_mac, !97, !"ipv6_mc_mac", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3350, i32 18}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3360, i32 4}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3390, i32 4}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3419, i32 3}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1207, i32 3}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1213, i32 3}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1220, i32 3}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1227, i32 3}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1339, i32 2}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1079, i32 2}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1101, i32 3}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 865, i32 3}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1174, i32 2}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1134, i32 3}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1137, i32 3}
!126 = !{ptr @mwifiex_cfg80211_add_key.bc_mac, !127, !"bc_mac", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 476, i32 18}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 496, i32 3}
!130 = !{ptr @mwifiex_cfg80211_del_key.bc_mac, !131, !"bc_mac", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 160, i32 18}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 164, i32 3}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 168, i32 2}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 459, i32 3}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 514, i32 2}
!140 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @mwifiex_cfg80211_set_default_mgmt_key.__UNIQUE_ID_ddebug489, !139, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!143 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 524, i32 3}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2090, i32 3}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2116, i32 3}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2119, i32 4}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2129, i32 3}
!153 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1854, i32 3}
!155 = !{ptr @__func__.mwifiex_cfg80211_change_beacon, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.64, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1860, i32 3}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1866, i32 3}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2008, i32 3}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2016, i32 3}
!164 = !{ptr @.str.68, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2023, i32 3}
!166 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1889, i32 3}
!168 = !{ptr @__func__.mwifiex_cfg80211_del_station, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1899, i32 2}
!171 = !{ptr @.str.71, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1479, i32 3}
!173 = !{ptr @.str.72, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1485, i32 3}
!175 = !{ptr @mwifiex_parse_htinfo.legacy_rates, !176, !"legacy_rates", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1408, i32 20}
!177 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2640, i32 2}
!179 = !{ptr @.str.74, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2647, i32 3}
!181 = !{ptr @.str.75, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2713, i32 3}
!183 = !{ptr @.str.76, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2418, i32 3}
!185 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2425, i32 3}
!187 = !{ptr @.str.78, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2435, i32 3}
!189 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2442, i32 2}
!191 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2455, i32 3}
!193 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2463, i32 3}
!195 = !{ptr @.str.82, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2251, i32 3}
!197 = !{ptr @.str.83, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2321, i32 4}
!199 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2340, i32 5}
!201 = !{ptr @.str.85, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2359, i32 5}
!203 = !{ptr @.str.86, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2365, i32 4}
!205 = !{ptr @.str.87, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2570, i32 3}
!207 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2576, i32 2}
!209 = !{ptr @.str.89, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2589, i32 3}
!211 = !{ptr @.str.90, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2593, i32 3}
!213 = !{ptr @.str.91, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2548, i32 2}
!215 = !{ptr @.str.92, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../include/net/cfg80211.h", i32 778, i32 3}
!217 = !{ptr @.str.93, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2611, i32 2}
!219 = !{ptr @.str.94, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 737, i32 4}
!221 = !{ptr @.str.95, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 762, i32 4}
!223 = !{ptr @.str.96, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 770, i32 4}
!225 = !{ptr @.str.97, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4117, i32 4}
!227 = !{ptr @.str.98, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.99, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.100, !226, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @mwifiex_tm_cmd._entry, !226, !"_entry", i1 false, i1 false}
!231 = !{ptr @mwifiex_tm_cmd._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @mwifiex_tm_policy, !233, !"mwifiex_tm_policy", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4073, i32 32}
!234 = !{ptr @.str.101, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1767, i32 3}
!236 = !{ptr @.str.102, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1589, i32 2}
!238 = !{ptr @.str.103, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 302, i32 3}
!240 = !{ptr @.str.104, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 307, i32 3}
!242 = !{ptr @.str.105, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 324, i32 3}
!244 = !{ptr @.str.106, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 354, i32 3}
!246 = !{ptr @.str.107, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 221, i32 3}
!248 = !{ptr @.str.108, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 230, i32 3}
!250 = !{ptr @.str.109, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 241, i32 3}
!252 = !{ptr @.str.110, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 265, i32 2}
!254 = !{ptr @.str.111, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 433, i32 3}
!256 = !{ptr @.str.112, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 285, i32 3}
!258 = !{ptr @.str.113, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2751, i32 3}
!260 = !{ptr @.str.114, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @mwifiex_cfg80211_sched_scan_start._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @mwifiex_cfg80211_sched_scan_start._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.116, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2756, i32 2}
!265 = !{ptr @.str.117, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @mwifiex_cfg80211_sched_scan_start._entry.115, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @mwifiex_cfg80211_sched_scan_start._entry_ptr.118, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.120, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2758, i32 2}
!270 = !{ptr @mwifiex_cfg80211_sched_scan_start._entry.119, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @mwifiex_cfg80211_sched_scan_start._entry_ptr.121, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.122, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 2845, i32 2}
!274 = !{ptr @.str.123, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @mwifiex_cfg80211_sched_scan_stop._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @mwifiex_cfg80211_sched_scan_stop._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.124, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3780, i32 3}
!279 = !{ptr @.str.125, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3790, i32 3}
!281 = !{ptr @.str.126, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3798, i32 3}
!283 = !{ptr @.str.127, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3806, i32 3}
!285 = !{ptr @.str.128, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3813, i32 3}
!287 = !{ptr @.str.129, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3820, i32 3}
!289 = !{ptr @.str.130, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3827, i32 3}
!291 = !{ptr @.str.131, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3850, i32 2}
!293 = !{ptr @.str.132, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3862, i32 3}
!295 = !{ptr @.str.133, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3867, i32 3}
!297 = !{ptr @.str.134, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3872, i32 3}
!299 = !{ptr @.str.135, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3876, i32 3}
!301 = !{ptr @.str.136, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4155, i32 3}
!303 = !{ptr @.str.137, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4161, i32 3}
!305 = !{ptr @.str.138, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4164, i32 4}
!307 = !{ptr @.str.139, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3735, i32 3}
!309 = !{ptr @.str.140, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3747, i32 4}
!311 = !{ptr @.str.141, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3692, i32 5}
!313 = !{ptr @.str.142, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3716, i32 3}
!315 = !{ptr @mwifiex_get_coalesce_pkt_type.ipv4_mc_mac, !316, !"ipv4_mc_mac", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3646, i32 18}
!317 = !{ptr @mwifiex_get_coalesce_pkt_type.ipv6_mc_mac, !318, !"ipv6_mc_mac", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3647, i32 18}
!319 = distinct !{null, !320, !"bc_mac", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3648, i32 18}
!321 = !{ptr @.str.143, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3978, i32 3}
!323 = !{ptr @.str.144, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3994, i32 3}
!325 = !{ptr @__func__.mwifiex_cfg80211_channel_switch, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4011, i32 3}
!327 = !{ptr @.str.145, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3898, i32 3}
!329 = !{ptr @.str.146, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @mwifiex_cfg80211_tdls_chan_switch._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @mwifiex_cfg80211_tdls_chan_switch._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.148, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3906, i32 3}
!334 = !{ptr @mwifiex_cfg80211_tdls_chan_switch._entry.147, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @mwifiex_cfg80211_tdls_chan_switch._entry_ptr.149, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.151, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3913, i32 3}
!338 = !{ptr @mwifiex_cfg80211_tdls_chan_switch._entry.150, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @mwifiex_cfg80211_tdls_chan_switch._entry_ptr.152, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.153, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3938, i32 3}
!342 = !{ptr @mwifiex_cfg80211_tdls_cancel_chan_switch._entry, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @mwifiex_cfg80211_tdls_cancel_chan_switch._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.155, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 3944, i32 3}
!346 = !{ptr @mwifiex_cfg80211_tdls_cancel_chan_switch._entry.154, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @mwifiex_cfg80211_tdls_cancel_chan_switch._entry_ptr.156, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @mwifiex_mgmt_stypes, !349, !"mwifiex_mgmt_stypes", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1723, i32 1}
!350 = !{ptr @mwifiex_iface_comb_ap_sta_drcs, !351, !"mwifiex_iface_comb_ap_sta_drcs", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 64, i32 29}
!352 = !{ptr @mwifiex_ap_sta_limits, !353, !"mwifiex_ap_sta_limits", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 28, i32 43}
!354 = !{ptr @mwifiex_iface_comb_ap_sta_vht, !355, !"mwifiex_iface_comb_ap_sta_vht", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 51, i32 1}
!356 = !{ptr @mwifiex_iface_comb_ap_sta, !357, !"mwifiex_iface_comb_ap_sta", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 39, i32 1}
!358 = !{ptr @mwifiex_cipher_suites, !359, !"mwifiex_cipher_suites", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 1712, i32 18}
!360 = !{ptr @mwifiex_wowlan_support, !361, !"mwifiex_wowlan_support", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4266, i32 42}
!362 = !{ptr @mwifiex_wowlan_support_no_gtk, !363, !"mwifiex_wowlan_support_no_gtk", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4277, i32 42}
!364 = !{ptr @mwifiex_coalesce_support, !365, !"mwifiex_coalesce_support", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 4299, i32 44}
!366 = !{ptr @.str.157, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 654, i32 2}
!368 = !{ptr @.str.158, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 666, i32 3}
!370 = !{ptr @.str.159, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/marvell/mwifiex/cfg80211.c", i32 673, i32 31}
!372 = !{i32 1, !"wchar_size", i32 2}
!373 = !{i32 1, !"min_enum_size", i32 4}
!374 = !{i32 8, !"branch-target-enforcement", i32 0}
!375 = !{i32 8, !"sign-return-address", i32 0}
!376 = !{i32 8, !"sign-return-address-all", i32 0}
!377 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!378 = !{i32 7, !"uwtable", i32 1}
!379 = !{i32 7, !"frame-pointer", i32 2}
!380 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!381 = !{!"auto-init"}
!382 = !{!"branch_weights", i32 1, i32 2000}
!383 = !{i64 2157097239, i64 2157097727, i64 2157097276, i64 2157097332, i64 2157097366, i64 2157097390, i64 2157097431, i64 2157097452, i64 2157097480, i64 2157097514}
!384 = !{i8 0, i8 2}
!385 = !{i64 2149454295, i64 2149454300, i64 2149454313, i64 2149454357, i64 2149454391, i64 2149454412}
!386 = !{i32 0, i32 33}
