; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/sta_cmd.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/sta_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
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
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.159 }
%union.anon.159 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
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
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.151 }
%union.anon.151 = type { %struct.cfg80211_bss_select_adjust }
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
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
%struct.mwifiex_multicast_list = type { i32, i32, [32 x [6 x i8]] }
%struct.mwifiex_ds_reg_rw = type { i32, i32, i32 }
%struct.mwifiex_ds_read_eeprom = type { i16, i16, [256 x i8] }
%struct.host_cmd_sdio_sp_rx_aggr_cfg = type { i8, i8, i16 }
%struct.cfg80211_gtk_rekey_data = type { ptr, ptr, ptr, i32, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.mwifiex_rate_scope = type { i16, i16, i16, i16, [8 x i16], [8 x i16] }
%struct.host_cmd_ds_txpwr_cfg = type { i16, i16, i32 }
%struct.mwifiex_types_power_group = type { i16, i16 }
%struct.mwifiex_ds_ant_cfg = type { i32, i32 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ps_param_in_hs = type { %struct.mwifiex_ie_types_header, i32, i32 }
%struct.mwifiex_ds_encrypt_key = type { i32, i32, i32, [32 x i8], [6 x i8], i32, [16 x i8], i8, i8, i8, i8, i8 }
%struct.mwifiex_tkip_param = type { [8 x i8], i16, [32 x i8] }
%struct.host_cmd_tlv_mac_addr = type { %struct.mwifiex_ie_types_header, [6 x i8] }
%struct.mwifiex_ietypes_domain_param_set = type { %struct.mwifiex_ie_types_header, [3 x i8], [1 x %struct.ieee80211_country_ie_triplet] }
%struct.pcie_service_card = type { ptr, ptr, %struct.mwifiex_pcie_device, %struct.completion, i8, i32, i32, i32, ptr, i32, [32 x ptr], [32 x ptr], i32, i32, i32, ptr, i32, [32 x ptr], [32 x ptr], i32, i32, i32, ptr, i32, [8 x ptr], [8 x ptr], ptr, ptr, ptr, i32, ptr, ptr, i32, i32, [4 x %struct.msix_entry], [4 x %struct.mwifiex_msix_context], %struct.mwifiex_msix_context, %struct.work_struct, i32, i8, i32 }
%struct.mwifiex_pcie_device = type { ptr, i16, i16, i8, ptr, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.msix_entry = type { i32, i16 }
%struct.mwifiex_msix_context = type { ptr, i16 }
%struct.host_cmd_ds_pcie_details = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_ie_types_rssi_threshold = type { %struct.mwifiex_ie_types_header, i8, i8 }
%struct.mwifiex_ds_mef_cfg = type { i32, i16, ptr }
%struct.mwifiex_mef_entry = type { i8, i8, [10 x %struct.mwifiex_mef_filter] }
%struct.mwifiex_mef_filter = type { i16, i16, [7 x i8], i8, i8 }
%struct.mwifiex_fw_mef_entry = type { i8, i8, i16, [0 x i8] }
%struct.mwifiex_ds_coalesce_cfg = type { i16, [8 x %struct.mwifiex_coalesce_rule] }
%struct.mwifiex_coalesce_rule = type { i16, i8, i8, [4 x %struct.filt_field_param] }
%struct.filt_field_param = type { i8, i8, i16, [4 x i8] }
%struct.coalesce_receive_filt_rule = type { %struct.mwifiex_ie_types_header, i8, i8, i16, [0 x %struct.coalesce_filt_field_param] }
%struct.coalesce_filt_field_param = type { i8, i8, i16, [4 x i8] }
%struct.mwifiex_ds_tdls_oper = type { i16, [6 x i8], i16, i8, ptr, i8, ptr, i8, ptr }
%struct.station_parameters = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, ptr, ptr, i8, i8, i32, i16, ptr, i8, ptr, i8, ptr, i8, i8, i8, i32, ptr, i8, i16, %struct.sta_txpwr, ptr }
%struct.sta_txpwr = type { i16, i32 }
%struct.host_cmd_tlv_rates = type { %struct.mwifiex_ie_types_header, [0 x i8] }
%struct.mwifiex_ie_types_extcap = type { %struct.mwifiex_ie_types_header, [0 x i8] }
%struct.mwifiex_ie_types_vhtcap = type { %struct.mwifiex_ie_types_header, %struct.ieee80211_vht_cap }
%struct.mwifiex_ie_types_aid = type { %struct.mwifiex_ie_types_header, i16 }
%struct.mwifiex_ie_types_tdls_idle_timeout = type { %struct.mwifiex_ie_types_header, i16 }
%struct.mwifiex_ds_11n_amsdu_aggr_ctrl = type { i16, i16 }
%struct.mwifiex_ds_auto_ds = type { i16, i16 }
%struct.mwifiex_ds_11n_tx_cfg = type { i16, i16, i16 }

@__param_str_drcs = internal constant [13 x i8] c"mwifiex.drcs\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@drcs = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_drcs = internal constant %struct.kernel_param { ptr @__param_str_drcs, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @drcs } }, section "__param", align 4
@__UNIQUE_ID_drcstype488 = internal constant [27 x i8] c"mwifiex.parmtype=drcs:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_drcs489 = internal constant [72 x i8] c"mwifiex.parm=drcs:multi-channel operation:1, single-channel operation:0\00", section ".modinfo", align 1
@__param_str_disable_auto_ds = internal constant [24 x i8] c"mwifiex.disable_auto_ds\00", align 1
@disable_auto_ds = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_auto_ds = internal constant %struct.kernel_param { ptr @__param_str_disable_auto_ds, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @disable_auto_ds } }, section "__param", align 4
@__UNIQUE_ID_disable_auto_dstype490 = internal constant [38 x i8] c"mwifiex.parmtype=disable_auto_ds:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_auto_ds491 = internal constant [80 x i8] c"mwifiex.parm=disable_auto_ds:deepsleep enabled=0(default), deepsleep disabled=1\00", section ".modinfo", align 1
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"0x%x command not supported by firmware\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cmd: WMM: WMM_GET_STATUS cmd sent\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PREP_CMD: unknown cmd- %#x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"marvell,wakeup-pin\00", [45 x i8] zeroinitializer }, align 32
@mwifiex_sta_init_cmd.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 2, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mwifiex\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mwifiex_sta_init_cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/marvell/mwifiex/sta_cmd.c\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wakeup pin = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mwifiex: Wakeup pin = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"marvell,caldata\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"error while enabling SP aggregation..disable it\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"11D: failed to enable 11D\0A\00", [37 x i8] zeroinitializer }, align 32
@aggr_ctrl = external dso_local local_unnamed_addr global i8, align 1
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"download cfg_data from device tree: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"download cfg_data from config file\0A\00", [60 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mac_control: only support set cmd\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cmd: Attach %d bytes ArpFilter to HSCfg cmd\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cmd: Activating host sleep manually\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"cmd: HS_CFG_CMD: condition:0x%x gpio:0x%x gap:0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cmd: Deauth: %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd: SNMP_CMD: cmd_oid = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"cmd: SNMP_CMD: Action=0x%x, OID=0x%x,\09OIDSize=0x%x, Value=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: Get key\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.mwifiex_cmd_802_11_key_material_v2 = private unnamed_addr constant [35 x i8] c"mwifiex_cmd_802_11_key_material_v2\00", align 1
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: Remove key\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Set WEP Key\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: Set WAPI Key\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: Set TKIP Key\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Set CMAC AES Key\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.mwifiex_set_aes_key_v2 = private unnamed_addr constant [23 x i8] c"mwifiex_set_aes_key_v2\00", align 1
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Set CMAC default Key index\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Set AES Key\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"info: Set WAPI Key\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cmd: CMAC_AES\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cmd: WPA_AES\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cmd: WPA_TKIP\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"key%d Length = %d is incorrect\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"info: 11D: no_of_triplet=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sleep_cook_lo phy addr: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cmd: action: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cmd: event bitmap : %16x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error: No event specified\09for bitwise action type\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Cfg Beacon Low Rssi event,\09RSSI:-%d dBm, Freq:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Cfg Beacon High Rssi event,\09RSSI:-%d dBm, Freq:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"TDLS config params not available for %pM\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown TDLS operation\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unknown TDLS configuration\0A\00", [36 x i8] zeroinitializer }, align 32
@switch.table.mwifiex_sta_prepare_cmd = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01\00\02\01\01\01\01\00\02", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 43, i64 44, i64 64, i64 131]
@__sancov_gen_cov_switch_values.44 = internal global [67 x i64] [i64 65, i64 16, i64 3, i64 6, i64 11, i64 16, i64 18, i64 22, i64 25, i64 26, i64 27, i64 30, i64 32, i64 36, i64 40, i64 43, i64 44, i64 64, i64 77, i64 89, i64 91, i64 94, i64 107, i64 108, i64 113, i64 117, i64 127, i64 131, i64 134, i64 143, i64 151, i64 154, i64 164, i64 169, i64 170, i64 173, i64 205, i64 206, i64 207, i64 208, i64 209, i64 214, i64 217, i64 221, i64 223, i64 224, i64 228, i64 229, i64 235, i64 237, i64 247, i64 250, i64 256, i64 263, i64 266, i64 268, i64 269, i64 271, i64 274, i64 278, i64 289, i64 290, i64 293, i64 547, i64 575, i64 578, i64 593]
@__sancov_gen_cov_switch_values.45 = internal global [8 x i64] [i64 6, i64 16, i64 25, i64 26, i64 27, i64 89, i64 173, i64 237]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 13]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 13]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 13]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 13]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 6, i64 7, i64 8]
@___asan_gen_.57 = private unnamed_addr constant [5 x i8] c"drcs\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 29, i32 13 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"disable_auto_ds\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 33, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1950, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2138, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2234, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2296, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2298, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2303, i32 7 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2327, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2415, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1529, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1535, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 84, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 381, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 401, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 420, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 505, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 119, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 137, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 669, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 696, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 717, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 755, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 795, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 605, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 619, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 624, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 863, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 900, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 913, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 932, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 583, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1039, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1275, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1304, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1314, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1320, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1347, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1369, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1777, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1856, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [50 x i8] c"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1729, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [37 x i8] c"switch.table.mwifiex_sta_prepare_cmd\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_disable_auto_ds491, ptr @__UNIQUE_ID_disable_auto_dstype490, ptr @__UNIQUE_ID_drcs489, ptr @__UNIQUE_ID_drcstype488, ptr @__param_disable_auto_ds, ptr @__param_drcs, ptr @drcs, ptr @disable_auto_ds, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @switch.table.mwifiex_sta_prepare_cmd], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drcs to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_auto_ds to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mwifiex_sta_prepare_cmd to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_dnld_dt_cfgdata(ptr noundef %priv, ptr nocapture noundef readonly %node, ptr nocapture noundef readonly %prefix) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %prefix) #10
  %properties = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 4
  %0 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %0)
  %prop.028 = load ptr, ptr %properties, align 4
  %cmp.not29 = icmp eq ptr %prop.028, null
  br i1 %cmp.not29, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %prop.030 = phi ptr [ %prop.0, %for.inc.for.body_crit_edge ], [ %prop.028, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %prop.030 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prop.030, align 4
  %call1 = tail call i32 @strlen(ptr noundef %2) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %call1)
  %cmp2 = icmp ugt i32 %call, %call1
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %call4 = tail call i32 @strncmp(ptr noundef %2, ptr noundef %prefix, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %value = getelementptr inbounds %struct.property, ptr %prop.030, i32 0, i32 2
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %value, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %length = getelementptr inbounds %struct.property, ptr %prop.030, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  %7 = add i32 %6, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2034, i32 %7)
  %8 = icmp ult i32 %7, 2034
  br i1 %8, label %if.then10, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then10:                                        ; preds = %land.lhs.true
  %call11 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 143, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %prop.030, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.for.inc_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.then10.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.property, ptr %prop.030, i32 0, i32 3
  %9 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %9)
  %prop.0 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %prop.0, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call11, %if.then10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_sta_prepare_cmd(ptr noundef %priv, i16 noundef zeroext %cmd_no, i16 noundef zeroext %cmd_action, i32 noundef %cmd_oid, ptr noundef %data_buf, ptr noundef %cmd_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fw_cap_info.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %fw_cap_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_cap_info.i, align 4
  %and.i = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %entry
  %4 = zext i16 %cmd_no to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %cmd_no, label %if.then.i.if.end_crit_edge [
    i16 131, label %if.then.i.if.then_crit_edge
    i16 43, label %if.then.i.if.then_crit_edge464
    i16 44, label %if.then.i.if.then_crit_edge465
    i16 64, label %if.then.i.if.then_crit_edge466
  ]

if.then.i.if.then_crit_edge466:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.i.if.then_crit_edge465:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.i.if.then_crit_edge464:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %if.then.i.if.then_crit_edge, %if.then.i.if.then_crit_edge464, %if.then.i.if.then_crit_edge465, %if.then.i.if.then_crit_edge466
  %conv = zext i16 %cmd_no to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv) #7
  br label %cleanup

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = zext i16 %cmd_no to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %cmd_no, label %sw.default [
    i16 3, label %sw.bb
    i16 143, label %sw.bb3
    i16 40, label %sw.bb5
    i16 77, label %sw.bb7
    i16 16, label %sw.bb9
    i16 214, label %sw.bb11
    i16 209, label %sw.bb13
    i16 30, label %sw.bb15
    i16 32, label %sw.bb17
    i16 228, label %sw.bb19
    i16 229, label %sw.bb22
    i16 6, label %sw.bb24
    i16 107, label %sw.bb26
    i16 108, label %sw.bb28
    i16 18, label %sw.bb30
    i16 36, label %sw.bb32
    i16 43, label %sw.bb34
    i16 11, label %sw.bb36
    i16 44, label %sw.bb38
    i16 64, label %sw.bb40
    i16 164, label %sw.bb42
    i16 22, label %sw.bb44
    i16 127, label %sw.bb46
    i16 151, label %sw.bb47
    i16 268, label %sw.bb52
    i16 269, label %sw.bb60
    i16 274, label %sw.bb64
    i16 593, label %sw.bb66
    i16 235, label %sw.bb72
    i16 169, label %sw.bb81
    i16 170, label %sw.bb90
    i16 206, label %sw.bb95
    i16 208, label %sw.bb97
    i16 207, label %sw.bb99
    i16 94, label %sw.bb101
    i16 91, label %sw.bb103
    i16 217, label %sw.bb105
    i16 223, label %sw.bb108
    i16 205, label %sw.bb111
    i16 113, label %sw.bb113
    i16 131, label %sw.bb117
    i16 263, label %sw.bb119
    i16 134, label %sw.bb121
    i16 25, label %if.end.sw.bb123_crit_edge
    i16 26, label %if.end.sw.bb123_crit_edge467
    i16 27, label %if.end.sw.bb123_crit_edge468
    i16 173, label %if.end.sw.bb123_crit_edge469
    i16 237, label %if.end.sw.bb123_crit_edge470
    i16 89, label %if.end.sw.bb123_crit_edge471
    i16 247, label %sw.bb125
    i16 250, label %sw.bb155
    i16 117, label %sw.bb157
    i16 154, label %sw.bb159
    i16 266, label %sw.bb161
    i16 290, label %sw.bb163
    i16 256, label %sw.bb165
    i16 221, label %sw.bb167
    i16 547, label %sw.bb169
    i16 278, label %sw.bb171
    i16 289, label %sw.bb173
    i16 224, label %sw.bb175
    i16 271, label %sw.bb177
    i16 578, label %sw.bb179
    i16 293, label %sw.bb181
    i16 575, label %sw.bb184
  ]

if.end.sw.bb123_crit_edge471:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb123

if.end.sw.bb123_crit_edge470:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb123

if.end.sw.bb123_crit_edge469:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb123

if.end.sw.bb123_crit_edge468:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb123

if.end.sw.bb123_crit_edge467:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb123

if.end.sw.bb123_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb123

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @mwifiex_cmd_get_hw_spec(ptr noundef %priv, ptr noundef %cmd_buf) #7
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call fastcc i32 @mwifiex_cmd_cfg_data(ptr noundef %priv, ptr noundef %cmd_buf, ptr noundef %data_buf)
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %cmd_action)
  %cmp.not.i = icmp eq i16 %cmd_action, 1
  br i1 %cmp.not.i, label %if.end.i407, label %if.then.i406

if.then.i406:                                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.end.i407:                                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %params.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %6 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 10240, ptr %cmd_buf, align 1
  %size.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 3072, ptr %size.i, align 1
  %8 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_buf, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %11 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %params.i, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %12 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 19712, ptr %cmd_buf, align 1
  %size.i409 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %13 = ptrtoint ptr %size.i409 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 4096, ptr %size.i409, align 1
  %result.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 3
  %14 = ptrtoint ptr %result.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 0, ptr %result.i, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %params.i410 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %16 = ptrtoint ptr %params.i410 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %params.i410, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %cmd_action)
  %cmp.i = icmp eq i16 %cmd_action, 1
  br i1 %cmp.i, label %if.then.i411, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i411:                                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %mac_addr.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %curr_addr.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 7
  %17 = call ptr @memcpy(ptr %mac_addr.i, ptr %curr_addr.i, i32 6)
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %params.i413 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %size.i414 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %18 = ptrtoint ptr %size.i414 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 -13312, ptr %size.i414, align 1
  %19 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 4096, ptr %cmd_buf, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %21 = ptrtoint ptr %params.i413 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %params.i413, align 1
  %num_multicast_addr.i = getelementptr inbounds %struct.mwifiex_multicast_list, ptr %data_buf, i32 0, i32 1
  %22 = ptrtoint ptr %num_multicast_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_multicast_addr.i, align 4
  %conv.i = trunc i32 %23 to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %num_of_adrs.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %25 = ptrtoint ptr %num_of_adrs.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %num_of_adrs.i, align 1
  %mac_list.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 2
  %mac_list1.i = getelementptr inbounds %struct.mwifiex_multicast_list, ptr %data_buf, i32 0, i32 2
  %26 = ptrtoint ptr %num_multicast_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_multicast_addr.i, align 4
  %mul.i = mul i32 %27, 6
  %28 = call ptr @memcpy(ptr %mac_list.i, ptr %mac_list1.i, i32 %mul.i)
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mwifiex_cmd_tx_rate_cfg(ptr noundef %priv, ptr noundef %cmd_buf, i16 noundef zeroext %cmd_action, ptr noundef %data_buf)
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mwifiex_cmd_tx_power_cfg(ptr noundef %cmd_buf, i16 noundef zeroext %cmd_action, ptr noundef %data_buf)
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %params.i415 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %size.i416 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %29 = ptrtoint ptr %size.i416 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 3584, ptr %size.i416, align 1
  %30 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 7680, ptr %cmd_buf, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %32 = ptrtoint ptr %params.i415 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %params.i415, align 1
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mwifiex_cmd_rf_antenna(ptr noundef %priv, ptr noundef %cmd_buf, i16 noundef zeroext %cmd_action, ptr noundef %data_buf)
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv20 = trunc i32 %cmd_oid to i16
  %call21 = tail call i32 @mwifiex_cmd_enh_power_mode(ptr noundef %priv, ptr noundef %cmd_buf, i16 noundef zeroext %cmd_action, i16 noundef zeroext %conv20, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mwifiex_cmd_802_11_hs_cfg(ptr noundef %priv, ptr noundef %cmd_buf, ptr noundef %data_buf)
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 @mwifiex_cmd_802_11_scan(ptr noundef %cmd_buf, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 @mwifiex_cmd_802_11_bg_scan_config(ptr noundef %priv, ptr noundef %cmd_buf, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 @mwifiex_cmd_802_11_bg_scan_query(ptr noundef %cmd_buf) #7
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 @mwifiex_cmd_802_11_associate(ptr noundef %priv, ptr noundef %cmd_buf, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %params.i417 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %33 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 9216, ptr %cmd_buf, align 1
  %size.i418 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %34 = ptrtoint ptr %size.i418 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 4096, ptr %size.i418, align 1
  %35 = call ptr @memcpy(ptr %params.i417, ptr %data_buf, i32 6)
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %37, i32 noundef 16, ptr noundef nonnull @.str.18, ptr noundef %params.i417) #7
  %reason_code.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 3
  %38 = ptrtoint ptr %reason_code.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 768, ptr %reason_code.i, align 1
  br label %cleanup

sw.bb34:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 @mwifiex_cmd_802_11_ad_hoc_start(ptr noundef %priv, ptr noundef %cmd_buf, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb36:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 2816, ptr %cmd_buf, align 1
  %size.i419 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %40 = ptrtoint ptr %size.i419 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 21504, ptr %size.i419, align 1
  br label %cleanup

sw.bb38:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 @mwifiex_cmd_802_11_ad_hoc_join(ptr noundef %priv, ptr noundef %cmd_buf, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb40:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 16384, ptr %cmd_buf, align 1
  %size.i420 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %42 = ptrtoint ptr %size.i420 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 2048, ptr %size.i420, align 1
  br label %cleanup

sw.bb42:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 -23552, ptr %cmd_buf, align 1
  %size.i421 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %44 = ptrtoint ptr %size.i421 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 10240, ptr %size.i421, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %params.i422 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %46 = ptrtoint ptr %params.i422 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %params.i422, align 1
  %data_avg_factor.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 36
  %47 = ptrtoint ptr %data_avg_factor.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %data_avg_factor.i, align 8
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #7
  %ndata.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %50 = ptrtoint ptr %ndata.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %49, ptr %ndata.i, align 1
  %bcn_avg_factor.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 35
  %51 = ptrtoint ptr %bcn_avg_factor.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %bcn_avg_factor.i, align 2
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #7
  %nbcn.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 2
  %54 = ptrtoint ptr %nbcn.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %nbcn.i, align 1
  %data_rssi_last.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 37
  %55 = call ptr @memset(ptr %data_rssi_last.i, i32 0, i32 16)
  br label %cleanup

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mwifiex_cmd_802_11_snmp_mib(ptr noundef %priv, ptr noundef %cmd_buf, i16 noundef zeroext %cmd_action, i32 noundef %cmd_oid, ptr noundef %data_buf)
  br label %cleanup

sw.bb46:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 32512, ptr %cmd_buf, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %57 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 2560, ptr %size, align 1
  %tx_rate = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 25
  %58 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %tx_rate, align 4
  br label %cleanup

sw.bb47:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 -26880, ptr %cmd_buf, align 1
  %60 = ptrtoint ptr %data_buf to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %data_buf, align 1
  %conv49 = trunc i32 %61 to i8
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %62 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv49, ptr %params, align 1
  %63 = call ptr @memcpy(ptr %params, ptr %data_buf, i32 129)
  %size51 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %64 = ptrtoint ptr %size51 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 -30464, ptr %size51, align 1
  br label %cleanup

sw.bb52:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 3073, ptr %cmd_buf, align 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %cmd_action)
  %params54 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %67 = ptrtoint ptr %params54 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %66, ptr %params54, align 1
  %68 = ptrtoint ptr %data_buf to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %data_buf, align 1
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %mask = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %71 = ptrtoint ptr %mask to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %mask, align 1
  %size59 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %72 = ptrtoint ptr %size59 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 3584, ptr %size59, align 1
  br label %cleanup

sw.bb60:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 3329, ptr %cmd_buf, align 1
  %params62 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %74 = call ptr @memcpy(ptr %params62, ptr %data_buf, i32 10)
  %size63 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %75 = ptrtoint ptr %size63 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 4608, ptr %size63, align 1
  br label %cleanup

sw.bb64:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = tail call i32 @mwifiex_cmd_11ac_cfg(ptr noundef %priv, ptr noundef %cmd_buf, i16 noundef zeroext %cmd_action, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb66:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 20738, ptr %cmd_buf, align 1
  %77 = tail call i16 @llvm.bswap.i16(i16 %cmd_action)
  %params68 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %78 = ptrtoint ptr %params68 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 %77, ptr %params68, align 1
  %79 = ptrtoint ptr %data_buf to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %data_buf, align 2
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  %enable = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %82 = ptrtoint ptr %enable to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %enable, align 1
  %size71 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %83 = ptrtoint ptr %size71 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 4608, ptr %size71, align 1
  br label %cleanup

sw.bb72:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 -5376, ptr %cmd_buf, align 1
  %85 = tail call i16 @llvm.bswap.i16(i16 %cmd_action)
  %params74 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %86 = ptrtoint ptr %params74 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 %85, ptr %params74, align 1
  %87 = ptrtoint ptr %data_buf to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %data_buf, align 1
  %89 = tail call i16 @llvm.bswap.i16(i16 %88)
  %mode = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %90 = ptrtoint ptr %mode to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 %89, ptr %mode, align 1
  %size80 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %91 = ptrtoint ptr %size80 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 3072, ptr %size80, align 1
  br label %cleanup

sw.bb81:                                          ; preds = %if.end
  %hw_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 45
  %92 = ptrtoint ptr %hw_status to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hw_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %93)
  %cmp = icmp eq i32 %93, 3
  br i1 %cmp, label %if.then84, label %sw.bb81.if.end87_crit_edge

sw.bb81.if.end87_crit_edge:                       ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then84:                                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %hw_status to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %hw_status, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %sw.bb81.if.end87_crit_edge
  %95 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %95, i32 2)
  store i16 -22272, ptr %cmd_buf, align 1
  %size89 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %96 = ptrtoint ptr %size89 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 2)
  store i16 2048, ptr %size89, align 1
  br label %cleanup

sw.bb90:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hw_status92 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 45
  %97 = ptrtoint ptr %hw_status92 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 3, ptr %hw_status92, align 4
  %98 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %98, i32 2)
  store i16 -22016, ptr %cmd_buf, align 1
  %size94 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %99 = ptrtoint ptr %size94 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 2048, ptr %size94, align 1
  br label %cleanup

sw.bb95:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call96 = tail call i32 @mwifiex_cmd_11n_addba_req(ptr noundef %cmd_buf, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb97:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call98 = tail call i32 @mwifiex_cmd_11n_delba(ptr noundef %cmd_buf, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb99:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call100 = tail call i32 @mwifiex_cmd_11n_addba_rsp_gen(ptr noundef %priv, ptr noundef %cmd_buf, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb101:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call102 = tail call fastcc i32 @mwifiex_cmd_802_11_key_material(ptr noundef %priv, ptr noundef %cmd_buf, i16 noundef zeroext %cmd_action, i32 noundef %cmd_oid, ptr noundef %data_buf)
  br label %cleanup

sw.bb103:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mwifiex_cmd_802_11d_domain_info(ptr noundef %priv, ptr noundef %cmd_buf, i16 noundef zeroext %cmd_action)
  br label %cleanup

sw.bb105:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv106 = zext i16 %cmd_action to i32
  %call107 = tail call i32 @mwifiex_cmd_recfg_tx_buf(ptr noundef %priv, ptr noundef %cmd_buf, i32 noundef %conv106, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb108:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv109 = zext i16 %cmd_action to i32
  %call110 = tail call i32 @mwifiex_cmd_amsdu_aggr_ctrl(ptr noundef %cmd_buf, i32 noundef %conv109, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb111:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call112 = tail call i32 @mwifiex_cmd_11n_cfg(ptr noundef %priv, ptr noundef %cmd_buf, i16 noundef zeroext %cmd_action, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb113:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.1) #7
  %100 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 28928, ptr %cmd_buf, align 1
  %size116 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %101 = ptrtoint ptr %size116 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 25600, ptr %size116, align 1
  br label %cleanup

sw.bb117:                                         ; preds = %if.end
  %params.i423 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %102 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 -32000, ptr %cmd_buf, align 1
  %size.i424 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %103 = ptrtoint ptr %size.i424 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 2)
  store i16 6144, ptr %size.i424, align 1
  %result.i425 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 3
  %104 = ptrtoint ptr %result.i425 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 0, ptr %result.i425, align 1
  %105 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %106 = ptrtoint ptr %params.i423 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 %105, ptr %params.i423, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %cmd_action)
  %cond.i = icmp eq i16 %cmd_action, 1
  br i1 %cond.i, label %sw.bb.i, label %sw.bb117.cleanup_crit_edge

sw.bb117.cleanup_crit_edge:                       ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb117
  %tobool.not.i426 = icmp eq ptr %data_buf, null
  br i1 %tobool.not.i426, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge, label %if.then.i427

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

if.then.i427:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %data_buf to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %data_buf, align 2
  %109 = tail call i16 @llvm.bswap.i16(i16 %108) #7
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.then.i427, %sw.bb.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i16 [ %109, %if.then.i427 ], [ 0, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ]
  %enable1.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %110 = ptrtoint ptr %enable1.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 %.sink.i, ptr %enable1.i, align 1
  br label %cleanup

sw.bb119:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call120 = tail call i32 @mwifiex_cmd_802_11_scan_ext(ptr noundef %priv, ptr noundef %cmd_buf, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb121:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %params.i428 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %111 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 -31232, ptr %cmd_buf, align 1
  %size.i429 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %112 = ptrtoint ptr %size.i429 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 5120, ptr %size.i429, align 1
  %113 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %114 = ptrtoint ptr %params.i428 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 %113, ptr %params.i428, align 1
  %115 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %data_buf, align 4
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #7
  %addr1.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 2
  %118 = ptrtoint ptr %addr1.i to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 %117, ptr %addr1.i, align 1
  %value.i = getelementptr inbounds %struct.mwifiex_ds_mem_rw, ptr %data_buf, i32 0, i32 1
  %119 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %value.i, align 4
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #7
  %value2.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 3, i32 1
  %122 = ptrtoint ptr %value2.i to i32
  call void @__asan_storeN_noabort(i32 %122, i32 4)
  store i32 %121, ptr %value2.i, align 1
  br label %cleanup

sw.bb123:                                         ; preds = %if.end.sw.bb123_crit_edge, %if.end.sw.bb123_crit_edge467, %if.end.sw.bb123_crit_edge468, %if.end.sw.bb123_crit_edge469, %if.end.sw.bb123_crit_edge470, %if.end.sw.bb123_crit_edge471
  %123 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %cmd_buf, align 1
  %125 = tail call i16 @llvm.bswap.i16(i16 %124) #7
  %126 = zext i16 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %125, label %sw.bb123.cleanup_crit_edge [
    i16 25, label %sw.bb.i433
    i16 26, label %sw.bb4.i
    i16 27, label %sw.bb14.i
    i16 173, label %sw.bb24.i
    i16 237, label %sw.bb34.i
    i16 89, label %sw.bb44.i
  ]

sw.bb123.cleanup_crit_edge:                       ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i433:                                       ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #9
  %size.i430 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %127 = ptrtoint ptr %size.i430 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 2)
  store i16 4096, ptr %size.i430, align 1
  %params.i431 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %128 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %129 = ptrtoint ptr %params.i431 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 2)
  store i16 %128, ptr %params.i431, align 1
  %offset.i = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 1
  %130 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %offset.i, align 4
  %conv1.i = trunc i32 %131 to i16
  %132 = tail call i16 @llvm.bswap.i16(i16 %conv1.i) #7
  %offset2.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %133 = ptrtoint ptr %offset2.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 %132, ptr %offset2.i, align 1
  %value.i432 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 2
  %134 = ptrtoint ptr %value.i432 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %value.i432, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #7
  %value3.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 2
  %137 = ptrtoint ptr %value3.i to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 %136, ptr %value3.i, align 1
  br label %cleanup

sw.bb4.i:                                         ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #9
  %size5.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %138 = ptrtoint ptr %size5.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 4096, ptr %size5.i, align 1
  %params6.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %139 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %140 = ptrtoint ptr %params6.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 2)
  store i16 %139, ptr %params6.i, align 1
  %offset8.i = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 1
  %141 = ptrtoint ptr %offset8.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %offset8.i, align 4
  %conv9.i = trunc i32 %142 to i16
  %143 = tail call i16 @llvm.bswap.i16(i16 %conv9.i) #7
  %offset10.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %144 = ptrtoint ptr %offset10.i to i32
  call void @__asan_storeN_noabort(i32 %144, i32 2)
  store i16 %143, ptr %offset10.i, align 1
  %value11.i = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 2
  %145 = ptrtoint ptr %value11.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %value11.i, align 4
  %conv12.i = trunc i32 %146 to i8
  %value13.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 2
  %147 = ptrtoint ptr %value13.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv12.i, ptr %value13.i, align 1
  br label %cleanup

sw.bb14.i:                                        ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #9
  %size15.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %148 = ptrtoint ptr %size15.i to i32
  call void @__asan_storeN_noabort(i32 %148, i32 2)
  store i16 4096, ptr %size15.i, align 1
  %params16.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %149 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %150 = ptrtoint ptr %params16.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 2)
  store i16 %149, ptr %params16.i, align 1
  %offset18.i = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 1
  %151 = ptrtoint ptr %offset18.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %offset18.i, align 4
  %conv19.i = trunc i32 %152 to i16
  %153 = tail call i16 @llvm.bswap.i16(i16 %conv19.i) #7
  %offset20.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %154 = ptrtoint ptr %offset20.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 %153, ptr %offset20.i, align 1
  %value21.i = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 2
  %155 = ptrtoint ptr %value21.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %value21.i, align 4
  %conv22.i = trunc i32 %156 to i8
  %value23.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 2
  %157 = ptrtoint ptr %value23.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv22.i, ptr %value23.i, align 1
  br label %cleanup

sw.bb24.i:                                        ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #9
  %size25.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %158 = ptrtoint ptr %size25.i to i32
  call void @__asan_storeN_noabort(i32 %158, i32 2)
  store i16 4096, ptr %size25.i, align 1
  %params26.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %159 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %160 = ptrtoint ptr %params26.i to i32
  call void @__asan_storeN_noabort(i32 %160, i32 2)
  store i16 %159, ptr %params26.i, align 1
  %offset28.i = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 1
  %161 = ptrtoint ptr %offset28.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %offset28.i, align 4
  %conv29.i = trunc i32 %162 to i16
  %163 = tail call i16 @llvm.bswap.i16(i16 %conv29.i) #7
  %offset30.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %164 = ptrtoint ptr %offset30.i to i32
  call void @__asan_storeN_noabort(i32 %164, i32 2)
  store i16 %163, ptr %offset30.i, align 1
  %value31.i = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 2
  %165 = ptrtoint ptr %value31.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %value31.i, align 4
  %conv32.i = trunc i32 %166 to i8
  %value33.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 2
  %167 = ptrtoint ptr %value33.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv32.i, ptr %value33.i, align 1
  br label %cleanup

sw.bb34.i:                                        ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #9
  %size35.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %168 = ptrtoint ptr %size35.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 2)
  store i16 4096, ptr %size35.i, align 1
  %params36.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %169 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %170 = ptrtoint ptr %params36.i to i32
  call void @__asan_storeN_noabort(i32 %170, i32 2)
  store i16 %169, ptr %params36.i, align 1
  %offset38.i = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 1
  %171 = ptrtoint ptr %offset38.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %offset38.i, align 4
  %conv39.i = trunc i32 %172 to i16
  %173 = tail call i16 @llvm.bswap.i16(i16 %conv39.i) #7
  %offset40.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %174 = ptrtoint ptr %offset40.i to i32
  call void @__asan_storeN_noabort(i32 %174, i32 2)
  store i16 %173, ptr %offset40.i, align 1
  %value41.i = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 2
  %175 = ptrtoint ptr %value41.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %value41.i, align 4
  %conv42.i = trunc i32 %176 to i8
  %value43.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 2
  %177 = ptrtoint ptr %value43.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv42.i, ptr %value43.i, align 1
  br label %cleanup

sw.bb44.i:                                        ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #9
  %params45.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %size46.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %178 = ptrtoint ptr %size46.i to i32
  call void @__asan_storeN_noabort(i32 %178, i32 2)
  store i16 3840, ptr %size46.i, align 1
  %179 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %180 = ptrtoint ptr %params45.i to i32
  call void @__asan_storeN_noabort(i32 %180, i32 2)
  store i16 %179, ptr %params45.i, align 1
  %181 = ptrtoint ptr %data_buf to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %data_buf, align 2
  %183 = tail call i16 @llvm.bswap.i16(i16 %182) #7
  %offset49.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %184 = ptrtoint ptr %offset49.i to i32
  call void @__asan_storeN_noabort(i32 %184, i32 2)
  store i16 %183, ptr %offset49.i, align 1
  %byte_count.i = getelementptr inbounds %struct.mwifiex_ds_read_eeprom, ptr %data_buf, i32 0, i32 1
  %185 = ptrtoint ptr %byte_count.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %byte_count.i, align 2
  %187 = tail call i16 @llvm.bswap.i16(i16 %186) #7
  %byte_count50.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 2
  %188 = ptrtoint ptr %byte_count50.i to i32
  call void @__asan_storeN_noabort(i32 %188, i32 2)
  store i16 %187, ptr %byte_count50.i, align 1
  %value51.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 3
  %189 = ptrtoint ptr %value51.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 0, ptr %value51.i, align 1
  br label %cleanup

sw.bb125:                                         ; preds = %if.end
  %190 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %190, i32 2)
  store i16 -2304, ptr %cmd_buf, align 1
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %191 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %bss_mode, align 8
  %switch.tableidx = add i32 %192, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %193 = icmp ult i32 %switch.tableidx, 9
  br i1 %193, label %switch.hole_check, label %sw.bb125.if.end153_crit_edge

sw.bb125.if.end153_crit_edge:                     ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

switch.hole_check:                                ; preds = %sw.bb125
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 391, %switch.maskindex
  %194 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %194)
  %switch.lobit.not = icmp eq i16 %194, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end153_crit_edge, label %switch.lookup

switch.hole_check.if.end153_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.mwifiex_sta_prepare_cmd, i32 0, i32 %switch.tableidx
  %195 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %195)
  %switch.load = load i8, ptr %switch.gep, align 1
  %params138 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %196 = ptrtoint ptr %params138 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %switch.load, ptr %params138, align 1
  br label %if.end153

if.end153:                                        ; preds = %switch.lookup, %switch.hole_check.if.end153_crit_edge, %sw.bb125.if.end153_crit_edge
  %size154 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %197 = ptrtoint ptr %size154 to i32
  call void @__asan_storeN_noabort(i32 %197, i32 2)
  store i16 2304, ptr %size154, align 1
  br label %cleanup

sw.bb155:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mwifiex_cmd_pcie_host_spec(ptr noundef %priv, ptr noundef %cmd_buf, i16 noundef zeroext %cmd_action)
  br label %cleanup

sw.bb157:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call158 = tail call fastcc i32 @mwifiex_cmd_802_11_subsc_evt(ptr noundef %priv, ptr noundef %cmd_buf, ptr noundef %data_buf)
  br label %cleanup

sw.bb159:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call160 = tail call fastcc i32 @mwifiex_cmd_mef_cfg(ptr noundef %cmd_buf, ptr noundef %data_buf)
  br label %cleanup

sw.bb161:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mwifiex_cmd_coalesce_cfg(ptr noundef %cmd_buf, i16 noundef zeroext %cmd_action, ptr noundef %data_buf)
  br label %cleanup

sw.bb163:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call164 = tail call fastcc i32 @mwifiex_cmd_tdls_oper(ptr noundef %priv, ptr noundef %cmd_buf, ptr noundef %data_buf)
  br label %cleanup

sw.bb165:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call166 = tail call fastcc i32 @mwifiex_cmd_tdls_config(ptr noundef %priv, ptr noundef %cmd_buf, i16 noundef zeroext %cmd_action, ptr noundef %data_buf)
  br label %cleanup

sw.bb167:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call168 = tail call i32 @mwifiex_cmd_issue_chan_report_request(ptr noundef %priv, ptr noundef %cmd_buf, ptr noundef %data_buf) #7
  br label %cleanup

sw.bb169:                                         ; preds = %if.end
  %params.i435 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %198 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %198, i32 2)
  store i16 8962, ptr %cmd_buf, align 1
  %size.i436 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %199 = ptrtoint ptr %size.i436 to i32
  call void @__asan_storeN_noabort(i32 %199, i32 2)
  store i16 3072, ptr %size.i436, align 1
  %conv.i437 = trunc i16 %cmd_action to i8
  %200 = ptrtoint ptr %params.i435 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv.i437, ptr %params.i435, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %cmd_action)
  %cmp.i438 = icmp eq i16 %cmd_action, 1
  br i1 %cmp.i438, label %if.then.i439, label %sw.bb169.cleanup_crit_edge

sw.bb169.cleanup_crit_edge:                       ; preds = %sw.bb169
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i439:                                     ; preds = %sw.bb169
  call void @__sanitizer_cov_trace_pc() #9
  %201 = ptrtoint ptr %data_buf to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %data_buf, align 1
  %enable.i = getelementptr inbounds %struct.host_cmd_sdio_sp_rx_aggr_cfg, ptr %params.i435, i32 0, i32 1
  %203 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %enable.i, align 1
  br label %cleanup

sw.bb171:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %204 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %204, i32 2)
  store i16 5633, ptr %cmd_buf, align 1
  %size.i441 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %205 = ptrtoint ptr %size.i441 to i32
  call void @__asan_storeN_noabort(i32 %205, i32 2)
  store i16 2560, ptr %size.i441, align 1
  br label %cleanup

sw.bb173:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %params.i442 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %206 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %207 = ptrtoint ptr %params.i442 to i32
  call void @__asan_storeN_noabort(i32 %207, i32 2)
  store i16 %206, ptr %params.i442, align 1
  %208 = ptrtoint ptr %data_buf to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %data_buf, align 2
  %210 = tail call i16 @llvm.bswap.i16(i16 %209) #7
  %policy.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %211 = ptrtoint ptr %policy.i to i32
  call void @__asan_storeN_noabort(i32 %211, i32 2)
  store i16 %210, ptr %policy.i, align 1
  %212 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %212, i32 2)
  store i16 8449, ptr %cmd_buf, align 1
  %size.i443 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %213 = ptrtoint ptr %size.i443 to i32
  call void @__asan_storeN_noabort(i32 %213, i32 2)
  store i16 3072, ptr %size.i443, align 1
  br label %cleanup

sw.bb175:                                         ; preds = %if.end
  %params.i444 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %214 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %214, i32 2)
  store i16 -8192, ptr %cmd_buf, align 1
  %size.i445 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %215 = ptrtoint ptr %size.i445 to i32
  call void @__asan_storeN_noabort(i32 %215, i32 2)
  store i16 5120, ptr %size.i445, align 1
  %216 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %217 = ptrtoint ptr %params.i444 to i32
  call void @__asan_storeN_noabort(i32 %217, i32 2)
  store i16 %216, ptr %params.i444, align 1
  %add.ptr.i = getelementptr %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 2
  %218 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %218, i32 2)
  store i16 24577, ptr %add.ptr.i, align 1
  %len.i = getelementptr %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 3
  %219 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %219, i32 2)
  store i16 1024, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd_action)
  %cmp.i446 = icmp eq i16 %cmd_action, 0
  br i1 %cmp.i446, label %sw.bb175.cleanup_crit_edge, label %if.end.i448

sw.bb175.cleanup_crit_edge:                       ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i448:                                      ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #9
  %220 = ptrtoint ptr %data_buf to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %data_buf, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool.not.i447 = icmp eq i8 %221, 0
  %mode5.i = getelementptr %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 3, i32 1
  %..i = select i1 %tobool.not.i447, i32 -2113929216, i32 16777216
  %222 = ptrtoint ptr %mode5.i to i32
  call void @__asan_storeN_noabort(i32 %222, i32 4)
  store i32 %..i, ptr %mode5.i, align 1
  br label %cleanup

sw.bb177:                                         ; preds = %if.end
  %params.i449 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %223 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %223, i32 2)
  store i16 3841, ptr %cmd_buf, align 1
  %size.i450 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %224 = ptrtoint ptr %size.i450 to i32
  call void @__asan_storeN_noabort(i32 %224, i32 2)
  store i16 12800, ptr %size.i450, align 1
  %225 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %226 = ptrtoint ptr %params.i449 to i32
  call void @__asan_storeN_noabort(i32 %226, i32 2)
  store i16 %225, ptr %params.i449, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %cmd_action)
  %cmp.i451 = icmp eq i16 %cmd_action, 1
  br i1 %cmp.i451, label %if.then.i452, label %sw.bb177.cleanup_crit_edge

sw.bb177.cleanup_crit_edge:                       ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i452:                                     ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #9
  %kek.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 3, i32 6
  %227 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %data_buf, align 4
  %229 = call ptr @memcpy(ptr %kek.i, ptr %228, i32 16)
  %kck.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %kck4.i = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %data_buf, i32 0, i32 1
  %230 = ptrtoint ptr %kck4.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %kck4.i, align 4
  %232 = call ptr @memcpy(ptr %kck.i, ptr %231, i32 16)
  %replay_ctr.i = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %data_buf, i32 0, i32 2
  %233 = ptrtoint ptr %replay_ctr.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %replay_ctr.i, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %234, align 8
  %conv5.i = trunc i64 %236 to i32
  %237 = tail call i32 @llvm.bswap.i32(i32 %conv5.i) #7
  %replay_ctr_low.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 1, i32 2
  %238 = ptrtoint ptr %replay_ctr_low.i to i32
  call void @__asan_storeN_noabort(i32 %238, i32 4)
  store i32 %237, ptr %replay_ctr_low.i, align 1
  %shr.i = lshr i64 %236, 32
  %conv6.i = trunc i64 %shr.i to i32
  %239 = tail call i32 @llvm.bswap.i32(i32 %conv6.i) #7
  %replay_ctr_high.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 1, i32 6
  %240 = ptrtoint ptr %replay_ctr_high.i to i32
  call void @__asan_storeN_noabort(i32 %240, i32 4)
  store i32 %239, ptr %replay_ctr_high.i, align 1
  br label %cleanup

sw.bb179:                                         ; preds = %if.end
  %241 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %241, i32 2)
  store i16 16898, ptr %cmd_buf, align 1
  %size.i454 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %242 = ptrtoint ptr %size.i454 to i32
  call void @__asan_storeN_noabort(i32 %242, i32 2)
  store i16 2560, ptr %size.i454, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd_action)
  %cmp.i455 = icmp eq i16 %cmd_action, 0
  br i1 %cmp.i455, label %if.then.i457, label %sw.bb179.cleanup_crit_edge

sw.bb179.cleanup_crit_edge:                       ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i457:                                     ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #9
  %params.i456 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %243 = ptrtoint ptr %params.i456 to i32
  call void @__asan_storeN_noabort(i32 %243, i32 2)
  store i16 0, ptr %params.i456, align 1
  br label %cleanup

sw.bb181:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %244 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %244, i32 2)
  store i16 9473, ptr %cmd_buf, align 1
  %size183 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %245 = ptrtoint ptr %size183 to i32
  call void @__asan_storeN_noabort(i32 %245, i32 2)
  store i16 2048, ptr %size183, align 1
  br label %cleanup

sw.bb184:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %params.i459 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4
  %tlv_buffer.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 1
  %246 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %246, i32 2)
  store i16 16130, ptr %cmd_buf, align 1
  %size.i460 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 1
  %247 = ptrtoint ptr %size.i460 to i32
  call void @__asan_storeN_noabort(i32 %247, i32 2)
  store i16 4096, ptr %size.i460, align 1
  %248 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %249 = ptrtoint ptr %params.i459 to i32
  call void @__asan_storeN_noabort(i32 %249, i32 2)
  store i16 %248, ptr %params.i459, align 1
  %250 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 3
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_storeN_noabort(i32 %251, i32 2)
  store i16 0, ptr %250, align 1
  %252 = ptrtoint ptr %tlv_buffer.i to i32
  call void @__asan_storeN_noabort(i32 %252, i32 2)
  store i16 10753, ptr %tlv_buffer.i, align 1
  %len.i461 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd_buf, i32 0, i32 4, i32 0, i32 2
  %253 = ptrtoint ptr %len.i461 to i32
  call void @__asan_storeN_noabort(i32 %253, i32 2)
  store i16 512, ptr %len.i461, align 1
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv1 = zext i16 %cmd_no to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %conv1) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb184, %sw.bb181, %if.then.i457, %sw.bb179.cleanup_crit_edge, %if.then.i452, %sw.bb177.cleanup_crit_edge, %if.end.i448, %sw.bb175.cleanup_crit_edge, %sw.bb173, %sw.bb171, %if.then.i439, %sw.bb169.cleanup_crit_edge, %sw.bb167, %sw.bb165, %sw.bb163, %sw.bb161, %sw.bb159, %sw.bb157, %sw.bb155, %if.end153, %sw.bb44.i, %sw.bb34.i, %sw.bb24.i, %sw.bb14.i, %sw.bb4.i, %sw.bb.i433, %sw.bb123.cleanup_crit_edge, %sw.bb121, %sw.bb119, %sw.epilog.sink.split.i, %sw.bb117.cleanup_crit_edge, %sw.bb113, %sw.bb111, %sw.bb108, %sw.bb105, %sw.bb103, %sw.bb101, %sw.bb99, %sw.bb97, %sw.bb95, %sw.bb90, %if.end87, %sw.bb72, %sw.bb66, %sw.bb64, %sw.bb60, %sw.bb52, %sw.bb47, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %if.then.i411, %sw.bb7.cleanup_crit_edge, %if.end.i407, %if.then.i406, %sw.bb3, %sw.bb, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ -1, %sw.default ], [ 0, %sw.bb184 ], [ 0, %sw.bb181 ], [ 0, %sw.bb173 ], [ 0, %sw.bb171 ], [ %call168, %sw.bb167 ], [ %call166, %sw.bb165 ], [ %call164, %sw.bb163 ], [ 0, %sw.bb161 ], [ %call160, %sw.bb159 ], [ %call158, %sw.bb157 ], [ 0, %sw.bb155 ], [ 0, %if.end153 ], [ 0, %sw.bb121 ], [ %call120, %sw.bb119 ], [ 0, %sw.bb113 ], [ %call112, %sw.bb111 ], [ %call110, %sw.bb108 ], [ %call107, %sw.bb105 ], [ 0, %sw.bb103 ], [ %call102, %sw.bb101 ], [ %call100, %sw.bb99 ], [ %call98, %sw.bb97 ], [ %call96, %sw.bb95 ], [ 0, %sw.bb90 ], [ 0, %if.end87 ], [ 0, %sw.bb72 ], [ 0, %sw.bb66 ], [ %call65, %sw.bb64 ], [ 0, %sw.bb60 ], [ 0, %sw.bb52 ], [ 0, %sw.bb47 ], [ 0, %sw.bb46 ], [ 0, %sw.bb44 ], [ 0, %sw.bb42 ], [ 0, %sw.bb40 ], [ %call39, %sw.bb38 ], [ 0, %sw.bb36 ], [ %call35, %sw.bb34 ], [ 0, %sw.bb32 ], [ %call31, %sw.bb30 ], [ %call29, %sw.bb28 ], [ %call27, %sw.bb26 ], [ %call25, %sw.bb24 ], [ 0, %sw.bb22 ], [ %call21, %sw.bb19 ], [ 0, %sw.bb17 ], [ 0, %sw.bb15 ], [ 0, %sw.bb13 ], [ 0, %sw.bb11 ], [ 0, %sw.bb9 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb ], [ -1, %if.then.i406 ], [ 0, %if.end.i407 ], [ 0, %sw.bb7.cleanup_crit_edge ], [ 0, %if.then.i411 ], [ 0, %sw.bb117.cleanup_crit_edge ], [ 0, %sw.epilog.sink.split.i ], [ -1, %sw.bb123.cleanup_crit_edge ], [ 0, %sw.bb44.i ], [ 0, %sw.bb34.i ], [ 0, %sw.bb24.i ], [ 0, %sw.bb14.i ], [ 0, %sw.bb4.i ], [ 0, %sw.bb.i433 ], [ 0, %sw.bb169.cleanup_crit_edge ], [ 0, %if.then.i439 ], [ 0, %sw.bb175.cleanup_crit_edge ], [ 0, %if.end.i448 ], [ 0, %sw.bb177.cleanup_crit_edge ], [ 0, %if.then.i452 ], [ 0, %sw.bb179.cleanup_crit_edge ], [ 0, %if.then.i457 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_get_hw_spec(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cmd_cfg_data(ptr nocapture noundef readonly %priv, ptr noundef %cmd, ptr noundef readonly %data_buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr i8, ptr %cmd, i32 8
  %tobool.not = icmp eq ptr %data_buf, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %length = getelementptr inbounds %struct.property, ptr %data_buf, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %dt_node = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 127
  %4 = ptrtoint ptr %dt_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dt_node, align 4
  %6 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data_buf, align 4
  %call.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %5, ptr noundef %7, ptr noundef %add.ptr, i32 noundef %3, i32 noundef 0) #7
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool2.not = icmp sgt i32 %call.i, -1
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data_buf, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.12, ptr noundef %10) #7
  br label %if.end16

if.else:                                          ; preds = %entry
  %cal_data = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 126
  %11 = ptrtoint ptr %cal_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cal_data, align 4
  %data5 = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data5, align 4
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not = icmp eq i32 %16, 0
  br i1 %cmp.not, label %land.lhs.true.cleanup_crit_edge, label %if.then8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end18.i.while.body.lr.ph.i_crit_edge, %if.then8
  %d.0.ph42.i = phi ptr [ %d.1.i, %if.end18.i.while.body.lr.ph.i_crit_edge ], [ %add.ptr, %if.then8 ]
  %s.0.ph41.i = phi ptr [ %incdec.ptr17.i, %if.end18.i.while.body.lr.ph.i_crit_edge ], [ %14, %if.then8 ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.then.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %s.037.i = phi ptr [ %s.0.ph41.i, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.then.i.while.body.i_crit_edge ]
  %17 = ptrtoint ptr %s.037.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %s.037.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %while.body.i.if.end.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %conv.i = zext i8 %18 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %21 = and i8 %20, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp3.not.i = icmp ne i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %18)
  %cmp6.i = icmp eq i8 %18, 9
  %or.cond.i = select i1 %cmp3.not.i, i1 true, i1 %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %incdec.ptr.i = getelementptr i8, ptr %s.037.i, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, %16
  br i1 %cmp.i, label %if.then.i.while.body.i_crit_edge, label %if.then.i.mwifiex_parse_cal_cfg.exit_crit_edge

if.then.i.mwifiex_parse_cal_cfg.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_parse_cal_cfg.exit

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %conv8.i = zext i8 %18 to i32
  %arrayidx9.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv8.i
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx9.i, align 1
  %24 = and i8 %23, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp12.not.i = icmp eq i8 %24, 0
  br i1 %cmp12.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then14.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i37 = tail call i32 @simple_strtol(ptr noundef %s.037.i, ptr noundef null, i32 noundef 16) #7
  %conv15.i = trunc i32 %call.i37 to i8
  %incdec.ptr16.i = getelementptr i8, ptr %d.0.ph42.i, i32 1
  %25 = ptrtoint ptr %d.0.ph42.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv15.i, ptr %d.0.ph42.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then14.i, %if.end.i.if.end18.i_crit_edge
  %.sink.i = phi i32 [ 2, %if.then14.i ], [ 1, %if.end.i.if.end18.i_crit_edge ]
  %d.1.i = phi ptr [ %incdec.ptr16.i, %if.then14.i ], [ %d.0.ph42.i, %if.end.i.if.end18.i_crit_edge ]
  %incdec.ptr17.i = getelementptr i8, ptr %s.037.i, i32 %.sink.i
  %sub.ptr.lhs.cast34.i = ptrtoint ptr %incdec.ptr17.i to i32
  %sub.ptr.sub35.i = sub i32 %sub.ptr.lhs.cast34.i, %sub.ptr.rhs.cast.i
  %cmp36.i = icmp ult i32 %sub.ptr.sub35.i, %16
  br i1 %cmp36.i, label %if.end18.i.while.body.lr.ph.i_crit_edge, label %if.end18.i.mwifiex_parse_cal_cfg.exit_crit_edge

if.end18.i.mwifiex_parse_cal_cfg.exit_crit_edge:  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_parse_cal_cfg.exit

if.end18.i.while.body.lr.ph.i_crit_edge:          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

mwifiex_parse_cal_cfg.exit:                       ; preds = %if.end18.i.mwifiex_parse_cal_cfg.exit_crit_edge, %if.then.i.mwifiex_parse_cal_cfg.exit_crit_edge
  %d.0.ph.lcssa.i = phi ptr [ %d.0.ph42.i, %if.then.i.mwifiex_parse_cal_cfg.exit_crit_edge ], [ %d.1.i, %if.end18.i.mwifiex_parse_cal_cfg.exit_crit_edge ]
  %sub.ptr.lhs.cast19.i = ptrtoint ptr %d.0.ph.lcssa.i to i32
  %sub.ptr.rhs.cast20.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub21.i = sub i32 %sub.ptr.lhs.cast19.i, %sub.ptr.rhs.cast20.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.13) #7
  br label %if.end16

if.end16:                                         ; preds = %mwifiex_parse_cal_cfg.exit, %if.end
  %len.0 = phi i32 [ %3, %if.end ], [ %sub.ptr.sub21.i, %mwifiex_parse_cal_cfg.exit ]
  %26 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 -28928, ptr %cmd, align 1
  %27 = trunc i32 %len.0 to i16
  %conv = add i16 %27, 8
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %size17 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %29 = ptrtoint ptr %size17 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %size17, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %8, %if.then.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_cmd_tx_rate_cfg(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %cmd, i16 noundef zeroext %cmd_action, ptr noundef readonly %pbitmap_rates) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 -10752, ptr %cmd, align 1
  %1 = tail call i16 @llvm.bswap.i16(i16 %cmd_action)
  %2 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %1, ptr %params, align 1
  %cfg_index = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %3 = ptrtoint ptr %cfg_index to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 0, ptr %cfg_index, align 1
  %add.ptr = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 21249, ptr %add.ptr, align 1
  %length = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %5 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 9216, ptr %length, align 1
  %cmp.not = icmp eq ptr %pbitmap_rates, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %pbitmap_rates to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pbitmap_rates, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %hr_dsss_rate_bitmap = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %hr_dsss_rate_bitmap to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %hr_dsss_rate_bitmap, align 1
  %arrayidx1 = getelementptr i16, ptr %pbitmap_rates, i32 1
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx1, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %ofdm_rate_bitmap = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %ofdm_rate_bitmap to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %ofdm_rate_bitmap, align 1
  %ht_mcs_rate_bitmap = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 3
  %arrayidx3 = getelementptr i16, ptr %pbitmap_rates, i32 2
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx3, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %17 = ptrtoint ptr %ht_mcs_rate_bitmap to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %ht_mcs_rate_bitmap, align 1
  %arrayidx3.1 = getelementptr i16, ptr %pbitmap_rates, i32 3
  %18 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx3.1, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %arrayidx4.1 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %arrayidx4.1, align 1
  %arrayidx3.2 = getelementptr i16, ptr %pbitmap_rates, i32 4
  %22 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx3.2, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %arrayidx4.2 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 5
  %25 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %arrayidx4.2, align 1
  %arrayidx3.3 = getelementptr i16, ptr %pbitmap_rates, i32 5
  %26 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx3.3, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %arrayidx4.3 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 6
  %29 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %arrayidx4.3, align 1
  %arrayidx3.4 = getelementptr i16, ptr %pbitmap_rates, i32 6
  %30 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx3.4, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %arrayidx4.4 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 7
  %33 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %arrayidx4.4, align 1
  %arrayidx3.5 = getelementptr i16, ptr %pbitmap_rates, i32 7
  %34 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx3.5, align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %arrayidx4.5 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %arrayidx4.5, align 1
  %arrayidx3.6 = getelementptr i16, ptr %pbitmap_rates, i32 8
  %38 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx3.6, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %arrayidx4.6 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 4
  %41 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %arrayidx4.6, align 1
  %arrayidx3.7 = getelementptr i16, ptr %pbitmap_rates, i32 9
  %42 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx3.7, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %arrayidx4.7 = getelementptr [8 x i16], ptr %ht_mcs_rate_bitmap, i32 0, i32 7
  %45 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %arrayidx4.7, align 1
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %fw_api_ver = getelementptr inbounds %struct.mwifiex_adapter, ptr %47, i32 0, i32 138
  %48 = ptrtoint ptr %fw_api_ver to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %fw_api_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %49)
  %cmp5 = icmp eq i8 %49, 15
  br i1 %cmp5, label %for.body11.preheader, label %if.then.if.end54_crit_edge

if.then.if.end54_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

for.body11.preheader:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx13 = getelementptr i16, ptr %pbitmap_rates, i32 10
  %50 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx13, align 2
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  %arrayidx14 = getelementptr %struct.mwifiex_rate_scope, ptr %add.ptr, i32 0, i32 5, i32 0
  %53 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %52, ptr %arrayidx14, align 1
  %arrayidx13.1 = getelementptr i16, ptr %pbitmap_rates, i32 11
  %54 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx13.1, align 2
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %arrayidx14.1 = getelementptr %struct.mwifiex_rate_scope, ptr %add.ptr, i32 0, i32 5, i32 1
  %57 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %56, ptr %arrayidx14.1, align 1
  %arrayidx13.2 = getelementptr i16, ptr %pbitmap_rates, i32 12
  %58 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx13.2, align 2
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %arrayidx14.2 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %60, ptr %arrayidx14.2, align 1
  %arrayidx13.3 = getelementptr i16, ptr %pbitmap_rates, i32 13
  %62 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx13.3, align 2
  %64 = tail call i16 @llvm.bswap.i16(i16 %63)
  %arrayidx14.3 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 2
  %65 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 %64, ptr %arrayidx14.3, align 1
  %arrayidx13.4 = getelementptr i16, ptr %pbitmap_rates, i32 14
  %66 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx13.4, align 2
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  %arrayidx14.4 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 4
  %69 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 %68, ptr %arrayidx14.4, align 1
  %arrayidx13.5 = getelementptr i16, ptr %pbitmap_rates, i32 15
  %70 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx13.5, align 2
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  %arrayidx14.5 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 6
  %73 = ptrtoint ptr %arrayidx14.5 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %72, ptr %arrayidx14.5, align 1
  %arrayidx13.6 = getelementptr i16, ptr %pbitmap_rates, i32 16
  %74 = ptrtoint ptr %arrayidx13.6 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx13.6, align 2
  %76 = tail call i16 @llvm.bswap.i16(i16 %75)
  %arrayidx14.6 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 8
  %77 = ptrtoint ptr %arrayidx14.6 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %76, ptr %arrayidx14.6, align 1
  %arrayidx13.7 = getelementptr i16, ptr %pbitmap_rates, i32 17
  br label %if.end54.sink.split

if.else:                                          ; preds = %entry
  %bitmap_rates = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 30
  %78 = ptrtoint ptr %bitmap_rates to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %bitmap_rates, align 2
  %80 = tail call i16 @llvm.bswap.i16(i16 %79)
  %hr_dsss_rate_bitmap19 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %hr_dsss_rate_bitmap19 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 %80, ptr %hr_dsss_rate_bitmap19, align 1
  %arrayidx21 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 1
  %82 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx21, align 2
  %84 = tail call i16 @llvm.bswap.i16(i16 %83)
  %ofdm_rate_bitmap22 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 2
  %85 = ptrtoint ptr %ofdm_rate_bitmap22 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 %84, ptr %ofdm_rate_bitmap22, align 1
  %ht_mcs_rate_bitmap30 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 3
  %arrayidx29 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 2
  %86 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx29, align 2
  %88 = tail call i16 @llvm.bswap.i16(i16 %87)
  %89 = ptrtoint ptr %ht_mcs_rate_bitmap30 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %88, ptr %ht_mcs_rate_bitmap30, align 1
  %arrayidx29.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 3
  %90 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx29.1, align 2
  %92 = tail call i16 @llvm.bswap.i16(i16 %91)
  %arrayidx31.1 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 4
  %93 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 2)
  store i16 %92, ptr %arrayidx31.1, align 1
  %arrayidx29.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 4
  %94 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx29.2, align 2
  %96 = tail call i16 @llvm.bswap.i16(i16 %95)
  %arrayidx31.2 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 5
  %97 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 %96, ptr %arrayidx31.2, align 1
  %arrayidx29.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 5
  %98 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx29.3, align 2
  %100 = tail call i16 @llvm.bswap.i16(i16 %99)
  %arrayidx31.3 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 6
  %101 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 %100, ptr %arrayidx31.3, align 1
  %arrayidx29.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 6
  %102 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx29.4, align 2
  %104 = tail call i16 @llvm.bswap.i16(i16 %103)
  %arrayidx31.4 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 7
  %105 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 %104, ptr %arrayidx31.4, align 1
  %arrayidx29.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 7
  %106 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx29.5, align 2
  %108 = tail call i16 @llvm.bswap.i16(i16 %107)
  %arrayidx31.5 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 8
  %109 = ptrtoint ptr %arrayidx31.5 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 %108, ptr %arrayidx31.5, align 1
  %arrayidx29.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 8
  %110 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx29.6, align 2
  %112 = tail call i16 @llvm.bswap.i16(i16 %111)
  %arrayidx31.6 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 4
  %113 = ptrtoint ptr %arrayidx31.6 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 %112, ptr %arrayidx31.6, align 1
  %arrayidx29.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 9
  %114 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx29.7, align 2
  %116 = tail call i16 @llvm.bswap.i16(i16 %115)
  %arrayidx31.7 = getelementptr [8 x i16], ptr %ht_mcs_rate_bitmap30, i32 0, i32 7
  %117 = ptrtoint ptr %arrayidx31.7 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 %116, ptr %arrayidx31.7, align 1
  %118 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %priv, align 8
  %fw_api_ver36 = getelementptr inbounds %struct.mwifiex_adapter, ptr %119, i32 0, i32 138
  %120 = ptrtoint ptr %fw_api_ver36 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %fw_api_ver36, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %121)
  %cmp38 = icmp eq i8 %121, 15
  br i1 %cmp38, label %for.body44.preheader, label %if.else.if.end54_crit_edge

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

for.body44.preheader:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx47 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 10
  %122 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx47, align 2
  %124 = tail call i16 @llvm.bswap.i16(i16 %123)
  %arrayidx49 = getelementptr %struct.mwifiex_rate_scope, ptr %add.ptr, i32 0, i32 5, i32 0
  %125 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 2)
  store i16 %124, ptr %arrayidx49, align 1
  %arrayidx47.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 11
  %126 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx47.1, align 2
  %128 = tail call i16 @llvm.bswap.i16(i16 %127)
  %arrayidx49.1 = getelementptr %struct.mwifiex_rate_scope, ptr %add.ptr, i32 0, i32 5, i32 1
  %129 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 2)
  store i16 %128, ptr %arrayidx49.1, align 1
  %arrayidx47.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 12
  %130 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx47.2, align 2
  %132 = tail call i16 @llvm.bswap.i16(i16 %131)
  %arrayidx49.2 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1
  %133 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 %132, ptr %arrayidx49.2, align 1
  %arrayidx47.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 13
  %134 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %arrayidx47.3, align 2
  %136 = tail call i16 @llvm.bswap.i16(i16 %135)
  %arrayidx49.3 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 2
  %137 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_storeN_noabort(i32 %137, i32 2)
  store i16 %136, ptr %arrayidx49.3, align 1
  %arrayidx47.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 14
  %138 = ptrtoint ptr %arrayidx47.4 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx47.4, align 2
  %140 = tail call i16 @llvm.bswap.i16(i16 %139)
  %arrayidx49.4 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 4
  %141 = ptrtoint ptr %arrayidx49.4 to i32
  call void @__asan_storeN_noabort(i32 %141, i32 2)
  store i16 %140, ptr %arrayidx49.4, align 1
  %arrayidx47.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 15
  %142 = ptrtoint ptr %arrayidx47.5 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx47.5, align 2
  %144 = tail call i16 @llvm.bswap.i16(i16 %143)
  %arrayidx49.5 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 6
  %145 = ptrtoint ptr %arrayidx49.5 to i32
  call void @__asan_storeN_noabort(i32 %145, i32 2)
  store i16 %144, ptr %arrayidx49.5, align 1
  %arrayidx47.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 16
  %146 = ptrtoint ptr %arrayidx47.6 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %arrayidx47.6, align 2
  %148 = tail call i16 @llvm.bswap.i16(i16 %147)
  %arrayidx49.6 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 8
  %149 = ptrtoint ptr %arrayidx49.6 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 2)
  store i16 %148, ptr %arrayidx49.6, align 1
  %arrayidx47.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 17
  br label %if.end54.sink.split

if.end54.sink.split:                              ; preds = %for.body44.preheader, %for.body11.preheader
  %arrayidx13.7.sink = phi ptr [ %arrayidx13.7, %for.body11.preheader ], [ %arrayidx47.7, %for.body44.preheader ]
  %150 = ptrtoint ptr %arrayidx13.7.sink to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %arrayidx13.7.sink, align 2
  %152 = tail call i16 @llvm.bswap.i16(i16 %151)
  %arrayidx14.7 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 10
  %153 = ptrtoint ptr %arrayidx14.7 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 2)
  store i16 %152, ptr %arrayidx14.7, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %if.else.if.end54_crit_edge, %if.then.if.end54_crit_edge
  %add.ptr55 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 12
  %154 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 20993, ptr %add.ptr55, align 1
  %length57 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 14
  %155 = ptrtoint ptr %length57 to i32
  call void @__asan_storeN_noabort(i32 %155, i32 2)
  store i16 1024, ptr %length57, align 1
  %rate_drop_mode = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 16
  %156 = ptrtoint ptr %rate_drop_mode to i32
  call void @__asan_storeN_noabort(i32 %156, i32 4)
  store i32 0, ptr %rate_drop_mode, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %157 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %157, i32 2)
  store i16 15360, ptr %size, align 1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mwifiex_cmd_tx_power_cfg(ptr nocapture noundef %cmd, i16 noundef zeroext %cmd_action, ptr noundef %txp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 -12032, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 4096, ptr %size, align 1
  %2 = zext i16 %cmd_action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %cmd_action, label %entry.sw.epilog_crit_edge [
    i16 1, label %sw.bb
    i16 0, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %mode = getelementptr inbounds %struct.host_cmd_ds_txpwr_cfg, ptr %txp, i32 0, i32 2
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %txp to i32
  %add = add i32 %5, 8
  %6 = inttoptr i32 %add to ptr
  %length = getelementptr inbounds %struct.mwifiex_types_power_group, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %length, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv1 = zext i16 %9 to i32
  %add2 = add nuw nsw i32 %conv1, 12
  %10 = call ptr @memmove(ptr %params, ptr %txp, i32 %add2)
  %length6 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %length6 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %length6, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %add8 = add i16 %13, 20
  %14 = tail call i16 @llvm.bswap.i16(i16 %add8)
  %15 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %size, align 1
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %txp to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %txp, align 1
  %18 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %params, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.else, %if.then, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i16 [ 256, %if.else ], [ 256, %if.then ], [ %cmd_action, %entry.sw.epilog.sink.split_crit_edge ]
  %19 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %.sink, ptr %params, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mwifiex_cmd_rf_antenna(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %cmd, i16 noundef zeroext %cmd_action, ptr nocapture noundef readonly %ant_cfg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 8192, ptr %cmd, align 1
  %1 = zext i16 %cmd_action to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %cmd_action, label %entry.sw.epilog_crit_edge [
    i16 1, label %sw.bb
    i16 0, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %hw_dev_mcs_support = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 114
  %4 = ptrtoint ptr %hw_dev_mcs_support to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_dev_mcs_support, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %5)
  %cmp = icmp eq i8 %5, 34
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 4096, ptr %size, align 1
  %7 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 512, ptr %params, align 1
  %8 = ptrtoint ptr %ant_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ant_cfg, align 4
  %conv4 = trunc i32 %9 to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv4)
  %tx_ant_mode = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %tx_ant_mode to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %tx_ant_mode, align 1
  %action_rx = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %12 = ptrtoint ptr %action_rx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 256, ptr %action_rx, align 1
  %rx_ant = getelementptr inbounds %struct.mwifiex_ds_ant_cfg, ptr %ant_cfg, i32 0, i32 1
  %13 = ptrtoint ptr %rx_ant to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_ant, align 4
  %conv5 = trunc i32 %14 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv5)
  %rx_ant_mode = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %16 = ptrtoint ptr %rx_ant_mode to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %rx_ant_mode, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 3072, ptr %size, align 1
  %18 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 768, ptr %params, align 1
  %19 = ptrtoint ptr %ant_cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ant_cfg, align 4
  %conv8 = trunc i32 %20 to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv8)
  %ant_mode = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %22 = ptrtoint ptr %ant_mode to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %ant_mode, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %hw_dev_mcs_support11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %24, i32 0, i32 114
  %25 = ptrtoint ptr %hw_dev_mcs_support11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hw_dev_mcs_support11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %26)
  %cmp13 = icmp eq i8 %26, 34
  %size16 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  br i1 %cmp13, label %if.then15, label %if.else19

if.then15:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %size16 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 4096, ptr %size16, align 1
  %28 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 2048, ptr %params, align 1
  %action_rx18 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %29 = ptrtoint ptr %action_rx18 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 1024, ptr %action_rx18, align 1
  br label %sw.epilog

if.else19:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %size16 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 3072, ptr %size16, align 1
  %31 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 3072, ptr %params, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else19, %if.then15, %if.else, %if.then, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_enh_power_mode(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_cmd_802_11_hs_cfg(ptr nocapture noundef readonly %priv, ptr nocapture noundef %cmd, ptr noundef readonly %hscfg_param) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %add.ptr = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %tobool.not = icmp eq ptr %hscfg_param, null
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -6912, ptr %cmd, align 1
  br i1 %tobool.not, label %if.then19, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %hscfg_param to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %hscfg_param, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.not = icmp eq i32 %4, -1
  br i1 %cmp.not, label %land.lhs.true.if.else22_crit_edge, label %land.lhs.true3

land.lhs.true.if.else22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else22

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arp_filter_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 120
  %5 = ptrtoint ptr %arp_filter_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arp_filter_size, align 4
  %7 = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %7)
  %8 = icmp ult i32 %7, 68
  br i1 %8, label %if.then8, label %land.lhs.true3.if.else22_crit_edge

land.lhs.true3.if.else22_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else22

if.then8:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %6) #7
  %arp_filter = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 119
  %9 = ptrtoint ptr %arp_filter_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arp_filter_size, align 4
  %11 = call ptr @memcpy(ptr %add.ptr, ptr %arp_filter, i32 %10)
  %12 = load i32, ptr %arp_filter_size, align 4
  %13 = trunc i32 %12 to i16
  %add.ptr16 = getelementptr i8, ptr %add.ptr, i32 %12
  %phi.bo = add i16 %13, 28
  br label %if.else22

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 512, ptr %params, align 1
  %params20 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %params20 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 256, ptr %params20, align 1
  %hs_activated_manually = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 109
  %16 = ptrtoint ptr %hs_activated_manually to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %hs_activated_manually, align 1
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %18, i32 noundef 16, ptr noundef nonnull @.str.16) #7
  br label %if.end43

if.else22:                                        ; preds = %if.then8, %land.lhs.true3.if.else22_crit_edge, %land.lhs.true.if.else22_crit_edge
  %tlv.0.ph = phi ptr [ %add.ptr, %land.lhs.true.if.else22_crit_edge ], [ %add.ptr, %land.lhs.true3.if.else22_crit_edge ], [ %add.ptr16, %if.then8 ]
  %size.0.ph = phi i16 [ 28, %land.lhs.true.if.else22_crit_edge ], [ 28, %land.lhs.true3.if.else22_crit_edge ], [ %phi.bo, %if.then8 ]
  %19 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 256, ptr %params, align 1
  %20 = ptrtoint ptr %hscfg_param to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %hscfg_param, align 1
  %params25 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %22 = ptrtoint ptr %params25 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %params25, align 1
  %gpio = getelementptr inbounds %struct.mwifiex_hs_config_param, ptr %hscfg_param, i32 0, i32 1
  %23 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %gpio, align 1
  %gpio28 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %25 = ptrtoint ptr %gpio28 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %gpio28, align 1
  %gap = getelementptr inbounds %struct.mwifiex_hs_config_param, ptr %hscfg_param, i32 0, i32 2
  %26 = ptrtoint ptr %gap to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %gap, align 1
  %gap30 = getelementptr inbounds %struct.mwifiex_hs_config_param, ptr %params25, i32 0, i32 2
  %28 = ptrtoint ptr %gap30 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %gap30, align 1
  %29 = ptrtoint ptr %tlv.0.ph to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 -19199, ptr %tlv.0.ph, align 1
  %len = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.0.ph, i32 0, i32 1
  %30 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 2048, ptr %len, align 1
  %hs_wake_int = getelementptr inbounds %struct.mwifiex_ps_param_in_hs, ptr %tlv.0.ph, i32 0, i32 1
  %31 = ptrtoint ptr %hs_wake_int to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 1677721600, ptr %hs_wake_int, align 1
  %hs_inact_timeout = getelementptr inbounds %struct.mwifiex_ps_param_in_hs, ptr %tlv.0.ph, i32 0, i32 2
  %32 = ptrtoint ptr %hs_inact_timeout to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 838860800, ptr %hs_inact_timeout, align 1
  %33 = load i32, ptr %params25, align 1
  %34 = load i8, ptr %gpio28, align 1
  %conv39 = zext i8 %34 to i32
  %35 = load i8, ptr %gap30, align 1
  %conv42 = zext i8 %35 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.17, i32 noundef %33, i32 noundef %conv39, i32 noundef %conv42) #7
  br label %if.end43

if.end43:                                         ; preds = %if.else22, %if.then19
  %size.1 = phi i16 [ 16, %if.then19 ], [ %size.0.ph, %if.else22 ]
  %36 = tail call i16 @llvm.bswap.i16(i16 %size.1)
  %size44 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %37 = ptrtoint ptr %size44 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %size44, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_802_11_scan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_802_11_bg_scan_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_802_11_bg_scan_query(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_802_11_associate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_802_11_ad_hoc_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_802_11_ad_hoc_join(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_cmd_802_11_snmp_mib(ptr nocapture noundef readonly %priv, ptr nocapture noundef %cmd, i16 noundef zeroext %cmd_action, i32 noundef %cmd_oid, ptr nocapture noundef readonly %ul_temp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %cmd_oid) #7
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 5632, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 3584, ptr %size, align 1
  %conv = trunc i32 %cmd_oid to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %oid = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %oid to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %oid, align 1
  %6 = zext i16 %cmd_action to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %cmd_action, label %entry.if.end11_crit_edge [
    i16 0, label %if.then
    i16 1, label %if.then7
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 0, ptr %params, align 1
  %buf_size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %8 = ptrtoint ptr %buf_size to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 -32768, ptr %buf_size, align 1
  br label %if.end11.sink.split

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 256, ptr %params, align 1
  %buf_size9 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %10 = ptrtoint ptr %buf_size9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 512, ptr %buf_size9, align 1
  %11 = ptrtoint ptr %ul_temp to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ul_temp, align 2
  %value = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #7
  %14 = ptrtoint ptr %value to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %value, align 1
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.then7, %if.then
  %.sink = phi i16 [ 4096, %if.then7 ], [ -29184, %if.then ]
  %15 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %.sink, ptr %size, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %entry.if.end11_crit_edge
  %conv1 = zext i16 %cmd_action to i32
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %buf_size14 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %18 = ptrtoint ptr %buf_size14 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %buf_size14, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv15 = zext i16 %20 to i32
  %value16 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %21 = ptrtoint ptr %value16 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %value16, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #7
  %conv18 = zext i16 %23 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef %conv1, i32 noundef %cmd_oid, i32 noundef %conv15, i32 noundef %conv18) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_11ac_cfg(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_11n_addba_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_11n_delba(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_11n_addba_rsp_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cmd_802_11_key_material(ptr noundef %priv, ptr noundef %cmd, i16 noundef zeroext %cmd_action, i32 noundef %cmd_oid, ptr noundef readonly %enc_key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %key_api_major_ver = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 139
  %2 = ptrtoint ptr %key_api_major_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %key_api_major_ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mac_addr.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 4
  %params.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 24064, ptr %cmd, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %6 = ptrtoint ptr %params.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %params.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd_action)
  %cmp.i = icmp eq i16 %cmd_action, 0
  br i1 %cmp.i, label %if.then.i, label %if.end20.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.mwifiex_cmd_802_11_key_material_v2) #7
  %key_index.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 1
  %7 = ptrtoint ptr %key_index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key_index.i, align 4
  %9 = trunc i32 %8 to i8
  %conv3.i = and i8 %9, 15
  %key_param_set.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %key_idx.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %key_idx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv3.i, ptr %key_idx.i, align 1
  %11 = ptrtoint ptr %key_param_set.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 -25599, ptr %key_param_set.i, align 1
  %len6.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %12 = ptrtoint ptr %len6.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 2560, ptr %len6.i, align 1
  %mac_addr8.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %13 = call ptr @memcpy(ptr %mac_addr8.i, ptr %mac_addr.i, i32 6)
  %14 = load i32, ptr %key_index.i, align 4
  %and11.i = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  %..i = select i1 %tobool.not.i, i16 1, i16 2
  %is_igtk_key.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 8
  %15 = ptrtoint ptr %is_igtk_key.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_igtk_key.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not.i = icmp eq i8 %16, 0
  %17 = or i16 %..i, 1024
  %key_info.1.i = select i1 %tobool13.not.i, i16 %..i, i16 %17
  %18 = tail call i16 @llvm.bswap.i16(i16 %key_info.1.i) #7
  %key_info19.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %key_info19.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %key_info19.i, align 1
  %size.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 6144, ptr %size.i, align 1
  br label %return

if.end20.i:                                       ; preds = %if.then
  %key_param_set21.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %21 = call ptr @memset(ptr %key_param_set21.i, i32 0, i32 64)
  %22 = ptrtoint ptr %enc_key to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enc_key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not.i = icmp eq i32 %23, 0
  br i1 %tobool22.not.i, label %if.end40.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mwifiex_cmd_802_11_key_material_v2) #7
  %24 = ptrtoint ptr %params.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 1024, ptr %params.i, align 1
  %25 = ptrtoint ptr %key_param_set21.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 -25599, ptr %key_param_set21.i, align 1
  %len28.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %26 = ptrtoint ptr %len28.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 2560, ptr %len28.i, align 1
  %key_index29.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 1
  %27 = ptrtoint ptr %key_index29.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %key_index29.i, align 4
  %29 = trunc i32 %28 to i8
  %conv31.i = and i8 %29, 15
  %key_idx33.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %key_idx33.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv31.i, ptr %key_idx33.i, align 1
  %key_info35.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %key_info35.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 768, ptr %key_info35.i, align 1
  %mac_addr37.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %32 = call ptr @memcpy(ptr %mac_addr37.i, ptr %mac_addr.i, i32 6)
  %size39.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %33 = ptrtoint ptr %size39.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 6144, ptr %size39.i, align 1
  br label %return

if.end40.i:                                       ; preds = %if.end20.i
  %34 = ptrtoint ptr %params.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 256, ptr %params.i, align 1
  %key_index42.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 1
  %35 = ptrtoint ptr %key_index42.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %key_index42.i, align 4
  %37 = trunc i32 %36 to i8
  %conv44.i = and i8 %37, 15
  %key_idx46.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %key_idx46.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv44.i, ptr %key_idx46.i, align 1
  %39 = ptrtoint ptr %key_param_set21.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 -25599, ptr %key_param_set21.i, align 1
  %mac_addr50.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %40 = call ptr @memcpy(ptr %mac_addr50.i, ptr %mac_addr.i, i32 6)
  %key_len.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 2
  %41 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %key_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %42)
  %cmp52.i = icmp ult i32 %42, 14
  br i1 %cmp52.i, label %if.then54.i, label %if.end115.i

if.then54.i:                                      ; preds = %if.end40.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.mwifiex_cmd_802_11_key_material_v2) #7
  %len58.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %43 = ptrtoint ptr %len58.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 6400, ptr %len58.i, align 1
  %key_type.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set_v2, ptr %key_param_set21.i, i32 0, i32 4
  %44 = ptrtoint ptr %key_type.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %key_type.i, align 1
  %bss_role.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %45 = ptrtoint ptr %bss_role.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bss_role.i, align 1
  %47 = and i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp62.not.i = icmp eq i8 %47, 0
  br i1 %cmp62.not.i, label %if.else68.i, label %if.then54.i.if.end97.i_crit_edge

if.then54.i.if.end97.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97.i

if.else68.i:                                      ; preds = %if.then54.i
  %is_current_wep_key.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 9
  %48 = ptrtoint ptr %is_current_wep_key.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_current_wep_key.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool69.not.i = icmp eq i8 %49, 0
  br i1 %tobool69.not.i, label %if.else86.i, label %if.then70.i

if.then70.i:                                      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %key_idx46.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %key_idx46.i, align 1
  %wep_key_curr_index.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 62
  %52 = ptrtoint ptr %wep_key_curr_index.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %wep_key_curr_index.i, align 8
  %54 = and i16 %53, 15
  %55 = zext i8 %51 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %55)
  %cmp79.i = icmp eq i16 %54, %55
  %spec.select.i = select i1 %cmp79.i, i16 3840, i16 1792
  br label %if.end97.i

if.else86.i:                                      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %mac_addr.i, align 2
  %add.ptr1.i.i = getelementptr %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 4, i32 2
  %58 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %59, %57
  %add.ptr3.i.i = getelementptr %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 4, i32 4
  %60 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %61
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i.i = icmp eq i16 %and510.i.i, -1
  %.1.i = select i1 %cmp.i.i, i16 1280, i16 3584
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.else86.i, %if.then70.i, %if.then54.i.if.end97.i_crit_edge
  %key_info.2.i = phi i16 [ 1792, %if.then54.i.if.end97.i_crit_edge ], [ %spec.select.i, %if.then70.i ], [ %.1.i, %if.else86.i ]
  %key_info99.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 4
  %62 = ptrtoint ptr %key_info99.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %key_info.2.i, ptr %key_info99.i, align 1
  %63 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %key_len.i, align 4
  %conv101.i = trunc i32 %64 to i16
  %65 = tail call i16 @llvm.bswap.i16(i16 %conv101.i) #7
  %key_params.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 5
  %66 = ptrtoint ptr %key_params.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %65, ptr %key_params.i, align 1
  %key.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 6
  %key_material.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 3
  %67 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %key_len.i, align 4
  %69 = call ptr @memcpy(ptr %key.i, ptr %key_material.i, i32 %68)
  %size114.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %70 = ptrtoint ptr %size114.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 9984, ptr %size114.i, align 1
  br label %return

if.end115.i:                                      ; preds = %if.end40.i
  %71 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %mac_addr.i, align 2
  %add.ptr1.i6.i = getelementptr %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 4, i32 2
  %73 = ptrtoint ptr %add.ptr1.i6.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr1.i6.i, align 2
  %and9.i7.i = and i16 %74, %72
  %add.ptr3.i8.i = getelementptr %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 4, i32 4
  %75 = ptrtoint ptr %add.ptr3.i8.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %add.ptr3.i8.i, align 2
  %and510.i9.i = and i16 %and9.i7.i, %76
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i9.i)
  %cmp.i10.i = icmp eq i16 %and510.i9.i, -1
  %.2.i = select i1 %cmp.i10.i, i16 37, i16 54
  %is_wapi_key.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 5
  %77 = ptrtoint ptr %is_wapi_key.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %is_wapi_key.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool126.not.i = icmp eq i32 %78, 0
  br i1 %tobool126.not.i, label %if.end171.i, label %if.then127.i

if.then127.i:                                     ; preds = %if.end115.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mwifiex_cmd_802_11_key_material_v2) #7
  %key_type129.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set_v2, ptr %key_param_set21.i, i32 0, i32 4
  %79 = ptrtoint ptr %key_type129.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 3, ptr %key_type129.i, align 1
  %key_params131.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 5
  %pn133.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 6
  %80 = call ptr @memcpy(ptr %key_params131.i, ptr %pn133.i, i32 16)
  %81 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %key_len.i, align 4
  %conv136.i = trunc i32 %82 to i16
  %83 = tail call i16 @llvm.bswap.i16(i16 %conv136.i) #7
  %key_len139.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %key_len139.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 %83, ptr %key_len139.i, align 1
  %key142.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 2
  %key_material144.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 3
  %85 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %key_len.i, align 4
  %87 = call ptr @memcpy(ptr %key142.i, ptr %key_material144.i, i32 %86)
  %88 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %mac_addr.i, align 2
  %90 = ptrtoint ptr %add.ptr1.i6.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %add.ptr1.i6.i, align 2
  %and9.i12.i = and i16 %91, %89
  %92 = ptrtoint ptr %add.ptr3.i8.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %add.ptr3.i8.i, align 2
  %and510.i14.i = and i16 %and9.i12.i, %93
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i14.i)
  %cmp.i15.i = icmp eq i16 %and510.i14.i, -1
  br i1 %cmp.i15.i, label %if.then148.i, label %if.then127.i.if.end149.i_crit_edge

if.then127.i.if.end149.i_crit_edge:               ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149.i

if.then148.i:                                     ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #9
  %wapi_key_on.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 3
  %94 = ptrtoint ptr %wapi_key_on.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %wapi_key_on.i, align 1
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.then148.i, %if.then127.i.if.end149.i_crit_edge
  %wapi_key_on151.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 3
  %95 = ptrtoint ptr %wapi_key_on151.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %wapi_key_on151.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool152.not.i = icmp eq i8 %96, 0
  %97 = shl nuw nsw i16 %.2.i, 8
  %98 = or i16 %97, 2048
  %99 = select i1 %tobool152.not.i, i16 %98, i16 %97
  %key_info159.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 4
  %100 = ptrtoint ptr %key_info159.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 %99, ptr %key_info159.i, align 1
  %len164.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %101 = ptrtoint ptr %len164.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 15360, ptr %len164.i, align 1
  %size170.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %102 = ptrtoint ptr %size170.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 18944, ptr %size170.i, align 1
  br label %return

if.end171.i:                                      ; preds = %if.end115.i
  %bss_mode.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %103 = ptrtoint ptr %bss_mode.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bss_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp172.i = icmp eq i32 %104, 1
  br i1 %cmp172.i, label %if.then174.i, label %if.else186.i

if.then174.i:                                     ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #9
  %105 = or i16 %.2.i, 8
  %wpa2_enabled.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 1
  %106 = ptrtoint ptr %wpa2_enabled.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %wpa2_enabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool179.not.i = icmp eq i8 %107, 0
  %spec.select4.i = select i1 %cmp.i10.i, i16 %105, i16 62
  %spec.select21.i = select i1 %tobool179.not.i, i16 %spec.select4.i, i16 %105
  br label %if.end193.i

if.else186.i:                                     ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #9
  %wpa_is_gtk_set.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 65
  %108 = ptrtoint ptr %wpa_is_gtk_set.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %wpa_is_gtk_set.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool187.not.i = icmp eq i8 %109, 0
  %110 = or i16 %.2.i, 8
  %spec.select5.i = select i1 %tobool187.not.i, i16 %110, i16 %.2.i
  br label %if.end193.i

if.end193.i:                                      ; preds = %if.else186.i, %if.then174.i
  %key_info.5.i = phi i16 [ %spec.select5.i, %if.else186.i ], [ %spec.select21.i, %if.then174.i ]
  %111 = tail call i16 @llvm.bswap.i16(i16 %key_info.5.i) #7
  %key_info195.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 4
  %112 = ptrtoint ptr %key_info195.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 %111, ptr %key_info195.i, align 1
  %113 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %key_len.i, align 4
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %114, label %if.end193.i.return_crit_edge [
    i32 16, label %if.then199.i
    i32 32, label %if.then205.i
  ]

if.end193.i.return_crit_edge:                     ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then199.i:                                     ; preds = %if.end193.i
  %116 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %priv, align 8
  %is_igtk_key.i30 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 8
  %118 = ptrtoint ptr %is_igtk_key.i30 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %is_igtk_key.i30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i31 = icmp eq i8 %119, 0
  br i1 %tobool.not.i31, label %if.else.i42, label %if.then.i33

if.then.i33:                                      ; preds = %if.then199.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %117, i32 noundef 1073741824, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.mwifiex_set_aes_key_v2) #7
  %is_rx_seq_valid.i32 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 10
  %120 = ptrtoint ptr %is_rx_seq_valid.i32 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %is_rx_seq_valid.i32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool2.not.i = icmp eq i8 %121, 0
  br i1 %tobool2.not.i, label %if.then.i33.if.end.i41_crit_edge, label %if.then3.i

if.then.i33.if.end.i41_crit_edge:                 ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i41

if.then3.i:                                       ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #9
  %key_params.i34 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 5
  %pn.i35 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 6
  %pn_len.i36 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 7
  %122 = ptrtoint ptr %pn_len.i36 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %pn_len.i36, align 4
  %conv.i = zext i8 %123 to i32
  %124 = call ptr @memcpy(ptr %key_params.i34, ptr %pn.i35, i32 %conv.i)
  br label %if.end.i41

if.end.i41:                                       ; preds = %if.then3.i, %if.then.i33.if.end.i41_crit_edge
  %125 = ptrtoint ptr %key_info195.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %126 = load i16, ptr %key_info195.i, align 1
  %127 = and i16 %126, -261
  %128 = or i16 %127, 4
  store i16 %128, ptr %key_info195.i, align 1
  %key_type.i37 = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, ptr %params.i, i32 0, i32 1, i32 4
  %129 = ptrtoint ptr %key_type.i37 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 4, ptr %key_type.i37, align 1
  %130 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %key_len.i, align 4
  %conv13.i = trunc i32 %131 to i16
  %132 = tail call i16 @llvm.bswap.i16(i16 %conv13.i) #7
  %key_len16.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 4
  %133 = ptrtoint ptr %key_len16.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 %132, ptr %key_len16.i, align 1
  %key.i39 = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, ptr %params.i, i32 0, i32 1, i32 6, i32 0, i32 0, i32 10
  %key_material.i40 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 3
  %134 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %key_len.i, align 4
  %136 = call ptr @memcpy(ptr %key.i39, ptr %key_material.i40, i32 %135)
  br label %mwifiex_set_aes_key_v2.exit

if.else.i42:                                      ; preds = %if.then199.i
  %is_igtk_def_key.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 11
  %137 = ptrtoint ptr %is_igtk_def_key.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %is_igtk_def_key.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool24.not.i = icmp eq i8 %138, 0
  br i1 %tobool24.not.i, label %if.else31.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.else.i42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %117, i32 noundef 1073741824, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.mwifiex_set_aes_key_v2) #7
  %key_type27.i = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, ptr %params.i, i32 0, i32 1, i32 4
  %139 = ptrtoint ptr %key_type27.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 5, ptr %key_type27.i, align 1
  %140 = ptrtoint ptr %key_index42.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %key_index42.i, align 4
  %142 = trunc i32 %141 to i8
  %conv29.i = and i8 %142, 15
  %143 = ptrtoint ptr %key_idx46.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv29.i, ptr %key_idx46.i, align 1
  br label %mwifiex_set_aes_key_v2.exit

if.else31.i:                                      ; preds = %if.else.i42
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %117, i32 noundef 1073741824, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.mwifiex_set_aes_key_v2) #7
  %is_rx_seq_valid32.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 10
  %144 = ptrtoint ptr %is_rx_seq_valid32.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %is_rx_seq_valid32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool33.not.i = icmp eq i8 %145, 0
  br i1 %tobool33.not.i, label %if.else31.i.if.end43.i_crit_edge, label %if.then34.i

if.else31.i.if.end43.i_crit_edge:                 ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then34.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #9
  %key_params36.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 5
  %pn39.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 6
  %pn_len41.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 7
  %146 = ptrtoint ptr %pn_len41.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %pn_len41.i, align 4
  %conv42.i = zext i8 %147 to i32
  %148 = call ptr @memcpy(ptr %key_params36.i, ptr %pn39.i, i32 %conv42.i)
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then34.i, %if.else31.i.if.end43.i_crit_edge
  %key_type45.i = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, ptr %params.i, i32 0, i32 1, i32 4
  %149 = ptrtoint ptr %key_type45.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 2, ptr %key_type45.i, align 1
  %150 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %key_len.i, align 4
  %conv47.i = trunc i32 %151 to i16
  %152 = tail call i16 @llvm.bswap.i16(i16 %conv47.i) #7
  %key_len50.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 4
  %153 = ptrtoint ptr %key_len50.i to i32
  call void @__asan_storeN_noabort(i32 %153, i32 2)
  store i16 %152, ptr %key_len50.i, align 1
  %key53.i = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, ptr %params.i, i32 0, i32 1, i32 6, i32 0, i32 0, i32 10
  %key_material55.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 3
  %154 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %key_len.i, align 4
  %156 = call ptr @memcpy(ptr %key53.i, ptr %key_material55.i, i32 %155)
  br label %mwifiex_set_aes_key_v2.exit

mwifiex_set_aes_key_v2.exit:                      ; preds = %if.end43.i, %if.then25.i, %if.end.i41
  %len.0.i = phi i16 [ 9216, %if.end.i41 ], [ 2560, %if.then25.i ], [ 13312, %if.end43.i ]
  %len64.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %157 = ptrtoint ptr %len64.i to i32
  call void @__asan_storeN_noabort(i32 %157, i32 2)
  store i16 %len.0.i, ptr %len64.i, align 1
  %158 = add nuw nsw i16 %len.0.i, 3584
  %size70.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %159 = ptrtoint ptr %size70.i to i32
  call void @__asan_storeN_noabort(i32 %159, i32 2)
  store i16 %158, ptr %size70.i, align 1
  br label %return

if.then205.i:                                     ; preds = %if.end193.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.mwifiex_cmd_802_11_key_material_v2) #7
  %is_rx_seq_valid.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 10
  %160 = ptrtoint ptr %is_rx_seq_valid.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %is_rx_seq_valid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool206.not.i = icmp eq i8 %161, 0
  br i1 %tobool206.not.i, label %if.then205.i.if.end215.i_crit_edge, label %if.then207.i

if.then205.i.if.end215.i_crit_edge:               ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215.i

if.then207.i:                                     ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #9
  %key_params209.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 5
  %pn212.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 6
  %pn_len.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 7
  %162 = ptrtoint ptr %pn_len.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %pn_len.i, align 4
  %conv214.i = zext i8 %163 to i32
  %164 = call ptr @memcpy(ptr %key_params209.i, ptr %pn212.i, i32 %conv214.i)
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.then207.i, %if.then205.i.if.end215.i_crit_edge
  %key_type217.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set_v2, ptr %key_param_set21.i, i32 0, i32 4
  %165 = ptrtoint ptr %key_type217.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 1, ptr %key_type217.i, align 1
  %166 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %key_len.i, align 4
  %conv219.i = trunc i32 %167 to i16
  %168 = tail call i16 @llvm.bswap.i16(i16 %conv219.i) #7
  %key_params221.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 5
  %key_len222.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 4
  %169 = ptrtoint ptr %key_len222.i to i32
  call void @__asan_storeN_noabort(i32 %169, i32 2)
  store i16 %168, ptr %key_len222.i, align 1
  %key225.i = getelementptr inbounds %struct.mwifiex_tkip_param, ptr %key_params221.i, i32 0, i32 2
  %key_material227.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 3
  %170 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %key_len.i, align 4
  %172 = call ptr @memcpy(ptr %key225.i, ptr %key_material227.i, i32 %171)
  %len234.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %173 = ptrtoint ptr %len234.i to i32
  call void @__asan_storeN_noabort(i32 %173, i32 2)
  store i16 13312, ptr %len234.i, align 1
  %size240.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %174 = ptrtoint ptr %size240.i to i32
  call void @__asan_storeN_noabort(i32 %174, i32 2)
  store i16 16896, ptr %size240.i, align 1
  br label %return

if.else:                                          ; preds = %entry
  %params.i9 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %175 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %175, i32 2)
  store i16 24064, ptr %cmd, align 1
  %176 = tail call i16 @llvm.bswap.i16(i16 %cmd_action) #7
  %177 = ptrtoint ptr %params.i9 to i32
  call void @__asan_storeN_noabort(i32 %177, i32 2)
  store i16 %176, ptr %params.i9, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd_action)
  %cmp.i10 = icmp eq i16 %cmd_action, 0
  br i1 %cmp.i10, label %if.then.i12, label %if.end.i

if.then.i12:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %size.i11 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %178 = ptrtoint ptr %size.i11 to i32
  call void @__asan_storeN_noabort(i32 %178, i32 2)
  store i16 2560, ptr %size.i11, align 1
  br label %return

if.end.i:                                         ; preds = %if.else
  %tobool.not.i13 = icmp eq ptr %enc_key, null
  %key_param_set.i14 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  br i1 %tobool.not.i13, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  %179 = call ptr @memset(ptr %key_param_set.i14, i32 0, i32 240)
  %wep_key_curr_index.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 62
  %key_length.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 0, i32 2
  %180 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %key_length.i.i, align 4
  %182 = zext i32 %181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %181, label %if.then2.i.if.else56.i.i_crit_edge [
    i32 5, label %if.then2.i.if.then.i.i_crit_edge
    i32 13, label %if.then2.i.if.then.i.i_crit_edge45
    i32 0, label %if.then2.i.for.inc.i.i_crit_edge
  ]

if.then2.i.for.inc.i.i_crit_edge:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then2.i.if.then.i.i_crit_edge45:               ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then2.i.if.then.i.i_crit_edge:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then2.i.if.else56.i.i_crit_edge:               ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else56.i.i

if.then.i.i:                                      ; preds = %if.then2.i.if.then.i.i_crit_edge, %if.then2.i.if.then.i.i_crit_edge45
  %183 = ptrtoint ptr %key_param_set.i14 to i32
  call void @__asan_storeN_noabort(i32 %183, i32 2)
  store i16 1, ptr %key_param_set.i14, align 1
  %184 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %key_length.i.i, align 4
  %186 = trunc i32 %185 to i16
  %conv14.i.i = add i16 %186, 8
  %187 = tail call i16 @llvm.bswap.i16(i16 %conv14.i.i) #7
  %length.i.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %188 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %188, i32 2)
  store i16 %187, ptr %length.i.i, align 1
  %key_type_id.i.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %189 = ptrtoint ptr %key_type_id.i.i to i32
  call void @__asan_storeN_noabort(i32 %189, i32 2)
  store i16 0, ptr %key_type_id.i.i, align 1
  %key_info.i.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %190 = ptrtoint ptr %key_info.i.i to i32
  call void @__asan_storeN_noabort(i32 %190, i32 2)
  store i16 1792, ptr %key_info.i.i, align 1
  %191 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %key_length.i.i, align 4
  %conv19.i.i = trunc i32 %192 to i16
  %193 = tail call i16 @llvm.bswap.i16(i16 %conv19.i.i) #7
  %key_len.i.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 2
  %194 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %194, i32 2)
  store i16 %193, ptr %key_len.i.i, align 1
  %key.i.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 3
  %195 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %key.i.i, align 1
  %196 = ptrtoint ptr %wep_key_curr_index.i.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %wep_key_curr_index.i.i, align 8
  %198 = and i16 %197, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %198)
  %cmp23.i.i = icmp eq i16 %198, 0
  %spec.select.i.i = zext i1 %cmp23.i.i to i8
  %199 = getelementptr %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.i14, i32 0, i32 5, i32 1
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %spec.select.i.i, ptr %199, align 1
  %arrayidx31.i.i = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 4
  %key_material.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 0, i32 3
  %201 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %key_length.i.i, align 4
  %203 = call ptr @memmove(ptr %arrayidx31.i.i, ptr %key_material.i.i, i32 %202)
  %204 = load i32, ptr %key_length.i.i, align 4
  %add44.i.i = add i32 %204, 12
  %205 = trunc i32 %add44.i.i to i16
  %add.ptr.i.i = getelementptr i8, ptr %key_param_set.i14, i32 %add44.i.i
  br label %for.inc.i.i

if.else56.i.i:                                    ; preds = %for.inc.2.i.i.if.else56.i.i_crit_edge, %for.inc.1.i.i.if.else56.i.i_crit_edge, %for.inc.i.i.if.else56.i.i_crit_edge, %if.then2.i.if.else56.i.i_crit_edge
  %key_param_len.0.i = phi i16 [ 0, %if.then2.i.if.else56.i.i_crit_edge ], [ %key_param_len.1.i, %for.inc.i.i.if.else56.i.i_crit_edge ], [ %key_param_len.2.i, %for.inc.1.i.i.if.else56.i.i_crit_edge ], [ %key_param_len.3.i, %for.inc.2.i.i.if.else56.i.i_crit_edge ]
  %conv103.lcssa.i.i = phi i32 [ 1, %if.then2.i.if.else56.i.i_crit_edge ], [ 2, %for.inc.i.i.if.else56.i.i_crit_edge ], [ 3, %for.inc.1.i.i.if.else56.i.i_crit_edge ], [ 4, %for.inc.2.i.i.if.else56.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %181, %if.then2.i.if.else56.i.i_crit_edge ], [ %209, %for.inc.i.i.if.else56.i.i_crit_edge ], [ %235, %for.inc.1.i.i.if.else56.i.i_crit_edge ], [ %261, %for.inc.2.i.i.if.else56.i.i_crit_edge ]
  %206 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %207, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef %conv103.lcssa.i.i, i32 noundef %.lcssa.i.i) #7
  br label %mwifiex_set_keyparamset_wep.exit.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %if.then2.i.for.inc.i.i_crit_edge
  %key_param_len.1.i = phi i16 [ 0, %if.then2.i.for.inc.i.i_crit_edge ], [ %205, %if.then.i.i ]
  %key_param_set.addr.1.i.i = phi ptr [ %key_param_set.i14, %if.then2.i.for.inc.i.i_crit_edge ], [ %add.ptr.i.i, %if.then.i.i ]
  %key_length.1.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 1, i32 2
  %208 = ptrtoint ptr %key_length.1.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %key_length.1.i.i, align 4
  %210 = zext i32 %209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %209, label %for.inc.i.i.if.else56.i.i_crit_edge [
    i32 5, label %for.inc.i.i.if.then.1.i.i_crit_edge
    i32 13, label %for.inc.i.i.if.then.1.i.i_crit_edge46
    i32 0, label %for.inc.i.i.for.inc.1.i.i_crit_edge
  ]

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i

for.inc.i.i.if.then.1.i.i_crit_edge46:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.1.i.i

for.inc.i.i.if.then.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.1.i.i

for.inc.i.i.if.else56.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else56.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i.i.if.then.1.i.i_crit_edge, %for.inc.i.i.if.then.1.i.i_crit_edge46
  %211 = ptrtoint ptr %key_param_set.addr.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %211, i32 2)
  store i16 1, ptr %key_param_set.addr.1.i.i, align 1
  %212 = ptrtoint ptr %key_length.1.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %key_length.1.i.i, align 4
  %214 = trunc i32 %213 to i16
  %conv14.1.i.i = add i16 %214, 8
  %215 = tail call i16 @llvm.bswap.i16(i16 %conv14.1.i.i) #7
  %length.1.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.i.i, i32 0, i32 1
  %216 = ptrtoint ptr %length.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %216, i32 2)
  store i16 %215, ptr %length.1.i.i, align 1
  %key_type_id.1.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.i.i, i32 0, i32 2
  %217 = ptrtoint ptr %key_type_id.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %217, i32 2)
  store i16 0, ptr %key_type_id.1.i.i, align 1
  %key_info.1.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.i.i, i32 0, i32 3
  %218 = ptrtoint ptr %key_info.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %218, i32 2)
  store i16 1792, ptr %key_info.1.i.i, align 1
  %219 = ptrtoint ptr %key_length.1.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %key_length.1.i.i, align 4
  %conv19.1.i.i = trunc i32 %220 to i16
  %221 = tail call i16 @llvm.bswap.i16(i16 %conv19.1.i.i) #7
  %key_len.1.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.i.i, i32 0, i32 4
  %222 = ptrtoint ptr %key_len.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %222, i32 2)
  store i16 %221, ptr %key_len.1.i.i, align 1
  %key.1.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.i.i, i32 0, i32 5
  %223 = ptrtoint ptr %key.1.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 1, ptr %key.1.i.i, align 1
  %224 = ptrtoint ptr %wep_key_curr_index.i.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %wep_key_curr_index.i.i, align 8
  %226 = and i16 %225, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %226)
  %cmp23.1.i.i = icmp eq i16 %226, 1
  %spec.select109.i.i = zext i1 %cmp23.1.i.i to i8
  %227 = getelementptr %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.i.i, i32 0, i32 5, i32 1
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %spec.select109.i.i, ptr %227, align 1
  %arrayidx31.1.i.i = getelementptr %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.i.i, i32 0, i32 5, i32 2
  %key_material.1.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 1, i32 3
  %229 = ptrtoint ptr %key_length.1.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %key_length.1.i.i, align 4
  %231 = call ptr @memmove(ptr %arrayidx31.1.i.i, ptr %key_material.1.i.i, i32 %230)
  %232 = load i32, ptr %key_length.1.i.i, align 4
  %add44.1.i.i = add i32 %232, 12
  %233 = trunc i32 %add44.1.i.i to i16
  %conv49.1.i.i = add i16 %key_param_len.1.i, %233
  %add.ptr.1.i.i = getelementptr i8, ptr %key_param_set.addr.1.i.i, i32 %add44.1.i.i
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %key_param_len.2.i = phi i16 [ %key_param_len.1.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ], [ %conv49.1.i.i, %if.then.1.i.i ]
  %key_param_set.addr.1.1.i.i = phi ptr [ %key_param_set.addr.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ], [ %add.ptr.1.i.i, %if.then.1.i.i ]
  %key_length.2.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 2, i32 2
  %234 = ptrtoint ptr %key_length.2.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %key_length.2.i.i, align 4
  %236 = zext i32 %235 to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %235, label %for.inc.1.i.i.if.else56.i.i_crit_edge [
    i32 5, label %for.inc.1.i.i.if.then.2.i.i_crit_edge
    i32 13, label %for.inc.1.i.i.if.then.2.i.i_crit_edge47
    i32 0, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  ]

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

for.inc.1.i.i.if.then.2.i.i_crit_edge47:          ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.2.i.i

for.inc.1.i.i.if.then.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.2.i.i

for.inc.1.i.i.if.else56.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else56.i.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i.i.if.then.2.i.i_crit_edge, %for.inc.1.i.i.if.then.2.i.i_crit_edge47
  %237 = ptrtoint ptr %key_param_set.addr.1.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %237, i32 2)
  store i16 1, ptr %key_param_set.addr.1.1.i.i, align 1
  %238 = ptrtoint ptr %key_length.2.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %key_length.2.i.i, align 4
  %240 = trunc i32 %239 to i16
  %conv14.2.i.i = add i16 %240, 8
  %241 = tail call i16 @llvm.bswap.i16(i16 %conv14.2.i.i) #7
  %length.2.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.1.i.i, i32 0, i32 1
  %242 = ptrtoint ptr %length.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %242, i32 2)
  store i16 %241, ptr %length.2.i.i, align 1
  %key_type_id.2.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.1.i.i, i32 0, i32 2
  %243 = ptrtoint ptr %key_type_id.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %243, i32 2)
  store i16 0, ptr %key_type_id.2.i.i, align 1
  %key_info.2.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.1.i.i, i32 0, i32 3
  %244 = ptrtoint ptr %key_info.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %244, i32 2)
  store i16 1792, ptr %key_info.2.i.i, align 1
  %245 = ptrtoint ptr %key_length.2.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %key_length.2.i.i, align 4
  %conv19.2.i.i = trunc i32 %246 to i16
  %247 = tail call i16 @llvm.bswap.i16(i16 %conv19.2.i.i) #7
  %key_len.2.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.1.i.i, i32 0, i32 4
  %248 = ptrtoint ptr %key_len.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %248, i32 2)
  store i16 %247, ptr %key_len.2.i.i, align 1
  %key.2.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.1.i.i, i32 0, i32 5
  %249 = ptrtoint ptr %key.2.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 2, ptr %key.2.i.i, align 1
  %250 = ptrtoint ptr %wep_key_curr_index.i.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %wep_key_curr_index.i.i, align 8
  %252 = and i16 %251, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %252)
  %cmp23.2.i.i = icmp eq i16 %252, 2
  %spec.select110.i.i = zext i1 %cmp23.2.i.i to i8
  %253 = getelementptr %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.1.i.i, i32 0, i32 5, i32 1
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %spec.select110.i.i, ptr %253, align 1
  %arrayidx31.2.i.i = getelementptr %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.1.i.i, i32 0, i32 5, i32 2
  %key_material.2.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 2, i32 3
  %255 = ptrtoint ptr %key_length.2.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %key_length.2.i.i, align 4
  %257 = call ptr @memmove(ptr %arrayidx31.2.i.i, ptr %key_material.2.i.i, i32 %256)
  %258 = load i32, ptr %key_length.2.i.i, align 4
  %add44.2.i.i = add i32 %258, 12
  %259 = trunc i32 %add44.2.i.i to i16
  %conv49.2.i.i = add i16 %key_param_len.2.i, %259
  %add.ptr.2.i.i = getelementptr i8, ptr %key_param_set.addr.1.1.i.i, i32 %add44.2.i.i
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %key_param_len.3.i = phi i16 [ %key_param_len.2.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ], [ %conv49.2.i.i, %if.then.2.i.i ]
  %key_param_set.addr.1.2.i.i = phi ptr [ %key_param_set.addr.1.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ], [ %add.ptr.2.i.i, %if.then.2.i.i ]
  %key_length.3.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 3, i32 2
  %260 = ptrtoint ptr %key_length.3.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %key_length.3.i.i, align 4
  %262 = zext i32 %261 to i64
  call void @__sanitizer_cov_trace_switch(i64 %262, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %261, label %for.inc.2.i.i.if.else56.i.i_crit_edge [
    i32 5, label %for.inc.2.i.i.if.then.3.i.i_crit_edge
    i32 13, label %for.inc.2.i.i.if.then.3.i.i_crit_edge48
    i32 0, label %for.inc.2.i.i.mwifiex_set_keyparamset_wep.exit.i_crit_edge
  ]

for.inc.2.i.i.mwifiex_set_keyparamset_wep.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_set_keyparamset_wep.exit.i

for.inc.2.i.i.if.then.3.i.i_crit_edge48:          ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.3.i.i

for.inc.2.i.i.if.then.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.3.i.i

for.inc.2.i.i.if.else56.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else56.i.i

if.then.3.i.i:                                    ; preds = %for.inc.2.i.i.if.then.3.i.i_crit_edge, %for.inc.2.i.i.if.then.3.i.i_crit_edge48
  %263 = ptrtoint ptr %key_param_set.addr.1.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %263, i32 2)
  store i16 1, ptr %key_param_set.addr.1.2.i.i, align 1
  %264 = ptrtoint ptr %key_length.3.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %key_length.3.i.i, align 4
  %266 = trunc i32 %265 to i16
  %conv14.3.i.i = add i16 %266, 8
  %267 = tail call i16 @llvm.bswap.i16(i16 %conv14.3.i.i) #7
  %length.3.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.2.i.i, i32 0, i32 1
  %268 = ptrtoint ptr %length.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %268, i32 2)
  store i16 %267, ptr %length.3.i.i, align 1
  %key_type_id.3.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.2.i.i, i32 0, i32 2
  %269 = ptrtoint ptr %key_type_id.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %269, i32 2)
  store i16 0, ptr %key_type_id.3.i.i, align 1
  %key_info.3.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.2.i.i, i32 0, i32 3
  %270 = ptrtoint ptr %key_info.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %270, i32 2)
  store i16 1792, ptr %key_info.3.i.i, align 1
  %271 = ptrtoint ptr %key_length.3.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %key_length.3.i.i, align 4
  %conv19.3.i.i = trunc i32 %272 to i16
  %273 = tail call i16 @llvm.bswap.i16(i16 %conv19.3.i.i) #7
  %key_len.3.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.2.i.i, i32 0, i32 4
  %274 = ptrtoint ptr %key_len.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %274, i32 2)
  store i16 %273, ptr %key_len.3.i.i, align 1
  %key.3.i.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.2.i.i, i32 0, i32 5
  %275 = ptrtoint ptr %key.3.i.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 3, ptr %key.3.i.i, align 1
  %276 = ptrtoint ptr %wep_key_curr_index.i.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %wep_key_curr_index.i.i, align 8
  %278 = and i16 %277, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %278)
  %cmp23.3.i.i = icmp eq i16 %278, 3
  %spec.select111.i.i = zext i1 %cmp23.3.i.i to i8
  %279 = getelementptr %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.2.i.i, i32 0, i32 5, i32 1
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %spec.select111.i.i, ptr %279, align 1
  %arrayidx31.3.i.i = getelementptr %struct.mwifiex_ie_type_key_param_set, ptr %key_param_set.addr.1.2.i.i, i32 0, i32 5, i32 2
  %key_material.3.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 3, i32 3
  %281 = ptrtoint ptr %key_length.3.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %key_length.3.i.i, align 4
  %283 = call ptr @memmove(ptr %arrayidx31.3.i.i, ptr %key_material.3.i.i, i32 %282)
  %284 = load i32, ptr %key_length.3.i.i, align 4
  %285 = trunc i32 %284 to i16
  %286 = add i16 %key_param_len.3.i, 12
  %conv49.3.i.i = add i16 %286, %285
  br label %mwifiex_set_keyparamset_wep.exit.i

mwifiex_set_keyparamset_wep.exit.i:               ; preds = %if.then.3.i.i, %for.inc.2.i.i.mwifiex_set_keyparamset_wep.exit.i_crit_edge, %if.else56.i.i
  %key_param_len.4.i = phi i16 [ %key_param_len.0.i, %if.else56.i.i ], [ %key_param_len.3.i, %for.inc.2.i.i.mwifiex_set_keyparamset_wep.exit.i_crit_edge ], [ %conv49.3.i.i, %if.then.3.i.i ]
  %retval.0.i.i = phi i32 [ -1, %if.else56.i.i ], [ %261, %for.inc.2.i.i.mwifiex_set_keyparamset_wep.exit.i_crit_edge ], [ 0, %if.then.3.i.i ]
  %add5.i = add i16 %key_param_len.4.i, 10
  %287 = tail call i16 @llvm.bswap.i16(i16 %add5.i) #7
  %size7.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %288 = ptrtoint ptr %size7.i to i32
  call void @__asan_storeN_noabort(i32 %288, i32 2)
  store i16 %287, ptr %size7.i, align 1
  br label %return

if.else.i:                                        ; preds = %if.end.i
  %289 = call ptr @memset(ptr %key_param_set.i14, i32 0, i32 60)
  %is_wapi_key.i15 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 5
  %290 = ptrtoint ptr %is_wapi_key.i15 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %is_wapi_key.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool10.not.i = icmp eq i32 %291, 0
  br i1 %tobool10.not.i, label %if.end57.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.else.i
  %292 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %293, i32 noundef 1073741824, ptr noundef nonnull @.str.29) #7
  %key_type_id.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %294 = ptrtoint ptr %key_type_id.i to i32
  call void @__asan_storeN_noabort(i32 %294, i32 2)
  store i16 768, ptr %key_type_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd_oid)
  %cmp13.i = icmp eq i32 %cmd_oid, 1
  %spec.select.i16 = select i1 %cmp13.i, i16 1024, i16 0
  %295 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_storeN_noabort(i32 %296, i32 2)
  store i16 %spec.select.i16, ptr %295, align 1
  %key_index.i17 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 1
  %297 = ptrtoint ptr %key_index.i17 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %key_index.i17, align 4
  %conv19.i = trunc i32 %298 to i8
  %key.i18 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 3
  %299 = ptrtoint ptr %key.i18 to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %conv19.i, ptr %key.i18, align 1
  %wapi_key_on.i19 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 3
  %300 = ptrtoint ptr %wapi_key_on.i19 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %wapi_key_on.i19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %301)
  %tobool21.not.i = icmp eq i8 %301, 0
  %.sink317.i = zext i1 %tobool21.not.i to i8
  %302 = getelementptr [50 x i8], ptr %key.i18, i32 0, i32 1
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %.sink317.i, ptr %302, align 1
  %mac_addr.i20 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 4
  %304 = ptrtoint ptr %mac_addr.i20 to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %mac_addr.i20, align 2
  %add.ptr1.i.i21 = getelementptr %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 4, i32 2
  %306 = ptrtoint ptr %add.ptr1.i.i21 to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %add.ptr1.i.i21, align 2
  %and9.i.i22 = and i16 %307, %305
  %add.ptr3.i.i23 = getelementptr %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 4, i32 4
  %308 = ptrtoint ptr %add.ptr3.i.i23 to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %add.ptr3.i.i23, align 2
  %and510.i.i24 = and i16 %and9.i.i22, %309
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i24)
  %cmp.i.i25 = icmp eq i16 %and510.i.i24, -1
  br i1 %cmp.i.i25, label %if.else35.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %310 = or i16 %spec.select.i16, 512
  %311 = ptrtoint ptr %295 to i32
  call void @__asan_storeN_noabort(i32 %311, i32 2)
  store i16 %310, ptr %295, align 1
  br label %if.end42.i

if.else35.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %312 = or i16 %spec.select.i16, 256
  %313 = ptrtoint ptr %295 to i32
  call void @__asan_storeN_noabort(i32 %313, i32 2)
  store i16 %312, ptr %295, align 1
  %314 = ptrtoint ptr %wapi_key_on.i19 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 1, ptr %wapi_key_on.i19, align 1
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else35.i, %if.then31.i
  %315 = ptrtoint ptr %key_param_set.i14 to i32
  call void @__asan_storeN_noabort(i32 %315, i32 2)
  store i16 1, ptr %key_param_set.i14, align 1
  %key_len.i26 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 2
  %316 = ptrtoint ptr %key_len.i26 to i32
  call void @__asan_storeN_noabort(i32 %316, i32 2)
  store i16 12800, ptr %key_len.i26, align 1
  %arrayidx44.i = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 4
  %key_material45.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 3
  %key_len47.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 2
  %317 = ptrtoint ptr %key_len47.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %key_len47.i, align 4
  %319 = call ptr @memcpy(ptr %arrayidx44.i, ptr %key_material45.i, i32 %318)
  %320 = load i32, ptr %key_len47.i, align 4
  %add50.i = add i32 %320, 2
  %arrayidx51.i = getelementptr [50 x i8], ptr %key.i18, i32 0, i32 %add50.i
  %pn.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 6
  %321 = call ptr @memcpy(ptr %arrayidx51.i, ptr %pn.i, i32 16)
  %length.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %322 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %322, i32 2)
  store i16 14336, ptr %length.i, align 1
  %size56.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %323 = ptrtoint ptr %size56.i to i32
  call void @__asan_storeN_noabort(i32 %323, i32 2)
  store i16 17920, ptr %size56.i, align 1
  br label %return

if.end57.i:                                       ; preds = %if.else.i
  %key_len58.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 2
  %324 = ptrtoint ptr %key_len58.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %key_len58.i, align 4
  %326 = zext i32 %325 to i64
  call void @__sanitizer_cov_trace_switch(i64 %326, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %325, label %if.end57.i.if.end137.i_crit_edge [
    i32 16, label %if.then61.i
    i32 32, label %if.then114.i
  ]

if.end57.i.if.end137.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137.i

if.then61.i:                                      ; preds = %if.end57.i
  %is_igtk_key.i27 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 8
  %327 = ptrtoint ptr %is_igtk_key.i27 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %is_igtk_key.i27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %tobool62.not.i = icmp eq i8 %328, 0
  %329 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %priv, align 8
  br i1 %tobool62.not.i, label %if.else81.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %330, i32 noundef 16, ptr noundef nonnull @.str.30) #7
  %key_type_id66.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %331 = ptrtoint ptr %key_type_id66.i to i32
  call void @__asan_storeN_noabort(i32 %331, i32 2)
  store i16 1024, ptr %key_type_id66.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd_oid)
  %cmp67.i = icmp eq i32 %cmd_oid, 1
  %spec.select320.i = select i1 %cmp67.i, i16 1028, i16 4
  %332 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_storeN_noabort(i32 %333, i32 2)
  store i16 %spec.select320.i, ptr %332, align 1
  br label %if.end137.i

if.else81.i:                                      ; preds = %if.then61.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %330, i32 noundef 16, ptr noundef nonnull @.str.31) #7
  %key_type_id84.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %334 = ptrtoint ptr %key_type_id84.i to i32
  call void @__asan_storeN_noabort(i32 %334, i32 2)
  store i16 512, ptr %key_type_id84.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd_oid)
  %cmp85.i = icmp eq i32 %cmd_oid, 1
  %spec.select321.i = select i1 %cmp85.i, i16 1024, i16 0
  %335 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_storeN_noabort(i32 %336, i32 2)
  store i16 %spec.select321.i, ptr %335, align 1
  %key_index94.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 1
  %337 = ptrtoint ptr %key_index94.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %key_index94.i, align 4
  %and.i = and i32 %338, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool95.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool95.not.i, label %if.else102.i, label %if.then96.i

if.then96.i:                                      ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #9
  %339 = or i16 %spec.select321.i, 512
  %340 = ptrtoint ptr %335 to i32
  call void @__asan_storeN_noabort(i32 %340, i32 2)
  store i16 %339, ptr %335, align 1
  br label %if.end137.i

if.else102.i:                                     ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #9
  %341 = or i16 %spec.select321.i, 256
  %342 = ptrtoint ptr %335 to i32
  call void @__asan_storeN_noabort(i32 %342, i32 2)
  store i16 %341, ptr %335, align 1
  br label %if.end137.i

if.then114.i:                                     ; preds = %if.end57.i
  %343 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %344, i32 noundef 16, ptr noundef nonnull @.str.32) #7
  %key_type_id117.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %345 = ptrtoint ptr %key_type_id117.i to i32
  call void @__asan_storeN_noabort(i32 %345, i32 2)
  store i16 256, ptr %key_type_id117.i, align 1
  %key_info119.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %346 = ptrtoint ptr %key_info119.i to i32
  call void @__asan_storeN_noabort(i32 %346, i32 2)
  store i16 1024, ptr %key_info119.i, align 1
  %key_index120.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 1
  %347 = ptrtoint ptr %key_index120.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %key_index120.i, align 4
  %and121.i = and i32 %348, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i)
  %tobool122.not.i = icmp eq i32 %and121.i, 0
  br i1 %tobool122.not.i, label %if.else129.i, label %if.then123.i

if.then123.i:                                     ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #9
  %349 = ptrtoint ptr %key_info119.i to i32
  call void @__asan_storeN_noabort(i32 %349, i32 2)
  store i16 1536, ptr %key_info119.i, align 1
  br label %if.end137.i

if.else129.i:                                     ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #9
  %350 = ptrtoint ptr %key_info119.i to i32
  call void @__asan_storeN_noabort(i32 %350, i32 2)
  store i16 1280, ptr %key_info119.i, align 1
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.else129.i, %if.then123.i, %if.else102.i, %if.then96.i, %if.then63.i, %if.end57.i.if.end137.i_crit_edge
  %key_type_id139.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %351 = ptrtoint ptr %key_type_id139.i to i32
  call void @__asan_loadN_noabort(i32 %351, i32 2)
  %352 = load i16, ptr %key_type_id139.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %352)
  %tobool140.not.i = icmp eq i16 %352, 0
  br i1 %tobool140.not.i, label %if.end137.i.return_crit_edge, label %if.then141.i

if.end137.i.return_crit_edge:                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then141.i:                                     ; preds = %if.end137.i
  %353 = ptrtoint ptr %key_param_set.i14 to i32
  call void @__asan_storeN_noabort(i32 %353, i32 2)
  store i16 1, ptr %key_param_set.i14, align 1
  %354 = ptrtoint ptr %key_len58.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %key_len58.i, align 4
  %conv145.i = trunc i32 %355 to i16
  %356 = tail call i16 @llvm.bswap.i16(i16 %conv145.i) #7
  %key_len147.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 2
  %357 = ptrtoint ptr %key_len147.i to i32
  call void @__asan_storeN_noabort(i32 %357, i32 2)
  store i16 %356, ptr %key_len147.i, align 1
  %key149.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 3
  %key_material151.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 3
  %358 = ptrtoint ptr %key_len58.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %key_len58.i, align 4
  %360 = call ptr @memcpy(ptr %key149.i, ptr %key_material151.i, i32 %359)
  %361 = load i32, ptr %key_len58.i, align 4
  %362 = trunc i32 %361 to i16
  %conv158.i = add i16 %362, 6
  %363 = tail call i16 @llvm.bswap.i16(i16 %conv158.i) #7
  %length160.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %364 = ptrtoint ptr %length160.i to i32
  call void @__asan_storeN_noabort(i32 %364, i32 2)
  store i16 %363, ptr %length160.i, align 1
  %365 = ptrtoint ptr %key_len58.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %key_len58.i, align 4
  %367 = trunc i32 %366 to i16
  %conv166.i = add i16 %367, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %352)
  %cmp170.i = icmp eq i16 %352, 1024
  br i1 %cmp170.i, label %if.then172.i, label %if.then141.i.if.end193.i29_crit_edge

if.then141.i.if.end193.i29_crit_edge:             ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193.i29

if.then172.i:                                     ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #9
  %pn177.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 6
  %368 = ptrtoint ptr %pn177.i to i32
  call void @__asan_loadN_noabort(i32 %368, i32 8)
  %369 = load i64, ptr %pn177.i, align 4
  %370 = ptrtoint ptr %key149.i to i32
  call void @__asan_storeN_noabort(i32 %370, i32 8)
  store i64 %369, ptr %key149.i, align 1
  %key179.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 7
  %371 = call ptr @memcpy(ptr %key179.i, ptr %key_material151.i, i32 16)
  %372 = ptrtoint ptr %key_len147.i to i32
  call void @__asan_storeN_noabort(i32 %372, i32 2)
  store i16 6144, ptr %key_len147.i, align 1
  %373 = ptrtoint ptr %length160.i to i32
  call void @__asan_storeN_noabort(i32 %373, i32 2)
  store i16 7680, ptr %length160.i, align 1
  br label %if.end193.i29

if.end193.i29:                                    ; preds = %if.then172.i, %if.then141.i.if.end193.i29_crit_edge
  %key_param_len.5.i = phi i16 [ 34, %if.then172.i ], [ %conv166.i, %if.then141.i.if.end193.i29_crit_edge ]
  %add195.i = add i16 %key_param_len.5.i, 10
  %374 = tail call i16 @llvm.bswap.i16(i16 %add195.i) #7
  %size197.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %375 = ptrtoint ptr %size197.i to i32
  call void @__asan_storeN_noabort(i32 %375, i32 2)
  store i16 %374, ptr %size197.i, align 1
  %bss_role.i28 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %376 = ptrtoint ptr %bss_role.i28 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %bss_role.i28, align 1
  %378 = and i8 %377, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %378)
  %cmp200.not.i = icmp eq i8 %378, 0
  br i1 %cmp200.not.i, label %if.end193.i29.if.end221.i_crit_edge, label %if.then202.i

if.end193.i29.if.end221.i_crit_edge:              ; preds = %if.end193.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end221.i

if.then202.i:                                     ; preds = %if.end193.i29
  call void @__sanitizer_cov_trace_pc() #9
  %conv204.i = zext i16 %key_param_len.5.i to i32
  %add.ptr.i = getelementptr i8, ptr %key_param_set.i14, i32 %conv204.i
  %379 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %379, i32 2)
  store i16 8193, ptr %add.ptr.i, align 1
  %len.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %add.ptr.i, i32 0, i32 1
  %380 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %380, i32 2)
  store i16 1536, ptr %len.i, align 1
  %mac_addr207.i = getelementptr inbounds %struct.host_cmd_tlv_mac_addr, ptr %add.ptr.i, i32 0, i32 1
  %mac_addr209.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %enc_key, i32 0, i32 4
  %381 = call ptr @memcpy(ptr %mac_addr207.i, ptr %mac_addr209.i, i32 6)
  %add214.i = add i16 %key_param_len.5.i, 20
  %.pre.i = tail call i16 @llvm.bswap.i16(i16 %add214.i) #7
  br label %if.end221.i

if.end221.i:                                      ; preds = %if.then202.i, %if.end193.i29.if.end221.i_crit_edge
  %.pre-phi.i = phi i16 [ %374, %if.end193.i29.if.end221.i_crit_edge ], [ %.pre.i, %if.then202.i ]
  %382 = ptrtoint ptr %size197.i to i32
  call void @__asan_storeN_noabort(i32 %382, i32 2)
  store i16 %.pre-phi.i, ptr %size197.i, align 1
  br label %return

return:                                           ; preds = %if.end221.i, %if.end137.i.return_crit_edge, %if.end42.i, %mwifiex_set_keyparamset_wep.exit.i, %if.then.i12, %if.end215.i, %mwifiex_set_aes_key_v2.exit, %if.end193.i.return_crit_edge, %if.end149.i, %if.end97.i, %if.then23.i, %if.then.i
  %retval.0 = phi i32 [ 0, %if.then.i ], [ 0, %if.then23.i ], [ 0, %if.end97.i ], [ 0, %if.end149.i ], [ 0, %if.end193.i.return_crit_edge ], [ 0, %mwifiex_set_aes_key_v2.exit ], [ 0, %if.end215.i ], [ 0, %if.then.i12 ], [ 0, %if.end42.i ], [ %retval.0.i.i, %mwifiex_set_keyparamset_wep.exit.i ], [ 0, %if.end221.i ], [ 0, %if.end137.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_cmd_802_11d_domain_info(ptr nocapture noundef readonly %priv, ptr nocapture noundef %cmd, i16 noundef zeroext %cmd_action) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %domain2 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %no_of_triplet3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 75, i32 1
  %2 = ptrtoint ptr %no_of_triplet3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_of_triplet3, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.34, i32 noundef %conv) #7
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 23296, ptr %cmd, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %cmd_action)
  %6 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %params, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd_action)
  %cmp = icmp eq i16 %cmd_action, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %domain_reg = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 75
  %7 = ptrtoint ptr %domain2 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 1792, ptr %domain2, align 1
  %country_code = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %country_code, ptr %domain_reg, i32 3)
  %mul = mul nuw nsw i32 %conv, 3
  %9 = trunc i32 %mul to i16
  %conv10 = add nuw nsw i16 %9, 3
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv10)
  %len = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %triplet = getelementptr inbounds %struct.mwifiex_ietypes_domain_param_set, ptr %domain2, i32 0, i32 2
  %triplet15 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 75, i32 2
  %12 = call ptr @memcpy(ptr %triplet, ptr %triplet15, i32 %mul)
  %add24 = add nuw nsw i16 %9, 17
  %13 = tail call i16 @llvm.bswap.i16(i16 %add24)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi i16 [ %13, %if.then12 ], [ 2560, %entry.cleanup_crit_edge ], [ 2560, %if.end.cleanup_crit_edge ]
  %size26 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %14 = ptrtoint ptr %size26 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %.sink, ptr %size26, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_recfg_tx_buf(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_amsdu_aggr_ctrl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_11n_cfg(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_802_11_scan_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_cmd_pcie_host_spec(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %cmd, i16 noundef zeroext %action) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 -1536, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 13312, ptr %size, align 1
  %result = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %action)
  %cmp.not = icmp eq i16 %action, 1
  %6 = call ptr @memset(ptr %result, i32 0, i32 46)
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %txbd_ring_pbase = getelementptr inbounds %struct.pcie_service_card, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %txbd_ring_pbase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %txbd_ring_pbase, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %params, align 1
  %txbd_addr_hi = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %11 = ptrtoint ptr %txbd_addr_hi to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %txbd_addr_hi, align 1
  %txbd_count = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %txbd_count to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 536870912, ptr %txbd_count, align 1
  %rxbd_ring_pbase = getelementptr inbounds %struct.pcie_service_card, ptr %3, i32 0, i32 16
  %13 = ptrtoint ptr %rxbd_ring_pbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rxbd_ring_pbase, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %rxbd_addr_lo = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %rxbd_addr_lo to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %rxbd_addr_lo, align 1
  %rxbd_addr_hi = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %rxbd_addr_hi to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %rxbd_addr_hi, align 1
  %rxbd_count = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 7
  %18 = ptrtoint ptr %rxbd_count to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 536870912, ptr %rxbd_count, align 1
  %evtbd_ring_pbase = getelementptr inbounds %struct.pcie_service_card, ptr %3, i32 0, i32 23
  %19 = ptrtoint ptr %evtbd_ring_pbase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %evtbd_ring_pbase, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %evtbd_addr_lo = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 4
  %22 = ptrtoint ptr %evtbd_addr_lo to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %evtbd_addr_lo, align 1
  %evtbd_addr_hi = getelementptr inbounds %struct.host_cmd_ds_pcie_details, ptr %params, i32 0, i32 7
  %23 = ptrtoint ptr %evtbd_addr_hi to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %evtbd_addr_hi, align 1
  %evtbd_count = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %evtbd_count to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 134217728, ptr %evtbd_count, align 1
  %sleep_cookie_vbase = getelementptr inbounds %struct.pcie_service_card, ptr %3, i32 0, i32 28
  %25 = ptrtoint ptr %sleep_cookie_vbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sleep_cookie_vbase, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sleep_cookie_pbase = getelementptr inbounds %struct.pcie_service_card, ptr %3, i32 0, i32 29
  %27 = ptrtoint ptr %sleep_cookie_pbase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sleep_cookie_pbase, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %sleep_cookie_addr_lo = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 4
  %30 = ptrtoint ptr %sleep_cookie_addr_lo to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %sleep_cookie_addr_lo, align 1
  %sleep_cookie_addr_hi = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 8
  %31 = ptrtoint ptr %sleep_cookie_addr_hi to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 0, ptr %sleep_cookie_addr_hi, align 1
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %33, i32 noundef 1073741824, ptr noundef nonnull @.str.35, i32 noundef %29) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cmd_802_11_subsc_evt(ptr nocapture noundef readonly %priv, ptr nocapture noundef %cmd, ptr nocapture noundef readonly %subsc_evt_cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 29952, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 3072, ptr %size, align 1
  %2 = ptrtoint ptr %subsc_evt_cfg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsc_evt_cfg, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %params, align 1
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %8 = ptrtoint ptr %subsc_evt_cfg to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsc_evt_cfg, align 2
  %conv = zext i16 %9 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 16, ptr noundef nonnull @.str.36, i32 noundef %conv) #7
  %10 = ptrtoint ptr %subsc_evt_cfg to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subsc_evt_cfg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp = icmp eq i16 %11, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %events = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %subsc_evt_cfg, i32 0, i32 1
  %12 = ptrtoint ptr %events to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %events, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %events6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %events6 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %events6, align 1
  %16 = ptrtoint ptr %events to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %events, align 2
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %conv9 = zext i16 %17 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 16, ptr noundef nonnull @.str.37, i32 noundef %conv9) #7
  %20 = ptrtoint ptr %subsc_evt_cfg to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %subsc_evt_cfg, align 2
  %22 = and i16 %21, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %22)
  %switch = icmp eq i16 %22, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp19 = icmp eq i16 %17, 0
  %or.cond = select i1 %switch, i1 %cmp19, i1 false
  br i1 %or.cond, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %24, i32 noundef 4, ptr noundef nonnull @.str.38) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %21)
  %cmp26 = icmp eq i16 %21, 3
  br i1 %cmp26, label %if.end23.cleanup_crit_edge, label %if.end29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %add.ptr = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %and = and i32 %conv9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end29.if.end45_crit_edge, label %if.then31

if.end29.if.end45_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 1025, ptr %add.ptr, align 1
  %len = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %26 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 512, ptr %len, align 1
  %bcn_l_rssi_cfg = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %subsc_evt_cfg, i32 0, i32 2
  %27 = ptrtoint ptr %bcn_l_rssi_cfg to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bcn_l_rssi_cfg, align 2
  %abs_value33 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %abs_value33 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %abs_value33, align 1
  %evt_freq = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %subsc_evt_cfg, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %evt_freq to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %evt_freq, align 1
  %evt_freq35 = getelementptr inbounds %struct.mwifiex_ie_types_rssi_threshold, ptr %add.ptr, i32 0, i32 2
  %32 = ptrtoint ptr %evt_freq35 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %evt_freq35, align 1
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 8
  %35 = load i8, ptr %bcn_l_rssi_cfg, align 2
  %conv39 = zext i8 %35 to i32
  %36 = load i8, ptr %evt_freq, align 1
  %conv42 = zext i8 %36 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %34, i32 noundef 32, ptr noundef nonnull @.str.39, i32 noundef %conv39, i32 noundef %conv42) #7
  %add.ptr43 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %size, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #7
  %add.i = add i16 %39, 6
  %40 = tail call i16 @llvm.bswap.i16(i16 %add.i) #7
  %41 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %size, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then31, %if.end29.if.end45_crit_edge
  %pos.0 = phi ptr [ %add.ptr43, %if.then31 ], [ %add.ptr, %if.end29.if.end45_crit_edge ]
  %and47 = and i32 %conv9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end45.cleanup_crit_edge, label %if.then49

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %pos.0 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 5633, ptr %pos.0, align 1
  %len53 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %pos.0, i32 0, i32 1
  %43 = ptrtoint ptr %len53 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 512, ptr %len53, align 1
  %bcn_h_rssi_cfg = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %subsc_evt_cfg, i32 0, i32 3
  %44 = ptrtoint ptr %bcn_h_rssi_cfg to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bcn_h_rssi_cfg, align 2
  %abs_value55 = getelementptr inbounds %struct.mwifiex_ie_types_rssi_threshold, ptr %pos.0, i32 0, i32 1
  %46 = ptrtoint ptr %abs_value55 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %abs_value55, align 1
  %evt_freq57 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %subsc_evt_cfg, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %evt_freq57 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %evt_freq57, align 1
  %evt_freq58 = getelementptr inbounds %struct.mwifiex_ie_types_rssi_threshold, ptr %pos.0, i32 0, i32 2
  %49 = ptrtoint ptr %evt_freq58 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %evt_freq58, align 1
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 8
  %52 = load i8, ptr %bcn_h_rssi_cfg, align 2
  %conv62 = zext i8 %52 to i32
  %53 = load i8, ptr %evt_freq57, align 1
  %conv65 = zext i8 %53 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %51, i32 noundef 32, ptr noundef nonnull @.str.40, i32 noundef %conv62, i32 noundef %conv65) #7
  %54 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %size, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #7
  %add.i110 = add i16 %56, 6
  %57 = tail call i16 @llvm.bswap.i16(i16 %add.i110) #7
  %58 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %57, ptr %size, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end45.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then21 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %if.then49 ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cmd_mef_cfg(ptr noundef %cmd, ptr nocapture noundef readonly %mef) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 -26112, ptr %cmd, align 1
  %1 = ptrtoint ptr %mef to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mef, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %params, align 1
  %num_entries = getelementptr inbounds %struct.mwifiex_ds_mef_cfg, ptr %mef, i32 0, i32 1
  %5 = ptrtoint ptr %num_entries to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_entries, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %num_entries2 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %8 = ptrtoint ptr %num_entries2 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %num_entries2, align 1
  %add.ptr = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %9 = ptrtoint ptr %num_entries to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp12.not = icmp eq i16 %10, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = ptrtoint ptr %add.ptr to i32
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mef_entry6 = getelementptr inbounds %struct.mwifiex_ds_mef_cfg, ptr %mef, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end.for.body_crit_edge ]
  %pos.013 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %pos.1.ph, %if.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %mef_entry6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mef_entry6, align 4
  %arrayidx = getelementptr %struct.mwifiex_mef_entry, ptr %12, i32 %indvars.iv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 2
  %15 = ptrtoint ptr %pos.013 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %pos.013, align 1
  %16 = load ptr, ptr %mef_entry6, align 4
  %action = getelementptr %struct.mwifiex_mef_entry, ptr %16, i32 %indvars.iv, i32 1
  %17 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %action, align 1
  %action11 = getelementptr inbounds %struct.mwifiex_fw_mef_entry, ptr %pos.013, i32 0, i32 1
  %19 = ptrtoint ptr %action11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %action11, align 1
  %add.ptr12 = getelementptr i8, ptr %pos.013, i32 4
  %20 = load ptr, ptr %mef_entry6, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr12 to i32
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end21.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end.loopexit, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body
  %stack_ptr.03.i = phi ptr [ %add.ptr12, %for.body ], [ %stack_ptr.1.i, %for.cond.i.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %filt_type.i = getelementptr %struct.mwifiex_mef_entry, ptr %20, i32 %indvars.iv, i32 2, i32 %i.02.i, i32 3
  %21 = ptrtoint ptr %filt_type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %filt_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %for.body.i.if.end_crit_edge, label %if.end.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre15 = ptrtoint ptr %stack_ptr.03.i to i32
  %.pre16 = sub i32 %.pre15, %sub.ptr.rhs.cast.i
  br label %if.end

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.mwifiex_mef_entry, ptr %20, i32 %indvars.iv, i32 2, i32 %i.02.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %24 to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #7
  %26 = ptrtoint ptr %stack_ptr.03.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %stack_ptr.03.i, align 1
  %add.ptr.i = getelementptr i8, ptr %stack_ptr.03.i, i32 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %add.ptr.i, align 1
  %add.ptr3.i = getelementptr i8, ptr %stack_ptr.03.i, i32 5
  %byte_seq.i = getelementptr %struct.mwifiex_mef_entry, ptr %20, i32 %indvars.iv, i32 2, i32 %i.02.i, i32 2
  %arrayidx4.i = getelementptr %struct.mwifiex_mef_entry, ptr %20, i32 %indvars.iv, i32 2, i32 %i.02.i, i32 2, i32 6
  %28 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx4.i, align 2
  %conv5.i = sext i8 %29 to i32
  %30 = call ptr @memcpy(ptr %add.ptr3.i, ptr %byte_seq.i, i32 %conv5.i)
  %add.ptr8.i = getelementptr i8, ptr %add.ptr3.i, i32 %conv5.i
  %31 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %add.ptr8.i, align 1
  %add.ptr10.i = getelementptr i8, ptr %add.ptr8.i, i32 1
  %32 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %add.ptr10.i, align 1
  %add.ptr11.i = getelementptr i8, ptr %add.ptr10.i, i32 1
  %offset.i = getelementptr %struct.mwifiex_mef_entry, ptr %20, i32 %indvars.iv, i32 2, i32 %i.02.i, i32 1
  %33 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %offset.i, align 2
  %conv12.i = zext i16 %34 to i32
  %35 = tail call i32 @llvm.bswap.i32(i32 %conv12.i) #7
  %36 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %add.ptr11.i, align 1
  %add.ptr13.i = getelementptr i8, ptr %add.ptr11.i, i32 4
  %37 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %add.ptr13.i, align 1
  %add.ptr14.i = getelementptr i8, ptr %add.ptr13.i, i32 1
  %38 = ptrtoint ptr %filt_type.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %filt_type.i, align 1
  %40 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %add.ptr14.i, align 1
  %add.ptr16.i = getelementptr i8, ptr %add.ptr14.i, i32 1
  %filt_action.i = getelementptr %struct.mwifiex_mef_entry, ptr %20, i32 %indvars.iv, i32 2, i32 %i.02.i, i32 4
  %41 = ptrtoint ptr %filt_action.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %filt_action.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool17.not.i = icmp eq i8 %42, 0
  br i1 %tobool17.not.i, label %if.end.i.if.end21.i_crit_edge, label %if.then18.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %add.ptr16.i, align 1
  %add.ptr20.i = getelementptr i8, ptr %add.ptr16.i, i32 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end.i.if.end21.i_crit_edge
  %stack_ptr.1.i = phi ptr [ %add.ptr20.i, %if.then18.i ], [ %add.ptr16.i, %if.end.i.if.end21.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %stack_ptr.1.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.ptr.sub.i)
  %cmp22.i = icmp sgt i32 %sub.ptr.sub.i, 100
  br i1 %cmp22.i, label %if.end21.i.cleanup_crit_edge, label %for.cond.i

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.loopexit:                                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast.i.le = ptrtoint ptr %stack_ptr.1.i to i32
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %for.body.i.if.end_crit_edge
  %sub.ptr.sub.pre-phi = phi i32 [ %.pre16, %for.body.i.if.end_crit_edge ], [ %sub.ptr.sub.i, %if.end.loopexit ]
  %sub.ptr.lhs.cast.pre-phi = phi i32 [ %.pre15, %for.body.i.if.end_crit_edge ], [ %sub.ptr.lhs.cast.i.le, %if.end.loopexit ]
  %pos.1.ph = phi ptr [ %stack_ptr.03.i, %for.body.i.if.end_crit_edge ], [ %stack_ptr.1.i, %if.end.loopexit ]
  %conv16 = trunc i32 %sub.ptr.sub.pre-phi to i16
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv16)
  %exprsize = getelementptr inbounds %struct.mwifiex_fw_mef_entry, ptr %pos.013, i32 0, i32 2
  %45 = ptrtoint ptr %exprsize to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %exprsize, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %46 = ptrtoint ptr %num_entries to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_entries, align 4
  %48 = zext i16 %47 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %48
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %sub.ptr.lhs.cast17.pre-phi = phi i32 [ %.pre, %entry.for.end_crit_edge ], [ %sub.ptr.lhs.cast.pre-phi, %if.end.for.end_crit_edge ]
  %sub.ptr.rhs.cast18 = ptrtoint ptr %params to i32
  %sub.ptr.sub19 = sub i32 %sub.ptr.lhs.cast17.pre-phi, %sub.ptr.rhs.cast18
  %49 = trunc i32 %sub.ptr.sub19 to i16
  %conv22 = add i16 %49, 8
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %51 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %50, ptr %size, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end21.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %if.end21.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_cmd_coalesce_cfg(ptr nocapture noundef %cmd, i16 noundef zeroext %cmd_action, ptr nocapture noundef readonly %data_buf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 2561, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 2048, ptr %size, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %cmd_action)
  %3 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %params, align 1
  %4 = ptrtoint ptr %data_buf to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data_buf, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %num_of_rules1 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %num_of_rules1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %num_of_rules1, align 1
  %8 = ptrtoint ptr %data_buf to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data_buf, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp6.not = icmp eq i16 %9, 0
  br i1 %cmp6.not, label %entry.for.end79_crit_edge, label %for.body.preheader

entry.for.end79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end79

for.body.preheader:                               ; preds = %entry
  %rule2 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.preheader
  %indvars.iv9 = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next10, %for.end.for.body_crit_edge ]
  %rule.08 = phi ptr [ %rule2, %for.body.preheader ], [ %add.ptr, %for.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %rule.08 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 -26111, ptr %rule.08, align 1
  %arrayidx = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %data_buf, i32 0, i32 1, i32 %indvars.iv9
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %max_coalescing_delay7 = getelementptr inbounds %struct.coalesce_receive_filt_rule, ptr %rule.08, i32 0, i32 3
  %14 = ptrtoint ptr %max_coalescing_delay7 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %max_coalescing_delay7, align 1
  %pkt_type = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %data_buf, i32 0, i32 1, i32 %indvars.iv9, i32 2
  %15 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pkt_type, align 1
  %pkt_type11 = getelementptr inbounds %struct.coalesce_receive_filt_rule, ptr %rule.08, i32 0, i32 2
  %17 = ptrtoint ptr %pkt_type11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %pkt_type11, align 1
  %num_of_fields = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %data_buf, i32 0, i32 1, i32 %indvars.iv9, i32 1
  %18 = ptrtoint ptr %num_of_fields to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_of_fields, align 2
  %num_of_fields15 = getelementptr inbounds %struct.coalesce_receive_filt_rule, ptr %rule.08, i32 0, i32 1
  %20 = ptrtoint ptr %num_of_fields15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %num_of_fields15, align 1
  %params16 = getelementptr inbounds %struct.coalesce_receive_filt_rule, ptr %rule.08, i32 0, i32 4
  %21 = load i8, ptr %num_of_fields, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp252.not = icmp eq i8 %21, 0
  br i1 %cmp252.not, label %for.body.for.end_crit_edge, label %for.body.for.body27_crit_edge

for.body.for.body27_crit_edge:                    ; preds = %for.body
  br label %for.body27

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.body.for.body27_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body27.for.body27_crit_edge ], [ 0, %for.body.for.body27_crit_edge ]
  %length.05 = phi i16 [ %add, %for.body27.for.body27_crit_edge ], [ 0, %for.body.for.body27_crit_edge ]
  %param.03 = phi ptr [ %incdec.ptr, %for.body27.for.body27_crit_edge ], [ %params16, %for.body.for.body27_crit_edge ]
  %arrayidx33 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %data_buf, i32 0, i32 1, i32 %indvars.iv9, i32 3, i32 %indvars.iv
  %22 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx33, align 2
  %24 = ptrtoint ptr %param.03 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %param.03, align 2
  %operand_len = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %data_buf, i32 0, i32 1, i32 %indvars.iv9, i32 3, i32 %indvars.iv, i32 1
  %25 = ptrtoint ptr %operand_len to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %operand_len, align 1
  %operand_len41 = getelementptr inbounds %struct.coalesce_filt_field_param, ptr %param.03, i32 0, i32 1
  %27 = ptrtoint ptr %operand_len41 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %operand_len41, align 1
  %offset = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %data_buf, i32 0, i32 1, i32 %indvars.iv9, i32 3, i32 %indvars.iv, i32 2
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %offset, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %offset48 = getelementptr inbounds %struct.coalesce_filt_field_param, ptr %param.03, i32 0, i32 2
  %31 = ptrtoint ptr %offset48 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %offset48, align 2
  %operand_byte_stream = getelementptr inbounds %struct.coalesce_filt_field_param, ptr %param.03, i32 0, i32 3
  %operand_byte_stream56 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %data_buf, i32 0, i32 1, i32 %indvars.iv9, i32 3, i32 %indvars.iv, i32 3
  %conv59 = zext i8 %26 to i32
  %32 = call ptr @memcpy(ptr %operand_byte_stream, ptr %operand_byte_stream56, i32 %conv59)
  %add = add nuw nsw i16 %length.05, 8
  %incdec.ptr = getelementptr %struct.coalesce_filt_field_param, ptr %param.03, i32 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %33 = ptrtoint ptr %num_of_fields to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_of_fields, align 2
  %35 = zext i8 %34 to i32
  %cmp25 = icmp ult i32 %indvars.iv.next, %35
  br i1 %cmp25, label %for.body27.for.body27_crit_edge, label %for.body27.for.end_crit_edge

for.body27.for.end_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27

for.end:                                          ; preds = %for.body27.for.end_crit_edge, %for.body.for.end_crit_edge
  %length.0.lcssa = phi i16 [ 0, %for.body.for.end_crit_edge ], [ %add, %for.body27.for.end_crit_edge ]
  %conv62 = zext i16 %length.0.lcssa to i32
  %add65 = or i16 %length.0.lcssa, 4
  %36 = tail call i16 @llvm.bswap.i16(i16 %add65)
  %len = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %rule.08, i32 0, i32 1
  %37 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %len, align 1
  %add72 = add i16 %length.0.lcssa, 8
  %38 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %size, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #7
  %add.i = add i16 %add72, %40
  %41 = tail call i16 @llvm.bswap.i16(i16 %add.i) #7
  %42 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %size, align 1
  %add.ptr = getelementptr i8, ptr %params16, i32 %conv62
  %indvars.iv.next10 = add nuw nsw i32 %indvars.iv9, 1
  %43 = ptrtoint ptr %data_buf to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %data_buf, align 2
  %45 = zext i16 %44 to i32
  %cmp = icmp ult i32 %indvars.iv.next10, %45
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end79_crit_edge

for.end.for.end79_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end79

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end79:                                        ; preds = %for.end.for.end79_crit_edge, %entry.for.end79_crit_edge
  %46 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %size, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #7
  %add.i1 = add i16 %48, 4
  %49 = tail call i16 @llvm.bswap.i16(i16 %add.i1) #7
  %50 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %49, ptr %size, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cmd_tdls_oper(ptr nocapture noundef readonly %priv, ptr nocapture noundef %cmd, ptr noundef %data_buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %sta_params = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 140
  %0 = ptrtoint ptr %sta_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sta_params, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 8705, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 4608, ptr %size, align 1
  %reason = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %reason to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 0, ptr %reason, align 1
  %peer_mac = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %peer_mac3 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, ptr %data_buf, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %peer_mac, ptr %peer_mac3, i32 6)
  %add.ptr = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %data_buf to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data_buf, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %7, label %sw.default [
    i16 0, label %sw.bb
    i16 2, label %sw.bb6
    i16 3, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 0, ptr %params, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 256, ptr %params, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %11 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 512, ptr %params, align 1
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %13, i32 noundef 4, ptr noundef nonnull @.str.41, ptr noundef %peer_mac3) #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb8
  %capability = getelementptr inbounds %struct.station_parameters, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %capability, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #7
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %add.ptr, align 1
  %add.ptr15 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 11776, ptr %add.ptr15, align 1
  %len = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 256, ptr %len, align 1
  %qos_info = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 5
  %20 = ptrtoint ptr %qos_info to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %qos_info, align 1
  %ht_capa = getelementptr inbounds %struct.station_parameters, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %ht_capa to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ht_capa, align 4
  %tobool20.not = icmp eq ptr %22, null
  br i1 %tobool20.not, label %if.end.if.end32_crit_edge, label %if.then21

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr23 = getelementptr i8, ptr %add.ptr, i32 7
  %23 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 11520, ptr %add.ptr23, align 1
  %len27 = getelementptr i8, ptr %add.ptr, i32 9
  %24 = ptrtoint ptr %len27 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 6656, ptr %len27, align 1
  %ht_cap = getelementptr i8, ptr %add.ptr, i32 11
  %25 = ptrtoint ptr %ht_capa to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ht_capa, align 4
  %27 = call ptr @memcpy(ptr %ht_cap, ptr %26, i32 26)
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %if.end.if.end32_crit_edge
  %config_len.0 = phi i16 [ 37, %if.then21 ], [ 7, %if.end.if.end32_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %tobool33.not = icmp eq ptr %29, null
  br i1 %tobool33.not, label %if.end32.if.end55_crit_edge, label %land.lhs.true

if.end32.if.end55_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end32
  %supported_rates_len = getelementptr inbounds %struct.station_parameters, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %supported_rates_len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %supported_rates_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool35.not = icmp eq i8 %31, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end55_crit_edge, label %if.then36

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %conv37 = zext i16 %config_len.0 to i32
  %add.ptr38 = getelementptr i8, ptr %add.ptr, i32 %conv37
  %32 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 256, ptr %add.ptr38, align 1
  %33 = ptrtoint ptr %supported_rates_len to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %supported_rates_len, align 2
  %conv42 = zext i8 %34 to i16
  %35 = shl nuw i16 %conv42, 8
  %len44 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %add.ptr38, i32 0, i32 1
  %36 = ptrtoint ptr %len44 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %35, ptr %len44, align 1
  %rates = getelementptr inbounds %struct.host_cmd_tlv_rates, ptr %add.ptr38, i32 0, i32 1
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %39 = load i8, ptr %supported_rates_len, align 2
  %conv48 = zext i8 %39 to i32
  %40 = call ptr @memcpy(ptr %rates, ptr %38, i32 %conv48)
  %41 = load i8, ptr %supported_rates_len, align 2
  %conv50 = zext i8 %41 to i16
  %add51 = add nuw nsw i16 %config_len.0, 4
  %add53 = add nuw nsw i16 %add51, %conv50
  br label %if.end55

if.end55:                                         ; preds = %if.then36, %land.lhs.true.if.end55_crit_edge, %if.end32.if.end55_crit_edge
  %config_len.1 = phi i16 [ %add53, %if.then36 ], [ %config_len.0, %land.lhs.true.if.end55_crit_edge ], [ %config_len.0, %if.end32.if.end55_crit_edge ]
  %ext_capab = getelementptr inbounds %struct.station_parameters, ptr %1, i32 0, i32 18
  %42 = ptrtoint ptr %ext_capab to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ext_capab, align 4
  %tobool56.not = icmp eq ptr %43, null
  br i1 %tobool56.not, label %if.end55.if.end80_crit_edge, label %land.lhs.true57

if.end55.if.end80_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

land.lhs.true57:                                  ; preds = %if.end55
  %ext_capab_len = getelementptr inbounds %struct.station_parameters, ptr %1, i32 0, i32 19
  %44 = ptrtoint ptr %ext_capab_len to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ext_capab_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool59.not = icmp eq i8 %45, 0
  br i1 %tobool59.not, label %land.lhs.true57.if.end80_crit_edge, label %if.then60

land.lhs.true57.if.end80_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then60:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  %conv61 = zext i16 %config_len.1 to i32
  %add.ptr62 = getelementptr i8, ptr %add.ptr, i32 %conv61
  %46 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 32512, ptr %add.ptr62, align 1
  %47 = ptrtoint ptr %ext_capab_len to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ext_capab_len, align 4
  %conv66 = zext i8 %48 to i16
  %49 = shl nuw i16 %conv66, 8
  %len68 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %add.ptr62, i32 0, i32 1
  %50 = ptrtoint ptr %len68 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %49, ptr %len68, align 1
  %ext_capab69 = getelementptr inbounds %struct.mwifiex_ie_types_extcap, ptr %add.ptr62, i32 0, i32 1
  %51 = ptrtoint ptr %ext_capab to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ext_capab, align 4
  %53 = load i8, ptr %ext_capab_len, align 4
  %conv73 = zext i8 %53 to i32
  %54 = call ptr @memcpy(ptr %ext_capab69, ptr %52, i32 %conv73)
  %55 = load i8, ptr %ext_capab_len, align 4
  %conv75 = zext i8 %55 to i16
  %add76 = add nuw nsw i16 %config_len.1, 4
  %add78 = add nuw nsw i16 %add76, %conv75
  br label %if.end80

if.end80:                                         ; preds = %if.then60, %land.lhs.true57.if.end80_crit_edge, %if.end55.if.end80_crit_edge
  %config_len.2 = phi i16 [ %add78, %if.then60 ], [ %config_len.1, %land.lhs.true57.if.end80_crit_edge ], [ %config_len.1, %if.end55.if.end80_crit_edge ]
  %vht_capa = getelementptr inbounds %struct.station_parameters, ptr %1, i32 0, i32 13
  %56 = ptrtoint ptr %vht_capa to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vht_capa, align 4
  %tobool81.not = icmp eq ptr %57, null
  br i1 %tobool81.not, label %if.end80.if.end93_crit_edge, label %if.then82

if.end80.if.end93_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %conv83 = zext i16 %config_len.2 to i32
  %add.ptr84 = getelementptr i8, ptr %add.ptr, i32 %conv83
  %58 = ptrtoint ptr %add.ptr84 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 -16640, ptr %add.ptr84, align 1
  %len88 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %add.ptr84, i32 0, i32 1
  %59 = ptrtoint ptr %len88 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 3072, ptr %len88, align 1
  %vht_cap = getelementptr inbounds %struct.mwifiex_ie_types_vhtcap, ptr %add.ptr84, i32 0, i32 1
  %60 = ptrtoint ptr %vht_capa to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vht_capa, align 4
  %62 = call ptr @memcpy(ptr %vht_cap, ptr %61, i32 12)
  %add91 = add nuw nsw i16 %config_len.2, 16
  br label %if.end93

if.end93:                                         ; preds = %if.then82, %if.end80.if.end93_crit_edge
  %config_len.3 = phi i16 [ %add91, %if.then82 ], [ %config_len.2, %if.end80.if.end93_crit_edge ]
  %aid94 = getelementptr inbounds %struct.station_parameters, ptr %1, i32 0, i32 6
  %63 = ptrtoint ptr %aid94 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %aid94, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool95.not = icmp eq i16 %64, 0
  br i1 %tobool95.not, label %if.end93.if.end108_crit_edge, label %if.then96

if.end93.if.end108_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %conv97 = zext i16 %config_len.3 to i32
  %add.ptr98 = getelementptr i8, ptr %add.ptr, i32 %conv97
  %65 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 -15104, ptr %add.ptr98, align 1
  %len102 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %add.ptr98, i32 0, i32 1
  %66 = ptrtoint ptr %len102 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 512, ptr %len102, align 1
  %67 = ptrtoint ptr %aid94 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %aid94, align 4
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  %aid104 = getelementptr inbounds %struct.mwifiex_ie_types_aid, ptr %add.ptr98, i32 0, i32 1
  %70 = ptrtoint ptr %aid104 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %aid104, align 1
  %add106 = add nuw nsw i16 %config_len.3, 6
  br label %if.end108

if.end108:                                        ; preds = %if.then96, %if.end93.if.end108_crit_edge
  %config_len.4 = phi i16 [ %add106, %if.then96 ], [ %config_len.3, %if.end93.if.end108_crit_edge ]
  %conv109 = zext i16 %config_len.4 to i32
  %add.ptr110 = getelementptr i8, ptr %add.ptr, i32 %conv109
  %71 = ptrtoint ptr %add.ptr110 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 -15871, ptr %add.ptr110, align 1
  %len114 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %add.ptr110, i32 0, i32 1
  %72 = ptrtoint ptr %len114 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 512, ptr %len114, align 1
  %value = getelementptr inbounds %struct.mwifiex_ie_types_tdls_idle_timeout, ptr %add.ptr110, i32 0, i32 1
  %73 = ptrtoint ptr %value to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 15360, ptr %value, align 1
  %add116 = add nuw nsw i16 %config_len.4, 6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %75, i32 noundef 4, ptr noundef nonnull @.str.42) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end108, %sw.bb6, %sw.bb
  %config_len.5 = phi i16 [ %add116, %if.end108 ], [ 0, %sw.bb6 ], [ 0, %sw.bb ]
  %76 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %size, align 1
  %78 = tail call i16 @llvm.bswap.i16(i16 %77) #7
  %add.i199 = add i16 %78, %config_len.5
  %79 = tail call i16 @llvm.bswap.i16(i16 %add.i199) #7
  %80 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %79, ptr %size, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  %retval.0 = phi i32 [ -95, %sw.default ], [ 0, %sw.epilog ], [ -61, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cmd_tdls_config(ptr nocapture noundef readonly %priv, ptr nocapture noundef %cmd, i16 noundef zeroext %cmd_action, ptr nocapture noundef readonly %data_buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 1, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %1 = tail call i16 @llvm.bswap.i16(i16 %cmd_action)
  %2 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %1, ptr %params, align 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 2560, ptr %size, align 1
  %4 = zext i16 %cmd_action to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %cmd_action, label %sw.default [
    i16 0, label %sw.bb
    i16 6, label %sw.bb3
    i16 7, label %sw.bb7
    i16 8, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tdls_data = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %data_buf to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %data_buf, align 1
  %7 = ptrtoint ptr %tdls_data to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %tdls_data, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tdls_data4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %tdls_data4, ptr %data_buf, i32 15)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tdls_data8 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %tdls_data8, ptr %data_buf, i32 6)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tdls_data12 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %tdls_data12, ptr %data_buf, i32 3)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.43) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb7, %sw.bb3, %sw.bb
  %len.0 = phi i16 [ 3328, %sw.bb11 ], [ 4096, %sw.bb7 ], [ 6400, %sw.bb3 ], [ 3072, %sw.bb ]
  %13 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %len.0, ptr %size, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %retval.0 = phi i32 [ -95, %sw.default ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_issue_chan_report_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_sta_init_cmd(ptr noundef %priv, i8 noundef zeroext %first_sta, i1 noundef zeroext %init) local_unnamed_addr #0 align 64 {
entry:
  %amsdu_aggr_ctrl = alloca %struct.mwifiex_ds_11n_amsdu_aggr_ctrl, align 4
  %auto_ds = alloca %struct.mwifiex_ds_auto_ds, align 2
  %state_11d = alloca i32, align 4
  %tx_cfg = alloca %struct.mwifiex_ds_11n_tx_cfg, align 2
  %sdio_sp_rx_aggr_enable = alloca i8, align 1
  %packet_aggr_enable = alloca i16, align 2
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %amsdu_aggr_ctrl) #7
  %2 = ptrtoint ptr %amsdu_aggr_ctrl to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %amsdu_aggr_ctrl, align 4, !annotation !113
  %3 = getelementptr inbounds %struct.mwifiex_ds_11n_amsdu_aggr_ctrl, ptr %amsdu_aggr_ctrl, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %auto_ds) #7
  %5 = ptrtoint ptr %auto_ds to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %auto_ds, align 2, !annotation !113
  %6 = getelementptr inbounds %struct.mwifiex_ds_auto_ds, ptr %auto_ds, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %6, align 2, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state_11d) #7
  %8 = ptrtoint ptr %state_11d to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %state_11d, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tx_cfg) #7
  %9 = ptrtoint ptr %tx_cfg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %tx_cfg, align 2, !annotation !113
  %10 = getelementptr inbounds %struct.mwifiex_ds_11n_tx_cfg, ptr %tx_cfg, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %10, align 2, !annotation !113
  %12 = getelementptr inbounds %struct.mwifiex_ds_11n_tx_cfg, ptr %tx_cfg, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %12, align 2, !annotation !113
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sdio_sp_rx_aggr_enable) #7
  %14 = ptrtoint ptr %sdio_sp_rx_aggr_enable to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %sdio_sp_rx_aggr_enable, align 1, !annotation !113
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %packet_aggr_enable) #7
  %15 = ptrtoint ptr %packet_aggr_enable to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %packet_aggr_enable, align 2, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %data, align 4, !annotation !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %first_sta)
  %tobool.not = icmp eq i8 %first_sta, 0
  br i1 %tobool.not, label %entry.if.end85_crit_edge, label %if.then

entry.if.end85_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then:                                          ; preds = %entry
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp = icmp eq i8 %18, 1
  br i1 %cmp, label %if.then4, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %if.then
  %call = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 250, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then4.if.end7_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %call8 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 169, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %dt_node = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 127
  %19 = ptrtoint ptr %dt_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dt_node, align 4
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %if.end11.if.end30_crit_edge, label %if.then13

if.end11.if.end30_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then13:                                        ; preds = %if.end11
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %20, ptr noundef nonnull @.str.3, ptr noundef nonnull %data, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp16 = icmp sgt i32 %call.i.i, -1
  br i1 %cmp16, label %do.body, label %if.then13.if.end27_crit_edge

if.then13.if.end27_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.body:                                          ; preds = %if.then13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_sta_init_cmd.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_sta_init_cmd, %if.then24)) #7
          to label %do.end [label %if.then24], !srcloc !114

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_sta_init_cmd.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.8, i32 noundef %22) #7
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data, align 4
  %conv26 = trunc i32 %24 to i8
  %gpio = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 107, i32 1
  %25 = ptrtoint ptr %gpio to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv26, ptr %gpio, align 4
  br label %if.end27

if.end27:                                         ; preds = %do.end, %if.then13.if.end27_crit_edge
  %26 = ptrtoint ptr %dt_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dt_node, align 4
  %call29 = call i32 @mwifiex_dnld_dt_cfgdata(ptr noundef %priv, ptr noundef %27, ptr noundef nonnull @.str.9)
  br label %if.end30

if.end30:                                         ; preds = %if.end27, %if.end11.if.end30_crit_edge
  %cal_data = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 126
  %28 = ptrtoint ptr %cal_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cal_data, align 4
  %tobool31.not = icmp eq ptr %29, null
  br i1 %tobool31.not, label %if.end30.if.end34_crit_edge, label %if.then32

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 143, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30.if.end34_crit_edge
  %call35 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 3, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp42 = icmp eq i8 %33, 0
  br i1 %cmp42, label %land.lhs.true, label %if.end38.if.end55_crit_edge

if.end38.if.end55_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end38
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %31, i32 0, i32 47
  %34 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %35, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %land.lhs.true.if.end55_crit_edge, label %land.lhs.true46

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

land.lhs.true46:                                  ; preds = %land.lhs.true
  %host_disable_sdio_rx_aggr = getelementptr inbounds %struct.mwifiex_adapter, ptr %31, i32 0, i32 41
  %36 = ptrtoint ptr %host_disable_sdio_rx_aggr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %host_disable_sdio_rx_aggr, align 2, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool48.not = icmp eq i8 %37, 0
  br i1 %tobool48.not, label %if.then49, label %land.lhs.true46.if.end55_crit_edge

land.lhs.true46.if.end55_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then49:                                        ; preds = %land.lhs.true46
  %38 = ptrtoint ptr %sdio_sp_rx_aggr_enable to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %sdio_sp_rx_aggr_enable, align 1
  %call50 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 547, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %sdio_sp_rx_aggr_enable, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then49.if.end55_crit_edge, label %if.then52

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then52:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %40, i32 noundef 4, ptr noundef nonnull @.str.10) #7
  %sdio_rx_aggr_enable = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 42
  %41 = ptrtoint ptr %sdio_rx_aggr_enable to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %sdio_rx_aggr_enable, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.then49.if.end55_crit_edge, %land.lhs.true46.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %if.end38.if.end55_crit_edge
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 8
  %tx_buf_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %43, i32 0, i32 39
  %call57 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 217, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %tx_buf_size, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %44 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bss_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp62.not = icmp eq i8 %45, 1
  br i1 %cmp62.not, label %if.end60.if.end70_crit_edge, label %if.then64

if.end60.if.end70_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then64:                                        ; preds = %if.end60
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %ps_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %47, i32 0, i32 89
  %48 = ptrtoint ptr %ps_mode to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %ps_mode, align 4
  %call66 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 228, i16 noundef zeroext 255, i32 noundef 16, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then64.if.end70_crit_edge, label %if.then64.cleanup_crit_edge

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then64.if.end70_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.end70:                                         ; preds = %if.then64.if.end70_crit_edge, %if.end60.if.end70_crit_edge
  %49 = load i8, ptr @drcs, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool71.not = icmp eq i8 %49, 0
  br i1 %tobool71.not, label %if.end70.if.end83_crit_edge, label %if.then72

if.end70.if.end83_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then72:                                        ; preds = %if.end70
  %drcs_enabled = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 158
  %50 = ptrtoint ptr %drcs_enabled to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %drcs_enabled, align 1
  %fw_cap_info73 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 47
  %51 = ptrtoint ptr %fw_cap_info73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fw_cap_info73, align 4
  %and74 = and i32 %52, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.then72.if.end83_crit_edge, label %if.then76

if.then72.if.end83_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then76:                                        ; preds = %if.then72
  %call78 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 289, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %drcs_enabled, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %phi.cmp = icmp eq i32 %call78, 0
  br i1 %phi.cmp, label %if.then76.if.end83_crit_edge, label %if.then76.cleanup_crit_edge

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then76.if.end83_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.end83:                                         ; preds = %if.then76.if.end83_crit_edge, %if.then72.if.end83_crit_edge, %if.end70.if.end83_crit_edge
  %call84 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 578, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #7
  br label %if.end85

if.end85:                                         ; preds = %if.end83, %entry.if.end85_crit_edge
  %call86 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 214, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end89:                                         ; preds = %if.end85
  %data_rate = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 32
  %53 = ptrtoint ptr %data_rate to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %data_rate, align 8
  %call90 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 30, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93:                                         ; preds = %if.end89
  %54 = ptrtoint ptr %amsdu_aggr_ctrl to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 65536, ptr %amsdu_aggr_ctrl, align 4
  %call94 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 223, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %amsdu_aggr_ctrl, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end97:                                         ; preds = %if.end93
  %curr_pkt_filter = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 17
  %call98 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 40, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %curr_pkt_filter, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end101:                                        ; preds = %if.end97
  %55 = load i8, ptr @disable_auto_ds, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool102.not = icmp ne i8 %55, 0
  %or.cond = or i1 %tobool.not, %tobool102.not
  br i1 %or.cond, label %if.end101.if.end117_crit_edge, label %land.lhs.true106

if.end101.if.end117_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

land.lhs.true106:                                 ; preds = %if.end101
  %bss_type107 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %56 = ptrtoint ptr %bss_type107 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bss_type107, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp109.not = icmp eq i8 %57, 1
  br i1 %cmp109.not, label %land.lhs.true106.if.end117_crit_edge, label %if.then111

land.lhs.true106.if.end117_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then111:                                       ; preds = %land.lhs.true106
  %58 = ptrtoint ptr %auto_ds to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %auto_ds, align 2
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 100, ptr %6, align 2
  %call113 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 228, i16 noundef zeroext 255, i32 noundef 1, ptr noundef nonnull %auto_ds, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then111.if.end117_crit_edge, label %if.then111.cleanup_crit_edge

if.then111.cleanup_crit_edge:                     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then111.if.end117_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.end117:                                        ; preds = %if.then111.if.end117_crit_edge, %land.lhs.true106.if.end117_crit_edge, %if.end101.if.end117_crit_edge
  %bss_type118 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %60 = ptrtoint ptr %bss_type118 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bss_type118, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp120.not = icmp eq i8 %61, 1
  br i1 %cmp120.not, label %if.end117.if.end128_crit_edge, label %if.then122

if.end117.if.end128_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then122:                                       ; preds = %if.end117
  %62 = ptrtoint ptr %state_11d to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %state_11d, align 4
  %call123 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 22, i16 noundef zeroext 1, i32 noundef 9, ptr noundef nonnull %state_11d, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.then122.if.end128_crit_edge, label %if.then125

if.then122.if.end128_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then125:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %64, i32 noundef 4, ptr noundef nonnull @.str.11) #7
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %if.then122.if.end128_crit_edge, %if.end117.if.end128_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aggr_ctrl to i32))
  %65 = load i8, ptr @aggr_ctrl, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool129.not = icmp eq i8 %65, 0
  br i1 %tobool129.not, label %if.end128.if.end132_crit_edge, label %if.then130

if.end128.if.end132_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then130:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %packet_aggr_enable to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %packet_aggr_enable, align 2
  %call131 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 593, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %packet_aggr_enable, i1 noundef zeroext true) #7
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end128.if.end132_crit_edge
  %67 = ptrtoint ptr %tx_cfg to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 114, ptr %tx_cfg, align 2
  %call133 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 205, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %tx_cfg, i1 noundef zeroext true) #7
  br i1 %init, label %if.then135, label %if.end132.cleanup_crit_edge

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then135:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 8
  %last_init_cmd = getelementptr inbounds %struct.mwifiex_adapter, ptr %69, i32 0, i32 62
  %70 = ptrtoint ptr %last_init_cmd to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 205, ptr %last_init_cmd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then135, %if.end132.cleanup_crit_edge, %if.then111.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.then76.cleanup_crit_edge, %if.then64.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then4.cleanup_crit_edge ], [ -1, %if.end7.cleanup_crit_edge ], [ -1, %if.end34.cleanup_crit_edge ], [ -1, %if.end55.cleanup_crit_edge ], [ -1, %if.then64.cleanup_crit_edge ], [ -1, %if.then76.cleanup_crit_edge ], [ -1, %if.end85.cleanup_crit_edge ], [ -1, %if.end89.cleanup_crit_edge ], [ -1, %if.end93.cleanup_crit_edge ], [ -1, %if.end97.cleanup_crit_edge ], [ -1, %if.then111.cleanup_crit_edge ], [ -115, %if.then135 ], [ %call133, %if.end132.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %packet_aggr_enable) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sdio_sp_rx_aggr_enable) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tx_cfg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state_11d) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auto_ds) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %amsdu_aggr_ctrl) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__param_drcs, !1, !"__param_drcs", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_drcstype488, !1, !"__UNIQUE_ID_drcstype488", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_drcs489, !4, !"__UNIQUE_ID_drcs489", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 31, i32 1}
!5 = !{ptr @__param_disable_auto_ds, !6, !"__param_disable_auto_ds", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 34, i32 1}
!7 = !{ptr @__UNIQUE_ID_disable_auto_dstype490, !6, !"__UNIQUE_ID_disable_auto_dstype490", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_disable_auto_ds491, !9, !"__UNIQUE_ID_disable_auto_ds491", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 35, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 1950, i32 3}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 2138, i32 3}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 2234, i32 3}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 2296, i32 8}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 2298, i32 5}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mwifiex_sta_init_cmd.__UNIQUE_ID_ddebug492, !19, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!24 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 2303, i32 7}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 2327, i32 5}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 2415, i32 4}
!31 = !{ptr @drcs, !32, !"drcs", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 29, i32 13}
!33 = !{ptr @disable_auto_ds, !34, !"disable_auto_ds", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 33, i32 13}
!35 = !{ptr @__param_str_drcs, !1, !"__param_str_drcs", i1 false, i1 false}
!36 = !{ptr @__param_str_disable_auto_ds, !6, !"__param_str_disable_auto_ds", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 1529, i32 3}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 1535, i32 3}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 84, i32 3}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 381, i32 3}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 401, i32 3}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 420, i32 3}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 505, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 119, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 137, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 669, i32 3}
!57 = !{ptr @__func__.mwifiex_cmd_802_11_key_material_v2, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 696, i32 3}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 717, i32 3}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 755, i32 3}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 795, i32 3}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 605, i32 3}
!68 = !{ptr @__func__.mwifiex_set_aes_key_v2, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 619, i32 3}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 624, i32 3}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 863, i32 3}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 900, i32 4}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 913, i32 4}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 932, i32 3}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 583, i32 4}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 1039, i32 2}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 1275, i32 3}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 1304, i32 2}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 1314, i32 2}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 1320, i32 3}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 1347, i32 3}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 1369, i32 3}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 1777, i32 4}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 1856, i32 3}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmd.c", i32 1729, i32 3}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i8 0, i8 2}
!113 = !{!"auto-init"}
!114 = !{i64 2148427292, i64 2148427297, i64 2148427310, i64 2148427354, i64 2148427388, i64 2148427409}
