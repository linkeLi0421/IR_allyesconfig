; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
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
%struct.host_cmd_sdio_sp_rx_aggr_cfg = type { i8, i8, i16 }
%struct.host_cmd_tlv_channel_band = type { %struct.mwifiex_ie_types_header, i8, i8 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_channel_band = type { %struct.mwifiex_band_config, i8 }
%struct.mwifiex_band_config = type { i8 }
%struct.mwifiex_rate_scope = type { i16, i16, i16, i16, [8 x i16], [8 x i16] }
%struct.mwifiex_power_group = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.host_cmd_ds_rf_tx_pwr = type { i16, i16, i8, i8 }
%struct.mwifiex_ds_get_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }
%struct.host_cmd_ds_802_11_get_log = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }
%struct.host_cmd_ds_tx_rate_query = type { i8, i8 }
%struct.mwifiex_ds_auto_ds = type { i16, i16 }
%struct.host_cmd_ds_version_ext = type { i8, [128 x i8] }
%struct.mwifiex_aes_param = type { [8 x i8], i16, [32 x i8] }
%struct.mwifiex_ds_reg_rw = type { i32, i32, i32 }
%struct.mwifiex_ds_read_eeprom = type { i16, i16, [256 x i8] }
%struct.mwifiex_ie_types_sta_info = type { %struct.mwifiex_ie_types_header, [6 x i8], i8, i8 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.ieee80211_regdomain = type { %struct.callback_head, i32, [3 x i8], i32, [0 x %struct.ieee80211_reg_rule] }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"info: CMD_RESP: BG_SCAN result is ready!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cmd: curr_tx_buf_size=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CMD_RESP: unknown cmd response %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CMD_RESP: cmd %#x error, result=%#x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"PS_MODE_ENH cmd failed: result=0x%x action=0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SDIO RX single-port aggregation Not support\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"info: set mac address: %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CMD_RESP: unknown cmd action %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"info: Current TxPower Level = %d, Max Power=%d, Min Power=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Current TxPower Level=%d, Max Power=%d, Min Power=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"RF_ANT_RESP: Tx action = 0x%x, Tx Mode = 0x%04x\09Rx action = 0x%x, Rx Mode = 0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RF_ANT_RESP: action = 0x%x, Mode = 0x%04x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"info: SNMP_RESP: oid value = %#x,\09query_type = %#x, buf size = %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"info: SNMP_RESP: FragThsd =%u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"info: SNMP_RESP: RTSThsd =%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"info: SNMP_RESP: TxRetryCount=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"info: SNMP_RESP: DTIM period=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ChipRev:20, BB:9b(10.00), RF:40(21)\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Bad HW revision detected, disabling deep sleep\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Disabling deep sleep failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"info: key: GTK is set\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"info: 11D Domain Info Resp: no_of_triplet=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"11D: invalid number of triplets %d returned\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"11D: invalid action:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"info: new BSSID %pM\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"new BSSID is NULL\0A\00", [45 x i8] zeroinitializer }, align 32
@mwifiex_ret_reg_access.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mwifiex\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mwifiex_ret_reg_access\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"info: EEPROM read len=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mwifiex: info: EEPROM read len=%x\0A\00", [61 x i8] zeroinitializer }, align 32
@mwifiex_ret_reg_access.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.32, i8 0, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"info: EEPROM read length is too big\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mwifiex: info: EEPROM read length is too big\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Bitmap of currently subscribed events: %16x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TDLS link delete for %pM failed: reason %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TDLS link delete for %pM successful\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"TDLS link creation for %pM failed: reason %d\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"TDLS link creation for %pM successful\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TDLS link config for %pM failed, reason %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TDLS link config for %pM successful\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unknown TDLS command action response %d\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CHAN:\00", [26 x i8] zeroinitializer }, align 32
@mwifiex_create_custom_regdomain.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.mwifiex_ret_802_11_snmp_mib = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.17, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.14, ptr @.str.14], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 6, i64 228, i64 263, i64 547]
@__sancov_gen_cov_switch_values.44 = internal global [72 x i64] [i64 70, i64 16, i64 3, i64 6, i64 11, i64 16, i64 18, i64 22, i64 25, i64 26, i64 27, i64 30, i64 32, i64 36, i64 40, i64 43, i64 44, i64 64, i64 77, i64 89, i64 91, i64 94, i64 107, i64 108, i64 113, i64 117, i64 127, i64 131, i64 134, i64 143, i64 151, i64 154, i64 164, i64 169, i64 170, i64 173, i64 175, i64 176, i64 177, i64 178, i64 179, i64 181, i64 205, i64 206, i64 207, i64 208, i64 209, i64 214, i64 217, i64 221, i64 223, i64 224, i64 228, i64 229, i64 235, i64 237, i64 247, i64 250, i64 256, i64 263, i64 266, i64 268, i64 269, i64 271, i64 274, i64 278, i64 289, i64 290, i64 547, i64 575, i64 578, i64 593]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 16, i64 25, i64 26, i64 27, i64 89, i64 173, i64 237]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1266, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1362, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1446, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 50, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 60, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 79, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 501, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 420, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 425, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 449, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 470, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 480, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 176, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 186, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 191, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 196, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 201, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 712, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 718, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 723, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 628, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 674, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 679, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 691, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 877, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 882, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 842, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 846, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 976, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 918, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 926, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 933, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 939, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 946, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 952, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 958, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [54 x i8] c"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1164, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [41 x i8] c"switch.table.mwifiex_ret_802_11_snmp_mib\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @switch.table.mwifiex_ret_802_11_snmp_mib], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mwifiex_ret_802_11_snmp_mib to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_sta_cmdresp(ptr noundef %priv, i16 noundef zeroext %cmdresp_no, ptr noundef %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %curr_cmd = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_cmd, align 4
  %data_buf2 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %data_buf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_buf2, align 4
  %result = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 3
  %6 = ptrtoint ptr %result to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %result, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not = icmp eq i16 %7, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %resp to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %resp, align 1
  %conv.i = zext i16 %9 to i32
  %conv2.i = zext i16 %7 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %conv.i, i32 noundef %conv2.i) #9
  %10 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %curr_cmd, align 4
  %wait_q_enabled.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %wait_q_enabled.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wait_q_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %status.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 121, i32 1
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %status.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %15 = ptrtoint ptr %resp to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %resp, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i16 %17, label %if.end.i.mwifiex_process_cmdresp_error.exit_crit_edge [
    i16 228, label %sw.bb.i
    i16 6, label %if.end.i.sw.bb19.i_crit_edge
    i16 263, label %if.end.i.sw.bb19.i_crit_edge274
    i16 547, label %sw.bb20.i
  ]

if.end.i.sw.bb19.i_crit_edge274:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb19.i

if.end.i.sw.bb19.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb19.i

if.end.i.mwifiex_process_cmdresp_error.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_process_cmdresp_error.exit

sw.bb.i:                                          ; preds = %if.end.i
  %params.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %19 = ptrtoint ptr %result to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %result, align 1
  %conv6.i = zext i16 %20 to i32
  %21 = ptrtoint ptr %params.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %params.i, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #9
  %conv7.i = zext i16 %23 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %conv6.i, i32 noundef %conv7.i) #9
  %24 = ptrtoint ptr %params.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %params.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -256, i16 %25)
  %cmp.i = icmp eq i16 %25, -256
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.i.mwifiex_process_cmdresp_error.exit_crit_edge

sw.bb.i.mwifiex_process_cmdresp_error.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_process_cmdresp_error.exit

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %params11.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %26 = ptrtoint ptr %params11.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %params11.i, align 1
  %28 = and i16 %27, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool13.not.i = icmp eq i16 %28, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.mwifiex_process_cmdresp_error.exit_crit_edge, label %land.lhs.true14.i

land.lhs.true.i.mwifiex_process_cmdresp_error.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_process_cmdresp_error.exit

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %bss_mode.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %29 = ptrtoint ptr %bss_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bss_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp15.i = icmp eq i32 %30, 1
  br i1 %cmp15.i, label %if.then17.i, label %land.lhs.true14.i.mwifiex_process_cmdresp_error.exit_crit_edge

land.lhs.true14.i.mwifiex_process_cmdresp_error.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_process_cmdresp_error.exit

if.then17.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  %ps_mode.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 89
  %31 = ptrtoint ptr %ps_mode.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %ps_mode.i, align 4
  br label %mwifiex_process_cmdresp_error.exit

sw.bb19.i:                                        ; preds = %if.end.i.sw.bb19.i_crit_edge, %if.end.i.sw.bb19.i_crit_edge274
  tail call void @mwifiex_cancel_scan(ptr noundef %1) #9
  br label %mwifiex_process_cmdresp_error.exit

sw.bb20.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.5) #9
  br label %mwifiex_process_cmdresp_error.exit

mwifiex_process_cmdresp_error.exit:               ; preds = %sw.bb20.i, %sw.bb19.i, %if.then17.i, %land.lhs.true14.i.mwifiex_process_cmdresp_error.exit_crit_edge, %land.lhs.true.i.mwifiex_process_cmdresp_error.exit_crit_edge, %sw.bb.i.mwifiex_process_cmdresp_error.exit_crit_edge, %if.end.i.mwifiex_process_cmdresp_error.exit_crit_edge
  %32 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %curr_cmd, align 4
  tail call void @mwifiex_recycle_cmd_node(ptr noundef %1, ptr noundef %33) #9
  %mwifiex_cmd_lock.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %mwifiex_cmd_lock.i) #9
  %34 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %curr_cmd, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %35 = zext i16 %cmdresp_no to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %cmdresp_no, label %sw.default [
    i16 3, label %sw.bb
    i16 143, label %if.end.cleanup_crit_edge
    i16 40, label %if.end.cleanup_crit_edge275
    i16 77, label %sw.bb7
    i16 16, label %if.end.cleanup_crit_edge276
    i16 214, label %sw.bb11
    i16 6, label %sw.bb13
    i16 263, label %sw.bb16
    i16 108, label %sw.bb20
    i16 107, label %if.end.cleanup_crit_edge277
    i16 209, label %sw.bb22
    i16 30, label %sw.bb24
    i16 32, label %sw.bb26
    i16 228, label %sw.bb28
    i16 229, label %sw.bb30
    i16 18, label %sw.bb32
    i16 36, label %sw.bb34
    i16 43, label %if.end.sw.bb36_crit_edge
    i16 44, label %if.end.sw.bb36_crit_edge278
    i16 64, label %sw.bb38
    i16 11, label %sw.bb40
    i16 164, label %sw.bb42
    i16 22, label %sw.bb44
    i16 127, label %sw.bb46
    i16 151, label %sw.bb48
    i16 269, label %sw.bb50
    i16 274, label %if.end.cleanup_crit_edge279
    i16 593, label %sw.bb52
    i16 235, label %sw.bb54
    i16 268, label %if.end.cleanup_crit_edge280
    i16 169, label %if.end.cleanup_crit_edge281
    i16 170, label %if.end.cleanup_crit_edge282
    i16 94, label %sw.bb57
    i16 91, label %sw.bb59
    i16 206, label %sw.bb61
    i16 208, label %sw.bb63
    i16 207, label %sw.bb65
    i16 217, label %sw.bb67
    i16 223, label %if.end.cleanup_crit_edge283
    i16 113, label %sw.bb101
    i16 131, label %sw.bb103
    i16 134, label %sw.bb105
    i16 25, label %if.end.sw.bb107_crit_edge
    i16 26, label %if.end.sw.bb107_crit_edge284
    i16 27, label %if.end.sw.bb107_crit_edge285
    i16 173, label %if.end.sw.bb107_crit_edge286
    i16 237, label %if.end.sw.bb107_crit_edge287
    i16 89, label %if.end.sw.bb107_crit_edge288
    i16 247, label %if.end.cleanup_crit_edge289
    i16 205, label %if.end.cleanup_crit_edge290
    i16 250, label %if.end.cleanup_crit_edge291
    i16 117, label %sw.bb109
    i16 176, label %if.end.cleanup_crit_edge292
    i16 179, label %sw.bb111
    i16 177, label %sw.bb113
    i16 178, label %sw.bb115
    i16 181, label %if.end.cleanup_crit_edge293
    i16 175, label %if.end.cleanup_crit_edge294
    i16 154, label %if.end.cleanup_crit_edge295
    i16 266, label %if.end.cleanup_crit_edge296
    i16 290, label %sw.bb117
    i16 289, label %if.end.cleanup_crit_edge297
    i16 221, label %if.end.cleanup_crit_edge298
    i16 547, label %sw.bb119
    i16 278, label %sw.bb121
    i16 256, label %if.end.cleanup_crit_edge299
    i16 224, label %sw.bb123
    i16 271, label %if.end.cleanup_crit_edge300
    i16 578, label %sw.bb125
    i16 575, label %sw.bb127
  ]

if.end.cleanup_crit_edge300:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge299:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge298:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge297:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge296:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge295:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge294:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge293:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge292:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge291:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge290:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge289:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.sw.bb107_crit_edge288:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb107

if.end.sw.bb107_crit_edge287:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb107

if.end.sw.bb107_crit_edge286:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb107

if.end.sw.bb107_crit_edge285:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb107

if.end.sw.bb107_crit_edge284:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb107

if.end.sw.bb107_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb107

if.end.cleanup_crit_edge283:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge282:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge281:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge280:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge279:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.sw.bb36_crit_edge278:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.end.sw.bb36_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.end.cleanup_crit_edge277:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge276:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge275:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @mwifiex_ret_get_hw_spec(ptr noundef %priv, ptr noundef %resp) #9
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %curr_addr.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 7
  %mac_addr.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %36 = call ptr @memcpy(ptr %curr_addr.i, ptr %mac_addr.i, i32 6)
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.7, ptr noundef %curr_addr.i) #9
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call fastcc i32 @mwifiex_ret_tx_rate_cfg(ptr noundef %priv, ptr noundef %resp)
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @mwifiex_ret_802_11_scan(ptr noundef %priv, ptr noundef %resp) #9
  %37 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %curr_cmd, align 4
  %wait_q_enabled = getelementptr inbounds %struct.cmd_ctrl_node, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %wait_q_enabled to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %wait_q_enabled, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 @mwifiex_ret_802_11_scan_ext(ptr noundef %priv, ptr noundef %resp) #9
  %40 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %curr_cmd, align 4
  %wait_q_enabled19 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %wait_q_enabled19 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %wait_q_enabled19, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 @mwifiex_ret_802_11_scan(ptr noundef %priv, ptr noundef %resp) #9
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 103
  %43 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wdev, align 8
  tail call void @cfg80211_sched_scan_results(ptr noundef %44, i64 noundef 0) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str) #9
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mwifiex_ret_tx_power_cfg(ptr noundef %priv, ptr noundef %resp)
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mwifiex_ret_rf_tx_power(ptr noundef %priv, ptr noundef %resp)
  br label %cleanup

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mwifiex_ret_rf_antenna(ptr noundef %priv, ptr noundef %resp)
  br label %cleanup

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 @mwifiex_ret_enh_power_mode(ptr noundef %priv, ptr noundef %resp, ptr noundef %5) #9
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 @mwifiex_ret_802_11_hs_cfg(ptr noundef %priv, ptr noundef %resp) #9
  br label %cleanup

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = tail call i32 @mwifiex_ret_802_11_associate(ptr noundef %priv, ptr noundef %resp) #9
  br label %cleanup

sw.bb34:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mwifiex_ret_802_11_deauthenticate(ptr noundef %priv, ptr noundef %resp)
  br label %cleanup

sw.bb36:                                          ; preds = %if.end.sw.bb36_crit_edge, %if.end.sw.bb36_crit_edge278
  %call37 = tail call i32 @mwifiex_ret_802_11_ad_hoc(ptr noundef %priv, ptr noundef %resp) #9
  br label %cleanup

sw.bb38:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mwifiex_reset_connect_state(ptr noundef %priv, i16 noundef zeroext 3, i1 noundef zeroext false) #9
  br label %cleanup

sw.bb40:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mwifiex_ret_get_log(ptr noundef %resp, ptr noundef %5)
  br label %cleanup

sw.bb42:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mwifiex_ret_802_11_rssi_info(ptr noundef %priv, ptr noundef %resp)
  br label %cleanup

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mwifiex_ret_802_11_snmp_mib(ptr noundef %priv, ptr noundef %resp, ptr noundef %5)
  br label %cleanup

sw.bb46:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mwifiex_ret_802_11_tx_rate_query(ptr noundef %priv, ptr noundef %resp)
  br label %cleanup

sw.bb48:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mwifiex_ret_ver_ext(ptr noundef %priv, ptr noundef %resp, ptr noundef %5)
  br label %cleanup

sw.bb50:                                          ; preds = %if.end
  %tobool.not.i262 = icmp eq ptr %5, null
  br i1 %tobool.not.i262, label %sw.bb50.cleanup_crit_edge, label %if.then.i264

sw.bb50.cleanup_crit_edge:                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i264:                                     ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  %params.i263 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %45 = call ptr @memcpy(ptr %5, ptr %params.i263, i32 10)
  br label %cleanup

sw.bb52:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mwifiex_ret_pkt_aggr_ctrl(ptr noundef %priv, ptr noundef %resp)
  br label %cleanup

sw.bb54:                                          ; preds = %if.end
  %tobool.not.i266 = icmp eq ptr %5, null
  br i1 %tobool.not.i266, label %sw.bb54.cleanup_crit_edge, label %if.then.i267

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i267:                                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %mode.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %46 = ptrtoint ptr %mode.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %mode.i, align 1
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %5, align 1
  br label %cleanup

sw.bb57:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call fastcc i32 @mwifiex_ret_802_11_key_material(ptr noundef %priv, ptr noundef %resp)
  br label %cleanup

sw.bb59:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call60 = tail call fastcc i32 @mwifiex_ret_802_11d_domain_info(ptr noundef %priv, ptr noundef %resp)
  br label %cleanup

sw.bb61:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call62 = tail call i32 @mwifiex_ret_11n_addba_req(ptr noundef %priv, ptr noundef %resp) #9
  br label %cleanup

sw.bb63:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = tail call i32 @mwifiex_ret_11n_delba(ptr noundef %priv, ptr noundef %resp) #9
  br label %cleanup

sw.bb65:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call66 = tail call i32 @mwifiex_ret_11n_addba_resp(ptr noundef %priv, ptr noundef %resp) #9
  br label %cleanup

sw.bb67:                                          ; preds = %if.end
  %buff_size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %49 = ptrtoint ptr %buff_size to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %buff_size, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %50)
  %cmp69 = icmp eq i16 %50, -1
  br i1 %cmp69, label %if.then71, label %if.end84

if.then71:                                        ; preds = %sw.bb67
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %52)
  %cmp73 = icmp eq i8 %52, 2
  br i1 %cmp73, label %land.lhs.true, label %if.then71.cleanup_crit_edge

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then71
  %usb_mc_setup = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 161
  %53 = ptrtoint ptr %usb_mc_setup to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %usb_mc_setup, align 2, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not = icmp eq i8 %54, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then76

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then76:                                        ; preds = %land.lhs.true
  %multi_port_resync = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 18, i32 26
  %55 = ptrtoint ptr %multi_port_resync to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %multi_port_resync, align 4
  %tobool77.not = icmp eq ptr %56, null
  br i1 %tobool77.not, label %if.then76.if.end81_crit_edge, label %if.then78

if.then76.if.end81_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then78:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %56(ptr noundef %1) #9
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.then76.if.end81_crit_edge
  %57 = ptrtoint ptr %usb_mc_setup to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %usb_mc_setup, align 2
  %tx_lock_flag = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %58 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %tx_lock_flag, align 4
  br label %cleanup

if.end84:                                         ; preds = %sw.bb67
  %tx_buf_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 39
  %59 = shl i16 %50, 8
  %60 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %tx_buf_size, align 2
  %curr_tx_buf_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 40
  %61 = ptrtoint ptr %curr_tx_buf_size to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %59, ptr %curr_tx_buf_size, align 4
  %conv93 = zext i16 %59 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %conv93) #9
  %update_mp_end_port = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 18, i32 13
  %62 = ptrtoint ptr %update_mp_end_port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %update_mp_end_port, align 4
  %tobool95.not = icmp eq ptr %63, null
  br i1 %tobool95.not, label %if.end84.cleanup_crit_edge, label %if.then96

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then96:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %mp_end_port = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %64 = ptrtoint ptr %mp_end_port to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %mp_end_port, align 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %65)
  tail call void %63(ptr noundef %1, i16 noundef zeroext %66) #9
  br label %cleanup

sw.bb101:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call102 = tail call i32 @mwifiex_ret_wmm_get_status(ptr noundef %priv, ptr noundef %resp) #9
  br label %cleanup

sw.bb103:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mwifiex_ret_ibss_coalescing_status(ptr noundef %priv, ptr noundef %resp)
  br label %cleanup

sw.bb105:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %addr.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %67 = ptrtoint ptr %addr.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %addr.i, align 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  %mem_rw.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 159
  %70 = ptrtoint ptr %mem_rw.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %mem_rw.i, align 4
  %value.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %value.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %value.i, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #9
  %value3.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 159, i32 1
  %74 = ptrtoint ptr %value3.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %value3.i, align 4
  br label %cleanup

sw.bb107:                                         ; preds = %if.end.sw.bb107_crit_edge, %if.end.sw.bb107_crit_edge284, %if.end.sw.bb107_crit_edge285, %if.end.sw.bb107_crit_edge286, %if.end.sw.bb107_crit_edge287, %if.end.sw.bb107_crit_edge288
  %call108 = tail call fastcc i32 @mwifiex_ret_reg_access(i16 noundef zeroext %cmdresp_no, ptr noundef %resp, ptr noundef %5)
  br label %cleanup

sw.bb109:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %events.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %75 = ptrtoint ptr %events.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %events.i, align 1
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #9
  %conv.i269 = zext i16 %77 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.34, i32 noundef %conv.i269) #9
  br label %cleanup

sw.bb111:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mwifiex_ret_uap_sta_list(ptr noundef %priv, ptr noundef %resp)
  br label %cleanup

sw.bb113:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tx_lock_flag114 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %78 = ptrtoint ptr %tx_lock_flag114 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %tx_lock_flag114, align 4
  %pps_uapsd_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 104
  %79 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %pps_uapsd_mode, align 2
  %delay_null_pkt = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 99
  %80 = ptrtoint ptr %delay_null_pkt to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %delay_null_pkt, align 1
  %bss_started = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 5
  %81 = ptrtoint ptr %bss_started to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %bss_started, align 8
  br label %cleanup

sw.bb115:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bss_started116 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 5
  %82 = ptrtoint ptr %bss_started116 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %bss_started116, align 8
  br label %cleanup

sw.bb117:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call118 = tail call fastcc i32 @mwifiex_ret_tdls_oper(ptr noundef %priv, ptr noundef %resp)
  br label %cleanup

sw.bb119:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %params.i270 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %enable.i = getelementptr inbounds %struct.host_cmd_sdio_sp_rx_aggr_cfg, ptr %params.i270, i32 0, i32 1
  %83 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %enable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.i = icmp ne i8 %84, 0
  %sdio_rx_aggr_enable.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 42
  %frombool.i = zext i1 %tobool.i to i8
  %85 = ptrtoint ptr %sdio_rx_aggr_enable.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %frombool.i, ptr %sdio_rx_aggr_enable.i, align 1
  %block_size.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %86 = ptrtoint ptr %block_size.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %block_size.i, align 1
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #9
  %sdio_rx_block_size.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 43
  %89 = ptrtoint ptr %sdio_rx_block_size.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %sdio_rx_block_size.i, align 4
  br label %cleanup

sw.bb121:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call122 = tail call i32 @mwifiex_ret_wakeup_reason(ptr noundef %priv, ptr noundef %resp, ptr noundef %5) #9
  br label %cleanup

sw.bb123:                                         ; preds = %if.end
  %params.i271 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %90 = ptrtoint ptr %params.i271 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %params.i271, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %cmp.i272 = icmp eq i16 %91, 0
  br i1 %cmp.i272, label %if.then.i273, label %sw.bb123.cleanup_crit_edge

sw.bb123.cleanup_crit_edge:                       ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i273:                                     ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #11
  %mode3.i = getelementptr %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %mode3.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %mode3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %93)
  %cmp4.i = icmp eq i32 %93, 16777216
  %..i = zext i1 %cmp4.i to i8
  %94 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %..i, ptr %5, align 1
  br label %cleanup

sw.bb125:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mwifiex_ret_chan_region_cfg(ptr noundef %priv, ptr noundef %resp)
  br label %cleanup

sw.bb127:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tlv_buffer.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %band_config1.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3
  %95 = ptrtoint ptr %band_config1.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %band_config1.i, align 1
  %97 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %5, align 1
  %channel.i = getelementptr inbounds %struct.host_cmd_tlv_channel_band, ptr %tlv_buffer.i, i32 0, i32 2
  %98 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %channel.i, align 1
  %channel2.i = getelementptr inbounds %struct.mwifiex_channel_band, ptr %5, i32 0, i32 1
  %100 = ptrtoint ptr %channel2.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %channel2.i, align 1
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %resp to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %resp, align 1
  %conv129 = zext i16 %102 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %conv129) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb127, %sw.bb125, %if.then.i273, %sw.bb123.cleanup_crit_edge, %sw.bb121, %sw.bb119, %sw.bb117, %sw.bb115, %sw.bb113, %sw.bb111, %sw.bb109, %sw.bb107, %sw.bb105, %sw.bb103, %sw.bb101, %if.then96, %if.end84.cleanup_crit_edge, %if.end81, %land.lhs.true.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %sw.bb65, %sw.bb63, %sw.bb61, %sw.bb59, %sw.bb57, %if.then.i267, %sw.bb54.cleanup_crit_edge, %sw.bb52, %if.then.i264, %sw.bb50.cleanup_crit_edge, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb16, %sw.bb13, %sw.bb11, %sw.bb7, %sw.bb, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge275, %if.end.cleanup_crit_edge276, %if.end.cleanup_crit_edge277, %if.end.cleanup_crit_edge279, %if.end.cleanup_crit_edge280, %if.end.cleanup_crit_edge281, %if.end.cleanup_crit_edge282, %if.end.cleanup_crit_edge283, %if.end.cleanup_crit_edge289, %if.end.cleanup_crit_edge290, %if.end.cleanup_crit_edge291, %if.end.cleanup_crit_edge292, %if.end.cleanup_crit_edge293, %if.end.cleanup_crit_edge294, %if.end.cleanup_crit_edge295, %if.end.cleanup_crit_edge296, %if.end.cleanup_crit_edge297, %if.end.cleanup_crit_edge298, %if.end.cleanup_crit_edge299, %if.end.cleanup_crit_edge300, %mwifiex_process_cmdresp_error.exit
  %retval.0 = phi i32 [ -1, %mwifiex_process_cmdresp_error.exit ], [ 0, %sw.default ], [ 0, %sw.bb127 ], [ 0, %sw.bb125 ], [ %call122, %sw.bb121 ], [ 0, %sw.bb119 ], [ %call118, %sw.bb117 ], [ 0, %sw.bb115 ], [ 0, %sw.bb113 ], [ 0, %sw.bb111 ], [ 0, %sw.bb109 ], [ %call108, %sw.bb107 ], [ 0, %sw.bb105 ], [ 0, %sw.bb103 ], [ %call102, %sw.bb101 ], [ 0, %if.end81 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then71.cleanup_crit_edge ], [ 0, %if.then96 ], [ 0, %if.end84.cleanup_crit_edge ], [ %call66, %sw.bb65 ], [ %call64, %sw.bb63 ], [ %call62, %sw.bb61 ], [ %call60, %sw.bb59 ], [ %call58, %sw.bb57 ], [ 0, %sw.bb52 ], [ 0, %sw.bb48 ], [ 0, %sw.bb46 ], [ 0, %sw.bb44 ], [ 0, %sw.bb42 ], [ 0, %sw.bb40 ], [ 0, %sw.bb38 ], [ %call37, %sw.bb36 ], [ 0, %sw.bb34 ], [ %call33, %sw.bb32 ], [ %call31, %sw.bb30 ], [ %call29, %sw.bb28 ], [ 0, %sw.bb26 ], [ 0, %sw.bb24 ], [ 0, %sw.bb22 ], [ %call21, %sw.bb20 ], [ %call17, %sw.bb16 ], [ %call14, %sw.bb13 ], [ %call12, %sw.bb11 ], [ 0, %sw.bb7 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge275 ], [ 0, %if.end.cleanup_crit_edge276 ], [ 0, %if.end.cleanup_crit_edge277 ], [ 0, %if.end.cleanup_crit_edge279 ], [ 0, %if.end.cleanup_crit_edge280 ], [ 0, %if.end.cleanup_crit_edge281 ], [ 0, %if.end.cleanup_crit_edge282 ], [ 0, %if.end.cleanup_crit_edge283 ], [ 0, %if.end.cleanup_crit_edge289 ], [ 0, %if.end.cleanup_crit_edge290 ], [ 0, %if.end.cleanup_crit_edge291 ], [ 0, %if.end.cleanup_crit_edge292 ], [ 0, %if.end.cleanup_crit_edge293 ], [ 0, %if.end.cleanup_crit_edge294 ], [ 0, %if.end.cleanup_crit_edge295 ], [ 0, %if.end.cleanup_crit_edge296 ], [ 0, %if.end.cleanup_crit_edge297 ], [ 0, %if.end.cleanup_crit_edge298 ], [ %call, %sw.bb ], [ 0, %if.end.cleanup_crit_edge299 ], [ 0, %if.end.cleanup_crit_edge300 ], [ 0, %sw.bb50.cleanup_crit_edge ], [ 0, %if.then.i264 ], [ 0, %sw.bb54.cleanup_crit_edge ], [ 0, %if.then.i267 ], [ 0, %sw.bb123.cleanup_crit_edge ], [ 0, %if.then.i273 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_get_hw_spec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_ret_tx_rate_cfg(ptr noundef %priv, ptr nocapture noundef readonly %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %size, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %sub1 = add i16 %2, -12
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %sub1)
  %cmp82 = icmp ugt i16 %sub1, 3
  br i1 %cmp82, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr = getelementptr %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %bitmap_rates = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 30
  %arrayidx11 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 1
  %arrayidx17 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 2
  %arrayidx17.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 3
  %arrayidx17.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 4
  %arrayidx17.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 5
  %arrayidx17.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 6
  %arrayidx17.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 7
  %arrayidx17.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 8
  %arrayidx17.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 9
  %arrayidx29 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 10
  %arrayidx29.1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 11
  %arrayidx29.2 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 12
  %arrayidx29.3 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 13
  %arrayidx29.4 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 14
  %arrayidx29.5 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 15
  %arrayidx29.6 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 16
  %arrayidx29.7 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 30, i32 17
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %tlv_buf.084 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr36, %sw.epilog.while.body_crit_edge ]
  %tlv_buf_left.083 = phi i16 [ %sub1, %while.body.lr.ph ], [ %conv41, %sw.epilog.while.body_crit_edge ]
  %conv3 = zext i16 %tlv_buf_left.083 to i32
  %len = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_buf.084, i32 0, i32 1
  %3 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %len, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv6 = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv6, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv3)
  %cmp7 = icmp ugt i32 %add, %conv3
  br i1 %cmp7, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = ptrtoint ptr %tlv_buf.084 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %tlv_buf.084, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 21249, i16 %7)
  %cond = icmp eq i16 %7, 21249
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %hr_dsss_rate_bitmap = getelementptr inbounds %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 2
  %8 = ptrtoint ptr %hr_dsss_rate_bitmap to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %hr_dsss_rate_bitmap, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = ptrtoint ptr %bitmap_rates to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %bitmap_rates, align 2
  %ofdm_rate_bitmap = getelementptr inbounds %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 3
  %12 = ptrtoint ptr %ofdm_rate_bitmap to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %ofdm_rate_bitmap, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx11, align 2
  %arrayidx14 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 4, i32 0
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %arrayidx14, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayidx17, align 2
  %arrayidx14.1 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %arrayidx14.1, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %23 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx17.1, align 2
  %arrayidx14.2 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %arrayidx14.2, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %27 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx17.2, align 2
  %arrayidx14.3 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %arrayidx14.3, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %31 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %arrayidx17.3, align 2
  %arrayidx14.4 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %arrayidx14.4, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %35 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayidx17.4, align 2
  %arrayidx14.5 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 4, i32 5
  %36 = ptrtoint ptr %arrayidx14.5 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %arrayidx14.5, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %39 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %arrayidx17.5, align 2
  %arrayidx14.6 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 4, i32 6
  %40 = ptrtoint ptr %arrayidx14.6 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %arrayidx14.6, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %43 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %arrayidx17.6, align 2
  %arrayidx14.7 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 4, i32 7
  %44 = ptrtoint ptr %arrayidx14.7 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %arrayidx14.7, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %47 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %arrayidx17.7, align 2
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 8
  %fw_api_ver = getelementptr inbounds %struct.mwifiex_adapter, ptr %49, i32 0, i32 138
  %50 = ptrtoint ptr %fw_api_ver to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %fw_api_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %51)
  %cmp19 = icmp eq i8 %51, 15
  br i1 %cmp19, label %for.body25.preheader, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body25.preheader:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx26 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 5, i32 0
  %52 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %arrayidx26, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %55 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %arrayidx29, align 2
  %arrayidx26.1 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 5, i32 1
  %56 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %arrayidx26.1, align 1
  %58 = tail call i16 @llvm.bswap.i16(i16 %57)
  %59 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %arrayidx29.1, align 2
  %arrayidx26.2 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 5, i32 2
  %60 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %arrayidx26.2, align 1
  %62 = tail call i16 @llvm.bswap.i16(i16 %61)
  %63 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %arrayidx29.2, align 2
  %arrayidx26.3 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 5, i32 3
  %64 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %arrayidx26.3, align 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %65)
  %67 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %arrayidx29.3, align 2
  %arrayidx26.4 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 5, i32 4
  %68 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %arrayidx26.4, align 1
  %70 = tail call i16 @llvm.bswap.i16(i16 %69)
  %71 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %arrayidx29.4, align 2
  %arrayidx26.5 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 5, i32 5
  %72 = ptrtoint ptr %arrayidx26.5 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %arrayidx26.5, align 1
  %74 = tail call i16 @llvm.bswap.i16(i16 %73)
  %75 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %arrayidx29.5, align 2
  %arrayidx26.6 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 5, i32 6
  %76 = ptrtoint ptr %arrayidx26.6 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %arrayidx26.6, align 1
  %78 = tail call i16 @llvm.bswap.i16(i16 %77)
  %79 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %arrayidx29.6, align 2
  %arrayidx26.7 = getelementptr %struct.mwifiex_rate_scope, ptr %tlv_buf.084, i32 0, i32 5, i32 7
  %80 = ptrtoint ptr %arrayidx26.7 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %arrayidx26.7, align 1
  %82 = tail call i16 @llvm.bswap.i16(i16 %81)
  %83 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %arrayidx29.7, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body25.preheader, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %add.ptr36 = getelementptr i8, ptr %tlv_buf.084, i32 %add
  %84 = trunc i32 %add to i16
  %conv41 = sub i16 %tlv_buf_left.083, %84
  %cmp = icmp ugt i16 %conv41, 3
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %call = tail call zeroext i8 @mwifiex_is_rate_auto(ptr noundef %priv) #9
  %is_data_rate_auto = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 33
  %85 = ptrtoint ptr %is_data_rate_auto to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %call, ptr %is_data_rate_auto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %data_rate = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 32
  %86 = ptrtoint ptr %data_rate to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %data_rate, align 8
  br label %cleanup

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 127, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then43
  %retval.0 = phi i32 [ 0, %if.then43 ], [ %call44, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_802_11_scan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_802_11_scan_ext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_results(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_tx_power_cfg(ptr nocapture noundef %priv, ptr noundef readonly %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 1
  %add.ptr3 = getelementptr %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 3
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %size, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %sub4 = add i16 %4, -16
  %conv6 = zext i16 %sub4 to i32
  %length = getelementptr %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %length, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv7 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv7, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv6)
  %cmp = icmp ugt i32 %add, %conv6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %8 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %params, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %10, label %sw.default [
    i16 0, label %sw.bb
    i16 1, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end
  %hw_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 45
  %12 = ptrtoint ptr %hw_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp10 = icmp ne i32 %13, 1
  %tobool.not.i = icmp eq ptr %add.ptr, null
  %or.cond = or i1 %tobool.not.i, %cmp10
  br i1 %or.cond, label %sw.bb.if.end13_crit_edge, label %if.end.i

sw.bb.if.end13_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end.i:                                         ; preds = %sw.bb
  %14 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %length, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %16)
  %cmp.i = icmp ult i16 %16, 8
  br i1 %cmp.i, label %if.end.i.if.end13_crit_edge, label %if.end4.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end4.i:                                        ; preds = %if.end.i
  %conv.i = zext i16 %16 to i32
  %power_max.i = getelementptr i8, ptr %add.ptr, i32 9
  %17 = ptrtoint ptr %power_max.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %power_max.i, align 1
  %conv5.i = sext i8 %18 to i32
  %power_min.i = getelementptr %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 5
  %19 = ptrtoint ptr %power_min.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %power_min.i, align 1
  %conv6.i = sext i8 %20 to i32
  %length.01.i = add nsw i32 %conv.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %length.01.i)
  %cmp72.i = icmp ugt i32 %length.01.i, 7
  br i1 %cmp72.i, label %if.end4.i.while.body.i_crit_edge, label %if.end4.i.while.end.i_crit_edge

if.end4.i.while.end.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end4.i.while.body.i_crit_edge
  %length.06.i = phi i32 [ %length.0.i, %while.body.i.while.body.i_crit_edge ], [ %length.01.i, %if.end4.i.while.body.i_crit_edge ]
  %pg.05.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr3, %if.end4.i.while.body.i_crit_edge ]
  %min_power.04.i = phi i32 [ %26, %while.body.i.while.body.i_crit_edge ], [ %conv6.i, %if.end4.i.while.body.i_crit_edge ]
  %max_power.03.i = phi i32 [ %23, %while.body.i.while.body.i_crit_edge ], [ %conv5.i, %if.end4.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.mwifiex_power_group, ptr %pg.05.i, i32 1
  %power_max9.i = getelementptr %struct.mwifiex_power_group, ptr %pg.05.i, i32 1, i32 5
  %21 = ptrtoint ptr %power_max9.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %power_max9.i, align 1
  %conv10.i = sext i8 %22 to i32
  %23 = tail call i32 @llvm.smax.i32(i32 %max_power.03.i, i32 %conv10.i) #9
  %power_min17.i = getelementptr %struct.mwifiex_power_group, ptr %pg.05.i, i32 1, i32 4
  %24 = ptrtoint ptr %power_min17.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %power_min17.i, align 1
  %conv18.i = sext i8 %25 to i32
  %26 = tail call i32 @llvm.smin.i32(i32 %min_power.04.i, i32 %conv18.i) #9
  %length.0.i = add i32 %length.06.i, -8
  %cmp7.i = icmp ugt i32 %length.0.i, 7
  br i1 %cmp7.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end4.i.while.end.i_crit_edge
  %max_power.0.lcssa.i = phi i32 [ %conv5.i, %if.end4.i.while.end.i_crit_edge ], [ %23, %while.body.i.while.end.i_crit_edge ]
  %min_power.0.lcssa.i = phi i32 [ %conv6.i, %if.end4.i.while.end.i_crit_edge ], [ %26, %while.body.i.while.end.i_crit_edge ]
  %conv26.i = trunc i32 %min_power.0.lcssa.i to i8
  %min_tx_power_level.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 22
  %27 = ptrtoint ptr %min_tx_power_level.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv26.i, ptr %min_tx_power_level.i, align 1
  %conv27.i = trunc i32 %max_power.0.lcssa.i to i8
  %max_tx_power_level.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 21
  %28 = ptrtoint ptr %max_tx_power_level.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv27.i, ptr %max_tx_power_level.i, align 2
  br label %if.end13

if.end13:                                         ; preds = %while.end.i, %if.end.i.if.end13_crit_edge, %sw.bb.if.end13_crit_edge
  %power_min = getelementptr %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 5
  %29 = ptrtoint ptr %power_min to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %power_min, align 1
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %31 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %sw.bb15.sw.epilog_crit_edge, label %if.end17

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end17:                                         ; preds = %sw.bb15
  %power_max = getelementptr inbounds %struct.mwifiex_power_group, ptr %add.ptr3, i32 0, i32 5
  %33 = ptrtoint ptr %power_max to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %power_max, align 1
  %power_min19 = getelementptr %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 5
  %35 = ptrtoint ptr %power_min19 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %power_min19, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp21 = icmp eq i8 %34, %36
  br i1 %cmp21, label %if.end17.sw.epilog.sink.split_crit_edge, label %if.end17.sw.epilog_crit_edge

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end17.sw.epilog.sink.split_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv9 = zext i16 %10 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %conv9) #9
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.end17.sw.epilog.sink.split_crit_edge, %if.end13
  %.sink = phi i8 [ %30, %if.end13 ], [ %34, %if.end17.sw.epilog.sink.split_crit_edge ]
  %conv25 = sext i8 %.sink to i16
  %tx_power_level26 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 20
  %37 = ptrtoint ptr %tx_power_level26 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv25, ptr %tx_power_level26, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end17.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge
  %tx_power_level29 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 20
  %38 = ptrtoint ptr %tx_power_level29 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tx_power_level29, align 8
  %conv30 = zext i16 %39 to i32
  %max_tx_power_level = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 21
  %40 = ptrtoint ptr %max_tx_power_level to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %max_tx_power_level, align 2
  %conv31 = zext i8 %41 to i32
  %min_tx_power_level = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 22
  %42 = ptrtoint ptr %min_tx_power_level to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %min_tx_power_level, align 1
  %conv32 = zext i8 %43 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.9, i32 noundef %conv30, i32 noundef %conv31, i32 noundef %conv32) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_rf_tx_power(ptr nocapture noundef %priv, ptr nocapture noundef readonly %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %params, align 1
  %cur_level = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %cur_level to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %cur_level, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %tx_power_level = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 20
  %5 = ptrtoint ptr %tx_power_level to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %tx_power_level, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %max_power = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %6 = ptrtoint ptr %max_power to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_power, align 1
  %max_tx_power_level = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 21
  %8 = ptrtoint ptr %max_tx_power_level to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %max_tx_power_level, align 2
  %min_power = getelementptr inbounds %struct.host_cmd_ds_rf_tx_pwr, ptr %params, i32 0, i32 3
  %9 = ptrtoint ptr %min_power to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %min_power, align 1
  %min_tx_power_level = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 22
  %11 = ptrtoint ptr %min_tx_power_level to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %min_tx_power_level, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %conv4 = zext i16 %4 to i32
  %max_tx_power_level5 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 21
  %14 = ptrtoint ptr %max_tx_power_level5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %max_tx_power_level5, align 2
  %conv6 = zext i8 %15 to i32
  %min_tx_power_level7 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 22
  %16 = ptrtoint ptr %min_tx_power_level7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %min_tx_power_level7, align 1
  %conv8 = zext i8 %17 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %13, i32 noundef 1073741824, ptr noundef nonnull @.str.10, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_rf_antenna(ptr nocapture noundef %priv, ptr nocapture noundef readonly %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw_dev_mcs_support = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 114
  %2 = ptrtoint ptr %hw_dev_mcs_support to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_dev_mcs_support, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %3)
  %cmp = icmp eq i8 %3, 34
  %tx_ant_mode = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %tx_ant_mode to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %tx_ant_mode, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv4 = zext i16 %6 to i32
  %tx_ant = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 23
  %7 = ptrtoint ptr %tx_ant to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv4, ptr %tx_ant, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_ant_mode = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3
  %8 = ptrtoint ptr %rx_ant_mode to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %rx_ant_mode, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv5 = zext i16 %10 to i32
  %rx_ant = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 24
  %11 = ptrtoint ptr %rx_ant to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv5, ptr %rx_ant, align 8
  %12 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %params, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv6 = zext i16 %14 to i32
  %15 = ptrtoint ptr %tx_ant_mode to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %tx_ant_mode, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv8 = zext i16 %17 to i32
  %action_rx = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %18 = ptrtoint ptr %action_rx to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %action_rx, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv9 = zext i16 %20 to i32
  %21 = ptrtoint ptr %rx_ant_mode to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %rx_ant_mode, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv11 = zext i16 %23 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.11, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv11) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %tx_ant_mode to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %tx_ant_mode, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv15 = zext i16 %26 to i32
  %rx_ant16 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 24
  %27 = ptrtoint ptr %rx_ant16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv15, ptr %rx_ant16, align 8
  %28 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %params, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv17 = zext i16 %30 to i32
  %31 = ptrtoint ptr %tx_ant_mode to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %tx_ant_mode, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv19 = zext i16 %33 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.12, i32 noundef %conv17, i32 noundef %conv19) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_enh_power_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_802_11_hs_cfg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_802_11_associate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_802_11_deauthenticate(ptr noundef %priv, ptr nocapture noundef readonly %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %num_cmd_deauth = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 6
  %2 = ptrtoint ptr %num_cmd_deauth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_cmd_deauth, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %num_cmd_deauth, align 4
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %curr_bss_params = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %params, ptr noundef dereferenceable(6) %curr_bss_params, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mwifiex_reset_connect_state(ptr noundef %priv, i16 noundef zeroext 3, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_802_11_ad_hoc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mwifiex_ret_get_log(ptr nocapture noundef readonly %resp, ptr noundef writeonly %stats) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %stats, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %params, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %stats, align 4
  %failed = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %4 = ptrtoint ptr %failed to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %failed, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %failed2 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 1
  %7 = ptrtoint ptr %failed2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %failed2, align 4
  %retry = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %retry to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %retry, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %retry3 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 2
  %11 = ptrtoint ptr %retry3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %retry3, align 4
  %multi_retry = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %multi_retry to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %multi_retry, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %multi_retry4 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 3
  %15 = ptrtoint ptr %multi_retry4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %multi_retry4, align 4
  %frame_dup = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 5
  %16 = ptrtoint ptr %frame_dup to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %frame_dup, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %frame_dup5 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 4
  %19 = ptrtoint ptr %frame_dup5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %frame_dup5, align 4
  %rts_success = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 7
  %20 = ptrtoint ptr %rts_success to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %rts_success, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %rts_success6 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 5
  %23 = ptrtoint ptr %rts_success6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rts_success6, align 4
  %rts_failure = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 4
  %24 = ptrtoint ptr %rts_failure to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %rts_failure, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %rts_failure7 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 6
  %27 = ptrtoint ptr %rts_failure7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rts_failure7, align 4
  %ack_failure = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, ptr %params, i32 0, i32 7
  %28 = ptrtoint ptr %ack_failure to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %ack_failure, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %ack_failure8 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 7
  %31 = ptrtoint ptr %ack_failure8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ack_failure8, align 4
  %rx_frag = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %rx_frag to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %rx_frag, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %rx_frag9 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 8
  %35 = ptrtoint ptr %rx_frag9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rx_frag9, align 4
  %mcast_rx_frame = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 4
  %36 = ptrtoint ptr %mcast_rx_frame to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %mcast_rx_frame, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %mcast_rx_frame10 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 9
  %39 = ptrtoint ptr %mcast_rx_frame10 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %mcast_rx_frame10, align 4
  %fcs_error = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 8
  %40 = ptrtoint ptr %fcs_error to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %fcs_error, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %fcs_error11 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 10
  %43 = ptrtoint ptr %fcs_error11 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %fcs_error11, align 4
  %tx_frame = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 12
  %44 = ptrtoint ptr %tx_frame to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %tx_frame, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %tx_frame12 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 11
  %47 = ptrtoint ptr %tx_frame12 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tx_frame12, align 4
  %wep_icv_err_cnt = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 20
  %48 = ptrtoint ptr %wep_icv_err_cnt to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %wep_icv_err_cnt, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %wep_icv_error = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 12
  %51 = ptrtoint ptr %wep_icv_error to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %wep_icv_error, align 4
  %arrayidx15 = getelementptr %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 24
  %52 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %arrayidx15, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %arrayidx17 = getelementptr %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 12, i32 1
  %55 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 28
  %56 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %arrayidx19, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %arrayidx21 = getelementptr %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 12, i32 2
  %59 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx21, align 4
  %arrayidx23 = getelementptr %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 32
  %60 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %arrayidx23, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %arrayidx25 = getelementptr %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 12, i32 3
  %63 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx25, align 4
  %bcn_rcv_cnt = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 36
  %64 = ptrtoint ptr %bcn_rcv_cnt to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %bcn_rcv_cnt, align 1
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %bcn_rcv_cnt26 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 13
  %67 = ptrtoint ptr %bcn_rcv_cnt26 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %bcn_rcv_cnt26, align 4
  %bcn_miss_cnt = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 40
  %68 = ptrtoint ptr %bcn_miss_cnt to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %bcn_miss_cnt, align 1
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %bcn_miss_cnt27 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %stats, i32 0, i32 14
  %71 = ptrtoint ptr %bcn_miss_cnt27 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %bcn_miss_cnt27, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_802_11_rssi_info(ptr noundef %priv, ptr nocapture noundef readonly %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %async_subsc_evt_storage = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 119
  %data_rssi_last = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3
  %0 = ptrtoint ptr %data_rssi_last to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %data_rssi_last, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %data_rssi_last1 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 37
  %3 = ptrtoint ptr %data_rssi_last1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %data_rssi_last1, align 2
  %data_nf_last = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %data_nf_last to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %data_nf_last, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %data_nf_last2 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 38
  %7 = ptrtoint ptr %data_nf_last2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %data_nf_last2, align 4
  %data_rssi_avg = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %data_rssi_avg to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %data_rssi_avg, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %data_rssi_avg3 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 39
  %11 = ptrtoint ptr %data_rssi_avg3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %data_rssi_avg3, align 2
  %data_nf_avg = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %data_nf_avg to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %data_nf_avg, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %data_nf_avg4 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 40
  %15 = ptrtoint ptr %data_nf_avg4 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %data_nf_avg4, align 8
  %bcn_rssi_last = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %bcn_rssi_last to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %bcn_rssi_last, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %bcn_rssi_last5 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 41
  %19 = ptrtoint ptr %bcn_rssi_last5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %bcn_rssi_last5, align 2
  %bcn_nf_last = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 5
  %20 = ptrtoint ptr %bcn_nf_last to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %bcn_nf_last, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %bcn_nf_last6 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 42
  %23 = ptrtoint ptr %bcn_nf_last6 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %bcn_nf_last6, align 4
  %bcn_rssi_avg = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 6
  %24 = ptrtoint ptr %bcn_rssi_avg to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %bcn_rssi_avg, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %bcn_rssi_avg7 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 43
  %27 = ptrtoint ptr %bcn_rssi_avg7 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %bcn_rssi_avg7, align 2
  %bcn_nf_avg = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 7
  %28 = ptrtoint ptr %bcn_nf_avg to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %bcn_nf_avg, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %bcn_nf_avg8 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 44
  %31 = ptrtoint ptr %bcn_nf_avg8 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %bcn_nf_avg8, align 8
  %subsc_evt_rssi_state = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 117
  %32 = ptrtoint ptr %subsc_evt_rssi_state to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %subsc_evt_rssi_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp = icmp eq i8 %33, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %34 = ptrtoint ptr %async_subsc_evt_storage to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 563022967930881, ptr %async_subsc_evt_storage, align 2
  %35 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %33, label %if.end.if.end66_crit_edge [
    i8 1, label %if.then14
    i8 2, label %if.then36
  ]

if.end.if.end66_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv16 = sext i16 %26 to i32
  %cqm_rssi_hyst = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 116
  %36 = ptrtoint ptr %cqm_rssi_hyst to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cqm_rssi_hyst, align 8
  %sub = sub i32 %conv16, %37
  %38 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %conv20 = trunc i32 %38 to i8
  %bcn_l_rssi_cfg = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 119, i32 2
  %39 = ptrtoint ptr %bcn_l_rssi_cfg to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv20, ptr %bcn_l_rssi_cfg, align 2
  %cqm_rssi_thold = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 115
  %40 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cqm_rssi_thold, align 4
  br label %if.end66.sink.split

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cqm_rssi_thold38 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 115
  %42 = ptrtoint ptr %cqm_rssi_thold38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cqm_rssi_thold38, align 4
  %44 = tail call i32 @llvm.abs.i32(i32 %43, i1 false)
  %conv47 = trunc i32 %44 to i8
  %bcn_l_rssi_cfg48 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 119, i32 2
  %45 = ptrtoint ptr %bcn_l_rssi_cfg48 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv47, ptr %bcn_l_rssi_cfg48, align 2
  %conv52 = sext i16 %26 to i32
  %cqm_rssi_hyst53 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 116
  %46 = ptrtoint ptr %cqm_rssi_hyst53 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cqm_rssi_hyst53, align 8
  %add = add i32 %47, %conv52
  br label %if.end66.sink.split

if.end66.sink.split:                              ; preds = %if.then36, %if.then14
  %add.sink = phi i32 [ %add, %if.then36 ], [ %41, %if.then14 ]
  %48 = tail call i32 @llvm.abs.i32(i32 %add.sink, i1 false)
  %conv62 = trunc i32 %48 to i8
  %bcn_h_rssi_cfg63 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 119, i32 3
  %49 = ptrtoint ptr %bcn_h_rssi_cfg63 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv62, ptr %bcn_h_rssi_cfg63, align 2
  br label %if.end66

if.end66:                                         ; preds = %if.end66.sink.split, %if.end.if.end66_crit_edge
  %50 = ptrtoint ptr %subsc_evt_rssi_state to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %subsc_evt_rssi_state, align 4
  %call = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 117, i16 noundef zeroext 0, i32 noundef 0, ptr noundef %async_subsc_evt_storage, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_802_11_snmp_mib(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %resp, ptr noundef writeonly %data_buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %oid1 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %oid1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %oid1, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %params, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %conv = zext i16 %2 to i32
  %conv3 = zext i16 %5 to i32
  %buf_size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %8 = ptrtoint ptr %buf_size to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %buf_size, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv4 = zext i16 %10 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 1073741824, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3
  %11 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %value, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #9
  %conv7 = zext i16 %13 to i32
  %tobool.not = icmp eq ptr %data_buf, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %data_buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv7, ptr %data_buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %switch.tableidx = add i16 %2, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %switch.tableidx)
  %15 = icmp ult i16 %switch.tableidx, 6
  br i1 %15, label %switch.hole_check, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i16 %switch.tableidx to i8
  %switch.shifted = lshr i8 45, %switch.maskindex
  %16 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.lobit.not = icmp eq i8 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end17_crit_edge, label %switch.lookup

switch.hole_check.if.end17_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %17 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.mwifiex_ret_802_11_snmp_mib, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 1073741824, ptr noundef nonnull %switch.load, i32 noundef %conv7) #9
  br label %if.end17

if.end17:                                         ; preds = %switch.lookup, %switch.hole_check.if.end17_crit_edge, %if.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_802_11_tx_rate_query(ptr noundef %priv, ptr nocapture noundef readonly %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %params, align 1
  %tx_rate1 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 25
  %2 = ptrtoint ptr %tx_rate1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %tx_rate1, align 4
  %ht_info = getelementptr inbounds %struct.host_cmd_ds_tx_rate_query, ptr %params, i32 0, i32 1
  %3 = ptrtoint ptr %ht_info to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ht_info, align 1
  %tx_htinfo = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 26
  %5 = ptrtoint ptr %tx_htinfo to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %tx_htinfo, align 1
  %is_data_rate_auto = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 33
  %6 = ptrtoint ptr %is_data_rate_auto to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_data_rate_auto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @mwifiex_index_to_data_rate(ptr noundef %priv, i8 noundef zeroext %1, i8 noundef zeroext %4) #9
  %data_rate = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 32
  %8 = ptrtoint ptr %data_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %data_rate, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_ver_ext(ptr noundef %priv, ptr nocapture noundef readonly %resp, ptr noundef writeonly %version_ext) unnamed_addr #0 align 64 {
entry:
  %auto_ds = alloca %struct.mwifiex_ds_auto_ds, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 12
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %work_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %version_str = getelementptr inbounds %struct.host_cmd_ds_version_ext, ptr %params, i32 0, i32 1
  %call1 = tail call i32 @strncmp(ptr noundef %version_str, ptr noundef nonnull dereferenceable(36) @.str.18, i32 noundef 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %auto_ds) #9
  %2 = ptrtoint ptr %auto_ds to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %auto_ds, align 4
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.19) #9
  %call4 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 228, i16 noundef zeroext 254, i32 noundef 1, ptr noundef nonnull %auto_ds, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end_crit_edge, label %if.then6

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.20) #9
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then2.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auto_ds) #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  %tobool10.not = icmp eq ptr %version_ext, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %params, align 1
  %9 = ptrtoint ptr %version_ext to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %version_ext, align 1
  %version_str13 = getelementptr inbounds %struct.host_cmd_ds_version_ext, ptr %version_ext, i32 0, i32 1
  %version_str15 = getelementptr inbounds %struct.host_cmd_ds_version_ext, ptr %params, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %version_str13, ptr %version_str15, i32 128)
  %version_str17 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 106
  %11 = call ptr @memcpy(ptr %version_str17, ptr %version_str15, i32 128)
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 106, i32 127
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mwifiex_ret_pkt_aggr_ctrl(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %resp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %enable = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %enable, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %bus_aggr = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 166
  %5 = ptrtoint ptr %bus_aggr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %bus_aggr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %intf_hdr_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 166, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %mode, align 2
  %tx_aggr_max_size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %8 = ptrtoint ptr %tx_aggr_max_size to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %tx_aggr_max_size, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %tx_aggr_max_size7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 166, i32 2
  %11 = ptrtoint ptr %tx_aggr_max_size7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %tx_aggr_max_size7, align 2
  %tx_aggr_max_num = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3
  %12 = ptrtoint ptr %tx_aggr_max_num to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %tx_aggr_max_num, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %tx_aggr_max_num9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 166, i32 3
  %15 = ptrtoint ptr %tx_aggr_max_num9 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %tx_aggr_max_num9, align 2
  %tx_aggr_align = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %tx_aggr_align to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %tx_aggr_align, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %tx_aggr_align11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 166, i32 4
  %19 = ptrtoint ptr %tx_aggr_align11 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %tx_aggr_align11, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_ret_802_11_key_material(ptr nocapture noundef %priv, ptr nocapture noundef readonly %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %key_param_set.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %key_params.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 5
  %key_len.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 4
  %4 = ptrtoint ptr %key_len.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %key_len.i, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #9
  %conv.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %6)
  %cmp.i = icmp ugt i16 %6, 32
  br i1 %cmp.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %if.then
  %params.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %7 = ptrtoint ptr %params.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %params.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %cmp3.i = icmp eq i16 %8, 256
  br i1 %cmp3.i, label %if.then5.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  %key_info.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %key_info.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %key_info.i, align 1
  %11 = and i16 %10, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %if.then5.i.if.end10.i_crit_edge, label %if.then8.i

if.then5.i.if.end10.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.21) #9
  %wpa_is_gtk_set.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 65
  %12 = ptrtoint ptr %wpa_is_gtk_set.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %wpa_is_gtk_set.i, align 4
  %scan_block.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 114
  %13 = ptrtoint ptr %scan_block.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %scan_block.i, align 1
  %port_open.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 9
  %14 = ptrtoint ptr %port_open.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %port_open.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.then5.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %key_type.i = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set_v2, ptr %key_param_set.i, i32 0, i32 4
  %15 = ptrtoint ptr %key_type.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %key_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp13.not.i = icmp eq i8 %16, 2
  br i1 %cmp13.not.i, label %if.end16.i, label %if.end10.i.return_crit_edge

if.end10.i.return_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %key.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 67, i32 1, i32 6, i32 0, i32 0, i32 10
  %17 = call ptr @memset(ptr %key.i, i32 0, i32 32)
  %key_len23.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 67, i32 1, i32 6, i32 0, i32 0, i32 8
  %18 = ptrtoint ptr %key_len23.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %5, ptr %key_len23.i, align 1
  %key31.i = getelementptr inbounds %struct.mwifiex_aes_param, ptr %key_params.i, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %key.i, ptr %key31.i, i32 %conv.i)
  br label %return

if.else:                                          ; preds = %entry
  %key_len.i6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %key_len.i6 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %key_len.i6, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #9
  %conv.i7 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 50, i16 %22)
  %cmp.i8 = icmp ugt i16 %22, 50
  br i1 %cmp.i8, label %if.else.return_crit_edge, label %if.end.i11

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i11:                                       ; preds = %if.else
  %params.i9 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %23 = ptrtoint ptr %params.i9 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %params.i9, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %24)
  %cmp3.i10 = icmp eq i16 %24, 256
  br i1 %cmp3.i10, label %if.then5.i14, label %if.end.i11.if.end10.i19_crit_edge

if.end.i11.if.end10.i19_crit_edge:                ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i19

if.then5.i14:                                     ; preds = %if.end.i11
  %key_info.i12 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %key_info.i12 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %key_info.i12, align 1
  %27 = and i16 %26, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i13 = icmp eq i16 %27, 0
  br i1 %tobool.not.i13, label %if.then5.i14.if.end10.i19_crit_edge, label %if.then8.i18

if.then5.i14.if.end10.i19_crit_edge:              ; preds = %if.then5.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i19

if.then8.i18:                                     ; preds = %if.then5.i14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.21) #9
  %wpa_is_gtk_set.i15 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 65
  %28 = ptrtoint ptr %wpa_is_gtk_set.i15 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %wpa_is_gtk_set.i15, align 4
  %scan_block.i16 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 114
  %29 = ptrtoint ptr %scan_block.i16 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %scan_block.i16, align 1
  %port_open.i17 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 9
  %30 = ptrtoint ptr %port_open.i17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %port_open.i17, align 1
  br label %if.end10.i19

if.end10.i19:                                     ; preds = %if.then8.i18, %if.then5.i14.if.end10.i19_crit_edge, %if.end.i11.if.end10.i19_crit_edge
  %key12.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 66, i32 1, i32 5
  %31 = call ptr @memset(ptr %key12.i, i32 0, i32 50)
  %key_len16.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 66, i32 1, i32 4
  %32 = ptrtoint ptr %key_len16.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %21, ptr %key_len16.i, align 1
  %key22.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 3
  %33 = call ptr @memcpy(ptr %key12.i, ptr %key22.i, i32 %conv.i7)
  br label %return

return:                                           ; preds = %if.end10.i19, %if.else.return_crit_edge, %if.end16.i, %if.end10.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16.i ], [ -22, %if.then.return_crit_edge ], [ 0, %if.end10.i.return_crit_edge ], [ 0, %if.end10.i19 ], [ -22, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_ret_802_11d_domain_info(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %params, align 1
  %len = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %len, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %sub = add nsw i32 %conv, -3
  %div = udiv i32 %sub, 3
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %conv4 = and i32 %div, 255
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 1073741824, ptr noundef nonnull @.str.22, i32 noundef %conv4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %conv4)
  %cmp = icmp ugt i32 %conv4, 83
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %conv4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = tail call i16 @llvm.bswap.i16(i16 %1)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %switch = icmp ult i16 %9, 2
  br i1 %switch, label %if.end.cleanup_crit_edge, label %sw.default

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %12 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %params, align 1
  %conv12 = zext i16 %13 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef %conv12) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %sw.default ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_11n_addba_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_11n_delba(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_11n_addba_resp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_wmm_get_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_ibss_coalescing_status(ptr nocapture noundef %priv, ptr noundef %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %params, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp = icmp eq i16 %1, 256
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %bssid = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.25, ptr noundef %bssid) #9
  %4 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bssid, align 4
  %add.ptr.i = getelementptr %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %7 to i32
  %or.i = or i32 %5, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 2, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %curr_bss_params = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  %10 = ptrtoint ptr %curr_bss_params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %curr_bss_params, align 4
  %xor.i = xor i32 %11, %5
  %add.ptr.i1 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 0, i32 4
  %12 = ptrtoint ptr %add.ptr.i1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i1, align 2
  %xor37.i = xor i16 %13, %7
  %xor3.i = zext i16 %xor37.i to i32
  %or.i2 = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i2)
  %cmp.i3 = icmp eq i32 %or.i2, 0
  br i1 %cmp.i3, label %if.end6.cleanup_crit_edge, label %if.then11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %14 = call ptr @memcpy(ptr %curr_bss_params, ptr %bssid, i32 6)
  %beacon_interval = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %beacon_interval, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %beacon_period = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 7
  %18 = ptrtoint ptr %beacon_period to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %beacon_period, align 8
  %use_g_rate_protect = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %use_g_rate_protect to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %use_g_rate_protect, align 1
  %21 = lshr i16 %20, 8
  %conv20 = trunc i16 %21 to i8
  %erp_flags = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 8
  %22 = ptrtoint ptr %erp_flags to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv20, ptr %erp_flags, align 2
  %adhoc_state = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 58
  %23 = ptrtoint ptr %adhoc_state to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %adhoc_state, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_ret_reg_access(i16 noundef zeroext %type, ptr nocapture noundef readonly %resp, ptr noundef %data_buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data_buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i16 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %type, label %if.end.cleanup_crit_edge [
    i16 25, label %sw.bb
    i16 26, label %sw.bb4
    i16 27, label %sw.bb12
    i16 173, label %sw.bb20
    i16 237, label %sw.bb28
    i16 89, label %sw.bb36
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %offset = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %offset, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %conv1 = zext i16 %3 to i32
  %offset2 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 1
  %4 = ptrtoint ptr %offset2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv1, ptr %offset2, align 4
  %value = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %value, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %value3 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 2
  %8 = ptrtoint ptr %value3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value3, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %offset6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %9 = ptrtoint ptr %offset6 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %offset6, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv7 = zext i16 %11 to i32
  %offset8 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 1
  %12 = ptrtoint ptr %offset8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv7, ptr %offset8, align 4
  %value9 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %13 = ptrtoint ptr %value9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value9, align 1
  %conv10 = zext i8 %14 to i32
  %value11 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 2
  %15 = ptrtoint ptr %value11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv10, ptr %value11, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %offset14 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %offset14 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %offset14, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv15 = zext i16 %18 to i32
  %offset16 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 1
  %19 = ptrtoint ptr %offset16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv15, ptr %offset16, align 4
  %value17 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %20 = ptrtoint ptr %value17 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %value17, align 1
  %conv18 = zext i8 %21 to i32
  %value19 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 2
  %22 = ptrtoint ptr %value19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv18, ptr %value19, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %offset22 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %offset22 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %offset22, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv23 = zext i16 %25 to i32
  %offset24 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 1
  %26 = ptrtoint ptr %offset24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv23, ptr %offset24, align 4
  %value25 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %27 = ptrtoint ptr %value25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %value25, align 1
  %conv26 = zext i8 %28 to i32
  %value27 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 2
  %29 = ptrtoint ptr %value27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv26, ptr %value27, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %offset30 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %30 = ptrtoint ptr %offset30 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %offset30, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv31 = zext i16 %32 to i32
  %offset32 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 1
  %33 = ptrtoint ptr %offset32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv31, ptr %offset32, align 4
  %value33 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %34 = ptrtoint ptr %value33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %value33, align 1
  %conv34 = zext i8 %35 to i32
  %value35 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %data_buf, i32 0, i32 2
  %36 = ptrtoint ptr %value35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv34, ptr %value35, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_ret_reg_access.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_ret_reg_access, %if.then41)) #9
          to label %do.end [label %if.then41], !srcloc !96

if.then41:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  %byte_count = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %37 = ptrtoint ptr %byte_count to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %byte_count, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %conv42 = zext i16 %39 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_ret_reg_access.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.31, i32 noundef %conv42) #9
  br label %do.end

do.end:                                           ; preds = %if.then41, %sw.bb36
  %byte_count44 = getelementptr inbounds %struct.mwifiex_ds_read_eeprom, ptr %data_buf, i32 0, i32 1
  %40 = ptrtoint ptr %byte_count44 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %byte_count44, align 2
  %byte_count46 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %42 = ptrtoint ptr %byte_count46 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %byte_count46, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %44)
  %cmp = icmp ult i16 %41, %44
  br i1 %cmp, label %if.then49, label %if.end67

if.then49:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %byte_count44 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %byte_count44, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_ret_reg_access.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_ret_reg_access, %if.then63)) #9
          to label %cleanup [label %if.then63], !srcloc !96

if.then63:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_ret_reg_access.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.33) #9
  br label %cleanup

if.end67:                                         ; preds = %do.end
  %offset68 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %46 = ptrtoint ptr %offset68 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %offset68, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %49 = ptrtoint ptr %data_buf to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %data_buf, align 2
  %50 = ptrtoint ptr %byte_count46 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %byte_count46, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  %53 = ptrtoint ptr %byte_count44 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %byte_count44, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp74.not = icmp eq i16 %51, 0
  br i1 %cmp74.not, label %if.end67.cleanup_crit_edge, label %if.then76

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then76:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %value77 = getelementptr inbounds %struct.mwifiex_ds_read_eeprom, ptr %data_buf, i32 0, i32 2
  %value78 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3
  %54 = tail call i16 @llvm.umin.i16(i16 %52, i16 256)
  %.conv73 = zext i16 %54 to i32
  %55 = call ptr @memcpy(ptr %value77, ptr %value78, i32 %.conv73)
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %if.end67.cleanup_crit_edge, %if.then63, %if.then49, %sw.bb28, %sw.bb20, %sw.bb12, %sw.bb4, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then63 ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ], [ 0, %if.then76 ], [ 0, %sw.bb28 ], [ 0, %sw.bb20 ], [ 0, %sw.bb12 ], [ 0, %sw.bb4 ], [ 0, %sw.bb ], [ -1, %if.then49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_uap_sta_list(ptr noundef %priv, ptr noundef %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %params, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp2.not = icmp eq i16 %1, 0
  br i1 %cmp2.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %tlv = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.04 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sta_info.03 = phi ptr [ %sta_info.1, %for.inc.for.body_crit_edge ], [ %tlv, %for.body.preheader ]
  %mac = getelementptr inbounds %struct.mwifiex_ie_types_sta_info, ptr %sta_info.03, i32 0, i32 1
  %call = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %mac) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end, !prof !97

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %rssi = getelementptr inbounds %struct.mwifiex_ie_types_sta_info, ptr %sta_info.03, i32 0, i32 3
  %2 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rssi, align 1
  %rssi5 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %rssi5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %rssi5, align 8
  %incdec.ptr = getelementptr %struct.mwifiex_ie_types_sta_info, ptr %sta_info.03, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %sta_info.1 = phi ptr [ %sta_info.03, %for.body.for.inc_crit_edge ], [ %incdec.ptr, %if.end ]
  %inc = add nuw nsw i32 %i.04, 1
  %5 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %params, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_ret_tdls_oper(ptr noundef %priv, ptr noundef %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %reason1 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %reason1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %reason1, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %params, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %peer_mac = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %call = tail call ptr @mwifiex_get_sta_entry(ptr noundef %priv, ptr noundef %peer_mac) #9
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %5, label %sw.default [
    i16 0, label %sw.bb
    i16 1, label %sw.bb18
    i16 2, label %sw.bb36
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.else13, label %if.then

if.then:                                          ; preds = %sw.bb
  %tobool2.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %1)
  %cmp = icmp eq i16 %1, 1024
  %or.cond = select i1 %tobool2.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %conv8 = zext i16 %2 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef %peer_mac, i32 noundef %conv8) #9
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv3 = zext i16 %2 to i32
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.35, ptr noundef %peer_mac, i32 noundef %conv3) #9
  br label %cleanup

if.else13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef %peer_mac) #9
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool19.not = icmp eq i16 %1, 0
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  br i1 %tobool19.not, label %if.else31, label %if.then20

if.then20:                                        ; preds = %sw.bb18
  %conv24 = zext i16 %2 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 4, ptr noundef nonnull @.str.37, ptr noundef %peer_mac, i32 noundef %conv24) #9
  %tobool25.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %1)
  %cmp27.not = icmp eq i16 %1, 768
  %or.cond87 = select i1 %tobool25.not, i1 true, i1 %cmp27.not
  br i1 %or.cond87, label %if.then20.cleanup_crit_edge, label %if.then29

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %tdls_status = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 8
  %15 = ptrtoint ptr %tdls_status to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %tdls_status, align 4
  br label %cleanup

if.else31:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef %peer_mac) #9
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool37.not = icmp eq i16 %1, 0
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  br i1 %tobool37.not, label %if.else47, label %if.then38

if.then38:                                        ; preds = %sw.bb36
  %conv42 = zext i16 %2 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 4, ptr noundef nonnull @.str.39, ptr noundef %peer_mac, i32 noundef %conv42) #9
  %tobool43.not = icmp eq ptr %call, null
  br i1 %tobool43.not, label %if.then38.cleanup_crit_edge, label %if.then44

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then44:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %tdls_status45 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %call, i32 0, i32 8
  %18 = ptrtoint ptr %tdls_status45 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %tdls_status45, align 4
  br label %cleanup

if.else47:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef %peer_mac) #9
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %5 to i32
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.else47, %if.then44, %if.then38.cleanup_crit_edge, %if.else31, %if.then29, %if.then20.cleanup_crit_edge, %if.else13, %if.else, %if.then5
  %retval.0 = phi i32 [ -1, %sw.default ], [ 0, %if.else47 ], [ 0, %if.then44 ], [ 0, %if.then38.cleanup_crit_edge ], [ 0, %if.else31 ], [ 0, %if.then29 ], [ 0, %if.then20.cleanup_crit_edge ], [ 0, %if.else13 ], [ 0, %if.else ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_wakeup_reason(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_chan_region_cfg(ptr nocapture noundef readonly %priv, ptr noundef %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %params, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %size, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %sub4 = add i16 %4, -10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %sub4)
  %cmp78 = icmp ugt i16 %sub4, 3
  br i1 %cmp78, label %while.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.preheader:                             ; preds = %if.end
  %add.ptr = getelementptr %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.preheader
  %tlv_buf.010 = phi ptr [ %add.ptr28, %sw.epilog.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %tlv_buf_left.09 = phi i16 [ %conv33, %sw.epilog.while.body_crit_edge ], [ %sub4, %while.body.preheader ]
  %conv6 = zext i16 %tlv_buf_left.09 to i32
  %len = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv_buf.010, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %len, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv10 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv10, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv6)
  %cmp11 = icmp ugt i32 %add, %conv6
  br i1 %cmp11, label %while.body.cleanup_crit_edge, label %if.end14

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %while.body
  %8 = ptrtoint ptr %tlv_buf.010 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %tlv_buf.010, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4863, i16 %9)
  %cond = icmp eq i16 %9, -4863
  br i1 %cond, label %do.body, label %if.end14.sw.epilog_crit_edge

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %if.end14
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %debug_mask = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask, align 4
  %and = and i32 %13, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then16

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr17 = getelementptr i8, ptr %tlv_buf.010, i32 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr17, i32 noundef %conv10, i1 noundef zeroext false) #9
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body.do.end_crit_edge
  %add.ptr20 = getelementptr i8, ptr %tlv_buf.010, i32 4
  %14 = lshr i16 %7, 1
  %conv2.i = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %7)
  %cmp.i = icmp ugt i16 %7, 257
  br i1 %cmp.i, label %land.rhs.i, label %if.end8.i.i.i

land.rhs.i:                                       ; preds = %do.end
  %.b1.i = load i1, ptr @mwifiex_create_custom_regdomain.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.sw.epilog_crit_edge, label %if.then.i, !prof !98

land.rhs.i.sw.epilog_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mwifiex_create_custom_regdomain.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 1064, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog

if.end8.i.i.i:                                    ; preds = %do.end
  %15 = mul nuw nsw i32 %conv2.i, 96
  %16 = or i32 %15, 20
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #13
  %tobool45.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool45.not.i, label %if.end8.i.i.i.sw.epilog_crit_edge, label %for.cond.preheader.i

if.end8.i.i.i.sw.epilog_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.cond.preheader.i:                             ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %7)
  %cmp5019.not.i = icmp ult i16 %7, 2
  br i1 %cmp5019.not.i, label %for.cond.preheader.i.mwifiex_create_custom_regdomain.exit_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.mwifiex_create_custom_regdomain.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_create_custom_regdomain.exit

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %conv2.i, i32 1) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %buf.addr.026.i = phi ptr [ %incdec.ptr55.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr20, %for.body.preheader.i ]
  %valid_rules.025.i = phi i8 [ %valid_rules.2.ph.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %prev_chflags.024.i = phi i8 [ %prev_chflags.1.ph.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %prev_bw.023.i = phi i32 [ %prev_bw.1.ph.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %prev_freq.022.i = phi i32 [ %prev_freq.1.ph.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %idx.020.i = phi i32 [ %inc122.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %17 = ptrtoint ptr %buf.addr.026.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf.addr.026.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool52.not.i = icmp eq i8 %18, 0
  br i1 %tobool52.not.i, label %mwifiex_create_custom_regdomain.exit.thread4, label %if.end54.i

if.end54.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.026.i, i32 1
  %incdec.ptr55.i = getelementptr i8, ptr %buf.addr.026.i, i32 2
  %19 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr.i, align 1
  %conv56.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %18)
  %cmp57.i = icmp ugt i8 %18, 14
  %cond.i = zext i1 %cmp57.i to i32
  %call.i.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv56.i, i32 noundef %cond.i) #9
  %div.i.i = udiv i32 %call.i.i, 1000
  %conv61.i = zext i8 %20 to i32
  %and.i = and i32 %conv61.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool62.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.end54.i.for.inc.i_crit_edge

if.end54.i.for.inc.i_crit_edge:                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end64.i:                                       ; preds = %if.end54.i
  br i1 %cmp57.i, label %if.then67.i, label %if.else79.i

if.then67.i:                                      ; preds = %if.end64.i
  %and69.i = and i32 %conv61.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.then67.i.if.end86.i_crit_edge, label %if.else.i

if.then67.i.if.end86.i_crit_edge:                 ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86.i

if.else.i:                                        ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #11
  %and73.i = and i32 %conv61.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  %..i = select i1 %tobool74.not.i, i32 40000, i32 20000
  br label %if.end86.i

if.else79.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  %and81.i = and i32 %conv61.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  %.3.i = select i1 %tobool82.not.i, i32 40000, i32 20000
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.else79.i, %if.else.i, %if.then67.i.if.end86.i_crit_edge
  %bw.0.i = phi i32 [ 80000, %if.then67.i.if.end86.i_crit_edge ], [ %..i, %if.else.i ], [ %.3.i, %if.else79.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.020.i)
  %cmp87.i = icmp eq i32 %idx.020.i, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %prev_chflags.024.i, i8 %20)
  %cmp91.not.i = icmp ne i8 %prev_chflags.024.i, %20
  %or.cond.i = select i1 %cmp87.i, i1 true, i1 %cmp91.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_bw.023.i, i32 %bw.0.i)
  %cmp94.not.i = icmp ne i32 %prev_bw.023.i, %bw.0.i
  %or.cond4.i = select i1 %or.cond.i, i1 true, i1 %cmp94.not.i
  %sub.i = sub i32 %div.i.i, %prev_freq.022.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i)
  %cmp97.i = icmp sgt i32 %sub.i, 20
  %or.cond5.i = select i1 %or.cond4.i, i1 true, i1 %cmp97.i
  %inc.i = add i8 %valid_rules.025.i, 1
  %spec.select6.i = select i1 %or.cond5.i, i8 %inc.i, i8 %valid_rules.025.i
  %conv101.i = zext i8 %spec.select6.i to i32
  %sub102.i = add nsw i32 %conv101.i, -1
  %arrayidx.i = getelementptr %struct.ieee80211_regdomain, ptr %call9.i.i.i, i32 0, i32 4, i32 %sub102.i
  %21 = mul nuw i32 %div.i.i, 1000
  %mul.i = add i32 %21, 10000
  %end_freq_khz.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %arrayidx.i, i32 0, i32 1
  %22 = ptrtoint ptr %end_freq_khz.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i, ptr %end_freq_khz.i, align 8
  br i1 %or.cond5.i, label %if.end105.i, label %if.end86.i.for.inc.i_crit_edge

if.end86.i.for.inc.i_crit_edge:                   ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end105.i:                                      ; preds = %if.end86.i
  %mul107.i = add i32 %21, -10000
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul107.i, ptr %arrayidx.i, align 4
  %max_eirp.i = getelementptr %struct.ieee80211_regdomain, ptr %call9.i.i.i, i32 0, i32 4, i32 %sub102.i, i32 1, i32 1
  %24 = ptrtoint ptr %max_eirp.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1900, ptr %max_eirp.i, align 4
  %and110.i = and i32 %conv61.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i)
  %tobool111.not.i = icmp eq i32 %and110.i, 0
  br i1 %tobool111.not.i, label %if.end105.i.if.end113.i_crit_edge, label %if.then112.i

if.end105.i.if.end113.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

if.then112.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr %struct.ieee80211_regdomain, ptr %call9.i.i.i, i32 0, i32 4, i32 %sub102.i, i32 3
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 128, ptr %flags.i, align 8
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then112.i, %if.end105.i.if.end113.i_crit_edge
  %and115.i = and i32 %conv61.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i)
  %tobool116.not.i = icmp eq i32 %and115.i, 0
  br i1 %tobool116.not.i, label %if.end113.i.if.end119.i_crit_edge, label %if.then117.i

if.end113.i.if.end119.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119.i

if.then117.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags118.i = getelementptr %struct.ieee80211_regdomain, ptr %call9.i.i.i, i32 0, i32 4, i32 %sub102.i, i32 3
  %26 = ptrtoint ptr %flags118.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %flags118.i, align 8
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then117.i, %if.end113.i.if.end119.i_crit_edge
  %max_bandwidth_khz.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %arrayidx.i, i32 0, i32 2
  %27 = ptrtoint ptr %max_bandwidth_khz.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bw.0.i, ptr %max_bandwidth_khz.i, align 4
  br label %for.inc.i

mwifiex_create_custom_regdomain.exit.thread4:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %if.then22

for.inc.i:                                        ; preds = %if.end119.i, %if.end86.i.for.inc.i_crit_edge, %if.end54.i.for.inc.i_crit_edge
  %prev_freq.1.ph.i = phi i32 [ %div.i.i, %if.end86.i.for.inc.i_crit_edge ], [ %prev_freq.022.i, %if.end54.i.for.inc.i_crit_edge ], [ %div.i.i, %if.end119.i ]
  %prev_bw.1.ph.i = phi i32 [ %prev_bw.023.i, %if.end86.i.for.inc.i_crit_edge ], [ %prev_bw.023.i, %if.end54.i.for.inc.i_crit_edge ], [ %bw.0.i, %if.end119.i ]
  %prev_chflags.1.ph.i = phi i8 [ %prev_chflags.024.i, %if.end86.i.for.inc.i_crit_edge ], [ %prev_chflags.024.i, %if.end54.i.for.inc.i_crit_edge ], [ %20, %if.end119.i ]
  %valid_rules.2.ph.i = phi i8 [ %valid_rules.025.i, %if.end86.i.for.inc.i_crit_edge ], [ %valid_rules.025.i, %if.end54.i.for.inc.i_crit_edge ], [ %inc.i, %if.end119.i ]
  %inc122.i = add nuw nsw i32 %idx.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc122.i, %smax.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_create_custom_regdomain.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.mwifiex_create_custom_regdomain.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_create_custom_regdomain.exit

mwifiex_create_custom_regdomain.exit:             ; preds = %for.inc.i.mwifiex_create_custom_regdomain.exit_crit_edge, %for.cond.preheader.i.mwifiex_create_custom_regdomain.exit_crit_edge
  %valid_rules.0.lcssa.i = phi i8 [ 0, %for.cond.preheader.i.mwifiex_create_custom_regdomain.exit_crit_edge ], [ %valid_rules.2.ph.i, %for.inc.i.mwifiex_create_custom_regdomain.exit_crit_edge ]
  %conv123.i = zext i8 %valid_rules.0.lcssa.i to i32
  %n_reg_rules.i = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %n_reg_rules.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv123.i, ptr %n_reg_rules.i, align 8
  %alpha2.i = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %alpha2.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 57, ptr %alpha2.i, align 4
  %arrayidx126.i = getelementptr %struct.ieee80211_regdomain, ptr %call9.i.i.i, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 57, ptr %arrayidx126.i, align 1
  %cmp.i1 = icmp ugt ptr %call9.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %mwifiex_create_custom_regdomain.exit.sw.epilog_crit_edge, label %mwifiex_create_custom_regdomain.exit.if.then22_crit_edge

mwifiex_create_custom_regdomain.exit.if.then22_crit_edge: ; preds = %mwifiex_create_custom_regdomain.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

mwifiex_create_custom_regdomain.exit.sw.epilog_crit_edge: ; preds = %mwifiex_create_custom_regdomain.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then22:                                        ; preds = %mwifiex_create_custom_regdomain.exit.if.then22_crit_edge, %mwifiex_create_custom_regdomain.exit.thread4
  %retval.2.i7 = phi ptr [ null, %mwifiex_create_custom_regdomain.exit.thread4 ], [ %call9.i.i.i, %mwifiex_create_custom_regdomain.exit.if.then22_crit_edge ]
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %regd24 = getelementptr inbounds %struct.mwifiex_adapter, ptr %32, i32 0, i32 163
  %33 = ptrtoint ptr %regd24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retval.2.i7, ptr %regd24, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then22, %mwifiex_create_custom_regdomain.exit.sw.epilog_crit_edge, %if.end8.i.i.i.sw.epilog_crit_edge, %if.then.i, %land.rhs.i.sw.epilog_crit_edge, %if.end14.sw.epilog_crit_edge
  %add.ptr28 = getelementptr i8, ptr %tlv_buf.010, i32 %add
  %34 = trunc i32 %add to i16
  %conv33 = sub i16 %tlv_buf_left.09, %34
  %cmp7 = icmp ugt i16 %conv33, 3
  br i1 %cmp7, label %sw.epilog.while.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_cancel_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_recycle_cmd_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_is_rate_auto(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_reset_connect_state(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_index_to_data_rate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 1266, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 1362, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 1446, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 50, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 60, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 79, i32 3}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 1009, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 501, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 420, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 425, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 449, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 470, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 480, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 176, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 186, i32 4}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 191, i32 4}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 196, i32 4}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 201, i32 4}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 712, i32 37}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 718, i32 4}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 723, i32 5}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 628, i32 4}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 674, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 679, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 691, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 877, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 882, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 842, i32 3}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mwifiex_ret_reg_access.__UNIQUE_ID_ddebug488, !55, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!60 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 846, i32 4}
!63 = !{ptr @mwifiex_ret_reg_access.__UNIQUE_ID_ddebug489, !62, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!64 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 976, i32 2}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 918, i32 5}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 926, i32 4}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 933, i32 4}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 939, i32 4}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 946, i32 4}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 952, i32 4}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 958, i32 3}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 1164, i32 4}
!83 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c", i32 1064, i32 6}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i8 0, i8 2}
!96 = !{i64 2148393517, i64 2148393522, i64 2148393535, i64 2148393579, i64 2148393613, i64 2148393634}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{!"branch_weights", i32 2000, i32 1}
