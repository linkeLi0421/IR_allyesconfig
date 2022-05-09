; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/util.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mwifiex_init_shutdown_fw\22, \22a\22\09"
module asm "\09.weak\09__crc_mwifiex_init_shutdown_fw\09\09\09\09"
module asm "\09.long\09__crc_mwifiex_init_shutdown_fw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_init_shutdown_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_init_shutdown_fw\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_init_shutdown_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mwifiex_alloc_dma_align_buf\22, \22a\22\09"
module asm "\09.weak\09__crc_mwifiex_alloc_dma_align_buf\09\09\09\09"
module asm "\09.long\09__crc_mwifiex_alloc_dma_align_buf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_alloc_dma_align_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_alloc_dma_align_buf\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_alloc_dma_align_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mwifiex_fw_dump_event\22, \22a\22\09"
module asm "\09.weak\09__crc_mwifiex_fw_dump_event\09\09\09\09"
module asm "\09.long\09__crc_mwifiex_fw_dump_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_fw_dump_event:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_fw_dump_event\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_fw_dump_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mwifiex_debug_data = type { [32 x i8], i32, i32, i32 }
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
%struct.mwifiex_debug_info = type { i32, i32, [8 x i32], i32, i32, i32, [2 x %struct.mwifiex_ds_tx_ba_stream_tbl], i32, [16 x %struct.mwifiex_ds_rx_reorder_tbl], i32, [8 x %struct.tdls_peer_info], i16, i32, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, i8, i8, i8, i8, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_ds_tx_ba_stream_tbl = type { i16, [6 x i8], i8 }
%struct.mwifiex_ds_rx_reorder_tbl = type { i16, [6 x i8], i32, i32, [64 x i32] }
%struct.tdls_peer_info = type { [6 x i8] }
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
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.mwifiex_histogram_data = type { [74 x %struct.atomic_t], [256 x %struct.atomic_t], [256 x %struct.atomic_t], [256 x %struct.atomic_t], %struct.atomic_t }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unsupported parameter\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_mwifiex_init_shutdown_fw = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_init_shutdown_fw = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_init_shutdown_fw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_init_shutdown_fw to i32), ptr @__kstrtab_mwifiex_init_shutdown_fw, ptr @__kstrtabns_mwifiex_init_shutdown_fw }, section "___ksymtab_gpl+mwifiex_init_shutdown_fw", align 4
@items = internal global { [47 x %struct.mwifiex_debug_data], [524 x i8] } { [47 x %struct.mwifiex_debug_data] [%struct.mwifiex_debug_data { [32 x i8] c"debug_mask\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 0, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"int_counter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"wmm_ac_vo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 20, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"wmm_ac_vi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"wmm_ac_be\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 12, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"wmm_ac_bk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"tx_buf_size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 40, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"curr_tx_buf_size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 44, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"ps_mode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4480, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"ps_state\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4484, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"is_deep_sleep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4488, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"wakeup_dev_req\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4489, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"wakeup_tries\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4492, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"hs_configured\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4496, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"hs_activated\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4497, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_tx_timeout\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4536, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"is_cmd_timedout\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4540, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"timeout_cmd_id\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4542, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"timeout_cmd_act\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4544, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"last_cmd_id\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10, i32 4546, i32 5 }, %struct.mwifiex_debug_data { [32 x i8] c"last_cmd_act\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10, i32 4556, i32 5 }, %struct.mwifiex_debug_data { [32 x i8] c"last_cmd_index\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4566, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"last_cmd_resp_id\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10, i32 4568, i32 5 }, %struct.mwifiex_debug_data { [32 x i8] c"last_cmd_resp_index\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4578, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"last_event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10, i32 4580, i32 5 }, %struct.mwifiex_debug_data { [32 x i8] c"last_event_index\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4590, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"last_mp_wr_bitmap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40, i32 4596, i32 10 }, %struct.mwifiex_debug_data { [32 x i8] c"last_mp_wr_ports\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40, i32 4636, i32 10 }, %struct.mwifiex_debug_data { [32 x i8] c"last_mp_wr_len\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40, i32 4676, i32 10 }, %struct.mwifiex_debug_data { [32 x i8] c"last_mp_curr_wr_port\00\00\00\00\00\00\00\00\00\00\00\00", i32 40, i32 4716, i32 10 }, %struct.mwifiex_debug_data { [32 x i8] c"last_sdio_mp_index\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4756, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_cmd_h2c_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4500, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_cmd_sleep_cfm_fail\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4504, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_tx_h2c_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4508, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_evt_deauth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4512, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_evt_disassoc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4516, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_evt_link_lost\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4520, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_cmd_deauth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4524, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_cmd_assoc_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4528, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_cmd_assoc_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4532, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"cmd_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4593, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"data_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4592, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"cmd_resp_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4594, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"event_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4595, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"cmd_pending\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 288, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"tx_pending\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 284, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"rx_pending\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 280, i32 1 }], [524 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s=\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%#lx \00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tx BA stream table:\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tid = %d, ra = %pM\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Rx reorder table:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tid = %d, ta = %pM, \00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"start_win = %d, \00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"win_size = %d, buffer: \00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%c \00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TDLS peer table:\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peer = %pM\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"do not receive mgmt frames on uninitialized intf\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/marvell/mwifiex/util.c\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cmd completed: status=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_mwifiex_alloc_dma_align_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_alloc_dma_align_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_alloc_dma_align_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_alloc_dma_align_buf to i32), ptr @__kstrtab_mwifiex_alloc_dma_align_buf, ptr @__kstrtabns_mwifiex_alloc_dma_align_buf }, section "___ksymtab_gpl+mwifiex_alloc_dma_align_buf", align 4
@__kstrtab_mwifiex_fw_dump_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_fw_dump_event = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_fw_dump_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_fw_dump_event to i32), ptr @__kstrtab_mwifiex_fw_dump_event, ptr @__kstrtabns_mwifiex_fw_dump_event }, section "___ksymtab_gpl+mwifiex_fw_dump_event", align 4
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"TDLS discovery response %pM nf=%d, snr=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drop BACK action frames\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unknown public action frame category %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unknown mgmt frame subtype %#x\0A\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 162, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 28, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 264, i32 19 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 292, i32 20 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 300, i32 19 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 302, i32 20 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 307, i32 19 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 309, i32 20 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 312, i32 20 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 314, i32 20 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 318, i32 21 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 327, i32 19 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 329, i32 20 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 402, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 507, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 508, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 357, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 368, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 372, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [47 x i8] c"../drivers/net/wireless/marvell/mwifiex/util.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 378, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_mwifiex_alloc_dma_align_buf, ptr @__ksymtab_mwifiex_fw_dump_event, ptr @__ksymtab_mwifiex_init_shutdown_fw, ptr @.str, ptr @items, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @items to i32), i32 2068, i32 2592, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_init_fw_complete(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 45
  %0 = ptrtoint ptr %hw_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %init_fw_port = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 17
  %2 = ptrtoint ptr %init_fw_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_fw_port, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then1

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %3(ptr noundef %adapter) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %init_wait_q_woken = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 15
  %4 = ptrtoint ptr %init_wait_q_woken to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %init_wait_q_woken, align 2
  %init_wait_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %init_wait_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_init_shutdown_fw(ptr noundef %priv, i32 noundef %func_init_shutdown) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %func_init_shutdown to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %func_init_shutdown, label %if.else3 [
    i32 1, label %entry.if.end4_crit_edge
    i32 2, label %if.then2
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.else3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end4:                                          ; preds = %if.then2, %entry.if.end4_crit_edge
  %cmd.0 = phi i16 [ 170, %if.then2 ], [ 169, %entry.if.end4_crit_edge ]
  %call = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext %cmd.0, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.else3
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -1, %if.else3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_debug_info(ptr noundef %priv, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %debug_mask = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %info, align 4
  %packets_out = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 2
  %packets_out3 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 1
  %5 = call ptr @memcpy(ptr %packets_out, ptr %packets_out3, i32 32)
  %curr_tx_buf_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 40
  %6 = ptrtoint ptr %curr_tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %curr_tx_buf_size, align 4
  %conv = zext i16 %7 to i32
  %curr_tx_buf_size5 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 4
  %8 = ptrtoint ptr %curr_tx_buf_size5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %curr_tx_buf_size5, align 4
  %tx_buf_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 39
  %9 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tx_buf_size, align 2
  %conv6 = zext i16 %10 to i32
  %tx_buf_size7 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %tx_buf_size7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv6, ptr %tx_buf_size7, align 4
  %rx_tbl = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 8
  %call = tail call i32 @mwifiex_get_rx_reorder_tbl(ptr noundef %priv, ptr noundef %rx_tbl) #10
  %rx_tbl_num = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 7
  %12 = ptrtoint ptr %rx_tbl_num to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call, ptr %rx_tbl_num, align 4
  %tx_tbl = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 6
  %call10 = tail call i32 @mwifiex_get_tx_ba_stream_tbl(ptr noundef %priv, ptr noundef %tx_tbl) #10
  %tx_tbl_num = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 5
  %13 = ptrtoint ptr %tx_tbl_num to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call10, ptr %tx_tbl_num, align 4
  %tdls_list = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 10
  %call12 = tail call i32 @mwifiex_get_tdls_list(ptr noundef %priv, ptr noundef %tdls_list) #10
  %tdls_peer_num = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 9
  %14 = ptrtoint ptr %tdls_peer_num to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call12, ptr %tdls_peer_num, align 4
  %ps_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 89
  %15 = ptrtoint ptr %ps_mode to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ps_mode, align 4
  %ps_mode13 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 11
  %17 = ptrtoint ptr %ps_mode13 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %ps_mode13, align 4
  %ps_state = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 90
  %18 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ps_state, align 4
  %ps_state14 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 12
  %20 = ptrtoint ptr %ps_state14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ps_state14, align 4
  %is_deep_sleep = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 98
  %21 = ptrtoint ptr %is_deep_sleep to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_deep_sleep, align 4
  %is_deep_sleep15 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 13
  %23 = ptrtoint ptr %is_deep_sleep15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %is_deep_sleep15, align 4
  %pm_wakeup_card_req = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 102
  %24 = ptrtoint ptr %pm_wakeup_card_req to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pm_wakeup_card_req, align 2
  %pm_wakeup_card_req16 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 14
  %26 = ptrtoint ptr %pm_wakeup_card_req16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %pm_wakeup_card_req16, align 1
  %pm_wakeup_fw_try = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 105
  %27 = ptrtoint ptr %pm_wakeup_fw_try to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pm_wakeup_fw_try, align 4
  %pm_wakeup_fw_try17 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 15
  %29 = ptrtoint ptr %pm_wakeup_fw_try17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %pm_wakeup_fw_try17, align 4
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %work_flags, align 4
  %32 = trunc i32 %31 to i8
  %33 = lshr i8 %32, 3
  %conv19 = and i8 %33, 1
  %is_hs_configured = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 16
  %34 = ptrtoint ptr %is_hs_configured to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv19, ptr %is_hs_configured, align 4
  %hs_activated = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 108
  %35 = ptrtoint ptr %hs_activated to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hs_activated, align 2
  %hs_activated20 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 17
  %37 = ptrtoint ptr %hs_activated20 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %hs_activated20, align 1
  %38 = load volatile i32, ptr %work_flags, align 4
  %39 = trunc i32 %38 to i8
  %40 = lshr i8 %39, 1
  %conv23 = and i8 %40, 1
  %is_cmd_timedout = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 28
  %41 = ptrtoint ptr %is_cmd_timedout to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv23, ptr %is_cmd_timedout, align 4
  %dbg = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118
  %42 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dbg, align 4
  %num_cmd_host_to_card_failure24 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 18
  %44 = ptrtoint ptr %num_cmd_host_to_card_failure24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %num_cmd_host_to_card_failure24, align 4
  %num_cmd_sleep_cfm_host_to_card_failure = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 1
  %45 = ptrtoint ptr %num_cmd_sleep_cfm_host_to_card_failure to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_cmd_sleep_cfm_host_to_card_failure, align 4
  %num_cmd_sleep_cfm_host_to_card_failure26 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 19
  %47 = ptrtoint ptr %num_cmd_sleep_cfm_host_to_card_failure26 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %num_cmd_sleep_cfm_host_to_card_failure26, align 4
  %num_tx_host_to_card_failure = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 2
  %48 = ptrtoint ptr %num_tx_host_to_card_failure to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_tx_host_to_card_failure, align 4
  %num_tx_host_to_card_failure28 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 20
  %50 = ptrtoint ptr %num_tx_host_to_card_failure28 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %num_tx_host_to_card_failure28, align 4
  %num_event_deauth = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 3
  %51 = ptrtoint ptr %num_event_deauth to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_event_deauth, align 4
  %num_event_deauth30 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 21
  %53 = ptrtoint ptr %num_event_deauth30 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %num_event_deauth30, align 4
  %num_event_disassoc = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 4
  %54 = ptrtoint ptr %num_event_disassoc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_event_disassoc, align 4
  %num_event_disassoc32 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 22
  %56 = ptrtoint ptr %num_event_disassoc32 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %num_event_disassoc32, align 4
  %num_event_link_lost = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 5
  %57 = ptrtoint ptr %num_event_link_lost to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_event_link_lost, align 4
  %num_event_link_lost34 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 23
  %59 = ptrtoint ptr %num_event_link_lost34 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %num_event_link_lost34, align 4
  %num_cmd_deauth = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 6
  %60 = ptrtoint ptr %num_cmd_deauth to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_cmd_deauth, align 4
  %num_cmd_deauth36 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 24
  %62 = ptrtoint ptr %num_cmd_deauth36 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %num_cmd_deauth36, align 4
  %num_cmd_assoc_success = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 7
  %63 = ptrtoint ptr %num_cmd_assoc_success to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_cmd_assoc_success, align 4
  %num_cmd_assoc_success38 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 25
  %65 = ptrtoint ptr %num_cmd_assoc_success38 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %num_cmd_assoc_success38, align 4
  %num_cmd_assoc_failure = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 8
  %66 = ptrtoint ptr %num_cmd_assoc_failure to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_cmd_assoc_failure, align 4
  %num_cmd_assoc_failure40 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 26
  %68 = ptrtoint ptr %num_cmd_assoc_failure40 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %num_cmd_assoc_failure40, align 4
  %num_tx_timeout = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 9
  %69 = ptrtoint ptr %num_tx_timeout to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_tx_timeout, align 4
  %num_tx_timeout42 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 27
  %71 = ptrtoint ptr %num_tx_timeout42 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %num_tx_timeout42, align 4
  %timeout_cmd_id = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 10
  %72 = ptrtoint ptr %timeout_cmd_id to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %timeout_cmd_id, align 4
  %timeout_cmd_id44 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 29
  %74 = ptrtoint ptr %timeout_cmd_id44 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %timeout_cmd_id44, align 2
  %timeout_cmd_act = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 11
  %75 = ptrtoint ptr %timeout_cmd_act to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %timeout_cmd_act, align 2
  %timeout_cmd_act46 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 30
  %77 = ptrtoint ptr %timeout_cmd_act46 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %timeout_cmd_act46, align 4
  %last_cmd_id = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 31
  %last_cmd_id49 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 12
  %78 = call ptr @memcpy(ptr %last_cmd_id, ptr %last_cmd_id49, i32 10)
  %last_cmd_act = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 32
  %last_cmd_act53 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 13
  %79 = call ptr @memcpy(ptr %last_cmd_act, ptr %last_cmd_act53, i32 10)
  %last_cmd_index = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 14
  %80 = ptrtoint ptr %last_cmd_index to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %last_cmd_index, align 4
  %last_cmd_index56 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 33
  %82 = ptrtoint ptr %last_cmd_index56 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %last_cmd_index56, align 2
  %last_cmd_resp_id = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 34
  %last_cmd_resp_id59 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 15
  %83 = call ptr @memcpy(ptr %last_cmd_resp_id, ptr %last_cmd_resp_id59, i32 10)
  %last_cmd_resp_index = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 16
  %84 = ptrtoint ptr %last_cmd_resp_index to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %last_cmd_resp_index, align 4
  %last_cmd_resp_index62 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 35
  %86 = ptrtoint ptr %last_cmd_resp_index62 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %last_cmd_resp_index62, align 2
  %last_event = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 36
  %last_event65 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 17
  %87 = call ptr @memcpy(ptr %last_event, ptr %last_event65, i32 10)
  %last_event_index = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 18
  %88 = ptrtoint ptr %last_event_index to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %last_event_index, align 4
  %last_event_index68 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 37
  %90 = ptrtoint ptr %last_event_index68 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %last_event_index68, align 2
  %last_mp_wr_bitmap = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 42
  %last_mp_wr_bitmap71 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 19
  %91 = call ptr @memcpy(ptr %last_mp_wr_bitmap, ptr %last_mp_wr_bitmap71, i32 40)
  %last_mp_wr_ports = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 43
  %last_mp_wr_ports75 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 20
  %92 = call ptr @memcpy(ptr %last_mp_wr_ports, ptr %last_mp_wr_ports75, i32 40)
  %last_mp_curr_wr_port = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 45
  %last_mp_curr_wr_port79 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 22
  %93 = call ptr @memcpy(ptr %last_mp_curr_wr_port, ptr %last_mp_curr_wr_port79, i32 40)
  %last_mp_wr_len = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 44
  %last_mp_wr_len83 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 21
  %94 = call ptr @memcpy(ptr %last_mp_wr_len, ptr %last_mp_wr_len83, i32 40)
  %last_sdio_mp_index = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 23
  %95 = ptrtoint ptr %last_sdio_mp_index to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %last_sdio_mp_index, align 4
  %last_sdio_mp_index86 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 46
  %97 = ptrtoint ptr %last_sdio_mp_index86 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %last_sdio_mp_index86, align 4
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 53
  %98 = ptrtoint ptr %data_sent to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %data_sent, align 4
  %data_sent87 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 38
  %100 = ptrtoint ptr %data_sent87 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %data_sent87, align 4
  %cmd_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 54
  %101 = ptrtoint ptr %cmd_sent to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %cmd_sent, align 1
  %cmd_sent88 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 39
  %103 = ptrtoint ptr %cmd_sent88 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %cmd_sent88, align 1
  %cmd_resp_received = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 55
  %104 = ptrtoint ptr %cmd_resp_received to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %cmd_resp_received, align 2
  %cmd_resp_received89 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 40
  %106 = ptrtoint ptr %cmd_resp_received89 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %cmd_resp_received89, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_rx_reorder_tbl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_tx_ba_stream_tbl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_tdls_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_debug_info_to_buffer(ptr nocapture noundef readonly %priv, ptr noundef %buf, ptr noundef %info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %p.0217 = phi ptr [ %add.ptr32, %for.end.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %i.0215 = phi i32 [ %inc34, %for.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_debug_data, ptr @items, i32 %i.0215
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.0217, ptr noundef nonnull @.str.1, ptr noundef %arrayidx)
  %add.ptr = getelementptr i8, ptr %p.0217, i32 %call
  %size2 = getelementptr %struct.mwifiex_debug_data, ptr @items, i32 %i.0215, i32 1
  %0 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size2, align 4
  %num = getelementptr %struct.mwifiex_debug_data, ptr @items, i32 %i.0215, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  %div = udiv i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %i.0215)
  %cmp4 = icmp ult i32 %i.0215, 44
  %addr7 = getelementptr %struct.mwifiex_debug_data, ptr @items, i32 %i.0215, i32 2
  %4 = ptrtoint ptr %addr7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr7, align 4
  br i1 %cmp4, label %for.body.if.end11_crit_edge, label %if.else

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %for.body.if.end11_crit_edge
  %.sink.in = phi ptr [ %7, %if.else ], [ %info, %for.body.if.end11_crit_edge ]
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp15210 = icmp sgt i32 %9, 0
  br i1 %cmp15210, label %for.body16.preheader, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body16.preheader:                             ; preds = %if.end11
  %.sink = ptrtoint ptr %.sink.in to i32
  %add10 = add i32 %5, %.sink
  br label %for.body16

for.body16:                                       ; preds = %sw.epilog.for.body16_crit_edge, %for.body16.preheader
  %p.1214 = phi ptr [ %add.ptr29, %sw.epilog.for.body16_crit_edge ], [ %add.ptr, %for.body16.preheader ]
  %addr.1212 = phi i32 [ %add30, %sw.epilog.for.body16_crit_edge ], [ %add10, %for.body16.preheader ]
  %j.0211 = phi i32 [ %inc, %sw.epilog.for.body16_crit_edge ], [ 0, %for.body16.preheader ]
  %10 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %div, label %for.body16.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
    i32 4, label %sw.bb19
    i32 8, label %sw.bb23
  ]

for.body16.sw.epilog_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  %11 = inttoptr i32 %addr.1212 to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv = zext i8 %13 to i32
  br label %sw.epilog

sw.bb17:                                          ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  %14 = inttoptr i32 %addr.1212 to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %14, align 1
  %conv18 = zext i16 %16 to i32
  br label %sw.epilog

sw.bb19:                                          ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  %17 = inttoptr i32 %addr.1212 to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %17, align 1
  br label %sw.epilog

sw.bb23:                                          ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  %20 = inttoptr i32 %addr.1212 to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %20, align 1
  %conv27 = trunc i64 %22 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb19, %sw.bb17, %sw.bb, %for.body16.sw.epilog_crit_edge
  %val.0 = phi i32 [ %conv27, %sw.bb23 ], [ %19, %sw.bb19 ], [ %conv18, %sw.bb17 ], [ %conv, %sw.bb ], [ -1, %for.body16.sw.epilog_crit_edge ]
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.1214, ptr noundef nonnull @.str.2, i32 noundef %val.0)
  %add.ptr29 = getelementptr i8, ptr %p.1214, i32 %call28
  %add30 = add i32 %addr.1212, %div
  %inc = add nuw nsw i32 %j.0211, 1
  %23 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num, align 4
  %cmp15 = icmp slt i32 %inc, %24
  br i1 %cmp15, label %sw.epilog.for.body16_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

sw.epilog.for.body16_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %if.end11.for.end_crit_edge
  %p.1.lcssa = phi ptr [ %add.ptr, %if.end11.for.end_crit_edge ], [ %add.ptr29, %sw.epilog.for.end_crit_edge ]
  %25 = ptrtoint ptr %p.1.lcssa to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 2560, ptr %p.1.lcssa, align 1
  %add.ptr32 = getelementptr i8, ptr %p.1.lcssa, i32 1
  %inc34 = add nuw nsw i32 %i.0215, 1
  %exitcond.not = icmp eq i32 %inc34, 47
  br i1 %exitcond.not, label %for.end35, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end35:                                        ; preds = %for.end
  %tx_tbl_num = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 5
  %26 = ptrtoint ptr %tx_tbl_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_tbl_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool36.not = icmp eq i32 %27, 0
  br i1 %tobool36.not, label %for.end35.if.end55_crit_edge, label %if.then37

for.end35.if.end55_crit_edge:                     ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then37:                                        ; preds = %for.end35
  %28 = call ptr @memcpy(ptr %add.ptr32, ptr @.str.4, i32 21)
  %add.ptr39 = getelementptr i8, ptr %p.1.lcssa, i32 21
  %29 = ptrtoint ptr %tx_tbl_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_tbl_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp42218.not = icmp eq i32 %30, 0
  br i1 %cmp42218.not, label %if.then37.if.end55_crit_edge, label %if.then37.for.body44_crit_edge

if.then37.for.body44_crit_edge:                   ; preds = %if.then37
  br label %for.body44

if.then37.if.end55_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %if.then37.for.body44_crit_edge
  %p.2220 = phi ptr [ %add.ptr51, %for.body44.for.body44_crit_edge ], [ %add.ptr39, %if.then37.for.body44_crit_edge ]
  %i.1219 = phi i32 [ %inc53, %for.body44.for.body44_crit_edge ], [ 0, %if.then37.for.body44_crit_edge ]
  %arrayidx45 = getelementptr %struct.mwifiex_debug_info, ptr %info, i32 0, i32 6, i32 %i.1219
  %31 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx45, align 2
  %conv46 = zext i16 %32 to i32
  %ra = getelementptr %struct.mwifiex_debug_info, ptr %info, i32 0, i32 6, i32 %i.1219, i32 1
  %call50 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.2220, ptr noundef nonnull @.str.5, i32 noundef %conv46, ptr noundef %ra)
  %add.ptr51 = getelementptr i8, ptr %p.2220, i32 %call50
  %inc53 = add nuw i32 %i.1219, 1
  %33 = ptrtoint ptr %tx_tbl_num to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_tbl_num, align 4
  %cmp42 = icmp ult i32 %inc53, %34
  br i1 %cmp42, label %for.body44.for.body44_crit_edge, label %for.body44.if.end55_crit_edge

for.body44.if.end55_crit_edge:                    ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44

if.end55:                                         ; preds = %for.body44.if.end55_crit_edge, %if.then37.if.end55_crit_edge, %for.end35.if.end55_crit_edge
  %p.3 = phi ptr [ %add.ptr32, %for.end35.if.end55_crit_edge ], [ %add.ptr39, %if.then37.if.end55_crit_edge ], [ %add.ptr51, %for.body44.if.end55_crit_edge ]
  %rx_tbl_num = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 7
  %35 = ptrtoint ptr %rx_tbl_num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_tbl_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool56.not = icmp eq i32 %36, 0
  br i1 %tobool56.not, label %if.end55.if.end102_crit_edge, label %if.then57

if.end55.if.end102_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then57:                                        ; preds = %if.end55
  %37 = call ptr @memcpy(ptr %p.3, ptr @.str.6, i32 19)
  %add.ptr59 = getelementptr i8, ptr %p.3, i32 18
  %38 = ptrtoint ptr %rx_tbl_num to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_tbl_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp62226.not = icmp eq i32 %39, 0
  br i1 %cmp62226.not, label %if.then57.if.end102_crit_edge, label %if.then57.for.body64_crit_edge

if.then57.for.body64_crit_edge:                   ; preds = %if.then57
  br label %for.body64

if.then57.if.end102_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

for.body64:                                       ; preds = %for.end96.for.body64_crit_edge, %if.then57.for.body64_crit_edge
  %p.4229 = phi ptr [ %add.ptr98, %for.end96.for.body64_crit_edge ], [ %add.ptr59, %if.then57.for.body64_crit_edge ]
  %i.2227 = phi i32 [ %inc100, %for.end96.for.body64_crit_edge ], [ 0, %if.then57.for.body64_crit_edge ]
  %arrayidx65 = getelementptr %struct.mwifiex_debug_info, ptr %info, i32 0, i32 8, i32 %i.2227
  %40 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx65, align 4
  %conv67 = zext i16 %41 to i32
  %ta = getelementptr %struct.mwifiex_debug_info, ptr %info, i32 0, i32 8, i32 %i.2227, i32 1
  %call71 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.4229, ptr noundef nonnull @.str.7, i32 noundef %conv67, ptr noundef %ta)
  %add.ptr72 = getelementptr i8, ptr %p.4229, i32 %call71
  %start_win = getelementptr %struct.mwifiex_debug_info, ptr %info, i32 0, i32 8, i32 %i.2227, i32 2
  %42 = ptrtoint ptr %start_win to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %start_win, align 4
  %call75 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr72, ptr noundef nonnull @.str.8, i32 noundef %43)
  %add.ptr76 = getelementptr i8, ptr %add.ptr72, i32 %call75
  %win_size = getelementptr %struct.mwifiex_debug_info, ptr %info, i32 0, i32 8, i32 %i.2227, i32 3
  %44 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %win_size, align 4
  %call79 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr76, ptr noundef nonnull @.str.9, i32 noundef %45)
  %add.ptr80 = getelementptr i8, ptr %add.ptr76, i32 %call79
  %46 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %win_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp85222.not = icmp eq i32 %47, 0
  br i1 %cmp85222.not, label %for.body64.for.end96_crit_edge, label %for.body64.for.body87_crit_edge

for.body64.for.body87_crit_edge:                  ; preds = %for.body64
  br label %for.body87

for.body64.for.end96_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end96

for.body87:                                       ; preds = %for.body87.for.body87_crit_edge, %for.body64.for.body87_crit_edge
  %p.5224 = phi ptr [ %add.ptr93, %for.body87.for.body87_crit_edge ], [ %add.ptr80, %for.body64.for.body87_crit_edge ]
  %j.1223 = phi i32 [ %inc95, %for.body87.for.body87_crit_edge ], [ 0, %for.body64.for.body87_crit_edge ]
  %arrayidx90 = getelementptr %struct.mwifiex_debug_info, ptr %info, i32 0, i32 8, i32 %i.2227, i32 4, i32 %j.1223
  %48 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool91.not = icmp eq i32 %49, 0
  %cond = select i1 %tobool91.not, i32 48, i32 49
  %call92 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.5224, ptr noundef nonnull @.str.10, i32 noundef %cond)
  %add.ptr93 = getelementptr i8, ptr %p.5224, i32 %call92
  %inc95 = add nuw i32 %j.1223, 1
  %50 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %win_size, align 4
  %cmp85 = icmp ult i32 %inc95, %51
  br i1 %cmp85, label %for.body87.for.body87_crit_edge, label %for.body87.for.end96_crit_edge

for.body87.for.end96_crit_edge:                   ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end96

for.body87.for.body87_crit_edge:                  ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body87

for.end96:                                        ; preds = %for.body87.for.end96_crit_edge, %for.body64.for.end96_crit_edge
  %p.5.lcssa = phi ptr [ %add.ptr80, %for.body64.for.end96_crit_edge ], [ %add.ptr93, %for.body87.for.end96_crit_edge ]
  %52 = ptrtoint ptr %p.5.lcssa to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 2560, ptr %p.5.lcssa, align 1
  %add.ptr98 = getelementptr i8, ptr %p.5.lcssa, i32 1
  %inc100 = add nuw i32 %i.2227, 1
  %53 = ptrtoint ptr %rx_tbl_num to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_tbl_num, align 4
  %cmp62 = icmp ult i32 %inc100, %54
  br i1 %cmp62, label %for.end96.for.body64_crit_edge, label %for.end96.if.end102_crit_edge

for.end96.if.end102_crit_edge:                    ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

for.end96.for.body64_crit_edge:                   ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body64

if.end102:                                        ; preds = %for.end96.if.end102_crit_edge, %if.then57.if.end102_crit_edge, %if.end55.if.end102_crit_edge
  %p.6 = phi ptr [ %p.3, %if.end55.if.end102_crit_edge ], [ %add.ptr59, %if.then57.if.end102_crit_edge ], [ %add.ptr98, %for.end96.if.end102_crit_edge ]
  %tdls_peer_num = getelementptr inbounds %struct.mwifiex_debug_info, ptr %info, i32 0, i32 9
  %55 = ptrtoint ptr %tdls_peer_num to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tdls_peer_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool103.not = icmp eq i32 %56, 0
  br i1 %tobool103.not, label %if.end102.if.end121_crit_edge, label %if.then104

if.end102.if.end121_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then104:                                       ; preds = %if.end102
  %57 = call ptr @memcpy(ptr %p.6, ptr @.str.11, i32 18)
  %add.ptr106 = getelementptr i8, ptr %p.6, i32 17
  %58 = ptrtoint ptr %tdls_peer_num to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tdls_peer_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp109231.not = icmp eq i32 %59, 0
  br i1 %cmp109231.not, label %if.then104.if.end121_crit_edge, label %if.then104.for.body111_crit_edge

if.then104.for.body111_crit_edge:                 ; preds = %if.then104
  br label %for.body111

if.then104.if.end121_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

for.body111:                                      ; preds = %for.body111.for.body111_crit_edge, %if.then104.for.body111_crit_edge
  %p.7233 = phi ptr [ %add.ptr117, %for.body111.for.body111_crit_edge ], [ %add.ptr106, %if.then104.for.body111_crit_edge ]
  %i.3232 = phi i32 [ %inc119, %for.body111.for.body111_crit_edge ], [ 0, %if.then104.for.body111_crit_edge ]
  %arrayidx112 = getelementptr %struct.mwifiex_debug_info, ptr %info, i32 0, i32 10, i32 %i.3232
  %call114 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.7233, ptr noundef nonnull @.str.12, ptr noundef %arrayidx112)
  %add.ptr115 = getelementptr i8, ptr %p.7233, i32 %call114
  %60 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 2560, ptr %add.ptr115, align 1
  %add.ptr117 = getelementptr i8, ptr %add.ptr115, i32 1
  %inc119 = add nuw i32 %i.3232, 1
  %61 = ptrtoint ptr %tdls_peer_num to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tdls_peer_num, align 4
  %cmp109 = icmp ult i32 %inc119, %62
  br i1 %cmp109, label %for.body111.for.body111_crit_edge, label %for.body111.if.end121_crit_edge

for.body111.if.end121_crit_edge:                  ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

for.body111.for.body111_crit_edge:                ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body111

if.end121:                                        ; preds = %for.body111.if.end121_crit_edge, %if.then104.if.end121_crit_edge, %if.end102.if.end121_crit_edge
  %p.8 = phi ptr [ %p.6, %if.end102.if.end121_crit_edge ], [ %add.ptr106, %if.then104.if.end121_crit_edge ], [ %add.ptr117, %for.body111.if.end121_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %p.8 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %if.end121 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_mgmt_packet(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mgmt_frame_mask = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 127
  %0 = ptrtoint ptr %mgmt_frame_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mgmt_frame_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.then2_crit_edge, label %lor.lhs.false

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %iftype = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.if.then2_crit_edge, label %if.end3

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %rx_pkt_offset = getelementptr inbounds %struct.rxpd, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %rx_pkt_offset, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv = zext i16 %10 to i32
  %call = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef %conv) #10
  %call4 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 2) #10
  %rx_pkt_length = getelementptr inbounds %struct.rxpd, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %rx_pkt_length to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %rx_pkt_length, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %18 = and i16 %17, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i = icmp eq i16 %18, 0
  br i1 %cmp.i, label %if.then7, label %if.end3.if.end12_crit_edge

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then7:                                         ; preds = %if.end3
  %19 = lshr i16 %17, 8
  %20 = and i16 %19, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 208, i16 %20)
  %cond.i = icmp eq i16 %20, 208
  br i1 %cond.i, label %sw.bb.i, label %sw.default18.i

sw.bb.i:                                          ; preds = %if.then7
  %add.ptr.i = getelementptr i8, ptr %15, i32 30
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %22, label %sw.default.i [
    i8 4, label %sw.bb4.i
    i8 3, label %mwifiex_parse_mgmt_packet.exit
  ]

sw.bb4.i:                                         ; preds = %sw.bb.i
  %add.ptr6.i = getelementptr i8, ptr %15, i32 31
  %24 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %25)
  %cmp.i55 = icmp eq i8 %25, 14
  br i1 %cmp.i55, label %if.then.i, label %sw.bb4.i.if.end12_crit_edge

sw.bb4.i.if.end12_crit_edge:                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr29.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %15, i32 0, i32 3
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %nf.i = getelementptr inbounds %struct.rxpd, ptr %7, i32 0, i32 9
  %28 = ptrtoint ptr %nf.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nf.i, align 1
  %conv10.i = sext i8 %29 to i32
  %snr.i = getelementptr inbounds %struct.rxpd, ptr %7, i32 0, i32 8
  %30 = ptrtoint ptr %snr.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %snr.i, align 1
  %conv11.i = sext i8 %31 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %27, i32 noundef 1073741824, ptr noundef nonnull @.str.16, ptr noundef %addr29.i, i32 noundef %conv10.i, i32 noundef %conv11.i) #10
  %32 = ptrtoint ptr %snr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %snr.i, align 1
  %34 = ptrtoint ptr %nf.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %nf.i, align 1
  tail call void @mwifiex_auto_tdls_update_peer_signal(ptr noundef %priv, ptr noundef %addr29.i, i8 noundef signext %33, i8 noundef signext %35) #10
  br label %if.end12

sw.default.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv3.i = zext i8 %22 to i32
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %37, i32 noundef 1073741824, ptr noundef nonnull @.str.18, i32 noundef %conv3.i) #10
  br label %if.end12

sw.default18.i:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i = zext i16 %20 to i32
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %39, i32 noundef 1073741824, ptr noundef nonnull @.str.19, i32 noundef %conv2.i) #10
  br label %if.end12

mwifiex_parse_mgmt_packet.exit:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %41, i32 noundef 1073741824, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end12:                                         ; preds = %sw.default18.i, %sw.default.i, %if.then.i, %sw.bb4.i.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %43, i32 24
  %add.ptr15 = getelementptr i8, ptr %43, i32 30
  %conv16 = zext i16 %13 to i32
  %sub = add nsw i32 %conv16, -30
  %44 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr15, i32 %sub)
  %sub18 = add i16 %13, -8
  %45 = tail call i16 @llvm.bswap.i16(i16 %sub18)
  %46 = ptrtoint ptr %rx_pkt_length to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %rx_pkt_length, align 1
  %center_freq = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 129, i32 1, i32 1
  %47 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %center_freq, align 4
  %snr = getelementptr inbounds %struct.rxpd, ptr %7, i32 0, i32 8
  %49 = ptrtoint ptr %snr to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %snr, align 1
  %conv23 = sext i8 %50 to i32
  %nf = getelementptr inbounds %struct.rxpd, ptr %7, i32 0, i32 9
  %51 = ptrtoint ptr %nf to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %nf, align 1
  %conv25 = sext i8 %52 to i32
  %add = add nsw i32 %conv25, %conv23
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %conv29 = zext i16 %sub18 to i32
  %mul.i = mul i32 %48, 1000
  %call.i = tail call zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef %wdev, i32 noundef %mul.i, i32 noundef %add, ptr noundef %54, i32 noundef %conv29, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %mwifiex_parse_mgmt_packet.exit, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then2 ], [ 0, %if.end12 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %mwifiex_parse_mgmt_packet.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_recv_packet(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %stats = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 16
  %rx_bytes = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 16, i32 2
  %2 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %3, %1
  store i32 %add, ptr %rx_bytes, align 8
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %stats, align 8
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bss_role, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not = icmp eq i8 %8, 0
  br i1 %cmp.not, label %if.end.if.end17_crit_edge, label %if.then3

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then3:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %10, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %h_source, null
  br i1 %tobool.not.i, label %if.then3.if.end17_crit_edge, label %if.end.i

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end.i:                                         ; preds = %if.then3
  %sta_list.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 79
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %node.0.in.i = phi ptr [ %sta_list.i, %if.end.i ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %node.0.i = load ptr, ptr %node.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %node.0.i, %sta_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end17_crit_edge, label %for.body.i

for.cond.i.if.end17_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.body.i:                                       ; preds = %for.cond.i
  %mac_addr.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node.0.i, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i, ptr noundef nonnull dereferenceable(6) %h_source, i32 6) #13
  %tobool2.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool2.not.i, label %mwifiex_get_sta_entry.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

mwifiex_get_sta_entry.exit:                       ; preds = %for.body.i
  %tobool4.not = icmp eq ptr %node.0.i, null
  br i1 %tobool4.not, label %mwifiex_get_sta_entry.exit.if.end17_crit_edge, label %if.then5

mwifiex_get_sta_entry.exit.if.end17_crit_edge:    ; preds = %mwifiex_get_sta_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then5:                                         ; preds = %mwifiex_get_sta_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %conv6 = zext i32 %12 to i64
  %stats7 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node.0.i, i32 0, i32 11
  %13 = ptrtoint ptr %stats7 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv6, ptr %stats7, align 8
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %conv9 = zext i32 %15 to i64
  %rx_bytes11 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node.0.i, i32 0, i32 11, i32 2
  %16 = ptrtoint ptr %rx_bytes11 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rx_bytes11, align 8
  %add12 = add i64 %17, %conv9
  store i64 %add12, ptr %rx_bytes11, align 8
  %rx_packets14 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node.0.i, i32 0, i32 11, i32 4
  %18 = ptrtoint ptr %rx_packets14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_packets14, align 8
  %inc15 = add i32 %19, 1
  store i32 %inc15, ptr %rx_packets14, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then5, %mwifiex_get_sta_entry.exit.if.end17_crit_edge, %for.cond.i.if.end17_crit_edge, %if.then3.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 4
  %22 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %22, align 8
  %24 = load ptr, ptr %netdev, align 4
  %call19 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb, ptr noundef %24) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %25 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %call19, ptr %protocol, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %26 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %.off = add i8 %30, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %land.lhs.true, label %if.end17.if.end34_crit_edge

if.end17.if.end34_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end17
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %31 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %truesize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %32)
  %cmp28 = icmp ugt i32 %32, 4096
  br i1 %cmp28, label %if.then30, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %sub = add i32 %32, -4096
  %add33 = add i32 %sub, %34
  %35 = ptrtoint ptr %truesize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add33, ptr %truesize, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %land.lhs.true.if.end34_crit_edge, %if.end17.if.end34_crit_edge
  %call35 = tail call i32 @netif_rx_any_context(ptr noundef nonnull %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mwifiex_get_sta_entry(ptr noundef readonly %priv, ptr noundef readonly %mac) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mac, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sta_list = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 79
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %node.0.in = phi ptr [ %sta_list, %if.end ], [ %node.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %node.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.0 = load ptr, ptr %node.0.in, align 8
  %cmp.not = icmp eq ptr %node.0, %sta_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %mac_addr = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node.0, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr, ptr noundef nonnull dereferenceable(6) %mac, i32 6) #14
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %node.0, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_any_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_complete_cmd(ptr noundef %adapter, ptr nocapture noundef readonly %cmd_node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wait_q_enabled = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node, i32 0, i32 7
  %0 = ptrtoint ptr %wait_q_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wait_q_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !61

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cmd_wait_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 121
  %status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 121, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %3) #10
  %condition = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node, i32 0, i32 9
  %4 = ptrtoint ptr %condition to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %condition, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %5, align 1
  tail call void @__wake_up(ptr noundef %cmd_wait_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mwifiex_is_tdls_chan_switching(ptr noundef readonly %priv) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sta_list.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 79
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %node.0.in.i = phi ptr [ %sta_list.i, %if.end ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.0.i = load ptr, ptr %node.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %node.0.i, %sta_list.i
  br i1 %cmp.not.i, label %for.cond.i.mwifiex_get_tdls_sta_entry.exit_crit_edge, label %for.body.i

for.cond.i.mwifiex_get_tdls_sta_entry.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mwifiex_get_tdls_sta_entry.exit

for.body.i:                                       ; preds = %for.cond.i
  %tdls_status.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node.0.i, i32 0, i32 8
  %5 = ptrtoint ptr %tdls_status.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tdls_status.i, align 4
  %cmp3.i = icmp eq i8 %6, 5
  br i1 %cmp3.i, label %for.body.i.mwifiex_get_tdls_sta_entry.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.body.i.mwifiex_get_tdls_sta_entry.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mwifiex_get_tdls_sta_entry.exit

mwifiex_get_tdls_sta_entry.exit:                  ; preds = %for.body.i.mwifiex_get_tdls_sta_entry.exit_crit_edge, %for.cond.i.mwifiex_get_tdls_sta_entry.exit_crit_edge
  %retval.0.i = phi ptr [ %node.0.i, %for.body.i.mwifiex_get_tdls_sta_entry.exit_crit_edge ], [ null, %for.cond.i.mwifiex_get_tdls_sta_entry.exit_crit_edge ]
  %tobool2.not = icmp ne ptr %retval.0.i, null
  %. = zext i1 %tobool2.not to i8
  br label %cleanup

cleanup:                                          ; preds = %mwifiex_get_tdls_sta_entry.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %., %mwifiex_get_tdls_sta_entry.exit ]
  ret i8 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mwifiex_is_tdls_off_chan(ptr noundef readonly %priv) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sta_list.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 79
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %node.0.in.i = phi ptr [ %sta_list.i, %if.end ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.0.i = load ptr, ptr %node.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %node.0.i, %sta_list.i
  br i1 %cmp.not.i, label %for.cond.i.mwifiex_get_tdls_sta_entry.exit_crit_edge, label %for.body.i

for.cond.i.mwifiex_get_tdls_sta_entry.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mwifiex_get_tdls_sta_entry.exit

for.body.i:                                       ; preds = %for.cond.i
  %tdls_status.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node.0.i, i32 0, i32 8
  %5 = ptrtoint ptr %tdls_status.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tdls_status.i, align 4
  %cmp3.i = icmp eq i8 %6, 7
  br i1 %cmp3.i, label %for.body.i.mwifiex_get_tdls_sta_entry.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.body.i.mwifiex_get_tdls_sta_entry.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mwifiex_get_tdls_sta_entry.exit

mwifiex_get_tdls_sta_entry.exit:                  ; preds = %for.body.i.mwifiex_get_tdls_sta_entry.exit_crit_edge, %for.cond.i.mwifiex_get_tdls_sta_entry.exit_crit_edge
  %retval.0.i = phi ptr [ %node.0.i, %for.body.i.mwifiex_get_tdls_sta_entry.exit_crit_edge ], [ null, %for.cond.i.mwifiex_get_tdls_sta_entry.exit_crit_edge ]
  %tobool2.not = icmp ne ptr %retval.0.i, null
  %. = zext i1 %tobool2.not to i8
  br label %cleanup

cleanup:                                          ; preds = %mwifiex_get_tdls_sta_entry.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %., %mwifiex_get_tdls_sta_entry.exit ]
  ret i8 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mwifiex_is_send_cmd_allowed(ptr noundef readonly %priv) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end.i

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false
  %sta_list.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 79
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i
  %node.0.in.i.i = phi ptr [ %sta_list.i.i, %if.end.i ], [ %node.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %node.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.0.i.i = load ptr, ptr %node.0.in.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %node.0.i.i, %sta_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.for.cond.i.i22.preheader_crit_edge, label %for.body.i.i

for.cond.i.i.for.cond.i.i22.preheader_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i22.preheader

for.body.i.i:                                     ; preds = %for.cond.i.i
  %tdls_status.i.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node.0.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %tdls_status.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tdls_status.i.i, align 4
  %cmp3.i.i = icmp eq i8 %6, 5
  br i1 %cmp3.i.i, label %mwifiex_is_tdls_chan_switching.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

mwifiex_is_tdls_chan_switching.exit:              ; preds = %for.body.i.i
  %tobool2.not.i.not = icmp eq ptr %node.0.i.i, null
  br i1 %tobool2.not.i.not, label %mwifiex_is_tdls_chan_switching.exit.for.cond.i.i22.preheader_crit_edge, label %mwifiex_is_tdls_chan_switching.exit.return_crit_edge

mwifiex_is_tdls_chan_switching.exit.return_crit_edge: ; preds = %mwifiex_is_tdls_chan_switching.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

mwifiex_is_tdls_chan_switching.exit.for.cond.i.i22.preheader_crit_edge: ; preds = %mwifiex_is_tdls_chan_switching.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i22.preheader

for.cond.i.i22.preheader:                         ; preds = %mwifiex_is_tdls_chan_switching.exit.for.cond.i.i22.preheader_crit_edge, %for.cond.i.i.for.cond.i.i22.preheader_crit_edge
  br label %for.cond.i.i22

for.cond.i.i22:                                   ; preds = %for.body.i.i25.for.cond.i.i22_crit_edge, %for.cond.i.i22.preheader
  %node.0.in.i.i19 = phi ptr [ %node.0.i.i20, %for.body.i.i25.for.cond.i.i22_crit_edge ], [ %sta_list.i.i, %for.cond.i.i22.preheader ]
  %7 = ptrtoint ptr %node.0.in.i.i19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %node.0.i.i20 = load ptr, ptr %node.0.in.i.i19, align 8
  %cmp.not.i.i21 = icmp eq ptr %node.0.i.i20, %sta_list.i.i
  br i1 %cmp.not.i.i21, label %for.cond.i.i22.mwifiex_is_tdls_off_chan.exit_crit_edge, label %for.body.i.i25

for.cond.i.i22.mwifiex_is_tdls_off_chan.exit_crit_edge: ; preds = %for.cond.i.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %mwifiex_is_tdls_off_chan.exit

for.body.i.i25:                                   ; preds = %for.cond.i.i22
  %tdls_status.i.i23 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node.0.i.i20, i32 0, i32 8
  %8 = ptrtoint ptr %tdls_status.i.i23 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tdls_status.i.i23, align 4
  %cmp3.i.i24 = icmp eq i8 %9, 7
  br i1 %cmp3.i.i24, label %for.body.i.i25.mwifiex_is_tdls_off_chan.exit_crit_edge, label %for.body.i.i25.for.cond.i.i22_crit_edge

for.body.i.i25.for.cond.i.i22_crit_edge:          ; preds = %for.body.i.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i22

for.body.i.i25.mwifiex_is_tdls_off_chan.exit_crit_edge: ; preds = %for.body.i.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %mwifiex_is_tdls_off_chan.exit

mwifiex_is_tdls_off_chan.exit:                    ; preds = %for.body.i.i25.mwifiex_is_tdls_off_chan.exit_crit_edge, %for.cond.i.i22.mwifiex_is_tdls_off_chan.exit_crit_edge
  %retval.0.i.i26 = phi ptr [ %node.0.i.i20, %for.body.i.i25.mwifiex_is_tdls_off_chan.exit_crit_edge ], [ null, %for.cond.i.i22.mwifiex_is_tdls_off_chan.exit_crit_edge ]
  %tobool2.not.i27.not = icmp eq ptr %retval.0.i.i26, null
  %spec.select = zext i1 %tobool2.not.i27.not to i8
  br label %return

return:                                           ; preds = %mwifiex_is_tdls_off_chan.exit, %mwifiex_is_tdls_chan_switching.exit.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ 1, %lor.lhs.false.return_crit_edge ], [ 1, %entry.return_crit_edge ], [ 0, %mwifiex_is_tdls_chan_switching.exit.return_crit_edge ], [ %spec.select, %mwifiex_is_tdls_off_chan.exit ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mwifiex_add_sta_entry(ptr noundef %priv, ptr noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mac, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %sta_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_list_spinlock) #10
  %sta_list.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 79
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %node.0.in.i = phi ptr [ %sta_list.i, %if.end.i ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.0.i = load ptr, ptr %node.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %node.0.i, %sta_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end3_crit_edge, label %for.body.i

for.cond.i.if.end3_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

for.body.i:                                       ; preds = %for.cond.i
  %mac_addr.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node.0.i, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i, ptr noundef nonnull dereferenceable(6) %mac, i32 6) #13
  %tobool2.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool2.not.i, label %mwifiex_get_sta_entry.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

mwifiex_get_sta_entry.exit:                       ; preds = %for.body.i
  %tobool1.not = icmp eq ptr %node.0.i, null
  br i1 %tobool1.not, label %mwifiex_get_sta_entry.exit.if.end3_crit_edge, label %mwifiex_get_sta_entry.exit.done_crit_edge

mwifiex_get_sta_entry.exit.done_crit_edge:        ; preds = %mwifiex_get_sta_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

mwifiex_get_sta_entry.exit.if.end3_crit_edge:     ; preds = %mwifiex_get_sta_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %mwifiex_get_sta_entry.exit.if.end3_crit_edge, %for.cond.i.if.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 480) #15
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.done_crit_edge, label %if.end7

if.end3.done_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end7:                                          ; preds = %if.end3
  %mac_addr = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call7.i.i, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %mac_addr, ptr %mac, i32 6)
  %prev.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 79, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %4, ptr noundef %sta_list.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.done_crit_edge

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sta_list.i, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i.i, ptr %4, align 4
  br label %done

done:                                             ; preds = %if.end.i.i, %if.end7.done_crit_edge, %if.end3.done_crit_edge, %mwifiex_get_sta_entry.exit.done_crit_edge
  %node.0 = phi ptr [ %node.0.i, %mwifiex_get_sta_entry.exit.done_crit_edge ], [ null, %if.end3.done_crit_edge ], [ %call7.i.i, %if.end7.done_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #10
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %node.0, %done ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_set_sta_ht_cap(ptr nocapture noundef readnone %priv, ptr noundef %ies, i32 noundef %ies_len, ptr nocapture noundef writeonly %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ies, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 45, ptr noundef nonnull %ies, i32 noundef %ies_len, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %tobool1.not = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr %struct.ieee_types_header, ptr %call.i.i, i32 1
  %is_11n_enabled = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 3
  %0 = ptrtoint ptr %is_11n_enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %is_11n_enabled, align 1
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %add.ptr, align 1
  %3 = and i16 %2, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool3.not = icmp eq i16 %3, 0
  %conv4 = select i1 %tobool3.not, i16 4096, i16 8192
  %max_amsdu = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 7
  %4 = ptrtoint ptr %max_amsdu to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv4, ptr %max_amsdu, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %is_11n_enabled5 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node, i32 0, i32 3
  %5 = ptrtoint ptr %is_11n_enabled5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_11n_enabled5, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_del_sta_entry(ptr noundef %priv, ptr noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_list_spinlock) #10
  %tobool.not.i = icmp eq ptr %mac, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %sta_list.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 79
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %node.0.in.i = phi ptr [ %sta_list.i, %if.end.i ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.0.i = load ptr, ptr %node.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %node.0.i, %sta_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %mac_addr.i = getelementptr inbounds %struct.mwifiex_sta_node, ptr %node.0.i, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i, ptr noundef nonnull dereferenceable(6) %mac, i32 6) #13
  %tobool2.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool2.not.i, label %mwifiex_get_sta_entry.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

mwifiex_get_sta_entry.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %node.0.i, null
  br i1 %tobool.not, label %mwifiex_get_sta_entry.exit.if.end_crit_edge, label %if.then

mwifiex_get_sta_entry.exit.if.end_crit_edge:      ; preds = %mwifiex_get_sta_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %mwifiex_get_sta_entry.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %node.0.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %node.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %7 = ptrtoint ptr %node.0.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %node.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %node.0.i) #10
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %mwifiex_get_sta_entry.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_del_all_sta_list(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_list_spinlock) #10
  %sta_list = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 79
  %0 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sta_list, align 8
  %cmp.not25 = icmp eq ptr %1, %sta_list
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %node.026 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %node.026 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %node.026, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.026) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.026, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %node.026 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node.026, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %node.026 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %node.026, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node.026, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %node.026) #10
  %cmp.not = icmp eq ptr %tmp.0, %sta_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = ptrtoint ptr %sta_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %sta_list, ptr %sta_list, align 4
  %prev.i24 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 79, i32 1
  %12 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sta_list, ptr %prev.i24, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_list_spinlock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_hist_data_add(ptr nocapture noundef readonly %priv, i8 noundef zeroext %rx_rate, i8 noundef signext %snr, i8 noundef signext %nflr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hist_data = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 149
  %0 = ptrtoint ptr %hist_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hist_data, align 8
  %num_samples = getelementptr inbounds %struct.mwifiex_histogram_data, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_samples, i32 noundef 4) #10
  %2 = ptrtoint ptr %num_samples to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %num_samples, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %3)
  %cmp = icmp sgt i32 %3, 1048576
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mwifiex_hist_data_reset(ptr noundef %priv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mwifiex_hist_data_set(ptr noundef %priv, i8 noundef zeroext %rx_rate, i8 noundef signext %snr, i8 noundef signext %nflr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_hist_data_reset(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hist_data = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 149
  %0 = ptrtoint ptr %hist_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hist_data, align 8
  %num_samples = getelementptr inbounds %struct.mwifiex_histogram_data, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_samples, i32 noundef 4) #10
  %2 = ptrtoint ptr %num_samples to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %num_samples, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %ix.041 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [74 x %struct.atomic_t], ptr %1, i32 0, i32 %ix.041
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #10
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %ix.041, 1
  %exitcond.not = icmp eq i32 %inc, 74
  br i1 %exitcond.not, label %for.body.for.body3_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.body3_crit_edge:                     ; preds = %for.body
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body.for.body3_crit_edge
  %ix.142 = phi i32 [ %inc6, %for.body3.for.body3_crit_edge ], [ 0, %for.body.for.body3_crit_edge ]
  %arrayidx4 = getelementptr %struct.mwifiex_histogram_data, ptr %1, i32 0, i32 1, i32 %ix.142
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4, i32 noundef 4) #10
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %arrayidx4, align 4
  %inc6 = add nuw nsw i32 %ix.142, 1
  %exitcond45.not = icmp eq i32 %inc6, 256
  br i1 %exitcond45.not, label %for.body3.for.body10_crit_edge, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

for.body3.for.body10_crit_edge:                   ; preds = %for.body3
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body3.for.body10_crit_edge
  %ix.243 = phi i32 [ %inc13, %for.body10.for.body10_crit_edge ], [ 0, %for.body3.for.body10_crit_edge ]
  %arrayidx11 = getelementptr %struct.mwifiex_histogram_data, ptr %1, i32 0, i32 2, i32 %ix.243
  %call.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx11, i32 noundef 4) #10
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %arrayidx11, align 4
  %inc13 = add nuw nsw i32 %ix.243, 1
  %exitcond46.not = icmp eq i32 %inc13, 256
  br i1 %exitcond46.not, label %for.body10.for.body17_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

for.body10.for.body17_crit_edge:                  ; preds = %for.body10
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.body10.for.body17_crit_edge
  %ix.344 = phi i32 [ %inc20, %for.body17.for.body17_crit_edge ], [ 0, %for.body10.for.body17_crit_edge ]
  %arrayidx18 = getelementptr %struct.mwifiex_histogram_data, ptr %1, i32 0, i32 3, i32 %ix.344
  %call.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx18, i32 noundef 4) #10
  %6 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %arrayidx18, align 4
  %inc20 = add nuw nsw i32 %ix.344, 1
  %exitcond47.not = icmp eq i32 %inc20, 256
  br i1 %exitcond47.not, label %for.end21, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body17

for.end21:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_hist_data_set(ptr nocapture noundef readonly %priv, i8 noundef zeroext %rx_rate, i8 noundef signext %snr, i8 noundef signext %nflr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hist_data = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 149
  %0 = ptrtoint ptr %hist_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hist_data, align 8
  %sub = sub i8 0, %nflr
  %conv2 = sext i8 %snr to i32
  %sub4 = sub i8 %snr, %nflr
  %num_samples = getelementptr inbounds %struct.mwifiex_histogram_data, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_samples, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %num_samples, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_samples, ptr %num_samples, i32 1, ptr elementtype(i32) %num_samples) #10, !srcloc !62
  %idxprom = zext i8 %rx_rate to i32
  %arrayidx = getelementptr [74 x %struct.atomic_t], ptr %1, i32 0, i32 %idxprom
  %call.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #10, !srcloc !62
  %add = add nsw i32 %conv2, 128
  %arrayidx9 = getelementptr %struct.mwifiex_histogram_data, ptr %1, i32 0, i32 1, i32 %add
  %call.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx9, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx9, ptr %arrayidx9, i32 1, ptr elementtype(i32) %arrayidx9) #10, !srcloc !62
  %conv10 = sext i8 %sub to i32
  %add11 = add nsw i32 %conv10, 128
  %arrayidx12 = getelementptr %struct.mwifiex_histogram_data, ptr %1, i32 0, i32 2, i32 %add11
  %call.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx12, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx12, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx12, ptr %arrayidx12, i32 1, ptr elementtype(i32) %arrayidx12) #10, !srcloc !62
  %conv13 = sext i8 %sub4 to i32
  %add14 = add nsw i32 %conv13, 128
  %arrayidx15 = getelementptr %struct.mwifiex_histogram_data, ptr %1, i32 0, i32 3, i32 %add14
  %call.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx15, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx15, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx15, ptr %arrayidx15, i32 1, ptr elementtype(i32) %arrayidx15) #10, !srcloc !62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mwifiex_alloc_dma_align_buf(i32 noundef %rx_len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add1 = add i32 %rx_len, 128
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add1, i32 noundef %flags) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 64
  %4 = ptrtoint ptr %add.ptr.i to i32
  %sub = add i32 %4, 63
  %and = and i32 %sub, -64
  %sub4 = sub i32 %and, %4
  %add.ptr.i13 = getelementptr i8, ptr %add.ptr.i, i32 %sub4
  store ptr %add.ptr.i13, ptr %data.i, align 4
  %add.ptr1.i15 = getelementptr i8, ptr %add.ptr1.i, i32 %sub4
  store ptr %add.ptr1.i15, ptr %tail.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_fw_dump_event(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 293, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_auto_tdls_update_peer_signal(ptr noundef, ptr noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 162, i32 3}
!2 = !{ptr @__ksymtab_mwifiex_init_shutdown_fw, !3, !"__ksymtab_mwifiex_init_shutdown_fw", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 169, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 264, i32 19}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 292, i32 20}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 296, i32 19}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 300, i32 19}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 302, i32 20}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 307, i32 19}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 309, i32 20}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 312, i32 20}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 314, i32 20}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 318, i32 21}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 327, i32 19}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 329, i32 20}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 402, i32 3}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 507, i32 2}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 508, i32 2}
!34 = !{ptr @__ksymtab_mwifiex_alloc_dma_align_buf, !35, !"__ksymtab_mwifiex_alloc_dma_align_buf", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 754, i32 1}
!36 = !{ptr @__ksymtab_mwifiex_fw_dump_event, !37, !"__ksymtab_mwifiex_fw_dump_event", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 761, i32 1}
!38 = !{ptr @items, !39, !"items", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 28, i32 34}
!40 = distinct !{null, !41, !"num_of_items", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 128, i32 12}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 357, i32 5}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 368, i32 4}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 372, i32 4}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/marvell/mwifiex/util.c", i32 378, i32 3}
!50 = distinct !{null, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2148549058, i64 2148549084, i64 2148549113, i64 2148549147, i64 2148549178, i64 2148549201}
