; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/txrx.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mwifiex_handle_rx_packet\22, \22a\22\09"
module asm "\09.weak\09__crc_mwifiex_handle_rx_packet\09\09\09\09"
module asm "\09.long\09__crc_mwifiex_handle_rx_packet\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_handle_rx_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_handle_rx_packet\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_handle_rx_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mwifiex_write_data_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_mwifiex_write_data_complete\09\09\09\09"
module asm "\09.long\09__crc_mwifiex_write_data_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_write_data_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_write_data_complete\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_write_data_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mwifiex_802_11d_domain_reg = type { [3 x i8], i8, [83 x %struct.ieee80211_country_ie_triplet] }
%struct.ieee80211_country_ie_triplet = type { %union.anon.151 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i8, i8, i8 }
%struct.mwifiex_sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.mwifiex_sleep_period = type { i16, i16 }
%struct.mwifiex_hs_config_param = type <{ i32, i8, i8 }>
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rxpd = type <{ i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, [3 x i8], i8 }>
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
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.148 }
%struct.anon.148 = type { [3 x i8], i8 }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
%struct.mwifiex_802_11_security = type { i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.mwifiex_wep_key = type { i32, i32, i32, [16 x i8] }
%struct.host_cmd_ds_802_11_key_material = type { i16, %struct.mwifiex_ie_type_key_param_set }
%struct.mwifiex_ie_type_key_param_set = type { i16, i16, i16, i16, i16, [50 x i8] }
%struct.host_cmd_ds_802_11_key_material_v2 = type { i16, %struct.mwifiex_ie_type_key_param_set_v2 }
%struct.mwifiex_ie_type_key_param_set_v2 = type { i16, i16, [6 x i8], i8, i8, i16, %union.anon.149 }
%union.anon.149 = type { %struct.mwifiex_wapi_param }
%struct.mwifiex_wapi_param = type { [16 x i8], i16, [32 x i8] }
%struct.mwifiex_wmm_desc = type { [8 x %struct.mwifiex_tid_tbl], [8 x i32], [8 x i32], %struct.spinlock, [4 x %struct.mwifiex_wmm_ac_status], [4 x i8], i32, [4 x i8], [8 x i32], %struct.atomic_t, %struct.atomic_t }
%struct.mwifiex_tid_tbl = type { %struct.list_head }
%struct.mwifiex_wmm_ac_status = type { i8, i8, i8 }
%struct.mwifiex_tx_aggr = type { i8, i8, i8 }
%struct.mwifiex_add_ba_param = type { i32, i32, i32, i8, i8 }
%struct.mwifiex_vendor_spec_cfg_ie = type { i16, i16, [256 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.145, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.145 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.146 }
%union.anon.146 = type { %struct.cfg80211_bss_select_adjust }
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
%struct.txpd = type { i8, i8, i16, i16, i16, i32, i8, i8, i8, [2 x i8], i8, [2 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.mwifiex_tx_param = type { i32 }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"data: priv not found. Drop RX packet\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx pkt:\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_mwifiex_handle_rx_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_handle_rx_packet = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_handle_rx_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_handle_rx_packet to i32), ptr @__kstrtab_mwifiex_handle_rx_packet, ptr @__kstrtabns_mwifiex_handle_rx_packet }, section "___ksymtab_gpl+mwifiex_handle_rx_packet", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx pkt:\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"data: -ENOSR is returned\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"data: -EBUSY is returned\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mwifiex_write_data_async failed: 0x%X\0A\00", [57 x i8] zeroinitializer }, align 32
@mwifiex_1d_to_wmm_queue = external dso_local local_unnamed_addr constant [0 x i16], align 2
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wake queue: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_mwifiex_write_data_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_write_data_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_write_data_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_write_data_complete to i32), ptr @__kstrtab_mwifiex_write_data_complete, ptr @__kstrtabns_mwifiex_write_data_complete }, section "___ksymtab_gpl+mwifiex_write_data_complete", align 4
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"data: priv not found. Drop TX packet\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967233, i64 4294967280, i64 4294967295]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967233, i64 4294967280, i64 4294967295]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 53, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 59, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 127, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 132, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 141, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 144, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 322, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [47 x i8] c"../drivers/net/wireless/marvell/mwifiex/txrx.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 176, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_mwifiex_handle_rx_packet, ptr @__ksymtab_mwifiex_write_data_complete, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_handle_rx_packet(ptr noundef %adapter, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %0 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp2.not.i = icmp eq i8 %1, 0
  br i1 %cmp2.not.i, label %entry.if.then6_crit_edge, label %for.body.i53.preheader

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

for.body.i53.preheader:                           ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %bss_num = getelementptr inbounds %struct.rxpd, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bss_num, align 1
  %7 = and i8 %6, 15
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %4, align 1
  br label %for.body.i53

for.body.i53:                                     ; preds = %for.inc.i56.for.body.i53_crit_edge, %for.body.i53.preheader
  %i.037.i = phi i32 [ %inc.i54, %for.inc.i56.for.body.i53_crit_edge ], [ 0, %for.body.i53.preheader ]
  %arrayidx.i51 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.037.i
  %10 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i51, align 4
  %tobool.not.i52 = icmp eq ptr %11, null
  br i1 %tobool.not.i52, label %for.body.i53.for.inc.i56_crit_edge, label %if.then.i

for.body.i53.for.inc.i56_crit_edge:               ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i56

if.then.i:                                        ; preds = %for.body.i53
  %bss_num4.i = getelementptr inbounds %struct.mwifiex_private, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %bss_num4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bss_num4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %7)
  %cmp7.i = icmp eq i8 %13, %7
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.then.i.for.inc.i56_crit_edge

if.then.i.for.inc.i56_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i56

land.lhs.true.i:                                  ; preds = %if.then.i
  %bss_type11.i = getelementptr inbounds %struct.mwifiex_private, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %bss_type11.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bss_type11.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %9)
  %cmp14.i = icmp eq i8 %15, %9
  br i1 %cmp14.i, label %land.lhs.true.i.do.body_crit_edge, label %land.lhs.true.i.for.inc.i56_crit_edge

land.lhs.true.i.for.inc.i56_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i56

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.inc.i56:                                      ; preds = %land.lhs.true.i.for.inc.i56_crit_edge, %if.then.i.for.inc.i56_crit_edge, %for.body.i53.for.inc.i56_crit_edge
  %inc.i54 = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i55 = icmp eq i32 %inc.i54, %conv.i
  br i1 %exitcond.not.i55, label %for.inc.i56.for.body.i65_crit_edge, label %for.inc.i56.for.body.i53_crit_edge

for.inc.i56.for.body.i53_crit_edge:               ; preds = %for.inc.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i53

for.inc.i56.for.body.i65_crit_edge:               ; preds = %for.inc.i56
  br label %for.body.i65

for.body.i65:                                     ; preds = %for.inc.i68.for.body.i65_crit_edge, %for.inc.i56.for.body.i65_crit_edge
  %i.03.i62 = phi i32 [ %inc.i66, %for.inc.i68.for.body.i65_crit_edge ], [ 0, %for.inc.i56.for.body.i65_crit_edge ]
  %arrayidx.i63 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.03.i62
  %16 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i63, align 4
  %tobool.not.i64 = icmp eq ptr %17, null
  br i1 %tobool.not.i64, label %for.inc.i68, label %for.body.i65.do.body_crit_edge

for.body.i65.do.body_crit_edge:                   ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.inc.i68:                                      ; preds = %for.body.i65
  %inc.i66 = add nuw nsw i32 %i.03.i62, 1
  %exitcond.not.i67 = icmp eq i32 %inc.i66, %conv.i
  br i1 %exitcond.not.i67, label %for.inc.i68.if.then6_crit_edge, label %for.inc.i68.for.body.i65_crit_edge

for.inc.i68.for.body.i65_crit_edge:               ; preds = %for.inc.i68
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i65

for.inc.i68.if.then6_crit_edge:                   ; preds = %for.inc.i68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.then6:                                         ; preds = %for.inc.i68.if.then6_crit_edge, %entry.if.then6_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str) #5
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #5
  br label %cleanup

do.body:                                          ; preds = %for.body.i65.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge
  %priv.0 = phi ptr [ %17, %for.body.i65.do.body_crit_edge ], [ %11, %land.lhs.true.i.do.body_crit_edge ]
  %debug_mask = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 1
  %18 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_mask, align 4
  %and8 = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body.do.end_crit_edge, label %if.then10

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 128)
  tail call void @print_hex_dump(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %4, i32 noundef %22, i1 noundef zeroext false) #5
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body.do.end_crit_edge
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 0, ptr %2, align 4
  %bss_num14 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 4
  %24 = ptrtoint ptr %bss_num14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bss_num14, align 1
  %bss_num15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %26 = ptrtoint ptr %bss_num15 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %bss_num15, align 4
  %bss_type16 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 1
  %27 = ptrtoint ptr %bss_type16 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bss_type16, align 4
  %bss_type17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %29 = ptrtoint ptr %bss_type17 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %bss_type17, align 1
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 2
  %30 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bss_role, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp19 = icmp eq i8 %31, 1
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call i32 @mwifiex_process_uap_rx_packet(ptr noundef nonnull %priv.0, ptr noundef %skb) #5
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 @mwifiex_process_sta_rx_packet(ptr noundef nonnull %priv.0, ptr noundef %skb) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then21, %if.then6
  %retval.0 = phi i32 [ -1, %if.then6 ], [ %call22, %if.then21 ], [ %call23, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_uap_rx_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_sta_rx_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_tx(ptr noundef %priv, ptr noundef %skb, ptr noundef %tx_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %intf_hdr_len, align 4
  %conv = zext i8 %3 to i32
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bss_role, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %7) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %conv5 = zext i32 %9 to i64
  %tx_bytes = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 11, i32 3
  %10 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_bytes, align 8
  %add = add i64 %11, %conv5
  store i64 %add, ptr %tx_bytes, align 8
  %tx_packets = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 11, i32 5
  %12 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %tx_packets, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %call7 = tail call ptr @mwifiex_process_uap_txpd(ptr noundef %priv, ptr noundef %skb) #5
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call ptr @mwifiex_process_sta_txpd(ptr noundef %priv, ptr noundef %skb) #5
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %head_ptr.0 = phi ptr [ %call7, %if.end ], [ %call8, %if.else ]
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 53
  %14 = ptrtoint ptr %data_sent to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end9
  %tx_lock_flag = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %16 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_lock_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not = icmp eq i8 %17, 0
  %tobool14.not = icmp eq ptr %head_ptr.0, null
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %if.end16, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

land.lhs.true:                                    ; preds = %if.end9
  %cond = icmp eq ptr %head_ptr.0, null
  br i1 %cond, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.if.then15_crit_edge

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then15:                                        ; preds = %land.lhs.true.if.then15_crit_edge, %lor.lhs.false.if.then15_crit_edge
  %tx_data_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 71
  tail call void @skb_queue_tail(ptr noundef %tx_data_q, ptr noundef %skb) #5
  %tx_queued = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 72
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_queued, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %tx_queued, i32 1, i32 3, i32 1) #5
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_queued, ptr %tx_queued, i32 1, ptr elementtype(i32) %tx_queued) #5, !srcloc !30
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  br i1 %tobool14.not, label %if.end16.do.body_crit_edge, label %if.then18

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then18:                                        ; preds = %if.end16
  %19 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bss_role, align 1
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp21 = icmp eq i8 %21, 0
  %add.ptr = getelementptr i8, ptr %head_ptr.0, i32 %conv
  %spec.select = select i1 %cmp21, ptr %add.ptr, ptr null
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp26 = icmp eq i8 %23, 2
  %host_to_card = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 18, i32 10
  %24 = ptrtoint ptr %host_to_card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host_to_card, align 4
  br i1 %cmp26, label %if.then28, label %if.then18.do.body.sink.split_crit_edge

if.then18.do.body.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.sink.split

if.then28:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %usb_port = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 10
  %26 = ptrtoint ptr %usb_port to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %usb_port, align 2
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %if.then28, %if.then18.do.body.sink.split_crit_edge
  %.sink = phi i8 [ %27, %if.then28 ], [ 0, %if.then18.do.body.sink.split_crit_edge ]
  %call33 = tail call i32 %25(ptr noundef %1, i8 noundef zeroext %.sink, ptr noundef %skb, ptr noundef %tx_param) #5
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.end16.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  %ret.0 = phi i32 [ -1, %if.end16.do.body_crit_edge ], [ -1, %land.lhs.true.do.body_crit_edge ], [ %call33, %do.body.sink.split ]
  %local_tx_pd.1 = phi ptr [ null, %if.end16.do.body_crit_edge ], [ null, %land.lhs.true.do.body_crit_edge ], [ %spec.select, %do.body.sink.split ]
  %debug_mask = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug_mask, align 4
  %and36 = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body.do.end_crit_edge, label %if.then38

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %len40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len40, align 4
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 128)
  tail call void @print_hex_dump(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %31, i32 noundef %34, i1 noundef zeroext false) #5
  br label %do.end

do.end:                                           ; preds = %if.then38, %do.body.do.end_crit_edge
  %35 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.0, label %do.end.cleanup_crit_edge [
    i32 -63, label %sw.bb
    i32 -16, label %sw.bb44
    i32 -1, label %sw.bb64
    i32 0, label %sw.bb67
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.4) #5
  br label %cleanup

sw.bb44:                                          ; preds = %do.end
  %36 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bss_role, align 1
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp48 = icmp eq i8 %38, 0
  br i1 %cmp48, label %land.lhs.true50, label %sw.bb44.if.end63_crit_edge

sw.bb44.if.end63_crit_edge:                       ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

land.lhs.true50:                                  ; preds = %sw.bb44
  %pps_uapsd_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 104
  %39 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pps_uapsd_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool52.not = icmp eq i16 %40, 0
  br i1 %tobool52.not, label %land.lhs.true50.if.end63_crit_edge, label %land.lhs.true53

land.lhs.true50.if.end63_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %tx_lock_flag54 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %41 = ptrtoint ptr %tx_lock_flag54 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tx_lock_flag54, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool56.not = icmp eq i8 %42, 0
  br i1 %tobool56.not, label %land.lhs.true53.if.end63_crit_edge, label %if.then57

land.lhs.true53.if.end63_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then57:                                        ; preds = %land.lhs.true53
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 8
  %tx_lock_flag59 = getelementptr inbounds %struct.mwifiex_adapter, ptr %44, i32 0, i32 86
  %45 = ptrtoint ptr %tx_lock_flag59 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %tx_lock_flag59, align 4
  %tobool60.not = icmp eq ptr %local_tx_pd.1, null
  br i1 %tobool60.not, label %if.then57.if.end63_crit_edge, label %if.then61

if.then57.if.end63_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then61:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.txpd, ptr %local_tx_pd.1, i32 0, i32 7
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %flags, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then57.if.end63_crit_edge, %land.lhs.true53.if.end63_crit_edge, %land.lhs.true50.if.end63_crit_edge, %sw.bb44.if.end63_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.5) #5
  br label %cleanup

sw.bb64:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef -1) #5
  %num_tx_host_to_card_failure = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 2
  %47 = ptrtoint ptr %num_tx_host_to_card_failure to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_tx_host_to_card_failure, align 4
  %inc65 = add i32 %48, 1
  store i32 %inc65, ptr %num_tx_host_to_card_failure, align 4
  %call66 = tail call i32 @mwifiex_write_data_complete(ptr noundef %1, ptr noundef %skb, i32 noundef 0, i32 noundef -1)
  br label %cleanup

sw.bb67:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call68 = tail call i32 @mwifiex_write_data_complete(ptr noundef %1, ptr noundef %skb, i32 noundef 0, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb67, %sw.bb64, %if.end63, %sw.bb, %do.end.cleanup_crit_edge, %if.then15
  %retval.0 = phi i32 [ 0, %if.then15 ], [ %ret.0, %do.end.cleanup_crit_edge ], [ 0, %sw.bb67 ], [ -1, %sw.bb64 ], [ -16, %if.end63 ], [ -63, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_process_uap_txpd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_process_sta_txpd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_write_data_complete(ptr noundef %adapter, ptr noundef %skb, i32 noundef %aggr, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bss_num = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %0 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bss_num, align 1
  %bss_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %2 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bss_type, align 2
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %4 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp36.not.i = icmp eq i8 %5, 0
  br i1 %cmp36.not.i, label %if.end.done_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.037.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %bss_num4.i = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %bss_num4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bss_num4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %1)
  %cmp7.i = icmp eq i8 %9, %1
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %bss_type11.i = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %bss_type11.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bss_type11.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %3)
  %cmp14.i = icmp eq i8 %11, %3
  br i1 %cmp14.i, label %if.end4, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.done_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.done_crit_edge:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end4:                                          ; preds = %land.lhs.true.i
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 15
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  tail call void @mwifiex_set_trans_start(ptr noundef %13) #5
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags, align 4
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not = icmp eq i8 %16, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %pending_bridged_pkts = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 134
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_bridged_pkts, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr %pending_bridged_pkts, i32 1, i32 3, i32 1) #5
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_bridged_pkts, ptr %pending_bridged_pkts, i32 1, ptr elementtype(i32) %pending_bridged_pkts) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags, align 4
  %20 = and i8 %19, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool12.not = icmp eq i8 %20, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.done_crit_edge

if.end8.done_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool15.not = icmp eq i32 %status, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  %tx_packets = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 16, i32 1
  %21 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %tx_packets, align 4
  %pkt_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %23 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pkt_len, align 8
  %tx_bytes = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 16, i32 3
  %25 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %26, %24
  store i32 %add, ptr %tx_bytes, align 4
  %tx_timeout_cnt = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 13
  %27 = ptrtoint ptr %tx_timeout_cnt to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx_timeout_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool18.not = icmp eq i8 %28, 0
  br i1 %tobool18.not, label %if.then16.if.end24_crit_edge, label %if.then19

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %tx_timeout_cnt to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %tx_timeout_cnt, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %tx_errors = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 16, i32 5
  %30 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_errors, align 4
  %inc23 = add i32 %31, 1
  store i32 %inc23, ptr %tx_errors, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then19, %if.then16.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aggr)
  %tobool25.not = icmp eq i32 %aggr, 0
  br i1 %tobool25.not, label %if.end27, label %if.end24.done_crit_edge

if.end24.done_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end27:                                         ; preds = %if.end24
  %tx_pending = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 21
  %call.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_pending, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %tx_pending, i32 1, i32 3, i32 1) #5
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_pending, ptr %tx_pending, i32 1, ptr elementtype(i32) %tx_pending) #5, !srcloc !34
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %33 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %priority, align 4
  %arrayidx = getelementptr [0 x i16], ptr @mwifiex_1d_to_wmm_queue, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx, align 2
  %conv28 = zext i16 %36 to i32
  %arrayidx29 = getelementptr %struct.mwifiex_private, ptr %7, i32 0, i32 78, i32 %conv28
  %call.i.i64 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx29, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr %arrayidx29, i32 1, i32 3, i32 1) #5
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx29, ptr %arrayidx29, i32 1, ptr elementtype(i32) %arrayidx29) #5, !srcloc !32
  %asmresult.i.i.i.i65 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 380, i32 %asmresult.i.i.i.i65)
  %cmp = icmp slt i32 %asmresult.i.i.i.i65, 380
  br i1 %cmp, label %if.then32, label %if.end27.done_crit_edge

if.end27.done_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then32:                                        ; preds = %if.end27
  %38 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 103
  %40 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %41, i32 %conv28, i32 13
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then32.done_crit_edge, label %if.then36

if.then32.done_crit_edge:                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i66 = getelementptr %struct.netdev_queue, ptr %41, i32 %conv28
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i66) #5
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.7, i32 noundef %conv28) #5
  br label %done

done:                                             ; preds = %if.then36, %if.then32.done_crit_edge, %if.end27.done_crit_edge, %if.end24.done_crit_edge, %if.end8.done_crit_edge, %for.inc.i.done_crit_edge, %if.end.done_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_process_tx_queue(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %tx_param.i = alloca %struct.mwifiex_tx_param, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %tx_lock_flag = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 86
  %tx_data_q.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 71
  %tx_queued.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 72
  %priv_num.i.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %intf_hdr_len.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %host_to_card.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 10
  %num_tx_host_to_card_failure.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 118, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %data_sent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %2 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_lock_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_param.i) #5
  %call.i = call ptr @skb_dequeue(ptr noundef %tx_data_q.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.mwifiex_dequeue_tx_queue.exit.thread_crit_edge, label %if.end.i

if.end.mwifiex_dequeue_tx_queue.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_dequeue_tx_queue.exit.thread

if.end.i:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 12
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags.i, align 4
  %6 = and i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not.i = icmp eq i8 %6, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %aggr_num.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 15
  %7 = ptrtoint ptr %aggr_num.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %aggr_num.i, align 1
  %conv4.i = zext i8 %8 to i32
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_queued.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %tx_queued.i, i32 1, i32 3, i32 1) #5
  %9 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_queued.i, ptr %tx_queued.i, i32 %conv4.i, ptr elementtype(i32) %tx_queued.i) #5, !srcloc !34
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i39.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_queued.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %tx_queued.i, i32 1, i32 3, i32 1) #5
  %10 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_queued.i, ptr %tx_queued.i, i32 1, ptr elementtype(i32) %tx_queued.i) #5, !srcloc !34
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then3.i
  %11 = ptrtoint ptr %tx_data_q.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_data_q.i, align 4
  %cmp.i.i = icmp eq ptr %12, %tx_data_q.i
  %tobool15.not.i = icmp eq ptr %12, null
  %or.cond.i = or i1 %cmp.i.i, %tobool15.not.i
  br i1 %or.cond.i, label %cond.end.thread.i, label %cond.end.i

cond.end.thread.i:                                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %tx_param.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_param.i, align 4
  br label %if.then18.i

cond.end.i:                                       ; preds = %if.end6.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %16 = ptrtoint ptr %tx_param.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tx_param.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not.i = icmp eq i32 %15, 0
  br i1 %tobool17.not.i, label %cond.end.i.if.then18.i_crit_edge, label %cond.end.i.if.end24.i_crit_edge

cond.end.i.if.end24.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

cond.end.i.if.then18.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18.i

if.then18.i:                                      ; preds = %cond.end.i.if.then18.i_crit_edge, %cond.end.thread.i
  %call19.i = call i32 @mwifiex_wmm_lists_empty(ptr noundef %adapter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.then18.i.if.end24.i_crit_edge

if.then18.i.if.end24.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %tx_param.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %tx_param.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.then18.i.if.end24.i_crit_edge, %cond.end.i.if.end24.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %bss_num.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 13
  %20 = ptrtoint ptr %bss_num.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bss_num.i.i, align 1
  %bss_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 14
  %22 = ptrtoint ptr %bss_type.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bss_type.i.i, align 2
  %24 = ptrtoint ptr %priv_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %priv_num.i.i.i, align 4
  %conv.i.i.i = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp36.not.i.i.i = icmp eq i8 %25, 0
  br i1 %cmp36.not.i.i.i, label %if.end24.i.if.then.i.i_crit_edge, label %if.end24.i.for.body.i.i.i_crit_edge

if.end24.i.for.body.i.i.i_crit_edge:              ; preds = %if.end24.i
  br label %for.body.i.i.i

if.end24.i.if.then.i.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end24.i.for.body.i.i.i_crit_edge
  %i.037.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end24.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.037.i.i.i
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  %bss_num4.i.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %bss_num4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bss_num4.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %21)
  %cmp7.i.i.i = icmp eq i8 %29, %21
  br i1 %cmp7.i.i.i, label %land.lhs.true.i.i.i, label %if.then.i.i.i.for.inc.i.i.i_crit_edge

if.then.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i
  %bss_type11.i.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %bss_type11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bss_type11.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %23)
  %cmp14.i.i.i = icmp eq i8 %31, %23
  br i1 %cmp14.i.i.i, label %if.end.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %if.then.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.037.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.if.then.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.inc.i.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.i.if.then.i.i_crit_edge, %if.end24.i.if.then.i.i_crit_edge
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.8) #5
  %32 = ptrtoint ptr %num_tx_host_to_card_failure.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_tx_host_to_card_failure.i.i, align 4
  %inc.i.i = add i32 %33, 1
  store i32 %inc.i.i, ptr %num_tx_host_to_card_failure.i.i, align 4
  br label %do.cond

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.i
  %bss_role.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %27, i32 0, i32 2
  %34 = ptrtoint ptr %bss_role.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bss_role.i.i, align 1
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i41.i = icmp eq i8 %36, 0
  br i1 %cmp.i41.i, label %if.then4.i.i, label %if.end.i.i.if.end6.i.i_crit_edge

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %intf_hdr_len.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %intf_hdr_len.i.i, align 4
  %conv5.i.i = zext i8 %38 to i32
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv5.i.i
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %local_tx_pd.0.i.i = phi ptr [ %add.ptr.i.i, %if.then4.i.i ], [ null, %if.end.i.i.if.end6.i.i_crit_edge ]
  %39 = ptrtoint ptr %adapter to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %adapter, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp8.i.i = icmp eq i8 %40, 2
  %41 = ptrtoint ptr %host_to_card.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host_to_card.i.i, align 4
  br i1 %cmp8.i.i, label %if.then10.i.i, label %if.end6.i.i.if.end15.i.i_crit_edge

if.end6.i.i.if.end15.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i.i

if.then10.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %usb_port.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %27, i32 0, i32 10
  %43 = ptrtoint ptr %usb_port.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %usb_port.i.i, align 2
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then10.i.i, %if.end6.i.i.if.end15.i.i_crit_edge
  %.sink.i.i = phi i8 [ %44, %if.then10.i.i ], [ 0, %if.end6.i.i.if.end15.i.i_crit_edge ]
  %call14.i.i = call i32 %42(ptr noundef %adapter, i8 noundef zeroext %.sink.i.i, ptr noundef nonnull %call.i, ptr noundef nonnull %tx_param.i) #5
  %45 = zext i32 %call14.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %call14.i.i, label %if.end15.i.i.mwifiex_dequeue_tx_queue.exit.thread_crit_edge [
    i32 -63, label %sw.bb.i.i
    i32 -16, label %sw.bb16.i.i
    i32 -1, label %sw.bb43.i.i
    i32 0, label %if.end15.i.i.do.cond_crit_edge
  ]

if.end15.i.i.do.cond_crit_edge:                   ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.end15.i.i.mwifiex_dequeue_tx_queue.exit.thread_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_dequeue_tx_queue.exit.thread

sw.bb.i.i:                                        ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.4) #5
  br label %mwifiex_dequeue_tx_queue.exit.thread

sw.bb16.i.i:                                      ; preds = %if.end15.i.i
  %flags.i.le = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 12
  %bss_role.i.i.le = getelementptr inbounds %struct.mwifiex_private, ptr %27, i32 0, i32 2
  %46 = ptrtoint ptr %bss_role.i.i.le to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bss_role.i.i.le, align 1
  %48 = and i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp20.i.i = icmp eq i8 %48, 0
  br i1 %cmp20.i.i, label %land.lhs.true.i.i, label %sw.bb16.i.i.if.end33.i.i_crit_edge

sw.bb16.i.i.if.end33.i.i_crit_edge:               ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb16.i.i
  %pps_uapsd_mode.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 104
  %49 = ptrtoint ptr %pps_uapsd_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %pps_uapsd_mode.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool23.not.i.i = icmp eq i16 %50, 0
  br i1 %tobool23.not.i.i, label %land.lhs.true.i.i.if.end33.i.i_crit_edge, label %land.lhs.true24.i.i

land.lhs.true.i.i.if.end33.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i.i

land.lhs.true24.i.i:                              ; preds = %land.lhs.true.i.i
  %51 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tx_lock_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool26.not.i.i = icmp eq i8 %52, 0
  br i1 %tobool26.not.i.i, label %land.lhs.true24.i.i.if.end33.i.i_crit_edge, label %if.then27.i.i

land.lhs.true24.i.i.if.end33.i.i_crit_edge:       ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i.i

if.then27.i.i:                                    ; preds = %land.lhs.true24.i.i
  %53 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %27, align 8
  %tx_lock_flag29.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %54, i32 0, i32 86
  %55 = ptrtoint ptr %tx_lock_flag29.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %tx_lock_flag29.i.i, align 4
  %tobool30.not.i.i = icmp eq ptr %local_tx_pd.0.i.i, null
  br i1 %tobool30.not.i.i, label %if.then27.i.i.if.end33.i.i_crit_edge, label %if.then31.i.i

if.then27.i.i.if.end33.i.i_crit_edge:             ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i.i

if.then31.i.i:                                    ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %flags.i.i = getelementptr inbounds %struct.txpd, ptr %local_tx_pd.0.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %flags.i.i, align 1
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then31.i.i, %if.then27.i.i.if.end33.i.i_crit_edge, %land.lhs.true24.i.i.if.end33.i.i_crit_edge, %land.lhs.true.i.i.if.end33.i.i_crit_edge, %sw.bb16.i.i.if.end33.i.i_crit_edge
  call void @skb_queue_head(ptr noundef %tx_data_q.i, ptr noundef nonnull %call.i) #5
  %57 = ptrtoint ptr %flags.i.le to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %flags.i.le, align 4
  %59 = and i8 %58, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool37.not.i.i = icmp eq i8 %59, 0
  br i1 %tobool37.not.i.i, label %if.else40.i.i, label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %aggr_num.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 15
  %60 = ptrtoint ptr %aggr_num.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %aggr_num.i.i, align 1
  %conv39.i.i = zext i8 %61 to i32
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_queued.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %tx_queued.i, i32 1, i32 3, i32 1) #5
  %62 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_queued.i, ptr %tx_queued.i, i32 %conv39.i.i, ptr elementtype(i32) %tx_queued.i) #5, !srcloc !30
  br label %if.end42.i.i

if.else40.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i95.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_queued.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %tx_queued.i, i32 1, i32 3, i32 1) #5
  %63 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_queued.i, ptr %tx_queued.i, i32 1, ptr elementtype(i32) %tx_queued.i) #5, !srcloc !30
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.else40.i.i, %if.then38.i.i
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.5) #5
  br label %mwifiex_dequeue_tx_queue.exit.thread

sw.bb43.i.i:                                      ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef -1) #5
  %64 = ptrtoint ptr %num_tx_host_to_card_failure.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_tx_host_to_card_failure.i.i, align 4
  %inc46.i.i = add i32 %65, 1
  store i32 %inc46.i.i, ptr %num_tx_host_to_card_failure.i.i, align 4
  %call47.i.i = call i32 @mwifiex_write_data_complete(ptr noundef %adapter, ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef -1) #5
  br label %mwifiex_dequeue_tx_queue.exit.thread

mwifiex_dequeue_tx_queue.exit.thread:             ; preds = %sw.bb43.i.i, %if.end42.i.i, %sw.bb.i.i, %if.end15.i.i.mwifiex_dequeue_tx_queue.exit.thread_crit_edge, %if.end.mwifiex_dequeue_tx_queue.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_param.i) #5
  br label %do.end

do.cond:                                          ; preds = %if.end15.i.i.do.cond_crit_edge, %if.then.i.i
  %call49.i.i = call i32 @mwifiex_write_data_complete(ptr noundef %adapter, ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_param.i) #5
  %66 = ptrtoint ptr %tx_data_q.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx_data_q.i, align 4
  %cmp.i.not = icmp eq ptr %67, %tx_data_q.i
  br i1 %cmp.i.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %mwifiex_dequeue_tx_queue.exit.thread, %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_trans_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_parse_tx_status_event(ptr noundef %priv, ptr nocapture noundef readnone %event_body) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tx_token_id = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 1
  %2 = ptrtoint ptr %tx_token_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_token_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ack_status_lock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 148
  tail call void @_raw_spin_lock_bh(ptr noundef %ack_status_lock) #5
  %ack_status_frames = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 147
  %4 = ptrtoint ptr %tx_token_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_token_id, align 1
  %conv = zext i8 %5 to i32
  %call = tail call ptr @idr_remove(ptr noundef %ack_status_frames, i32 noundef %conv) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %ack_status_lock) #5
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 4
  %8 = and i8 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 2
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  tail call void @skb_complete_wifi_ack(ptr noundef nonnull %call, i1 noundef zeroext %tobool10.not) #5
  br label %cleanup

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 34
  %add.ptr17 = getelementptr i8, ptr %12, i32 40
  %len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %sub = add i32 %14, -40
  %15 = call ptr @memmove(ptr %add.ptr12, ptr %add.ptr17, i32 %sub)
  %16 = load i32, ptr %len, align 4
  %sub19 = add i32 %16, -6
  store i32 %sub19, ptr %len, align 4
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %cookie = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 24
  %17 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cookie, align 8
  %19 = load ptr, ptr %data, align 4
  %add.ptr23 = getelementptr i8, ptr %19, i32 10
  %sub25 = add i32 %16, -16
  %status26 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 112, i32 2
  %20 = ptrtoint ptr %status26 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool27.not = icmp eq i8 %21, 0
  tail call void @cfg80211_mgmt_tx_status(ptr noundef %wdev, i64 noundef %18, ptr noundef %add.ptr23, i32 noundef %sub25, i1 noundef zeroext %tobool27.not, i32 noundef 2592) #5
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_complete_wifi_ack(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mgmt_tx_status(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_wmm_lists_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/txrx.c", i32 53, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/txrx.c", i32 59, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab_mwifiex_handle_rx_packet, !6, !"__ksymtab_mwifiex_handle_rx_packet", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/marvell/mwifiex/txrx.c", i32 73, i32 1}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/marvell/mwifiex/txrx.c", i32 127, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/marvell/mwifiex/txrx.c", i32 132, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/marvell/mwifiex/txrx.c", i32 141, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/marvell/mwifiex/txrx.c", i32 144, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/marvell/mwifiex/txrx.c", i32 322, i32 4}
!17 = !{ptr @__ksymtab_mwifiex_write_data_complete, !18, !"__ksymtab_mwifiex_write_data_complete", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/marvell/mwifiex/txrx.c", i32 330, i32 1}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/marvell/mwifiex/txrx.c", i32 176, i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2148536817, i64 2148536843, i64 2148536872, i64 2148536906, i64 2148536937, i64 2148536960}
!31 = !{i64 2148625293}
!32 = !{i64 2148540002, i64 2148540034, i64 2148540063, i64 2148540097, i64 2148540128, i64 2148540151}
!33 = !{i64 2148625522}
!34 = !{i64 2148539282, i64 2148539308, i64 2148539337, i64 2148539371, i64 2148539402, i64 2148539425}
