; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/join.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/join.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mwifiex_deauthenticate_all\22, \22a\22\09"
module asm "\09.weak\09__crc_mwifiex_deauthenticate_all\09\09\09\09"
module asm "\09.long\09__crc_mwifiex_deauthenticate_all\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_deauthenticate_all:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_deauthenticate_all\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_deauthenticate_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ie_types_phy_param_set = type <{ %struct.mwifiex_ie_types_header, %union.anon.162 }>
%union.anon.162 = type { [1 x %struct.mwifiex_fh_param_set] }
%struct.mwifiex_fh_param_set = type <{ i16, i8, i8, i8 }>
%struct.mwifiex_ie_types_rates_param_set = type <{ %struct.mwifiex_ie_types_header, [1 x i8] }>
%struct.mwifiex_ie_types_auth_type = type { %struct.mwifiex_ie_types_header, i16 }
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
%struct.mwifiex_ie_types_chan_list_param_set = type <{ %struct.mwifiex_ie_types_header, [1 x %struct.mwifiex_chan_scan_param_set] }>
%struct.mwifiex_chan_scan_param_set = type <{ i8, i8, i8, i16, i16 }>
%struct.mwifiex_ie_types_rsn_param_set = type <{ %struct.mwifiex_ie_types_header, [1 x i8] }>
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
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.mwifiex_ie_types_htcap = type { %struct.mwifiex_ie_types_header, %struct.ieee80211_ht_cap }
%struct.host_cmd_ds_802_11_ad_hoc_start_result = type { [3 x i8], [6 x i8], [2 x i8], i8 }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"info: ASSOC_CMD: rates size = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"info: Assoc: TLV Chan = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"info: Assoc: TLV Band = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"info: ASSOC_CMD: tmp_cap=%4X CAPINFO_MASK=%4lX\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ASSOC_RESP: failed, association terminated by host\0A\00", [44 x i8] zeroinitializer }, align 32
@mwifiex_ret_802_11_associate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 665, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid AID value 0x%x; bits 15:14 not set\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mwifiex_ret_802_11_associate\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/marvell/mwifiex/join.c\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mwifiex_ret_802_11_associate._entry_ptr = internal global ptr @mwifiex_ret_802_11_associate._entry, section ".printk_index", align 4
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ASSOC_RESP: failed,\09status code=%d err=%#x a_id=%#x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"assoc failure: reason %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ASSOC_RESP: AUTH timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ASSOC_RESP: UNSPECIFIED failure\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"info: ASSOC_RESP: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"info: ASSOC_RESP: curr_pkt_filter is %#x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"info: post association, re-enabling data flow\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"info: ASSOC_RESP: associated\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"info: ADHOC_S_CMD: SSID = %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ADHOC_S_CMD: adhoc_channel cannot be 0\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"info: ADHOC_S_CMD: creating ADHOC on channel %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"info: ADHOC_S_CMD: wep_status set privacy to WEP\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"info: ADHOC_S_CMD: wep_status NOT set,\09setting privacy to ACCEPT ALL\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ADHOC_S_CMD: G Protection config failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"info: ADHOC_S_CMD: rates=%4ph\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"info: ADHOC_S_CMD: AD-HOC Start command is ready\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"info: ADHOC_S_CMD: TLV Chan = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"info: ADHOC_S_CMD: TLV Band = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ADHOC_J_CMD: G Protection config failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"info: ADHOC_J_CMD: tmp_cap=%4X CAPINFO_MASK=%4lX\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"info: ADHOC_J_CMD: BSSID=%pM, SSID='%s'\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"info: ADHOC_J_CMD: TLV Chan=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"info: ADHOC_J_CMD: TLV Band=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ADHOC_RESP: failed, association terminated by host\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADHOC_RESP: failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"info: ADHOC_S_RESP %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"info: ADHOC_J_RESP %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"info: ADHOC_RESP: channel = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"info: ADHOC_RESP: BSSID = %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"info: Adhoc Channel = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"info: curr_bss_params.channel = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"info: curr_bss_params.band = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"info: adhoc join: curr_bss ssid =%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"info: adhoc join: curr_bss ssid_len =%u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"info: adhoc join: ssid =%s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"info: adhoc join: ssid_len =%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"info: ADHOC_J_CMD: new ad-hoc SSID\09is the same as current; not attempting to re-join\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"info: curr_bss_params.band = %c\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_mwifiex_deauthenticate_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_deauthenticate_all = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_deauthenticate_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_deauthenticate_all to i32), ptr @__kstrtab_mwifiex_deauthenticate_all, ptr @__kstrtabns_mwifiex_deauthenticate_all }, section "___ksymtab_gpl+mwifiex_deauthenticate_all", align 4
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: cannot get common rates\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.mwifiex_setup_rates_from_bssdesc = private unnamed_addr constant [33 x i8] c"mwifiex_setup_rates_from_bssdesc\00", align 1
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to alloc tmp buf\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"info: Tx data rate set to %#x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"previously set fixed data rate %#x\09is not compatible with the network\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmd: append wapi ie %d to %p\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cmd: append wps ie %d to %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"info: %s: append generic ie len %d to %p\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.mwifiex_cmd_append_generic_ie = private unnamed_addr constant [30 x i8] c"mwifiex_cmd_append_generic_ie\00", align 1
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"info: %s: TSF offset calc: %016llx - %016llx\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.mwifiex_cmd_append_tsf_tlv = private unnamed_addr constant [27 x i8] c"mwifiex_cmd_append_tsf_tlv\00", align 1
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CONNECT_ERR_AUTH_ERR_STA_FAILURE\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CONNECT_ERR_AUTH_MSG_UNHANDLED\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CONNECT_ERR_ASSOC_ERR_TIMEOUT\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CONNECT_ERR_ASSOC_ERR_AUTH_REFUSED\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CONNECT_ERR_STA_FAILURE\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown connect failure\00", [40 x i8] zeroinitializer }, align 32
@switch.table.mwifiex_ret_802_11_associate = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.57, ptr @.str.60], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 16, i64 20, i64 52]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 16, i64 20, i64 52]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 16, i64 20, i64 52]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 16, i64 20, i64 52]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 16, i64 20, i64 52]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 8]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 460, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 494, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 500, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 551, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 651, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 663, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 677, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 683, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 688, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 692, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 712, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 756, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 774, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 793, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 884, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 917, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 922, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 956, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 961, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 974, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 990, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 993, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1007, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1023, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1146, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1178, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1183, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1222, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1228, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1281, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1295, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1310, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1323, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1338, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1340, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1403, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1405, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1407, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1429, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1432, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1435, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1437, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1446, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1462, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 218, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 155, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 172, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 183, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 298, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 251, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 56, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 128, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 563, i32 10 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 565, i32 10 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 567, i32 10 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 569, i32 10 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 571, i32 10 }
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.256 = private constant [47 x i8] c"../drivers/net/wireless/marvell/mwifiex/join.c\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 574, i32 9 }
@___asan_gen_.258 = private unnamed_addr constant [42 x i8] c"switch.table.mwifiex_ret_802_11_associate\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @__ksymtab_mwifiex_deauthenticate_all, ptr @mwifiex_ret_802_11_associate._entry, ptr @mwifiex_ret_802_11_associate._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @switch.table.mwifiex_ret_802_11_associate], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_ret_802_11_associate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mwifiex_ret_802_11_associate to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_802_11_associate(ptr noundef %priv, ptr noundef %cmd, ptr noundef %bss_desc) local_unnamed_addr #0 align 64 {
entry:
  %card_rates.i = alloca [14 x i8], align 1
  %rates = alloca [14 x i8], align 1
  %pos = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %rates) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #7
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 4608, ptr %cmd, align 1
  %attempted_bss_desc = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 46
  %1 = ptrtoint ptr %attempted_bss_desc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bss_desc, ptr %attempted_bss_desc, align 4
  %2 = call ptr @memcpy(ptr %params, ptr %bss_desc, i32 6)
  %add.ptr = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %listen_interval = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 54
  %3 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %listen_interval, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %listen_interval2 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %listen_interval2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %listen_interval2, align 1
  %beacon_period = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 7
  %7 = ptrtoint ptr %beacon_period to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %beacon_period, align 8
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %beacon_period3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %beacon_period3 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %beacon_period3, align 1
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 7
  %11 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 0, ptr %add.ptr7, align 1
  %ssid = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 1
  %ssid_len = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ssid_len, align 2
  %conv = zext i8 %13 to i16
  %14 = shl nuw i16 %conv, 8
  %len = getelementptr i8, ptr %add.ptr, i32 9
  %15 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %len, align 1
  %ssid9 = getelementptr i8, ptr %add.ptr, i32 11
  %conv16 = zext i8 %13 to i32
  %16 = call ptr @memcpy(ptr %ssid9, ptr %ssid, i32 %conv16)
  %add = add nuw nsw i32 %conv16, 4
  %add.ptr20 = getelementptr i8, ptr %add.ptr7, i32 %add
  %17 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 768, ptr %add.ptr20, align 1
  %len24 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %add.ptr20, i32 0, i32 1
  %18 = ptrtoint ptr %len24 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 256, ptr %len24, align 1
  %fh_ds = getelementptr inbounds %struct.mwifiex_ie_types_phy_param_set, ptr %add.ptr20, i32 0, i32 1
  %current_chan = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 17, i32 0, i32 2
  %19 = ptrtoint ptr %current_chan to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %current_chan, align 2
  %21 = ptrtoint ptr %fh_ds to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %fh_ds, align 1
  %add.ptr29 = getelementptr i8, ptr %add.ptr20, i32 5
  %22 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 1024, ptr %add.ptr29, align 1
  %len33 = getelementptr i8, ptr %add.ptr20, i32 7
  %23 = ptrtoint ptr %len33 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 1536, ptr %len33, align 1
  %add.ptr38 = getelementptr i8, ptr %add.ptr29, i32 10
  %24 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr38, ptr %pos, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %card_rates.i) #7
  %supported_rates.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11
  %25 = call ptr @memset(ptr %card_rates.i, i32 255, i32 14)
  %26 = call ptr @memcpy(ptr %rates, ptr %supported_rates.i, i32 14)
  %call.i = call i32 @mwifiex_get_active_data_rates(ptr noundef %priv, ptr noundef nonnull %card_rates.i) #7
  %call.i.i = call ptr @kmemdup(ptr noundef nonnull %rates, i32 noundef 14, i32 noundef 3264) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %mwifiex_get_common_rates.exit.thread.i, label %if.end.i.i

mwifiex_get_common_rates.exit.thread.i:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %28, i32 noundef 4, ptr noundef nonnull @.str.49) #7
  br label %mwifiex_setup_rates_from_bssdesc.exit

if.end.i.i:                                       ; preds = %entry
  %29 = call ptr @memset(ptr %rates, i32 0, i32 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not.i.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.not.i.i, label %if.end.i.i.for.end23.i.i_crit_edge, label %land.rhs.preheader.i.i

if.end.i.i.for.end23.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end23.i.i

land.rhs.preheader.i.i:                           ; preds = %if.end.i.i
  %arrayidx6.1.i.i = getelementptr i8, ptr %call.i.i, i32 1
  %arrayidx6.2.i.i = getelementptr i8, ptr %call.i.i, i32 2
  %arrayidx6.3.i.i = getelementptr i8, ptr %call.i.i, i32 3
  %arrayidx6.4.i.i = getelementptr i8, ptr %call.i.i, i32 4
  %arrayidx6.5.i.i = getelementptr i8, ptr %call.i.i, i32 5
  %arrayidx6.6.i.i = getelementptr i8, ptr %call.i.i, i32 6
  %arrayidx6.7.i.i = getelementptr i8, ptr %call.i.i, i32 7
  %arrayidx6.8.i.i = getelementptr i8, ptr %call.i.i, i32 8
  %arrayidx6.9.i.i = getelementptr i8, ptr %call.i.i, i32 9
  %arrayidx6.10.i.i = getelementptr i8, ptr %call.i.i, i32 10
  %arrayidx6.11.i.i = getelementptr i8, ptr %call.i.i, i32 11
  %arrayidx6.12.i.i = getelementptr i8, ptr %call.i.i, i32 12
  %arrayidx6.13.i.i = getelementptr i8, ptr %call.i.i, i32 13
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc21.i.i.land.rhs.i.i_crit_edge, %land.rhs.preheader.i.i
  %i.04.i.i = phi i32 [ %inc22.i.i, %for.inc21.i.i.land.rhs.i.i_crit_edge ], [ 0, %land.rhs.preheader.i.i ]
  %rate1.addr.03.i.i = phi ptr [ %rate1.addr.1.i.i, %for.inc21.i.i.land.rhs.i.i_crit_edge ], [ %rates, %land.rhs.preheader.i.i ]
  %arrayidx.i.i = getelementptr i8, ptr %card_rates.i, i32 %i.04.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool1.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.for.end23.i.i_crit_edge, label %land.rhs5.preheader.i.i

land.rhs.i.i.for.end23.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end23.i.i

land.rhs5.preheader.i.i:                          ; preds = %land.rhs.i.i
  %32 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %call.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool8.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool8.not.i.i, label %land.rhs5.preheader.i.i.for.inc21.i.i_crit_edge, label %for.body10.i.i

land.rhs5.preheader.i.i.for.inc21.i.i_crit_edge:  ; preds = %land.rhs5.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.cond2.i.i:                                    ; preds = %for.body10.i.i
  %34 = ptrtoint ptr %arrayidx6.1.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx6.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool8.not.1.i.i = icmp eq i8 %35, 0
  br i1 %tobool8.not.1.i.i, label %for.cond2.i.i.for.inc21.i.i_crit_edge, label %for.body10.1.i.i

for.cond2.i.i.for.inc21.i.i_crit_edge:            ; preds = %for.cond2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.body10.1.i.i:                                 ; preds = %for.cond2.i.i
  %36 = xor i8 %35, %31
  %37 = and i8 %36, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp16.1.i.i = icmp eq i8 %37, 0
  br i1 %cmp16.1.i.i, label %for.body10.1.i.i.if.then18.i.i_crit_edge, label %for.cond2.1.i.i

for.body10.1.i.i.if.then18.i.i_crit_edge:         ; preds = %for.body10.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

for.cond2.1.i.i:                                  ; preds = %for.body10.1.i.i
  %38 = ptrtoint ptr %arrayidx6.2.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx6.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool8.not.2.i.i = icmp eq i8 %39, 0
  br i1 %tobool8.not.2.i.i, label %for.cond2.1.i.i.for.inc21.i.i_crit_edge, label %for.body10.2.i.i

for.cond2.1.i.i.for.inc21.i.i_crit_edge:          ; preds = %for.cond2.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.body10.2.i.i:                                 ; preds = %for.cond2.1.i.i
  %40 = xor i8 %39, %31
  %41 = and i8 %40, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp16.2.i.i = icmp eq i8 %41, 0
  br i1 %cmp16.2.i.i, label %for.body10.2.i.i.if.then18.i.i_crit_edge, label %for.cond2.2.i.i

for.body10.2.i.i.if.then18.i.i_crit_edge:         ; preds = %for.body10.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

for.cond2.2.i.i:                                  ; preds = %for.body10.2.i.i
  %42 = ptrtoint ptr %arrayidx6.3.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx6.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool8.not.3.i.i = icmp eq i8 %43, 0
  br i1 %tobool8.not.3.i.i, label %for.cond2.2.i.i.for.inc21.i.i_crit_edge, label %for.body10.3.i.i

for.cond2.2.i.i.for.inc21.i.i_crit_edge:          ; preds = %for.cond2.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.body10.3.i.i:                                 ; preds = %for.cond2.2.i.i
  %44 = xor i8 %43, %31
  %45 = and i8 %44, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp16.3.i.i = icmp eq i8 %45, 0
  br i1 %cmp16.3.i.i, label %for.body10.3.i.i.if.then18.i.i_crit_edge, label %for.cond2.3.i.i

for.body10.3.i.i.if.then18.i.i_crit_edge:         ; preds = %for.body10.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

for.cond2.3.i.i:                                  ; preds = %for.body10.3.i.i
  %46 = ptrtoint ptr %arrayidx6.4.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx6.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool8.not.4.i.i = icmp eq i8 %47, 0
  br i1 %tobool8.not.4.i.i, label %for.cond2.3.i.i.for.inc21.i.i_crit_edge, label %for.body10.4.i.i

for.cond2.3.i.i.for.inc21.i.i_crit_edge:          ; preds = %for.cond2.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.body10.4.i.i:                                 ; preds = %for.cond2.3.i.i
  %48 = xor i8 %47, %31
  %49 = and i8 %48, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp16.4.i.i = icmp eq i8 %49, 0
  br i1 %cmp16.4.i.i, label %for.body10.4.i.i.if.then18.i.i_crit_edge, label %for.cond2.4.i.i

for.body10.4.i.i.if.then18.i.i_crit_edge:         ; preds = %for.body10.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

for.cond2.4.i.i:                                  ; preds = %for.body10.4.i.i
  %50 = ptrtoint ptr %arrayidx6.5.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx6.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool8.not.5.i.i = icmp eq i8 %51, 0
  br i1 %tobool8.not.5.i.i, label %for.cond2.4.i.i.for.inc21.i.i_crit_edge, label %for.body10.5.i.i

for.cond2.4.i.i.for.inc21.i.i_crit_edge:          ; preds = %for.cond2.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.body10.5.i.i:                                 ; preds = %for.cond2.4.i.i
  %52 = xor i8 %51, %31
  %53 = and i8 %52, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp16.5.i.i = icmp eq i8 %53, 0
  br i1 %cmp16.5.i.i, label %for.body10.5.i.i.if.then18.i.i_crit_edge, label %for.cond2.5.i.i

for.body10.5.i.i.if.then18.i.i_crit_edge:         ; preds = %for.body10.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

for.cond2.5.i.i:                                  ; preds = %for.body10.5.i.i
  %54 = ptrtoint ptr %arrayidx6.6.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx6.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool8.not.6.i.i = icmp eq i8 %55, 0
  br i1 %tobool8.not.6.i.i, label %for.cond2.5.i.i.for.inc21.i.i_crit_edge, label %for.body10.6.i.i

for.cond2.5.i.i.for.inc21.i.i_crit_edge:          ; preds = %for.cond2.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.body10.6.i.i:                                 ; preds = %for.cond2.5.i.i
  %56 = xor i8 %55, %31
  %57 = and i8 %56, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp16.6.i.i = icmp eq i8 %57, 0
  br i1 %cmp16.6.i.i, label %for.body10.6.i.i.if.then18.i.i_crit_edge, label %for.cond2.6.i.i

for.body10.6.i.i.if.then18.i.i_crit_edge:         ; preds = %for.body10.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

for.cond2.6.i.i:                                  ; preds = %for.body10.6.i.i
  %58 = ptrtoint ptr %arrayidx6.7.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx6.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool8.not.7.i.i = icmp eq i8 %59, 0
  br i1 %tobool8.not.7.i.i, label %for.cond2.6.i.i.for.inc21.i.i_crit_edge, label %for.body10.7.i.i

for.cond2.6.i.i.for.inc21.i.i_crit_edge:          ; preds = %for.cond2.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.body10.7.i.i:                                 ; preds = %for.cond2.6.i.i
  %60 = xor i8 %59, %31
  %61 = and i8 %60, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp16.7.i.i = icmp eq i8 %61, 0
  br i1 %cmp16.7.i.i, label %for.body10.7.i.i.if.then18.i.i_crit_edge, label %for.cond2.7.i.i

for.body10.7.i.i.if.then18.i.i_crit_edge:         ; preds = %for.body10.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

for.cond2.7.i.i:                                  ; preds = %for.body10.7.i.i
  %62 = ptrtoint ptr %arrayidx6.8.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx6.8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool8.not.8.i.i = icmp eq i8 %63, 0
  br i1 %tobool8.not.8.i.i, label %for.cond2.7.i.i.for.inc21.i.i_crit_edge, label %for.body10.8.i.i

for.cond2.7.i.i.for.inc21.i.i_crit_edge:          ; preds = %for.cond2.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.body10.8.i.i:                                 ; preds = %for.cond2.7.i.i
  %64 = xor i8 %63, %31
  %65 = and i8 %64, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp16.8.i.i = icmp eq i8 %65, 0
  br i1 %cmp16.8.i.i, label %for.body10.8.i.i.if.then18.i.i_crit_edge, label %for.cond2.8.i.i

for.body10.8.i.i.if.then18.i.i_crit_edge:         ; preds = %for.body10.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

for.cond2.8.i.i:                                  ; preds = %for.body10.8.i.i
  %66 = ptrtoint ptr %arrayidx6.9.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx6.9.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool8.not.9.i.i = icmp eq i8 %67, 0
  br i1 %tobool8.not.9.i.i, label %for.cond2.8.i.i.for.inc21.i.i_crit_edge, label %for.body10.9.i.i

for.cond2.8.i.i.for.inc21.i.i_crit_edge:          ; preds = %for.cond2.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.body10.9.i.i:                                 ; preds = %for.cond2.8.i.i
  %68 = xor i8 %67, %31
  %69 = and i8 %68, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp16.9.i.i = icmp eq i8 %69, 0
  br i1 %cmp16.9.i.i, label %for.body10.9.i.i.if.then18.i.i_crit_edge, label %for.cond2.9.i.i

for.body10.9.i.i.if.then18.i.i_crit_edge:         ; preds = %for.body10.9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

for.cond2.9.i.i:                                  ; preds = %for.body10.9.i.i
  %70 = ptrtoint ptr %arrayidx6.10.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx6.10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool8.not.10.i.i = icmp eq i8 %71, 0
  br i1 %tobool8.not.10.i.i, label %for.cond2.9.i.i.for.inc21.i.i_crit_edge, label %for.body10.10.i.i

for.cond2.9.i.i.for.inc21.i.i_crit_edge:          ; preds = %for.cond2.9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.body10.10.i.i:                                ; preds = %for.cond2.9.i.i
  %72 = xor i8 %71, %31
  %73 = and i8 %72, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp16.10.i.i = icmp eq i8 %73, 0
  br i1 %cmp16.10.i.i, label %for.body10.10.i.i.if.then18.i.i_crit_edge, label %for.cond2.10.i.i

for.body10.10.i.i.if.then18.i.i_crit_edge:        ; preds = %for.body10.10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

for.cond2.10.i.i:                                 ; preds = %for.body10.10.i.i
  %74 = ptrtoint ptr %arrayidx6.11.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx6.11.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool8.not.11.i.i = icmp eq i8 %75, 0
  br i1 %tobool8.not.11.i.i, label %for.cond2.10.i.i.for.inc21.i.i_crit_edge, label %for.body10.11.i.i

for.cond2.10.i.i.for.inc21.i.i_crit_edge:         ; preds = %for.cond2.10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.body10.11.i.i:                                ; preds = %for.cond2.10.i.i
  %76 = xor i8 %75, %31
  %77 = and i8 %76, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp16.11.i.i = icmp eq i8 %77, 0
  br i1 %cmp16.11.i.i, label %for.body10.11.i.i.if.then18.i.i_crit_edge, label %for.cond2.11.i.i

for.body10.11.i.i.if.then18.i.i_crit_edge:        ; preds = %for.body10.11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

for.cond2.11.i.i:                                 ; preds = %for.body10.11.i.i
  %78 = ptrtoint ptr %arrayidx6.12.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx6.12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool8.not.12.i.i = icmp eq i8 %79, 0
  br i1 %tobool8.not.12.i.i, label %for.cond2.11.i.i.for.inc21.i.i_crit_edge, label %for.body10.12.i.i

for.cond2.11.i.i.for.inc21.i.i_crit_edge:         ; preds = %for.cond2.11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.body10.12.i.i:                                ; preds = %for.cond2.11.i.i
  %80 = xor i8 %79, %31
  %81 = and i8 %80, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp16.12.i.i = icmp eq i8 %81, 0
  br i1 %cmp16.12.i.i, label %for.body10.12.i.i.if.then18.i.i_crit_edge, label %for.cond2.12.i.i

for.body10.12.i.i.if.then18.i.i_crit_edge:        ; preds = %for.body10.12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

for.cond2.12.i.i:                                 ; preds = %for.body10.12.i.i
  %82 = ptrtoint ptr %arrayidx6.13.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx6.13.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool8.not.13.i.i = icmp eq i8 %83, 0
  br i1 %tobool8.not.13.i.i, label %for.cond2.12.i.i.for.inc21.i.i_crit_edge, label %for.body10.13.i.i

for.cond2.12.i.i.for.inc21.i.i_crit_edge:         ; preds = %for.cond2.12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.body10.13.i.i:                                ; preds = %for.cond2.12.i.i
  %84 = xor i8 %83, %31
  %85 = and i8 %84, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp16.13.i.i = icmp eq i8 %85, 0
  br i1 %cmp16.13.i.i, label %for.body10.13.i.i.if.then18.i.i_crit_edge, label %for.body10.13.i.i.for.inc21.i.i_crit_edge

for.body10.13.i.i.for.inc21.i.i_crit_edge:        ; preds = %for.body10.13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.i

for.body10.13.i.i.if.then18.i.i_crit_edge:        ; preds = %for.body10.13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

for.body10.i.i:                                   ; preds = %land.rhs5.preheader.i.i
  %86 = xor i8 %33, %31
  %87 = and i8 %86, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp16.i.i = icmp eq i8 %87, 0
  br i1 %cmp16.i.i, label %for.body10.i.i.if.then18.i.i_crit_edge, label %for.cond2.i.i

for.body10.i.i.if.then18.i.i_crit_edge:           ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

if.then18.i.i:                                    ; preds = %for.body10.i.i.if.then18.i.i_crit_edge, %for.body10.13.i.i.if.then18.i.i_crit_edge, %for.body10.12.i.i.if.then18.i.i_crit_edge, %for.body10.11.i.i.if.then18.i.i_crit_edge, %for.body10.10.i.i.if.then18.i.i_crit_edge, %for.body10.9.i.i.if.then18.i.i_crit_edge, %for.body10.8.i.i.if.then18.i.i_crit_edge, %for.body10.7.i.i.if.then18.i.i_crit_edge, %for.body10.6.i.i.if.then18.i.i_crit_edge, %for.body10.5.i.i.if.then18.i.i_crit_edge, %for.body10.4.i.i.if.then18.i.i_crit_edge, %for.body10.3.i.i.if.then18.i.i_crit_edge, %for.body10.2.i.i.if.then18.i.i_crit_edge, %for.body10.1.i.i.if.then18.i.i_crit_edge
  %.lcssa7.i.i = phi i8 [ %33, %for.body10.i.i.if.then18.i.i_crit_edge ], [ %35, %for.body10.1.i.i.if.then18.i.i_crit_edge ], [ %39, %for.body10.2.i.i.if.then18.i.i_crit_edge ], [ %43, %for.body10.3.i.i.if.then18.i.i_crit_edge ], [ %47, %for.body10.4.i.i.if.then18.i.i_crit_edge ], [ %51, %for.body10.5.i.i.if.then18.i.i_crit_edge ], [ %55, %for.body10.6.i.i.if.then18.i.i_crit_edge ], [ %59, %for.body10.7.i.i.if.then18.i.i_crit_edge ], [ %63, %for.body10.8.i.i.if.then18.i.i_crit_edge ], [ %67, %for.body10.9.i.i.if.then18.i.i_crit_edge ], [ %71, %for.body10.10.i.i.if.then18.i.i_crit_edge ], [ %75, %for.body10.11.i.i.if.then18.i.i_crit_edge ], [ %79, %for.body10.12.i.i.if.then18.i.i_crit_edge ], [ %83, %for.body10.13.i.i.if.then18.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %rate1.addr.03.i.i, i32 1
  %88 = ptrtoint ptr %rate1.addr.03.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %.lcssa7.i.i, ptr %rate1.addr.03.i.i, align 1
  br label %for.inc21.i.i

for.inc21.i.i:                                    ; preds = %if.then18.i.i, %for.body10.13.i.i.for.inc21.i.i_crit_edge, %for.cond2.12.i.i.for.inc21.i.i_crit_edge, %for.cond2.11.i.i.for.inc21.i.i_crit_edge, %for.cond2.10.i.i.for.inc21.i.i_crit_edge, %for.cond2.9.i.i.for.inc21.i.i_crit_edge, %for.cond2.8.i.i.for.inc21.i.i_crit_edge, %for.cond2.7.i.i.for.inc21.i.i_crit_edge, %for.cond2.6.i.i.for.inc21.i.i_crit_edge, %for.cond2.5.i.i.for.inc21.i.i_crit_edge, %for.cond2.4.i.i.for.inc21.i.i_crit_edge, %for.cond2.3.i.i.for.inc21.i.i_crit_edge, %for.cond2.2.i.i.for.inc21.i.i_crit_edge, %for.cond2.1.i.i.for.inc21.i.i_crit_edge, %for.cond2.i.i.for.inc21.i.i_crit_edge, %land.rhs5.preheader.i.i.for.inc21.i.i_crit_edge
  %rate1.addr.1.i.i = phi ptr [ %incdec.ptr.i.i, %if.then18.i.i ], [ %rate1.addr.03.i.i, %for.body10.13.i.i.for.inc21.i.i_crit_edge ], [ %rate1.addr.03.i.i, %for.cond2.12.i.i.for.inc21.i.i_crit_edge ], [ %rate1.addr.03.i.i, %for.cond2.11.i.i.for.inc21.i.i_crit_edge ], [ %rate1.addr.03.i.i, %for.cond2.10.i.i.for.inc21.i.i_crit_edge ], [ %rate1.addr.03.i.i, %for.cond2.9.i.i.for.inc21.i.i_crit_edge ], [ %rate1.addr.03.i.i, %for.cond2.8.i.i.for.inc21.i.i_crit_edge ], [ %rate1.addr.03.i.i, %for.cond2.7.i.i.for.inc21.i.i_crit_edge ], [ %rate1.addr.03.i.i, %for.cond2.6.i.i.for.inc21.i.i_crit_edge ], [ %rate1.addr.03.i.i, %for.cond2.5.i.i.for.inc21.i.i_crit_edge ], [ %rate1.addr.03.i.i, %for.cond2.4.i.i.for.inc21.i.i_crit_edge ], [ %rate1.addr.03.i.i, %for.cond2.3.i.i.for.inc21.i.i_crit_edge ], [ %rate1.addr.03.i.i, %for.cond2.2.i.i.for.inc21.i.i_crit_edge ], [ %rate1.addr.03.i.i, %for.cond2.1.i.i.for.inc21.i.i_crit_edge ], [ %rate1.addr.03.i.i, %for.cond2.i.i.for.inc21.i.i_crit_edge ], [ %rate1.addr.03.i.i, %land.rhs5.preheader.i.i.for.inc21.i.i_crit_edge ]
  %inc22.i.i = add nuw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc22.i.i, %call.i
  br i1 %exitcond.not.i.i, label %for.inc21.i.i.for.end23.i.i_crit_edge, label %for.inc21.i.i.land.rhs.i.i_crit_edge

for.inc21.i.i.land.rhs.i.i_crit_edge:             ; preds = %for.inc21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

for.inc21.i.i.for.end23.i.i_crit_edge:            ; preds = %for.inc21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end23.i.i

for.end23.i.i:                                    ; preds = %for.inc21.i.i.for.end23.i.i_crit_edge, %land.rhs.i.i.for.end23.i.i_crit_edge, %if.end.i.i.for.end23.i.i_crit_edge
  %89 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv, align 8
  %data_rate.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 32
  %91 = ptrtoint ptr %data_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_rate.i.i, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %90, i32 noundef 1073741824, ptr noundef nonnull @.str.50, i32 noundef %92) #7
  %is_data_rate_auto.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 33
  %93 = ptrtoint ptr %is_data_rate_auto.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %is_data_rate_auto.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool25.not.i.i = icmp eq i8 %94, 0
  br i1 %tobool25.not.i.i, label %while.cond.preheader.i.i, label %for.end23.i.i.if.end_crit_edge

for.end23.i.i.if.end_crit_edge:                   ; preds = %for.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.preheader.i.i:                         ; preds = %for.end23.i.i
  %95 = ptrtoint ptr %rates to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %rates, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool27.not5.i.i = icmp eq i8 %96, 0
  br i1 %tobool27.not5.i.i, label %while.cond.preheader.i.i.mwifiex_get_common_rates.exit.i_crit_edge, label %while.body.lr.ph.i.i

while.cond.preheader.i.i.mwifiex_get_common_rates.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_get_common_rates.exit.i

while.body.lr.ph.i.i:                             ; preds = %while.cond.preheader.i.i
  %97 = ptrtoint ptr %data_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %data_rate.i.i, align 8
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %incdec.ptr35.i.i = getelementptr i8, ptr %ptr.06.i.i, i32 1
  %99 = ptrtoint ptr %incdec.ptr35.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %incdec.ptr35.i.i, align 1
  %tobool27.not.i.i = icmp eq i8 %100, 0
  br i1 %tobool27.not.i.i, label %while.cond.i.i.mwifiex_get_common_rates.exit.i_crit_edge, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.cond.i.i.mwifiex_get_common_rates.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_get_common_rates.exit.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %101 = phi i8 [ %96, %while.body.lr.ph.i.i ], [ %100, %while.cond.i.i.while.body.i.i_crit_edge ]
  %ptr.06.i.i = phi ptr [ %rates, %while.body.lr.ph.i.i ], [ %incdec.ptr35.i.i, %while.cond.i.i.while.body.i.i_crit_edge ]
  %102 = and i8 %101, 127
  %and29.i.i = zext i8 %102 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %and29.i.i)
  %cmp31.i.i = icmp eq i32 %98, %and29.i.i
  br i1 %cmp31.i.i, label %while.body.i.i.if.end_crit_edge, label %while.cond.i.i

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

mwifiex_get_common_rates.exit.i:                  ; preds = %while.cond.i.i.mwifiex_get_common_rates.exit.i_crit_edge, %while.cond.preheader.i.i.mwifiex_get_common_rates.exit.i_crit_edge
  %103 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %priv, align 8
  %105 = ptrtoint ptr %data_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %data_rate.i.i, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %104, i32 noundef 4, ptr noundef nonnull @.str.51, i32 noundef %106) #7
  call void @kfree(ptr noundef nonnull %call.i.i) #7
  br label %mwifiex_setup_rates_from_bssdesc.exit

mwifiex_setup_rates_from_bssdesc.exit:            ; preds = %mwifiex_get_common_rates.exit.i, %mwifiex_get_common_rates.exit.thread.i
  %107 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %108, i32 noundef 4, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.mwifiex_setup_rates_from_bssdesc) #7
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %card_rates.i) #7
  br label %cleanup

if.end:                                           ; preds = %while.body.i.i.if.end_crit_edge, %for.end23.i.i.if.end_crit_edge
  call void @kfree(ptr noundef nonnull %call.i.i) #7
  %call4.i = call i32 @strlen(ptr noundef nonnull %rates) #10
  %109 = call i32 @llvm.umin.i32(i32 %call4.i, i32 14) #7
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %card_rates.i) #7
  %num_of_rates = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 4
  %110 = ptrtoint ptr %num_of_rates to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %num_of_rates, align 4
  %data_rates = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 5
  %111 = call ptr @memcpy(ptr %data_rates, ptr %rates, i32 %109)
  %112 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pos, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 256, ptr %113, align 1
  %conv44 = trunc i32 %109 to i16
  %115 = shl nuw nsw i16 %conv44, 8
  %len46 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %113, i32 0, i32 1
  %116 = ptrtoint ptr %len46 to i32
  call void @__asan_storeN_noabort(i32 %116, i32 2)
  store i16 %115, ptr %len46, align 1
  %rates47 = getelementptr inbounds %struct.mwifiex_ie_types_rates_param_set, ptr %113, i32 0, i32 1
  %117 = call ptr @memcpy(ptr %rates47, ptr %rates, i32 %109)
  %add50 = add nuw nsw i32 %109, 4
  %118 = load ptr, ptr %pos, align 4
  %add.ptr51 = getelementptr i8, ptr %118, i32 %add50
  store ptr %add.ptr51, ptr %pos, align 4
  %119 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %120, i32 noundef 1073741824, ptr noundef nonnull @.str, i32 noundef %109) #7
  %121 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pos, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 7937, ptr %122, align 1
  %len55 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %122, i32 0, i32 1
  %124 = ptrtoint ptr %len55 to i32
  call void @__asan_storeN_noabort(i32 %124, i32 2)
  store i16 512, ptr %len55, align 1
  %sec_info = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60
  %wep_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %125 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %wep_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool56.not = icmp eq i8 %126, 0
  br i1 %tobool56.not, label %if.end.if.end61_crit_edge, label %if.then57

if.end.if.end61_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then57:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %authentication_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 5
  %127 = ptrtoint ptr %authentication_mode to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %authentication_mode, align 4
  %conv59 = trunc i32 %128 to i16
  %129 = call i16 @llvm.bswap.i16(i16 %conv59)
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.end.if.end61_crit_edge
  %.sink = phi i16 [ %129, %if.then57 ], [ 0, %if.end.if.end61_crit_edge ]
  %130 = getelementptr inbounds %struct.mwifiex_ie_types_auth_type, ptr %122, i32 0, i32 1
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 %.sink, ptr %130, align 1
  %132 = ptrtoint ptr %len55 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 2)
  %133 = load i16, ptr %len55, align 1
  %134 = call i16 @llvm.bswap.i16(i16 %133)
  %conv64 = zext i16 %134 to i32
  %add65 = add nuw nsw i32 %conv64, 4
  %135 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pos, align 4
  %add.ptr66 = getelementptr i8, ptr %136, i32 %add65
  store ptr %add.ptr66, ptr %pos, align 4
  %137 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %138, i32 0, i32 47
  %139 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %140, 12032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %if.end61.if.end111_crit_edge, label %land.lhs.true

if.end61.if.end111_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

land.lhs.true:                                    ; preds = %if.end61
  %and71 = and i32 %140, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %land.lhs.true.if.then87_crit_edge, label %land.lhs.true73

land.lhs.true.if.then87_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

land.lhs.true73:                                  ; preds = %land.lhs.true
  %disable_11n = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 22
  %141 = ptrtoint ptr %disable_11n to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %disable_11n, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool74.not = icmp eq i8 %142, 0
  br i1 %tobool74.not, label %land.lhs.true75, label %land.lhs.true73.if.then87_crit_edge

land.lhs.true73.if.then87_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

land.lhs.true75:                                  ; preds = %land.lhs.true73
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %138, i32 0, i32 84
  %143 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %config_bands, align 2
  %145 = and i8 %144, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %land.lhs.true75.if.then87_crit_edge, label %land.lhs.true85

land.lhs.true75.if.then87_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

land.lhs.true85:                                  ; preds = %land.lhs.true75
  %bcn_ht_cap = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 24
  %147 = ptrtoint ptr %bcn_ht_cap to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bcn_ht_cap, align 8
  %tobool86.not = icmp eq ptr %148, null
  br i1 %tobool86.not, label %land.lhs.true85.if.then87_crit_edge, label %land.lhs.true85.if.end111_crit_edge

land.lhs.true85.if.end111_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

land.lhs.true85.if.then87_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

if.then87:                                        ; preds = %land.lhs.true85.if.then87_crit_edge, %land.lhs.true75.if.then87_crit_edge, %land.lhs.true73.if.then87_crit_edge, %land.lhs.true.if.then87_crit_edge
  %149 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 2)
  store i16 257, ptr %add.ptr66, align 1
  %len91 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %add.ptr66, i32 0, i32 1
  %150 = ptrtoint ptr %len91 to i32
  call void @__asan_storeN_noabort(i32 %150, i32 2)
  store i16 1792, ptr %len91, align 1
  %chan_scan_param = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %add.ptr66, i32 0, i32 1
  %151 = call ptr @memset(ptr %chan_scan_param, i32 0, i32 7)
  %152 = ptrtoint ptr %current_chan to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %current_chan, align 2
  %chan_number = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %add.ptr66, i32 0, i32 1, i32 0, i32 1
  %154 = ptrtoint ptr %chan_number to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %chan_number, align 1
  %155 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %priv, align 8
  %conv100 = zext i8 %153 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %156, i32 noundef 1073741824, ptr noundef nonnull @.str.1, i32 noundef %conv100) #7
  %bss_band = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 13
  %157 = ptrtoint ptr %bss_band to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %bss_band, align 4
  %conv101 = trunc i16 %158 to i8
  %159 = zext i8 %conv101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv101, label %sw.default.i [
    i8 4, label %if.then87.mwifiex_band_to_radio_type.exit_crit_edge
    i8 16, label %if.then87.mwifiex_band_to_radio_type.exit_crit_edge346
    i8 20, label %if.then87.mwifiex_band_to_radio_type.exit_crit_edge347
    i8 52, label %if.then87.mwifiex_band_to_radio_type.exit_crit_edge348
  ]

if.then87.mwifiex_band_to_radio_type.exit_crit_edge348: ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

if.then87.mwifiex_band_to_radio_type.exit_crit_edge347: ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

if.then87.mwifiex_band_to_radio_type.exit_crit_edge346: ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

if.then87.mwifiex_band_to_radio_type.exit_crit_edge: ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

sw.default.i:                                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

mwifiex_band_to_radio_type.exit:                  ; preds = %sw.default.i, %if.then87.mwifiex_band_to_radio_type.exit_crit_edge, %if.then87.mwifiex_band_to_radio_type.exit_crit_edge346, %if.then87.mwifiex_band_to_radio_type.exit_crit_edge347, %if.then87.mwifiex_band_to_radio_type.exit_crit_edge348
  %retval.0.i312 = phi i8 [ 0, %sw.default.i ], [ 1, %if.then87.mwifiex_band_to_radio_type.exit_crit_edge ], [ 1, %if.then87.mwifiex_band_to_radio_type.exit_crit_edge346 ], [ 1, %if.then87.mwifiex_band_to_radio_type.exit_crit_edge347 ], [ 1, %if.then87.mwifiex_band_to_radio_type.exit_crit_edge348 ]
  %160 = ptrtoint ptr %chan_scan_param to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %retval.0.i312, ptr %chan_scan_param, align 1
  %161 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %priv, align 8
  %conv109 = zext i8 %retval.0.i312 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %162, i32 noundef 1073741824, ptr noundef nonnull @.str.2, i32 noundef %conv109) #7
  %163 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pos, align 4
  %add.ptr110 = getelementptr i8, ptr %164, i32 11
  store ptr %add.ptr110, ptr %pos, align 4
  br label %if.end111

if.end111:                                        ; preds = %mwifiex_band_to_radio_type.exit, %land.lhs.true85.if.end111_crit_edge, %if.end61.if.end111_crit_edge
  %wps = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 113
  %165 = ptrtoint ptr %wps to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %wps, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool112.not = icmp eq i8 %166, 0
  br i1 %tobool112.not, label %if.then113, label %if.end111.if.end127_crit_edge

if.end111.if.end127_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

if.then113:                                       ; preds = %if.end111
  %167 = ptrtoint ptr %sec_info to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %sec_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool116.not = icmp eq i8 %168, 0
  br i1 %tobool116.not, label %lor.lhs.false117, label %if.then113.if.then121_crit_edge

if.then113.if.then121_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then121

lor.lhs.false117:                                 ; preds = %if.then113
  %wpa2_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 1
  %169 = ptrtoint ptr %wpa2_enabled to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %wpa2_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool120.not = icmp eq i8 %170, 0
  br i1 %tobool120.not, label %lor.lhs.false117.if.end127_crit_edge, label %lor.lhs.false117.if.then121_crit_edge

lor.lhs.false117.if.then121_crit_edge:            ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then121

lor.lhs.false117.if.end127_crit_edge:             ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

if.then121:                                       ; preds = %lor.lhs.false117.if.then121_crit_edge, %if.then113.if.then121_crit_edge
  %171 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pos, align 4
  %tobool1.not.i = icmp eq ptr %172, null
  br i1 %tobool1.not.i, label %if.then121.if.end127_crit_edge, label %if.end.i313

if.then121.if.end127_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

if.end.i313:                                      ; preds = %if.then121
  %wpa_ie.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 63
  %173 = ptrtoint ptr %wpa_ie.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %wpa_ie.i, align 2
  %conv5.i = zext i8 %174 to i16
  %175 = shl nuw i16 %conv5.i, 8
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_storeN_noabort(i32 %176, i32 2)
  store i16 %175, ptr %172, align 1
  %arrayidx9.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 63, i32 1
  %177 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx9.i, align 1
  %len.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %172, i32 0, i32 1
  %conv16.i = zext i8 %178 to i16
  %179 = shl nuw i16 %conv16.i, 8
  %180 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %180, i32 2)
  store i16 %179, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %178)
  %cmp.not.i = icmp eq i8 %178, -1
  br i1 %cmp.not.i, label %if.end.i313.cleanup_crit_edge, label %if.then23.i

if.end.i313.cleanup_crit_edge:                    ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23.i:                                      ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #9
  %conv21.i = zext i8 %178 to i32
  %rsn_ie.i = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, ptr %172, i32 0, i32 1
  %arrayidx25.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 63, i32 2
  %181 = call ptr @memcpy(ptr %rsn_ie.i, ptr %arrayidx25.i, i32 %conv21.i)
  %add.i = add nuw nsw i32 %conv21.i, 4
  %182 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pos, align 4
  %add.ptr.i = getelementptr i8, ptr %183, i32 %add.i
  store ptr %add.ptr.i, ptr %pos, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then23.i, %if.then121.if.end127_crit_edge, %lor.lhs.false117.if.end127_crit_edge, %if.end111.if.end127_crit_edge
  %184 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %priv, align 8
  %fw_cap_info129 = getelementptr inbounds %struct.mwifiex_adapter, ptr %185, i32 0, i32 47
  %186 = ptrtoint ptr %fw_cap_info129 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %fw_cap_info129, align 4
  %and130 = and i32 %187, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end127.if.end149_crit_edge, label %land.lhs.true132

if.end127.if.end149_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

land.lhs.true132:                                 ; preds = %if.end127
  %disable_11n133 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 22
  %188 = ptrtoint ptr %disable_11n133 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %disable_11n133, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool134.not = icmp eq i8 %189, 0
  br i1 %tobool134.not, label %land.lhs.true135, label %land.lhs.true132.if.end149_crit_edge

land.lhs.true132.if.end149_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

land.lhs.true135:                                 ; preds = %land.lhs.true132
  %config_bands137 = getelementptr inbounds %struct.mwifiex_adapter, ptr %185, i32 0, i32 84
  %190 = ptrtoint ptr %config_bands137 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %config_bands137, align 2
  %192 = and i8 %191, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %land.lhs.true135.if.end149_crit_edge, label %if.then147

land.lhs.true135.if.end149_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

if.then147:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #9
  %call148 = call i32 @mwifiex_cmd_append_11n_tlv(ptr noundef %priv, ptr noundef %bss_desc, ptr noundef nonnull %pos) #7
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %land.lhs.true135.if.end149_crit_edge, %land.lhs.true132.if.end149_crit_edge, %if.end127.if.end149_crit_edge
  %194 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %priv, align 8
  %fw_cap_info151 = getelementptr inbounds %struct.mwifiex_adapter, ptr %195, i32 0, i32 47
  %196 = ptrtoint ptr %fw_cap_info151 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %fw_cap_info151, align 4
  %and152 = and i32 %197, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.end149.if.end167_crit_edge, label %land.lhs.true154

if.end149.if.end167_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

land.lhs.true154:                                 ; preds = %if.end149
  %disable_11n155 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 22
  %198 = ptrtoint ptr %disable_11n155 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %disable_11n155, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool156.not = icmp eq i8 %199, 0
  br i1 %tobool156.not, label %land.lhs.true157, label %land.lhs.true154.if.end167_crit_edge

land.lhs.true154.if.end167_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

land.lhs.true157:                                 ; preds = %land.lhs.true154
  %disable_11ac = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 44
  %200 = ptrtoint ptr %disable_11ac to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %disable_11ac, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool158.not = icmp eq i8 %201, 0
  br i1 %tobool158.not, label %land.lhs.true159, label %land.lhs.true157.if.end167_crit_edge

land.lhs.true157.if.end167_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

land.lhs.true159:                                 ; preds = %land.lhs.true157
  %config_bands161 = getelementptr inbounds %struct.mwifiex_adapter, ptr %195, i32 0, i32 84
  %202 = ptrtoint ptr %config_bands161 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %config_bands161, align 2
  %204 = and i8 %203, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool164.not = icmp eq i8 %204, 0
  br i1 %tobool164.not, label %land.lhs.true159.if.end167_crit_edge, label %if.then165

land.lhs.true159.if.end167_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

if.then165:                                       ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #9
  %call166 = call i32 @mwifiex_cmd_append_11ac_tlv(ptr noundef %priv, ptr noundef %bss_desc, ptr noundef nonnull %pos) #7
  br label %if.end167

if.end167:                                        ; preds = %if.then165, %land.lhs.true159.if.end167_crit_edge, %land.lhs.true157.if.end167_crit_edge, %land.lhs.true154.if.end167_crit_edge, %if.end149.if.end167_crit_edge
  %call168 = call i32 @mwifiex_cmd_append_vsie_tlv(ptr noundef %priv, i16 noundef zeroext 2, ptr noundef nonnull %pos) #7
  %wmm_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 21
  %bcn_ht_cap169 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 24
  %205 = ptrtoint ptr %bcn_ht_cap169 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %bcn_ht_cap169, align 8
  %call170 = call i32 @mwifiex_wmm_process_association_req(ptr noundef %priv, ptr noundef nonnull %pos, ptr noundef %wmm_ie, ptr noundef %206) #7
  %wapi_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 2
  %207 = ptrtoint ptr %wapi_enabled to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %wapi_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool173.not = icmp eq i8 %208, 0
  br i1 %tobool173.not, label %if.end167.if.end179_crit_edge, label %land.lhs.true174

if.end167.if.end179_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

land.lhs.true174:                                 ; preds = %if.end167
  %wapi_ie_len = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 70
  %209 = ptrtoint ptr %wapi_ie_len to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %wapi_ie_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %210)
  %tobool176.not = icmp eq i16 %210, 0
  br i1 %tobool176.not, label %land.lhs.true174.if.end179_crit_edge, label %if.then177

land.lhs.true174.if.end179_crit_edge:             ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

if.then177:                                       ; preds = %land.lhs.true174
  %211 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pos, align 4
  %cmp1.i = icmp eq ptr %212, null
  br i1 %cmp1.i, label %if.then177.if.end179_crit_edge, label %if.then4.i

if.then177.if.end179_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

if.then4.i:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #9
  %213 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %priv, align 8
  %conv.i = zext i16 %210 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %214, i32 noundef 16, ptr noundef nonnull @.str.52, i32 noundef %conv.i, ptr noundef nonnull %212) #7
  %215 = ptrtoint ptr %wapi_ie_len to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %wapi_ie_len, align 2
  %217 = call i16 @llvm.bswap.i16(i16 %216) #7
  %218 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pos, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_storeN_noabort(i32 %220, i32 2)
  store i16 24065, ptr %219, align 1
  %ie_header.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %219, i32 2
  %221 = ptrtoint ptr %ie_header.sroa.5.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %221, i32 2)
  store i16 %217, ptr %ie_header.sroa.5.0..sroa_idx.i, align 1
  %222 = load ptr, ptr %pos, align 4
  %add.ptr.i316 = getelementptr i8, ptr %222, i32 4
  store ptr %add.ptr.i316, ptr %pos, align 4
  %wapi_ie.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 68
  %223 = ptrtoint ptr %wapi_ie_len to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %wapi_ie_len, align 2
  %conv8.i = zext i16 %224 to i32
  %225 = call ptr @memcpy(ptr %add.ptr.i316, ptr %wapi_ie.i, i32 %conv8.i)
  %226 = load i16, ptr %wapi_ie_len, align 2
  %conv10.i = zext i16 %226 to i32
  %227 = load ptr, ptr %pos, align 4
  %add.ptr11.i = getelementptr i8, ptr %227, i32 %conv10.i
  store ptr %add.ptr11.i, ptr %pos, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.then4.i, %if.then177.if.end179_crit_edge, %land.lhs.true174.if.end179_crit_edge, %if.end167.if.end179_crit_edge
  %228 = ptrtoint ptr %wps to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %wps, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool183.not = icmp eq i8 %229, 0
  br i1 %tobool183.not, label %if.end179.if.end189_crit_edge, label %land.lhs.true184

if.end179.if.end189_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

land.lhs.true184:                                 ; preds = %if.end179
  %wps_ie_len = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 72
  %230 = ptrtoint ptr %wps_ie_len to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %wps_ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %231)
  %tobool186.not = icmp eq i16 %231, 0
  br i1 %tobool186.not, label %land.lhs.true184.if.end189_crit_edge, label %if.then187

land.lhs.true184.if.end189_crit_edge:             ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

if.then187:                                       ; preds = %land.lhs.true184
  %232 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %pos, align 4
  %tobool1.not.i317 = icmp eq ptr %233, null
  br i1 %tobool1.not.i317, label %if.then187.mwifiex_cmd_append_tsf_tlv.exit_crit_edge, label %if.end14.i

if.then187.mwifiex_cmd_append_tsf_tlv.exit_crit_edge: ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_cmd_append_tsf_tlv.exit

if.end14.i:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #9
  %234 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %priv, align 8
  %conv.i319 = zext i16 %231 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %235, i32 noundef 16, ptr noundef nonnull @.str.53, i32 noundef %conv.i319, ptr noundef nonnull %233) #7
  %236 = ptrtoint ptr %wps_ie_len to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %wps_ie_len, align 4
  %238 = call i16 @llvm.bswap.i16(i16 %237) #7
  %239 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %pos, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_storeN_noabort(i32 %241, i32 2)
  store i16 2561, ptr %240, align 1
  %ie_header.sroa.5.0..sroa_idx.i320 = getelementptr inbounds i8, ptr %240, i32 2
  %242 = ptrtoint ptr %ie_header.sroa.5.0..sroa_idx.i320 to i32
  call void @__asan_storeN_noabort(i32 %242, i32 2)
  store i16 %238, ptr %ie_header.sroa.5.0..sroa_idx.i320, align 1
  %243 = load ptr, ptr %pos, align 4
  %add.ptr.i321 = getelementptr i8, ptr %243, i32 4
  store ptr %add.ptr.i321, ptr %pos, align 4
  %wps_ie.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 71
  %244 = ptrtoint ptr %wps_ie.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %wps_ie.i, align 8
  %246 = ptrtoint ptr %wps_ie_len to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %wps_ie_len, align 4
  %conv7.i = zext i16 %247 to i32
  %248 = call ptr @memcpy(ptr %add.ptr.i321, ptr %245, i32 %conv7.i)
  %249 = load i16, ptr %wps_ie_len, align 4
  %conv9.i = zext i16 %249 to i32
  %250 = load ptr, ptr %pos, align 4
  %add.ptr10.i = getelementptr i8, ptr %250, i32 %conv9.i
  store ptr %add.ptr10.i, ptr %pos, align 4
  %251 = load ptr, ptr %wps_ie.i, align 8
  call void @kfree(ptr noundef %251) #7
  %252 = ptrtoint ptr %wps_ie_len to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 0, ptr %wps_ie_len, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.end14.i, %land.lhs.true184.if.end189_crit_edge, %if.end179.if.end189_crit_edge
  %253 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %253)
  %.pr = load ptr, ptr %pos, align 4
  %tobool1.not.i322 = icmp eq ptr %.pr, null
  br i1 %tobool1.not.i322, label %if.end189.mwifiex_cmd_append_tsf_tlv.exit_crit_edge, label %if.end3.i324

if.end189.mwifiex_cmd_append_tsf_tlv.exit_crit_edge: ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_cmd_append_tsf_tlv.exit

if.end3.i324:                                     ; preds = %if.end189
  %gen_ie_buf_len.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 94
  %254 = ptrtoint ptr %gen_ie_buf_len.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %gen_ie_buf_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool4.not.i = icmp eq i8 %255, 0
  br i1 %tobool4.not.i, label %mwifiex_cmd_append_generic_ie.exitthread-pre-split, label %if.then5.i

if.then5.i:                                       ; preds = %if.end3.i324
  call void @__sanitizer_cov_trace_pc() #9
  %256 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %priv, align 8
  %conv.i325 = zext i8 %255 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %257, i32 noundef 1073741824, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.mwifiex_cmd_append_generic_ie, i32 noundef %conv.i325, ptr noundef nonnull %.pr) #7
  %258 = ptrtoint ptr %gen_ie_buf_len.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %gen_ie_buf_len.i, align 8
  %conv8.i326 = zext i8 %259 to i16
  %260 = shl nuw i16 %conv8.i326, 8
  %261 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %pos, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_storeN_noabort(i32 %263, i32 2)
  store i16 2561, ptr %262, align 1
  %ie_header.sroa.5.0..sroa_idx.i327 = getelementptr inbounds i8, ptr %262, i32 2
  %264 = ptrtoint ptr %ie_header.sroa.5.0..sroa_idx.i327 to i32
  call void @__asan_storeN_noabort(i32 %264, i32 2)
  store i16 %260, ptr %ie_header.sroa.5.0..sroa_idx.i327, align 1
  %265 = load ptr, ptr %pos, align 4
  %add.ptr.i328 = getelementptr i8, ptr %265, i32 4
  store ptr %add.ptr.i328, ptr %pos, align 4
  %gen_ie_buf.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 93
  %266 = load i8, ptr %gen_ie_buf_len.i, align 8
  %conv10.i329 = zext i8 %266 to i32
  %267 = call ptr @memcpy(ptr %add.ptr.i328, ptr %gen_ie_buf.i, i32 %conv10.i329)
  %268 = load i8, ptr %gen_ie_buf_len.i, align 8
  %conv12.i = zext i8 %268 to i32
  %269 = load ptr, ptr %pos, align 4
  %add.ptr13.i = getelementptr i8, ptr %269, i32 %conv12.i
  store ptr %add.ptr13.i, ptr %pos, align 4
  store i8 0, ptr %gen_ie_buf_len.i, align 8
  br label %mwifiex_cmd_append_generic_ie.exit

mwifiex_cmd_append_generic_ie.exitthread-pre-split: ; preds = %if.end3.i324
  call void @__sanitizer_cov_trace_pc() #9
  %270 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %270)
  %.pr344 = load ptr, ptr %pos, align 4
  br label %mwifiex_cmd_append_generic_ie.exit

mwifiex_cmd_append_generic_ie.exit:               ; preds = %mwifiex_cmd_append_generic_ie.exitthread-pre-split, %if.then5.i
  %271 = phi ptr [ %.pr344, %mwifiex_cmd_append_generic_ie.exitthread-pre-split ], [ %add.ptr13.i, %if.then5.i ]
  %cmp1.i330 = icmp eq ptr %271, null
  br i1 %cmp1.i330, label %mwifiex_cmd_append_generic_ie.exit.mwifiex_cmd_append_tsf_tlv.exit_crit_edge, label %if.end3.i333

mwifiex_cmd_append_generic_ie.exit.mwifiex_cmd_append_tsf_tlv.exit_crit_edge: ; preds = %mwifiex_cmd_append_generic_ie.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_cmd_append_tsf_tlv.exit

if.end3.i333:                                     ; preds = %mwifiex_cmd_append_generic_ie.exit
  call void @__sanitizer_cov_trace_pc() #9
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_storeN_noabort(i32 %272, i32 2)
  store i16 4865, ptr %271, align 1
  %tsf_tlv.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %271, i32 2
  %273 = ptrtoint ptr %tsf_tlv.sroa.6.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %273, i32 2)
  store i16 4096, ptr %tsf_tlv.sroa.6.0..sroa_idx.i, align 1
  %274 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %pos, align 4
  %add.ptr.i332 = getelementptr i8, ptr %275, i32 4
  %fw_tsf.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 15
  %276 = ptrtoint ptr %fw_tsf.i to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %fw_tsf.i, align 8
  %278 = call i64 @llvm.bswap.i64(i64 %277) #7
  %279 = ptrtoint ptr %add.ptr.i332 to i32
  call void @__asan_storeN_noabort(i32 %279, i32 8)
  store i64 %278, ptr %add.ptr.i332, align 1
  %add.ptr5.i = getelementptr i8, ptr %275, i32 12
  %280 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %add.ptr5.i, ptr %pos, align 4
  %timestamp.i = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 16
  %281 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %timestamp.i, align 8
  %283 = call i64 @llvm.bswap.i64(i64 %282) #7
  %284 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %priv, align 8
  %286 = ptrtoint ptr %fw_tsf.i to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %fw_tsf.i, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %285, i32 noundef 1073741824, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.mwifiex_cmd_append_tsf_tlv, i64 noundef %282, i64 noundef %287) #7
  %288 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %pos, align 4
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_storeN_noabort(i32 %290, i32 8)
  store i64 %283, ptr %289, align 1
  %add.ptr8.i = getelementptr i8, ptr %289, i32 8
  store ptr %add.ptr8.i, ptr %pos, align 4
  br label %mwifiex_cmd_append_tsf_tlv.exit

mwifiex_cmd_append_tsf_tlv.exit:                  ; preds = %if.end3.i333, %mwifiex_cmd_append_generic_ie.exit.mwifiex_cmd_append_tsf_tlv.exit_crit_edge, %if.end189.mwifiex_cmd_append_tsf_tlv.exit_crit_edge, %if.then187.mwifiex_cmd_append_tsf_tlv.exit_crit_edge
  call void @mwifiex_11h_process_join(ptr noundef %priv, ptr noundef nonnull %pos, ptr noundef %bss_desc) #7
  %291 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %pos, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %292 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %params to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %293 = trunc i32 %sub.ptr.sub to i16
  %conv195 = add i16 %293, 8
  %294 = call i16 @llvm.bswap.i16(i16 %conv195)
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %295 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %295, i32 2)
  store i16 %294, ptr %size, align 1
  %cap_info_bitmap = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 20
  %296 = ptrtoint ptr %cap_info_bitmap to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %cap_info_bitmap, align 8
  %298 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %priv, align 8
  %config_bands197 = getelementptr inbounds %struct.mwifiex_adapter, ptr %299, i32 0, i32 84
  %300 = ptrtoint ptr %config_bands197 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %config_bands197, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %301)
  %cmp199 = icmp eq i8 %301, 1
  %302 = and i16 %297, 8703
  %spec.select = select i1 %cmp199, i16 %302, i16 %297
  %303 = and i16 %spec.select, 9727
  %conv210 = zext i16 %303 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %299, i32 noundef 1073741824, ptr noundef nonnull @.str.3, i32 noundef %conv210, i32 noundef -55809) #7
  %304 = call i16 @llvm.bswap.i16(i16 %303)
  %305 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %305, i32 2)
  store i16 %304, ptr %add.ptr, align 1
  br label %cleanup

cleanup:                                          ; preds = %mwifiex_cmd_append_tsf_tlv.exit, %if.end.i313.cleanup_crit_edge, %mwifiex_setup_rates_from_bssdesc.exit
  %retval.0 = phi i32 [ 0, %mwifiex_cmd_append_tsf_tlv.exit ], [ -1, %mwifiex_setup_rates_from_bssdesc.exit ], [ -1, %if.end.i313.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #7
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %rates) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %band) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %band to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %band, label %sw.default [
    i8 4, label %entry.return_crit_edge
    i8 16, label %entry.return_crit_edge2
    i8 20, label %entry.return_crit_edge3
    i8 52, label %entry.return_crit_edge4
  ]

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4
  %retval.0 = phi i8 [ 0, %sw.default ], [ 1, %entry.return_crit_edge ], [ 1, %entry.return_crit_edge2 ], [ 1, %entry.return_crit_edge3 ], [ 1, %entry.return_crit_edge4 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_append_11n_tlv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_append_11ac_tlv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_append_vsie_tlv(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_wmm_process_association_req(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11h_process_join(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_802_11_associate(ptr noundef %priv, ptr noundef %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %attempted_bss_desc = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 46
  %2 = ptrtoint ptr %attempted_bss_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attempted_bss_desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.4) #7
  br label %done

if.end:                                           ; preds = %entry
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %params, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %status_code3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %status_code3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %status_code3, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %a_id = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 2
  %10 = ptrtoint ptr %a_id to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %a_id, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  %and = and i32 %conv, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and)
  %cmp.not = icmp eq i32 %and, 49152
  br i1 %cmp.not, label %if.end.if.end8_crit_edge, label %do.end

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.5, i32 noundef %conv) #11
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.if.end8_crit_edge
  %and10 = and i16 %12, 16383
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 1
  %15 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %size, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv12 = zext i16 %17 to i32
  %sub = add nsw i32 %conv12, -8
  %18 = tail call i32 @llvm.umin.i32(i32 %sub, i32 500)
  %assoc_rsp_size = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 92
  %19 = ptrtoint ptr %assoc_rsp_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %assoc_rsp_size, align 4
  %20 = tail call i16 @llvm.bswap.i16(i16 %and10)
  %21 = ptrtoint ptr %a_id to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %a_id, align 1
  %assoc_rsp_buf = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 91
  %22 = ptrtoint ptr %assoc_rsp_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %assoc_rsp_size, align 4
  %24 = call ptr @memcpy(ptr %assoc_rsp_buf, ptr %params, i32 %23)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool18.not = icmp eq i16 %8, 0
  br i1 %tobool18.not, label %if.end41, label %if.then19

if.then19:                                        ; preds = %if.end8
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %num_cmd_assoc_failure = getelementptr inbounds %struct.mwifiex_adapter, ptr %26, i32 0, i32 118, i32 8
  %27 = ptrtoint ptr %num_cmd_assoc_failure to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_cmd_assoc_failure, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %num_cmd_assoc_failure, align 4
  %29 = load ptr, ptr %priv, align 8
  %conv22 = zext i16 %9 to i32
  %conv23 = zext i16 %6 to i32
  %30 = ptrtoint ptr %a_id to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %a_id, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv25 = zext i16 %32 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %29, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %conv22, i32 noundef %conv23, i32 noundef %conv25) #7
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -6, i16 %6)
  %35 = icmp ugt i16 %6, -6
  br i1 %35, label %switch.lookup, label %if.then19.assoc_failure_reason_to_str.exit_crit_edge

if.then19.assoc_failure_reason_to_str.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %assoc_failure_reason_to_str.exit

switch.lookup:                                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %switch.tableidx = add i16 %6, 5
  %36 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.mwifiex_ret_802_11_associate, i32 0, i32 %36
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %assoc_failure_reason_to_str.exit

assoc_failure_reason_to_str.exit:                 ; preds = %switch.lookup, %if.then19.assoc_failure_reason_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.61, %if.then19.assoc_failure_reason_to_str.exit_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %34, i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef nonnull %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -769, i16 %5)
  %cmp28 = icmp eq i16 %5, -769
  br i1 %cmp28, label %if.then30, label %assoc_failure_reason_to_str.exit.done_crit_edge

assoc_failure_reason_to_str.exit.done_crit_edge:  ; preds = %assoc_failure_reason_to_str.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then30:                                        ; preds = %assoc_failure_reason_to_str.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %8)
  %cmp32 = icmp eq i16 %8, 512
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %39, i32 noundef 4, ptr noundef nonnull @.str.12) #7
  br label %done

if.else:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %39, i32 noundef 4, ptr noundef nonnull @.str.13) #7
  br label %done

if.end41:                                         ; preds = %if.end8
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %40 = ptrtoint ptr %media_connected to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %media_connected, align 8
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  %ps_state = getelementptr inbounds %struct.mwifiex_adapter, ptr %42, i32 0, i32 90
  %43 = ptrtoint ptr %ps_state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %ps_state, align 4
  %44 = load ptr, ptr %priv, align 8
  %pps_uapsd_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %44, i32 0, i32 104
  %45 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %pps_uapsd_mode, align 2
  %46 = load ptr, ptr %priv, align 8
  %tx_lock_flag = getelementptr inbounds %struct.mwifiex_adapter, ptr %46, i32 0, i32 86
  %47 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %tx_lock_flag, align 4
  %48 = ptrtoint ptr %attempted_bss_desc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %attempted_bss_desc, align 4
  %50 = load ptr, ptr %priv, align 8
  %ssid = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %49, i32 0, i32 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %50, i32 noundef 1073741824, ptr noundef nonnull @.str.14, ptr noundef %ssid) #7
  %curr_bss_params = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  %51 = call ptr @memcpy(ptr %curr_bss_params, ptr %49, i32 256)
  %current_chan = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %49, i32 0, i32 17, i32 0, i32 2
  %52 = ptrtoint ptr %current_chan to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %current_chan, align 2
  %conv49 = zext i8 %53 to i32
  %channel = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 5
  %54 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv49, ptr %channel, align 8
  %bss_band = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %49, i32 0, i32 13
  %55 = ptrtoint ptr %bss_band to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %bss_band, align 4
  %conv52 = trunc i16 %56 to i8
  %band = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 3
  %57 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv52, ptr %band, align 2
  %wmm_ie = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %49, i32 0, i32 21
  %58 = ptrtoint ptr %wmm_ie to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %wmm_ie, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %59)
  %cmp55 = icmp eq i8 %59, -35
  %spec.select = zext i1 %cmp55 to i8
  %60 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %spec.select, ptr %60, align 8
  %wmm_required = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 73
  %62 = ptrtoint ptr %wmm_required to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %wmm_required, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool64.not = icmp eq i8 %63, 0
  br i1 %tobool64.not, label %lor.lhs.false, label %if.end41.land.lhs.true_crit_edge

if.end41.land.lhs.true_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end41
  %bcn_ht_cap = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %49, i32 0, i32 24
  %64 = ptrtoint ptr %bcn_ht_cap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bcn_ht_cap, align 8
  %tobool65.not = icmp eq ptr %65, null
  br i1 %tobool65.not, label %lor.lhs.false.if.else72_crit_edge, label %land.lhs.truethread-pre-split

lor.lhs.false.if.else72_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else72

land.lhs.truethread-pre-split:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %66)
  %.pr = load i8, ptr %60, align 8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.truethread-pre-split, %if.end41.land.lhs.true_crit_edge
  %67 = phi i8 [ %.pr, %land.lhs.truethread-pre-split ], [ %spec.select, %if.end41.land.lhs.true_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool69.not = icmp eq i8 %67, 0
  br i1 %tobool69.not, label %land.lhs.true.if.else72_crit_edge, label %land.lhs.true.if.end74_crit_edge

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

land.lhs.true.if.else72_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else72

if.else72:                                        ; preds = %land.lhs.true.if.else72_crit_edge, %lor.lhs.false.if.else72_crit_edge
  br label %if.end74

if.end74:                                         ; preds = %if.else72, %land.lhs.true.if.end74_crit_edge
  %tobool77.not = phi i1 [ false, %land.lhs.true.if.end74_crit_edge ], [ true, %if.else72 ]
  %.sink = phi i8 [ 1, %land.lhs.true.if.end74_crit_edge ], [ 0, %if.else72 ]
  %wmm_enabled73 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 74
  %68 = ptrtoint ptr %wmm_enabled73 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %.sink, ptr %wmm_enabled73, align 1
  %wmm_uapsd_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 2
  %69 = ptrtoint ptr %wmm_uapsd_enabled to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %wmm_uapsd_enabled, align 1
  %wmm_enabled76 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 74
  br i1 %tobool77.not, label %if.end74.if.end87_crit_edge, label %if.then78

if.end74.if.end87_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %qos_info_bitmap = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %49, i32 0, i32 21, i32 3
  %70 = ptrtoint ptr %qos_info_bitmap to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %qos_info_bitmap, align 2
  %.lobit = lshr i8 %71, 7
  %72 = ptrtoint ptr %wmm_uapsd_enabled to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %.lobit, ptr %wmm_uapsd_enabled, align 1
  br label %if.end87

if.end87:                                         ; preds = %if.then78, %if.end74.if.end87_crit_edge
  %ie_buffer = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3
  %73 = ptrtoint ptr %assoc_rsp_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %assoc_rsp_size, align 4
  %sub90 = add i32 %74, -6
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 61, ptr noundef %ie_buffer, i32 noundef %sub90, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %tobool92.not = icmp eq ptr %call.i.i, null
  br i1 %tobool92.not, label %if.end87.if.end96_crit_edge, label %if.then93

if.end87.if.end96_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then93:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %ht_param = getelementptr i8, ptr %call.i.i, i32 3
  %75 = ptrtoint ptr %ht_param to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ht_param, align 1
  %assoc_resp_ht_param = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 162
  %77 = ptrtoint ptr %assoc_resp_ht_param to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %assoc_resp_ht_param, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end87.if.end96_crit_edge
  %.sink240 = phi i8 [ 1, %if.then93 ], [ 0, %if.end87.if.end96_crit_edge ]
  %78 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 163
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %.sink240, ptr %78, align 1
  %80 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv, align 8
  %curr_pkt_filter = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 17
  %82 = ptrtoint ptr %curr_pkt_filter to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %curr_pkt_filter, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %81, i32 noundef 1073741824, ptr noundef nonnull @.str.15, i32 noundef %83) #7
  %sec_info = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60
  %84 = ptrtoint ptr %sec_info to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %sec_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool99.not = icmp eq i8 %85, 0
  br i1 %tobool99.not, label %lor.lhs.false100, label %if.end96.if.then104_crit_edge

if.end96.if.then104_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then104

lor.lhs.false100:                                 ; preds = %if.end96
  %wpa2_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 1
  %86 = ptrtoint ptr %wpa2_enabled to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %wpa2_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool103.not = icmp eq i8 %87, 0
  br i1 %tobool103.not, label %lor.lhs.false100.if.end105_crit_edge, label %lor.lhs.false100.if.then104_crit_edge

lor.lhs.false100.if.then104_crit_edge:            ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then104

lor.lhs.false100.if.end105_crit_edge:             ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then104:                                       ; preds = %lor.lhs.false100.if.then104_crit_edge, %if.end96.if.then104_crit_edge
  %wpa_is_gtk_set = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 65
  %88 = ptrtoint ptr %wpa_is_gtk_set to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %wpa_is_gtk_set, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %lor.lhs.false100.if.end105_crit_edge
  %89 = ptrtoint ptr %wmm_enabled76 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %wmm_enabled76, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool107.not = icmp eq i8 %90, 0
  br i1 %tobool107.not, label %if.else109, label %if.end105.if.end114_crit_edge

if.end105.if.end114_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.else109:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mwifiex_wmm_setup_queue_priorities(ptr noundef %priv, ptr noundef null) #7
  tail call void @mwifiex_wmm_setup_ac_downgrade(ptr noundef %priv) #7
  %91 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %92, i32 noundef 1073741824, ptr noundef nonnull @.str.16) #7
  br label %if.end114

if.end114:                                        ; preds = %if.else109, %if.end105.if.end114_crit_edge
  %data_rssi_last = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 37
  %rxpd_rate = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 28
  %93 = ptrtoint ptr %rxpd_rate to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %rxpd_rate, align 1
  %rxpd_htinfo = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 27
  %94 = ptrtoint ptr %rxpd_htinfo to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %rxpd_htinfo, align 2
  %95 = call ptr @memset(ptr %data_rssi_last, i32 0, i32 16)
  tail call void @mwifiex_save_curr_bcn(ptr noundef %priv) #7
  %96 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %priv, align 8
  %num_cmd_assoc_success = getelementptr inbounds %struct.mwifiex_adapter, ptr %97, i32 0, i32 118, i32 7
  %98 = ptrtoint ptr %num_cmd_assoc_success to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_cmd_assoc_success, align 4
  %inc117 = add i32 %99, 1
  store i32 %inc117, ptr %num_cmd_assoc_success, align 4
  %100 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %100, i32 noundef 1073741824, ptr noundef nonnull @.str.17) #7
  tail call void @mwifiex_ralist_add(ptr noundef %priv, ptr noundef %curr_bss_params) #7
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %101 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 6
  %103 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %state.i, align 4
  %105 = and i32 %104, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i, label %if.end114.if.end125_crit_edge, label %if.then123

if.end114.if.end125_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.then123:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_carrier_on(ptr noundef %102) #7
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.end114.if.end125_crit_edge
  %106 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %netdev, align 4
  tail call void @mwifiex_wake_up_net_dev_queue(ptr noundef %107, ptr noundef %1) #7
  %108 = ptrtoint ptr %sec_info to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %sec_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool130.not = icmp eq i8 %109, 0
  br i1 %tobool130.not, label %lor.lhs.false131, label %if.end125.if.then136_crit_edge

if.end125.if.then136_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then136

lor.lhs.false131:                                 ; preds = %if.end125
  %wpa2_enabled133 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 1
  %110 = ptrtoint ptr %wpa2_enabled133 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %wpa2_enabled133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool135.not = icmp eq i8 %111, 0
  br i1 %tobool135.not, label %if.else137, label %lor.lhs.false131.if.then136_crit_edge

lor.lhs.false131.if.then136_crit_edge:            ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then136

if.then136:                                       ; preds = %lor.lhs.false131.if.then136_crit_edge, %if.end125.if.then136_crit_edge
  %scan_block = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 114
  %112 = ptrtoint ptr %scan_block to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %scan_block, align 1
  br label %done

if.else137:                                       ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #9
  %port_open = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 9
  %113 = ptrtoint ptr %port_open to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %port_open, align 1
  br label %done

done:                                             ; preds = %if.else137, %if.then136, %if.else, %if.then34, %assoc_failure_reason_to_str.exit.done_crit_edge, %if.then
  %ret.0 = phi i32 [ 16, %if.then34 ], [ 1, %if.else ], [ 0, %if.then136 ], [ 0, %if.else137 ], [ 0, %if.then ], [ %conv22, %assoc_failure_reason_to_str.exit.done_crit_edge ]
  %curr_cmd = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 60
  %114 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %curr_cmd, align 4
  %wait_q_enabled = getelementptr inbounds %struct.cmd_ctrl_node, ptr %115, i32 0, i32 7
  %116 = ptrtoint ptr %wait_q_enabled to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %wait_q_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool139.not = icmp eq i32 %117, 0
  br i1 %tobool139.not, label %done.if.end147_crit_edge, label %if.then140

done.if.end147_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then140:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool141.not = icmp ne i32 %ret.0, 0
  %status145 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 121, i32 1
  %. = sext i1 %tobool141.not to i32
  %118 = ptrtoint ptr %status145 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %., ptr %status145, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then140, %done.if.end147_crit_edge
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_setup_queue_priorities(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_setup_ac_downgrade(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_save_curr_bcn(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_ralist_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wake_up_net_dev_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_802_11_ad_hoc_start(ptr noundef %priv, ptr noundef %cmd, ptr nocapture noundef %req_ssid) local_unnamed_addr #0 align 64 {
entry:
  %pos = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #7
  %add.ptr = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 37
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %pos, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 11008, ptr %cmd, align 1
  %curr_bss_params = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  %attempted_bss_desc = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 46
  %4 = ptrtoint ptr %attempted_bss_desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %curr_bss_params, ptr %attempted_bss_desc, align 4
  %5 = call ptr @memset(ptr %params, i32 0, i32 32)
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %req_ssid, i32 0, i32 1
  %6 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ssid_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %7)
  %cmp = icmp ugt i8 %7, 32
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %ssid_len, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %9 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ssid_len, align 1
  %conv11 = zext i8 %10 to i32
  %11 = call ptr @memcpy(ptr %params, ptr %req_ssid, i32 %conv11)
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 1073741824, ptr noundef nonnull @.str.18, ptr noundef %params) #7
  %ssid14 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 1
  %12 = call ptr @memset(ptr %ssid14, i32 0, i32 32)
  %13 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ssid_len, align 1
  %conv23 = zext i8 %14 to i32
  %15 = call ptr @memcpy(ptr %ssid14, ptr %req_ssid, i32 %conv23)
  %16 = load i8, ptr %ssid_len, align 1
  %ssid_len26 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %ssid_len26 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %ssid_len26, align 2
  %bss_mode = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %bss_mode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %bss_mode, align 1
  %bss_mode27 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 10
  %19 = ptrtoint ptr %bss_mode27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %bss_mode27, align 4
  %beacon_period = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 51
  %20 = ptrtoint ptr %beacon_period to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %beacon_period, align 8
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %beacon_period28 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 1
  %23 = ptrtoint ptr %beacon_period28 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %beacon_period28, align 1
  %24 = ptrtoint ptr %beacon_period to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %beacon_period, align 8
  %beacon_period30 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 7
  %26 = ptrtoint ptr %beacon_period30 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %beacon_period30, align 8
  %phy_param_set = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 12
  %27 = ptrtoint ptr %phy_param_set to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 3, ptr %phy_param_set, align 1
  %len = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 13
  %28 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %len, align 1
  %adhoc_start_band = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 83
  %29 = ptrtoint ptr %adhoc_start_band to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %adhoc_start_band, align 1
  %adhoc_channel = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 56
  %31 = ptrtoint ptr %adhoc_channel to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %adhoc_channel, align 8
  %conv32 = zext i8 %32 to i16
  %call = tail call ptr @mwifiex_get_cfp(ptr noundef %priv, i8 noundef zeroext %30, i16 noundef zeroext %conv32, i32 noundef 0) #7
  %tobool33.not = icmp eq ptr %call, null
  br i1 %tobool33.not, label %if.then34, label %if.end5.if.end42thread-pre-split_crit_edge

if.end5.if.end42thread-pre-split_crit_edge:       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42thread-pre-split

if.then34:                                        ; preds = %if.end5
  %33 = ptrtoint ptr %adhoc_start_band to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %adhoc_start_band, align 1
  %call36 = tail call ptr @mwifiex_get_cfp(ptr noundef %priv, i8 noundef zeroext %34, i16 noundef zeroext 255, i32 noundef 0) #7
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.then34.if.end42thread-pre-split_crit_edge, label %if.then38

if.then34.if.end42thread-pre-split_crit_edge:     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42thread-pre-split

if.then38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call36 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %call36, align 4
  %conv39 = trunc i16 %36 to i8
  %37 = ptrtoint ptr %adhoc_channel to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv39, ptr %adhoc_channel, align 8
  br label %if.end42

if.end42thread-pre-split:                         ; preds = %if.then34.if.end42thread-pre-split_crit_edge, %if.end5.if.end42thread-pre-split_crit_edge
  %38 = ptrtoint ptr %adhoc_channel to i32
  call void @__asan_load1_noabort(i32 %38)
  %.pr = load i8, ptr %adhoc_channel, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.end42thread-pre-split, %if.then38
  %39 = phi i8 [ %.pr, %if.end42thread-pre-split ], [ %conv39, %if.then38 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool44.not = icmp eq i8 %39, 0
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @.str.19) #7
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %conv48 = zext i8 %39 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 1073741824, ptr noundef nonnull @.str.20, i32 noundef %conv48) #7
  %40 = ptrtoint ptr %adhoc_channel to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %adhoc_channel, align 8
  %conv50 = zext i8 %41 to i32
  %channel53 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 5
  %42 = ptrtoint ptr %channel53 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv50, ptr %channel53, align 8
  %43 = ptrtoint ptr %adhoc_start_band to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %adhoc_start_band, align 1
  %band = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 3
  %45 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %band, align 2
  store i32 %conv50, ptr %channel53, align 8
  %current_chan = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 14
  %46 = ptrtoint ptr %current_chan to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %41, ptr %current_chan, align 1
  %phy_param_set61 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 17
  %47 = call ptr @memcpy(ptr %phy_param_set61, ptr %phy_param_set, i32 7)
  %ss_param_set = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 4
  %48 = ptrtoint ptr %ss_param_set to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 6, ptr %ss_param_set, align 1
  %len65 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 5
  %49 = ptrtoint ptr %len65 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %len65, align 1
  %atim_window = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 55
  %50 = ptrtoint ptr %atim_window to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %atim_window, align 2
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  %atim_window67 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 6
  %53 = ptrtoint ptr %atim_window67 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %52, ptr %atim_window67, align 1
  %ss_param_set68 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 18
  %54 = ptrtoint ptr %ss_param_set to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %ss_param_set, align 1
  %56 = ptrtoint ptr %ss_param_set68 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 %55, ptr %ss_param_set68, align 1
  %cap_info_bitmap = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 20
  %57 = ptrtoint ptr %cap_info_bitmap to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %cap_info_bitmap, align 8
  %59 = or i16 %58, 2
  store i16 %59, ptr %cap_info_bitmap, align 8
  %sec_info = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60
  %encryption_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 7
  %60 = ptrtoint ptr %encryption_mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %encryption_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool72.not = icmp eq i32 %61, 0
  %.str.22..str.21 = select i1 %tobool72.not, ptr @.str.22, ptr @.str.21
  %not.tobool72.not = xor i1 %tobool72.not, true
  %. = zext i1 %not.tobool72.not to i32
  %.402 = select i1 %tobool72.not, i16 2, i16 18
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 1073741824, ptr noundef nonnull %.str.22..str.21) #7
  %62 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 3
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %., ptr %62, align 8
  %data_rate = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 23
  %64 = call ptr @memset(ptr %data_rate, i32 0, i32 14)
  %call82 = tail call i32 @mwifiex_get_active_data_rates(ptr noundef %priv, ptr noundef %data_rate) #7
  %65 = ptrtoint ptr %adhoc_start_band to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %adhoc_start_band, align 1
  %67 = and i8 %66, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool85.not = icmp eq i8 %67, 0
  br i1 %tobool85.not, label %if.end46.if.end94_crit_edge, label %land.lhs.true

if.end46.if.end94_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

land.lhs.true:                                    ; preds = %if.end46
  %curr_pkt_filter = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 17
  %68 = ptrtoint ptr %curr_pkt_filter to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %curr_pkt_filter, align 4
  %and86 = and i32 %69, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %land.lhs.true.if.end94_crit_edge, label %if.then88

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then88:                                        ; preds = %land.lhs.true
  %call90 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 40, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %curr_pkt_filter, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then88.if.end94_crit_edge, label %if.then92

if.then88.if.end94_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then92:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @.str.23) #7
  br label %cleanup

if.end94:                                         ; preds = %if.then88.if.end94_crit_edge, %land.lhs.true.if.end94_crit_edge, %if.end46.if.end94_crit_edge
  %70 = ptrtoint ptr %data_rate to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data_rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool98.not = icmp eq i8 %71, 0
  br i1 %tobool98.not, label %if.end94.for.end_crit_edge, label %for.inc

if.end94.for.end_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %if.end94
  %arrayidx.1 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 24
  %72 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool98.not.1 = icmp eq i8 %73, 0
  br i1 %tobool98.not.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 25
  %74 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool98.not.2 = icmp eq i8 %75, 0
  br i1 %tobool98.not.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 26
  %76 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool98.not.3 = icmp eq i8 %77, 0
  br i1 %tobool98.not.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 27
  %78 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool98.not.4 = icmp eq i8 %79, 0
  br i1 %tobool98.not.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 28
  %80 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool98.not.5 = icmp eq i8 %81, 0
  br i1 %tobool98.not.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 29
  %82 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool98.not.6 = icmp eq i8 %83, 0
  br i1 %tobool98.not.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 30
  %84 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool98.not.7 = icmp eq i8 %85, 0
  br i1 %tobool98.not.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 31
  %86 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool98.not.8 = icmp eq i8 %87, 0
  br i1 %tobool98.not.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 32
  %88 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool98.not.9 = icmp eq i8 %89, 0
  br i1 %tobool98.not.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 33
  %90 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool98.not.10 = icmp eq i8 %91, 0
  br i1 %tobool98.not.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 34
  %92 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool98.not.11 = icmp eq i8 %93, 0
  br i1 %tobool98.not.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 35
  %94 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool98.not.12 = icmp eq i8 %95, 0
  br i1 %tobool98.not.12, label %for.inc.11.for.end_crit_edge, label %for.inc.12

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.13 = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 36
  %96 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool98.not.13 = icmp eq i8 %97, 0
  %spec.select = select i1 %tobool98.not.13, i32 13, i32 14
  br label %for.end

for.end:                                          ; preds = %for.inc.12, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end94.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end94.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ %spec.select, %for.inc.12 ]
  %num_of_rates = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 4
  %98 = ptrtoint ptr %num_of_rates to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %i.0.lcssa, ptr %num_of_rates, align 4
  %data_rates = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 5
  %99 = call ptr @memcpy(ptr %data_rates, ptr %data_rate, i32 %i.0.lcssa)
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 1073741824, ptr noundef nonnull @.str.24, ptr noundef %data_rate) #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 1073741824, ptr noundef nonnull @.str.25) #7
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 47
  %100 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fw_cap_info, align 4
  %and108 = and i32 %101, 12032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %for.end.if.end169_crit_edge, label %if.then110

for.end.if.end169_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

if.then110:                                       ; preds = %for.end
  %102 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pos, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 257, ptr %103, align 1
  %len112 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %103, i32 0, i32 1
  %105 = ptrtoint ptr %len112 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 1792, ptr %len112, align 1
  %chan_scan_param = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %103, i32 0, i32 1
  %106 = call ptr @memset(ptr %chan_scan_param, i32 0, i32 7)
  %107 = ptrtoint ptr %channel53 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %channel53, align 8
  %conv117 = trunc i32 %108 to i8
  %chan_number = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %103, i32 0, i32 1, i32 0, i32 1
  %109 = ptrtoint ptr %chan_number to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv117, ptr %chan_number, align 1
  %conv123 = and i32 %108, 255
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 1073741824, ptr noundef nonnull @.str.26, i32 noundef %conv123) #7
  %110 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %band, align 2
  %112 = zext i8 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %111, label %sw.default.i [
    i8 4, label %if.then110.mwifiex_band_to_radio_type.exit_crit_edge
    i8 16, label %if.then110.mwifiex_band_to_radio_type.exit_crit_edge403
    i8 20, label %if.then110.mwifiex_band_to_radio_type.exit_crit_edge404
    i8 52, label %if.then110.mwifiex_band_to_radio_type.exit_crit_edge405
  ]

if.then110.mwifiex_band_to_radio_type.exit_crit_edge405: ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

if.then110.mwifiex_band_to_radio_type.exit_crit_edge404: ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

if.then110.mwifiex_band_to_radio_type.exit_crit_edge403: ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

if.then110.mwifiex_band_to_radio_type.exit_crit_edge: ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

sw.default.i:                                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

mwifiex_band_to_radio_type.exit:                  ; preds = %sw.default.i, %if.then110.mwifiex_band_to_radio_type.exit_crit_edge, %if.then110.mwifiex_band_to_radio_type.exit_crit_edge403, %if.then110.mwifiex_band_to_radio_type.exit_crit_edge404, %if.then110.mwifiex_band_to_radio_type.exit_crit_edge405
  %retval.0.i = phi i8 [ 0, %sw.default.i ], [ 1, %if.then110.mwifiex_band_to_radio_type.exit_crit_edge ], [ 1, %if.then110.mwifiex_band_to_radio_type.exit_crit_edge403 ], [ 1, %if.then110.mwifiex_band_to_radio_type.exit_crit_edge404 ], [ 1, %if.then110.mwifiex_band_to_radio_type.exit_crit_edge405 ]
  %113 = ptrtoint ptr %chan_scan_param to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %retval.0.i, ptr %chan_scan_param, align 1
  %114 = ptrtoint ptr %adhoc_start_band to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %adhoc_start_band, align 1
  %116 = and i8 %115, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %mwifiex_band_to_radio_type.exit.if.end163_crit_edge, label %if.then138

mwifiex_band_to_radio_type.exit.if.end163_crit_edge: ; preds = %mwifiex_band_to_radio_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

if.then138:                                       ; preds = %mwifiex_band_to_radio_type.exit
  %sec_chan_offset = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 117
  %118 = ptrtoint ptr %sec_chan_offset to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %sec_chan_offset, align 1
  %120 = zext i8 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %119, label %if.then138.if.end163_crit_edge [
    i8 1, label %if.then138.if.end163.sink.split_crit_edge
    i8 3, label %if.then154
  ]

if.then138.if.end163.sink.split_crit_edge:        ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163.sink.split

if.then138.if.end163_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

if.then154:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163.sink.split

if.end163.sink.split:                             ; preds = %if.then154, %if.then138.if.end163.sink.split_crit_edge
  %.sink401 = phi i8 [ 48, %if.then154 ], [ 16, %if.then138.if.end163.sink.split_crit_edge ]
  %121 = or i8 %retval.0.i, %.sink401
  %122 = ptrtoint ptr %chan_scan_param to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %chan_scan_param, align 1
  br label %if.end163

if.end163:                                        ; preds = %if.end163.sink.split, %if.then138.if.end163_crit_edge, %mwifiex_band_to_radio_type.exit.if.end163_crit_edge
  %123 = ptrtoint ptr %chan_scan_param to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %chan_scan_param, align 1
  %conv167 = zext i8 %124 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 1073741824, ptr noundef nonnull @.str.27, i32 noundef %conv167) #7
  %125 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pos, align 4
  %add.ptr168 = getelementptr i8, ptr %126, i32 11
  store ptr %add.ptr168, ptr %pos, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.end163, %for.end.if.end169_crit_edge
  %cmd_append_size.0 = phi i32 [ 11, %if.end163 ], [ 0, %for.end.if.end169_crit_edge ]
  %call170 = call i32 @mwifiex_cmd_append_vsie_tlv(ptr noundef %priv, i16 noundef zeroext 4, ptr noundef nonnull %pos) #7
  %add171 = add i32 %call170, %cmd_append_size.0
  %127 = ptrtoint ptr %sec_info to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %sec_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool173.not = icmp eq i8 %128, 0
  br i1 %tobool173.not, label %if.end169.if.end181_crit_edge, label %if.then174

if.end169.if.end181_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181

if.then174:                                       ; preds = %if.end169
  %129 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pos, align 4
  %tobool1.not.i = icmp eq ptr %130, null
  br i1 %tobool1.not.i, label %if.then174.if.end179_crit_edge, label %if.end.i

if.then174.if.end179_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

if.end.i:                                         ; preds = %if.then174
  %wpa_ie.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 63
  %131 = ptrtoint ptr %wpa_ie.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %wpa_ie.i, align 2
  %conv5.i = zext i8 %132 to i16
  %133 = shl nuw i16 %conv5.i, 8
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 2)
  store i16 %133, ptr %130, align 1
  %arrayidx9.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 63, i32 1
  %135 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx9.i, align 1
  %len.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %130, i32 0, i32 1
  %conv16.i = zext i8 %136 to i16
  %137 = shl nuw i16 %conv16.i, 8
  %138 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 %137, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %136)
  %cmp.not.i = icmp eq i8 %136, -1
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %if.then23.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv21.i = zext i8 %136 to i32
  %rsn_ie.i = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, ptr %130, i32 0, i32 1
  %arrayidx25.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 63, i32 2
  %139 = call ptr @memcpy(ptr %rsn_ie.i, ptr %arrayidx25.i, i32 %conv21.i)
  %add.i = add nuw nsw i32 %conv21.i, 4
  %140 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pos, align 4
  %add.ptr.i = getelementptr i8, ptr %141, i32 %add.i
  store ptr %add.ptr.i, ptr %pos, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.then23.i, %if.then174.if.end179_crit_edge
  %retval.0.i392.ph = phi i32 [ 0, %if.then174.if.end179_crit_edge ], [ %add.i, %if.then23.i ]
  %add180 = add i32 %retval.0.i392.ph, %add171
  br label %if.end181

if.end181:                                        ; preds = %if.end179, %if.end169.if.end181_crit_edge
  %cmd_append_size.1 = phi i32 [ %add180, %if.end179 ], [ %add171, %if.end169.if.end181_crit_edge ]
  %adhoc_11n_enabled = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 116
  %142 = ptrtoint ptr %adhoc_11n_enabled to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %adhoc_11n_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool182.not = icmp eq i8 %143, 0
  br i1 %tobool182.not, label %if.end181.if.end233_crit_edge, label %if.then183

if.end181.if.end233_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end233

if.then183:                                       ; preds = %if.end181
  %144 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pos, align 4
  %146 = getelementptr inbounds i8, ptr %145, i32 4
  %147 = call ptr @memset(ptr %146, i32 0, i32 26)
  %148 = ptrtoint ptr %145 to i32
  call void @__asan_storeN_noabort(i32 %148, i32 2)
  store i16 11520, ptr %145, align 1
  %len187 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %145, i32 0, i32 1
  %149 = ptrtoint ptr %len187 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 2)
  store i16 6656, ptr %len187, align 1
  %150 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %priv, align 8
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %151, i32 0, i32 84
  %152 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %config_bands, align 2
  %154 = zext i8 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %153, label %sw.default.i393 [
    i8 4, label %if.then183.mwifiex_band_to_radio_type.exit395_crit_edge
    i8 16, label %if.then183.mwifiex_band_to_radio_type.exit395_crit_edge406
    i8 20, label %if.then183.mwifiex_band_to_radio_type.exit395_crit_edge407
    i8 52, label %if.then183.mwifiex_band_to_radio_type.exit395_crit_edge408
  ]

if.then183.mwifiex_band_to_radio_type.exit395_crit_edge408: ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit395

if.then183.mwifiex_band_to_radio_type.exit395_crit_edge407: ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit395

if.then183.mwifiex_band_to_radio_type.exit395_crit_edge406: ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit395

if.then183.mwifiex_band_to_radio_type.exit395_crit_edge: ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit395

sw.default.i393:                                  ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit395

mwifiex_band_to_radio_type.exit395:               ; preds = %sw.default.i393, %if.then183.mwifiex_band_to_radio_type.exit395_crit_edge, %if.then183.mwifiex_band_to_radio_type.exit395_crit_edge406, %if.then183.mwifiex_band_to_radio_type.exit395_crit_edge407, %if.then183.mwifiex_band_to_radio_type.exit395_crit_edge408
  %retval.0.i394 = phi i8 [ 0, %sw.default.i393 ], [ 1, %if.then183.mwifiex_band_to_radio_type.exit395_crit_edge ], [ 1, %if.then183.mwifiex_band_to_radio_type.exit395_crit_edge406 ], [ 1, %if.then183.mwifiex_band_to_radio_type.exit395_crit_edge407 ], [ 1, %if.then183.mwifiex_band_to_radio_type.exit395_crit_edge408 ]
  %ht_cap190 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %145, i32 0, i32 1
  %call191 = call i32 @mwifiex_fill_cap_info(ptr noundef %priv, i8 noundef zeroext %retval.0.i394, ptr noundef %ht_cap190) #7
  %sec_chan_offset192 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 117
  %155 = ptrtoint ptr %sec_chan_offset192 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %sec_chan_offset192, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %cmp194 = icmp eq i8 %156, 0
  br i1 %cmp194, label %if.then196, label %mwifiex_band_to_radio_type.exit395.if.end206_crit_edge

mwifiex_band_to_radio_type.exit395.if.end206_crit_edge: ; preds = %mwifiex_band_to_radio_type.exit395
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206

if.then196:                                       ; preds = %mwifiex_band_to_radio_type.exit395
  call void @__sanitizer_cov_trace_pc() #9
  %157 = ptrtoint ptr %ht_cap190 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %158 = load i16, ptr %ht_cap190, align 1
  %159 = and i16 %158, -16897
  store i16 %159, ptr %ht_cap190, align 1
  br label %if.end206

if.end206:                                        ; preds = %if.then196, %mwifiex_band_to_radio_type.exit395.if.end206_crit_edge
  %160 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pos, align 4
  %add.ptr207 = getelementptr i8, ptr %161, i32 30
  store ptr %add.ptr207, ptr %pos, align 4
  %162 = getelementptr i8, ptr %161, i32 34
  %163 = call ptr @memset(ptr %162, i32 0, i32 22)
  %164 = ptrtoint ptr %add.ptr207 to i32
  call void @__asan_storeN_noabort(i32 %164, i32 2)
  store i16 15616, ptr %add.ptr207, align 1
  %len212 = getelementptr i8, ptr %161, i32 32
  %165 = ptrtoint ptr %len212 to i32
  call void @__asan_storeN_noabort(i32 %165, i32 2)
  store i16 5632, ptr %len212, align 1
  %166 = ptrtoint ptr %channel53 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %channel53, align 8
  %conv216 = trunc i32 %167 to i8
  %ht_oper = getelementptr i8, ptr %161, i32 34
  %168 = ptrtoint ptr %ht_oper to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv216, ptr %ht_oper, align 1
  %169 = ptrtoint ptr %sec_chan_offset192 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %sec_chan_offset192, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool218.not = icmp eq i8 %170, 0
  br i1 %tobool218.not, label %if.end206.if.end227_crit_edge, label %if.then219

if.end206.if.end227_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end227

if.then219:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  %ht_param = getelementptr i8, ptr %161, i32 35
  %171 = or i8 %170, 4
  %172 = ptrtoint ptr %ht_param to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %ht_param, align 1
  br label %if.end227

if.end227:                                        ; preds = %if.then219, %if.end206.if.end227_crit_edge
  %operation_mode = getelementptr i8, ptr %161, i32 36
  %173 = ptrtoint ptr %operation_mode to i32
  call void @__asan_storeN_noabort(i32 %173, i32 2)
  store i16 1024, ptr %operation_mode, align 1
  %basic_set = getelementptr i8, ptr %161, i32 40
  %174 = ptrtoint ptr %basic_set to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 -1, ptr %basic_set, align 1
  %175 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pos, align 4
  %add.ptr231 = getelementptr i8, ptr %176, i32 26
  store ptr %add.ptr231, ptr %pos, align 4
  %add232 = add i32 %cmd_append_size.1, 56
  br label %if.end233

if.end233:                                        ; preds = %if.end227, %if.end181.if.end233_crit_edge
  %cmd_append_size.2 = phi i32 [ %add232, %if.end227 ], [ %cmd_append_size.1, %if.end181.if.end233_crit_edge ]
  %177 = trunc i32 %cmd_append_size.2 to i16
  %conv235 = add i16 %177, 77
  %178 = call i16 @llvm.bswap.i16(i16 %conv235)
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %179 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %179, i32 2)
  store i16 %178, ptr %size, align 1
  %180 = ptrtoint ptr %adhoc_start_band to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %adhoc_start_band, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %181)
  %cmp238 = icmp eq i8 %181, 1
  %conv247 = or i16 %.402, 1024
  %tmp_cap.1 = select i1 %cmp238, i16 %.402, i16 %conv247
  %182 = call i16 @llvm.bswap.i16(i16 %tmp_cap.1)
  %cap_info_bitmap249 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 21
  %183 = ptrtoint ptr %cap_info_bitmap249 to i32
  call void @__asan_storeN_noabort(i32 %183, i32 2)
  store i16 %182, ptr %cap_info_bitmap249, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end233, %if.end.i.cleanup_crit_edge, %if.then92, %if.then45, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then92 ], [ 0, %if.end233 ], [ -1, %if.then45 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_cfp(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_active_data_rates(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_fill_cap_info(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_802_11_ad_hoc_join(ptr noundef %priv, ptr noundef %cmd, ptr noundef %bss_desc) local_unnamed_addr #0 align 64 {
entry:
  %curr_pkt_filter = alloca i16, align 2
  %pos = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %curr_pkt_filter) #7
  %0 = ptrtoint ptr %curr_pkt_filter to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %curr_pkt_filter, align 2, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #7
  %add.ptr = getelementptr %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 61
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %pos, align 4
  %erp_flags = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 8
  %2 = ptrtoint ptr %erp_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %erp_flags, align 2
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %curr_pkt_filter1 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 17
  %5 = ptrtoint ptr %curr_pkt_filter1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %curr_pkt_filter1, align 4
  %7 = trunc i32 %6 to i16
  %conv2 = or i16 %7, 8192
  %8 = ptrtoint ptr %curr_pkt_filter to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2, ptr %curr_pkt_filter, align 2
  %call = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 40, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %curr_pkt_filter, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.28) #7
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %attempted_bss_desc = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 46
  %11 = ptrtoint ptr %attempted_bss_desc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bss_desc, ptr %attempted_bss_desc, align 4
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 11264, ptr %cmd, align 1
  %bss_mode = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 6
  %13 = ptrtoint ptr %bss_mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %bss_mode, align 1
  %beacon_period = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 7
  %14 = ptrtoint ptr %beacon_period to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %beacon_period, align 8
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %beacon_period7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 7
  %17 = ptrtoint ptr %beacon_period7 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %beacon_period7, align 1
  %18 = call ptr @memcpy(ptr %params, ptr %bss_desc, i32 6)
  %ssid = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %ssid10 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 1
  %ssid_len = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ssid_len, align 2
  %conv13 = zext i8 %20 to i32
  %21 = call ptr @memcpy(ptr %ssid, ptr %ssid10, i32 %conv13)
  %phy_param_set = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 26
  %phy_param_set15 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 17
  %22 = call ptr @memcpy(ptr %phy_param_set, ptr %phy_param_set15, i32 7)
  %ss_param_set = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 33
  %ss_param_set17 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 18
  %23 = ptrtoint ptr %ss_param_set17 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %ss_param_set17, align 1
  %25 = ptrtoint ptr %ss_param_set to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %ss_param_set, align 1
  %cap_info_bitmap = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 20
  %26 = ptrtoint ptr %cap_info_bitmap to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cap_info_bitmap, align 8
  %28 = and i16 %27, 9727
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  %conv22 = zext i16 %28 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %30, i32 noundef 1073741824, ptr noundef nonnull @.str.29, i32 noundef %conv22, i32 noundef -55809) #7
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %32, i32 noundef 1073741824, ptr noundef nonnull @.str.30, ptr noundef %params, ptr noundef %ssid) #7
  %arrayidx = getelementptr %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11, i32 0
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool31.not = icmp eq i8 %34, 0
  br i1 %tobool31.not, label %if.end5.for.end_crit_edge, label %for.inc

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %if.end5
  %arrayidx.1 = getelementptr %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11, i32 1
  %35 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool31.not.1 = icmp eq i8 %36, 0
  br i1 %tobool31.not.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11, i32 2
  %37 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool31.not.2 = icmp eq i8 %38, 0
  br i1 %tobool31.not.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11, i32 3
  %39 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool31.not.3 = icmp eq i8 %40, 0
  br i1 %tobool31.not.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11, i32 4
  %41 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool31.not.4 = icmp eq i8 %42, 0
  br i1 %tobool31.not.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11, i32 5
  %43 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool31.not.5 = icmp eq i8 %44, 0
  br i1 %tobool31.not.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11, i32 6
  %45 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool31.not.6 = icmp eq i8 %46, 0
  br i1 %tobool31.not.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11, i32 7
  %47 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool31.not.7 = icmp eq i8 %48, 0
  br i1 %tobool31.not.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11, i32 8
  %49 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool31.not.8 = icmp eq i8 %50, 0
  br i1 %tobool31.not.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11, i32 9
  %51 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool31.not.9 = icmp eq i8 %52, 0
  br i1 %tobool31.not.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11, i32 10
  %53 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool31.not.10 = icmp eq i8 %54, 0
  br i1 %tobool31.not.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11, i32 11
  %55 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool31.not.11 = icmp eq i8 %56, 0
  br i1 %tobool31.not.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11, i32 12
  %57 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool31.not.12 = icmp eq i8 %58, 0
  br i1 %tobool31.not.12, label %for.inc.11.for.end_crit_edge, label %for.inc.12

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.13 = getelementptr %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 11, i32 13
  %59 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool31.not.13 = icmp eq i8 %60, 0
  %spec.select = select i1 %tobool31.not.13, i32 13, i32 14
  br label %for.end

for.end:                                          ; preds = %for.inc.12, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end5.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ %spec.select, %for.inc.12 ]
  %data_rates = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 43
  %61 = call ptr @memset(ptr %data_rates, i32 0, i32 14)
  %62 = call ptr @memcpy(ptr %data_rates, ptr %arrayidx, i32 %i.0.lcssa)
  %num_of_rates = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 4
  %63 = ptrtoint ptr %num_of_rates to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %i.0.lcssa, ptr %num_of_rates, align 4
  %data_rates40 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 5
  %64 = call ptr @memcpy(ptr %data_rates40, ptr %arrayidx, i32 %i.0.lcssa)
  %channel = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 5
  %65 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %channel, align 8
  %channel45 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 5
  %67 = ptrtoint ptr %channel45 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %channel45, align 8
  %bss_band = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 13
  %68 = ptrtoint ptr %bss_band to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %bss_band, align 4
  %conv46 = trunc i16 %69 to i8
  %band = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 3
  %70 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv46, ptr %band, align 2
  %sec_info = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60
  %wep_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %71 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %wep_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool49.not = icmp eq i8 %72, 0
  br i1 %tobool49.not, label %lor.lhs.false, label %for.end.if.then53_crit_edge

for.end.if.then53_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

lor.lhs.false:                                    ; preds = %for.end
  %73 = ptrtoint ptr %sec_info to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %sec_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool52.not = icmp eq i8 %74, 0
  br i1 %tobool52.not, label %lor.lhs.false.if.end57_crit_edge, label %lor.lhs.false.if.then53_crit_edge

lor.lhs.false.if.then53_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

lor.lhs.false.if.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then53:                                        ; preds = %lor.lhs.false.if.then53_crit_edge, %for.end.if.then53_crit_edge
  %or55 = or i16 %28, 16
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %lor.lhs.false.if.end57_crit_edge
  %tmp_cap.0 = phi i16 [ %or55, %if.then53 ], [ %28, %lor.lhs.false.if.end57_crit_edge ]
  %75 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %76, i32 0, i32 47
  %77 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fw_cap_info, align 4
  %and59 = and i32 %78, 12032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end57.if.end83_crit_edge, label %if.then61

if.end57.if.end83_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then61:                                        ; preds = %if.end57
  %79 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pos, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 257, ptr %80, align 1
  %len = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %80, i32 0, i32 1
  %82 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 1792, ptr %len, align 1
  %chan_scan_param = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %80, i32 0, i32 1
  %83 = call ptr @memset(ptr %chan_scan_param, i32 0, i32 7)
  %current_chan = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 17, i32 0, i32 2
  %84 = ptrtoint ptr %current_chan to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %current_chan, align 2
  %chan_number = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %80, i32 0, i32 1, i32 0, i32 1
  %86 = ptrtoint ptr %chan_number to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %chan_number, align 1
  %87 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %priv, align 8
  %conv71 = zext i8 %85 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %88, i32 noundef 1073741824, ptr noundef nonnull @.str.31, i32 noundef %conv71) #7
  %89 = ptrtoint ptr %bss_band to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %bss_band, align 4
  %conv73 = trunc i16 %90 to i8
  %91 = zext i8 %conv73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %conv73, label %sw.default.i [
    i8 4, label %if.then61.mwifiex_band_to_radio_type.exit_crit_edge
    i8 16, label %if.then61.mwifiex_band_to_radio_type.exit_crit_edge189
    i8 20, label %if.then61.mwifiex_band_to_radio_type.exit_crit_edge190
    i8 52, label %if.then61.mwifiex_band_to_radio_type.exit_crit_edge191
  ]

if.then61.mwifiex_band_to_radio_type.exit_crit_edge191: ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

if.then61.mwifiex_band_to_radio_type.exit_crit_edge190: ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

if.then61.mwifiex_band_to_radio_type.exit_crit_edge189: ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

if.then61.mwifiex_band_to_radio_type.exit_crit_edge: ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

sw.default.i:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %mwifiex_band_to_radio_type.exit

mwifiex_band_to_radio_type.exit:                  ; preds = %sw.default.i, %if.then61.mwifiex_band_to_radio_type.exit_crit_edge, %if.then61.mwifiex_band_to_radio_type.exit_crit_edge189, %if.then61.mwifiex_band_to_radio_type.exit_crit_edge190, %if.then61.mwifiex_band_to_radio_type.exit_crit_edge191
  %retval.0.i = phi i8 [ 0, %sw.default.i ], [ 1, %if.then61.mwifiex_band_to_radio_type.exit_crit_edge ], [ 1, %if.then61.mwifiex_band_to_radio_type.exit_crit_edge189 ], [ 1, %if.then61.mwifiex_band_to_radio_type.exit_crit_edge190 ], [ 1, %if.then61.mwifiex_band_to_radio_type.exit_crit_edge191 ]
  %92 = ptrtoint ptr %chan_scan_param to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %retval.0.i, ptr %chan_scan_param, align 1
  %93 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv, align 8
  %conv81 = zext i8 %retval.0.i to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %94, i32 noundef 1073741824, ptr noundef nonnull @.str.32, i32 noundef %conv81) #7
  %95 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pos, align 4
  %add.ptr82 = getelementptr i8, ptr %96, i32 11
  store ptr %add.ptr82, ptr %pos, align 4
  br label %if.end83

if.end83:                                         ; preds = %mwifiex_band_to_radio_type.exit, %if.end57.if.end83_crit_edge
  %cmd_append_size.0 = phi i32 [ 11, %mwifiex_band_to_radio_type.exit ], [ 0, %if.end57.if.end83_crit_edge ]
  %97 = ptrtoint ptr %sec_info to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %sec_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool86.not = icmp eq i8 %98, 0
  br i1 %tobool86.not, label %if.end83.if.end93_crit_edge, label %if.then87

if.end83.if.end93_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then87:                                        ; preds = %if.end83
  %99 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pos, align 4
  %tobool1.not.i = icmp eq ptr %100, null
  br i1 %tobool1.not.i, label %if.then87.if.end93_crit_edge, label %if.end.i

if.then87.if.end93_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end.i:                                         ; preds = %if.then87
  %wpa_ie.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 63
  %101 = ptrtoint ptr %wpa_ie.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %wpa_ie.i, align 2
  %conv5.i = zext i8 %102 to i16
  %103 = shl nuw i16 %conv5.i, 8
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 %103, ptr %100, align 1
  %arrayidx9.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 63, i32 1
  %105 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx9.i, align 1
  %len.i = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %100, i32 0, i32 1
  %conv16.i = zext i8 %106 to i16
  %107 = shl nuw i16 %conv16.i, 8
  %108 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 %107, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %106)
  %cmp.not.i = icmp eq i8 %106, -1
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %if.then23.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv21.i = zext i8 %106 to i32
  %rsn_ie.i = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, ptr %100, i32 0, i32 1
  %arrayidx25.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 63, i32 2
  %109 = call ptr @memcpy(ptr %rsn_ie.i, ptr %arrayidx25.i, i32 %conv21.i)
  %add.i = add nuw nsw i32 %conv21.i, 4
  %110 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pos, align 4
  %add.ptr.i = getelementptr i8, ptr %111, i32 %add.i
  store ptr %add.ptr.i, ptr %pos, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then23.i, %if.then87.if.end93_crit_edge, %if.end83.if.end93_crit_edge
  %rsn_ie_len.0.ph = phi i32 [ 0, %if.then87.if.end93_crit_edge ], [ %add.i, %if.then23.i ], [ 0, %if.end83.if.end93_crit_edge ]
  %add94 = add nuw nsw i32 %rsn_ie_len.0.ph, %cmd_append_size.0
  %112 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %priv, align 8
  %fw_cap_info96 = getelementptr inbounds %struct.mwifiex_adapter, ptr %113, i32 0, i32 47
  %114 = ptrtoint ptr %fw_cap_info96 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %fw_cap_info96, align 4
  %and97 = and i32 %115, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end93.if.end102_crit_edge, label %if.then99

if.end93.if.end102_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then99:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %call100 = call i32 @mwifiex_cmd_append_11n_tlv(ptr noundef %priv, ptr noundef %bss_desc, ptr noundef nonnull %pos) #7
  %add101 = add i32 %call100, %add94
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end93.if.end102_crit_edge
  %cmd_append_size.1 = phi i32 [ %add101, %if.then99 ], [ %add94, %if.end93.if.end102_crit_edge ]
  %call103 = call i32 @mwifiex_cmd_append_vsie_tlv(ptr noundef %priv, i16 noundef zeroext 4, ptr noundef nonnull %pos) #7
  %add104 = add i32 %call103, %cmd_append_size.1
  %116 = trunc i32 %add104 to i16
  %conv106 = add i16 %116, 101
  %117 = call i16 @llvm.bswap.i16(i16 %conv106)
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %118 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 %117, ptr %size, align 1
  %119 = call i16 @llvm.bswap.i16(i16 %tmp_cap.0)
  %cap_info_bitmap108 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 1, i32 41
  %120 = ptrtoint ptr %cap_info_bitmap108 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 2)
  store i16 %119, ptr %cap_info_bitmap108, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.end.i.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ -1, %if.then4 ], [ 0, %if.end102 ], [ -1, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %curr_pkt_filter) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_802_11_ad_hoc(ptr noundef %priv, ptr nocapture noundef readonly %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %attempted_bss_desc = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 46
  %2 = ptrtoint ptr %attempted_bss_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attempted_bss_desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.33) #7
  br label %done

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %resp to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %resp, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 11008, i16 %5)
  %cmp = icmp eq i16 %5, 11008
  %result6 = getelementptr inbounds %struct.host_cmd_ds_802_11_ad_hoc_start_result, ptr %params, i32 0, i32 3
  %result.0.in = select i1 %cmp, ptr %result6, ptr %params
  %6 = ptrtoint ptr %result.0.in to i32
  call void @__asan_load1_noabort(i32 %6)
  %result.0 = load i8, ptr %result.0.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %result.0)
  %tobool10.not = icmp eq i8 %result.0, 0
  br i1 %tobool10.not, label %if.end17, label %if.then11

if.then11:                                        ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.34) #7
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %7 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  br i1 %tobool13.not, label %if.then11.done.thread_crit_edge, label %if.then14

if.then11.done.thread_crit_edge:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.thread

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %conv15 = zext i8 %result.0 to i16
  tail call void @mwifiex_reset_connect_state(ptr noundef %priv, i16 noundef zeroext %conv15, i1 noundef zeroext true) #7
  br label %done.thread

if.end17:                                         ; preds = %if.end
  %media_connected18 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %9 = ptrtoint ptr %media_connected18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %media_connected18, align 8
  %10 = ptrtoint ptr %resp to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %resp, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 11008, i16 %11)
  %cmp21 = icmp eq i16 %11, 11008
  %ssid = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %3, i32 0, i32 1
  br i1 %cmp21, label %if.then23, label %if.else28

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.35, ptr noundef %ssid) #7
  %bssid = getelementptr inbounds %struct.host_cmd_ds_802_11_ad_hoc_start_result, ptr %params, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %3, ptr %bssid, i32 6)
  br label %if.end36

if.else28:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.36, ptr noundef %ssid) #7
  %curr_bss_params33 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  %13 = call ptr @memcpy(ptr %curr_bss_params33, ptr %3, i32 256)
  br label %if.end36

if.end36:                                         ; preds = %if.else28, %if.then23
  %.sink = phi i8 [ 1, %if.then23 ], [ 2, %if.else28 ]
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 58
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %14, align 2
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %adhoc_channel = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 56
  %18 = ptrtoint ptr %adhoc_channel to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %adhoc_channel, align 8
  %conv38 = zext i8 %19 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 1073741824, ptr noundef nonnull @.str.37, i32 noundef %conv38) #7
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %curr_bss_params40 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 1073741824, ptr noundef nonnull @.str.38, ptr noundef %curr_bss_params40) #7
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %22 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.end36.if.end46_crit_edge, label %if.then44

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then44:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_carrier_on(ptr noundef %23) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end36.if.end46_crit_edge
  %27 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev, align 4
  tail call void @mwifiex_wake_up_net_dev_queue(ptr noundef %28, ptr noundef %1) #7
  tail call void @mwifiex_save_curr_bcn(ptr noundef %priv) #7
  br label %done

done:                                             ; preds = %if.end46, %if.then
  %curr_cmd = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 60
  %29 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %curr_cmd, align 4
  %wait_q_enabled = getelementptr inbounds %struct.cmd_ctrl_node, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %wait_q_enabled to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wait_q_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool48.not = icmp eq i32 %32, 0
  br i1 %tobool48.not, label %done.if.end56_crit_edge, label %done.if.end56.sink.split_crit_edge

done.if.end56.sink.split_crit_edge:               ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.sink.split

done.if.end56_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

done.thread:                                      ; preds = %if.then14, %if.then11.done.thread_crit_edge
  %curr_bss_params = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  %33 = call ptr @memset(ptr %curr_bss_params, i32 0, i32 256)
  %curr_cmd92 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 60
  %34 = ptrtoint ptr %curr_cmd92 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %curr_cmd92, align 4
  %wait_q_enabled93 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %wait_q_enabled93 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wait_q_enabled93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool48.not94 = icmp eq i32 %37, 0
  br i1 %tobool48.not94, label %done.thread.if.end56_crit_edge, label %done.thread.if.end56.sink.split_crit_edge

done.thread.if.end56.sink.split_crit_edge:        ; preds = %done.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.sink.split

done.thread.if.end56_crit_edge:                   ; preds = %done.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.end56.sink.split:                              ; preds = %done.thread.if.end56.sink.split_crit_edge, %done.if.end56.sink.split_crit_edge
  %.sink101 = phi i32 [ -1, %done.thread.if.end56.sink.split_crit_edge ], [ 0, %done.if.end56.sink.split_crit_edge ]
  %status = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 121, i32 1
  %38 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink101, ptr %status, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %done.thread.if.end56_crit_edge, %done.if.end56_crit_edge
  %ret.097 = phi i32 [ -1, %done.thread.if.end56_crit_edge ], [ 0, %done.if.end56_crit_edge ], [ %.sink101, %if.end56.sink.split ]
  ret i32 %ret.097
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_reset_connect_state(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_associate(ptr noundef %priv, ptr noundef %bss_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bss_role, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.not = icmp eq i8 %2, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %bss_mode = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 10
  %3 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bss_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp2.not = icmp eq i32 %4, 2
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %6, i32 0, i32 47
  %7 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_cap_info, align 4
  %and4 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %disable_11n = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 22
  %9 = ptrtoint ptr %disable_11n to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %disable_11n, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %disable_11ac = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 44
  %11 = ptrtoint ptr %disable_11ac to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %disable_11ac, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true6.if.else_crit_edge

land.lhs.true6.if.else_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %6, i32 0, i32 84
  %13 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %config_bands, align 2
  %15 = and i8 %14, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not = icmp eq i8 %15, 0
  br i1 %tobool12.not, label %land.lhs.true8.if.else_crit_edge, label %if.then13

land.lhs.true8.if.else_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then13:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mwifiex_set_11ac_ba_params(ptr noundef %priv) #7
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true8.if.else_crit_edge, %land.lhs.true6.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  tail call void @mwifiex_set_ba_params(ptr noundef %priv) #7
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  %assoc_rsp_size = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 92
  %16 = ptrtoint ptr %assoc_rsp_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %assoc_rsp_size, align 4
  %call = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 18, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %bss_desc, i1 noundef zeroext true) #7
  br label %return

return:                                           ; preds = %if.end14, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end14 ], [ -1, %lor.lhs.false.return_crit_edge ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_11ac_ba_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_ba_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_adhoc_start(ptr noundef %priv, ptr noundef %adhoc_ssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %adhoc_channel = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 56
  %2 = ptrtoint ptr %adhoc_channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %adhoc_channel, align 8
  %conv = zext i8 %3 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.39, i32 noundef %conv) #7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %channel = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 5
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 1073741824, ptr noundef nonnull @.str.40, i32 noundef %7) #7
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %band = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 3
  %10 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %band, align 2
  %conv4 = zext i8 %11 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull @.str.41, i32 noundef %conv4) #7
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %13, i32 0, i32 47
  %14 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %13, i32 0, i32 84
  %16 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %config_bands, align 2
  %18 = and i8 %17, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool9.not = icmp eq i8 %18, 0
  br i1 %tobool9.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mwifiex_set_11ac_ba_params(ptr noundef %priv) #7
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @mwifiex_set_ba_params(ptr noundef %priv) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 43, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %adhoc_ssid, i1 noundef zeroext true) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_adhoc_join(ptr noundef %priv, ptr noundef %bss_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ssid = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.42, ptr noundef %ssid) #7
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %ssid_len = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssid_len, align 2
  %conv = zext i8 %5 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.43, i32 noundef %conv) #7
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %ssid7 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 1073741824, ptr noundef nonnull @.str.44, ptr noundef %ssid7) #7
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %ssid_len12 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %ssid_len12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssid_len12, align 2
  %conv13 = zext i8 %11 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull @.str.45, i32 noundef %conv13) #7
  %12 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ssid_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @mwifiex_ssid_cmp(ptr noundef %ssid7, ptr noundef %ssid) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true24:                                  ; preds = %land.lhs.true
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 10
  %14 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bss_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then, label %land.lhs.true24.if.end_crit_edge

land.lhs.true24.if.end_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 1073741824, ptr noundef nonnull @.str.46) #7
  br label %return

if.end:                                           ; preds = %land.lhs.true24.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.mwifiex_adapter, ptr %19, i32 0, i32 47
  %20 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_cap_info, align 4
  %and = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end.if.else_crit_edge, label %land.lhs.true31

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true31:                                  ; preds = %if.end
  %disable_11n = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 22
  %22 = ptrtoint ptr %disable_11n to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %disable_11n, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool32.not = icmp eq i8 %23, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %land.lhs.true31.if.else_crit_edge

land.lhs.true31.if.else_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true33:                                  ; preds = %land.lhs.true31
  %disable_11ac = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 44
  %24 = ptrtoint ptr %disable_11ac to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %disable_11ac, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool34.not = icmp eq i8 %25, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %land.lhs.true33.if.else_crit_edge

land.lhs.true33.if.else_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true35:                                  ; preds = %land.lhs.true33
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %19, i32 0, i32 84
  %26 = ptrtoint ptr %config_bands to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %config_bands, align 2
  %28 = and i8 %27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool39.not = icmp eq i8 %28, 0
  br i1 %tobool39.not, label %land.lhs.true35.if.else_crit_edge, label %if.then40

land.lhs.true35.if.else_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then40:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mwifiex_set_11ac_ba_params(ptr noundef %priv) #7
  br label %if.end41

if.else:                                          ; preds = %land.lhs.true35.if.else_crit_edge, %land.lhs.true33.if.else_crit_edge, %land.lhs.true31.if.else_crit_edge, %if.end.if.else_crit_edge
  tail call void @mwifiex_set_ba_params(ptr noundef %priv) #7
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then40
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  %channel = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 5
  %31 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channel, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %30, i32 noundef 1073741824, ptr noundef nonnull @.str.40, i32 noundef %32) #7
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 8
  %band = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 3
  %35 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %band, align 2
  %conv47 = zext i8 %36 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %34, i32 noundef 1073741824, ptr noundef nonnull @.str.47, i32 noundef %conv47) #7
  %call48 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 44, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %bss_desc, i1 noundef zeroext true) #7
  br label %return

return:                                           ; preds = %if.end41, %if.then
  %retval.0 = phi i32 [ %call48, %if.end41 ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ssid_cmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_deauthenticate(ptr noundef %priv, ptr noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  %mac_address.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bss_mode, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 8, label %if.end.sw.bb_crit_edge14
    i32 1, label %sw.bb4
    i32 3, label %sw.bb6
  ]

if.end.sw.bb_crit_edge14:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_address.i) #7
  %tobool.not.i = icmp eq ptr %mac, null
  br i1 %tobool.not.i, label %sw.bb.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %5 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mac, align 4
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %6, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  %curr_bss_params.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  %9 = call ptr @memcpy(ptr %mac_address.i, ptr %curr_bss_params.i, i32 6)
  br label %mwifiex_deauthenticate_infra.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = call ptr @memcpy(ptr %mac_address.i, ptr %mac, i32 6)
  br label %mwifiex_deauthenticate_infra.exit

mwifiex_deauthenticate_infra.exit:                ; preds = %if.else.i, %if.then.i
  %call5.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 36, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %mac_address.i, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_address.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool1.not = icmp eq i32 %call5.i, 0
  br i1 %tobool1.not, label %mwifiex_deauthenticate_infra.exit.cleanup_crit_edge, label %if.then2

mwifiex_deauthenticate_infra.exit.cleanup_crit_edge: ; preds = %mwifiex_deauthenticate_infra.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %mwifiex_deauthenticate_infra.exit
  call void @__sanitizer_cov_trace_pc() #9
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  call void @cfg80211_disconnected(ptr noundef %12, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i32 noundef 3264) #7
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 64, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #7
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 178, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb4, %if.then2, %mwifiex_deauthenticate_infra.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call5.i, %if.then2 ], [ 0, %mwifiex_deauthenticate_infra.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_deauthenticate_all(ptr nocapture noundef readonly %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %0 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp8.not = icmp eq i8 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.09
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @mwifiex_deauthenticate(ptr noundef nonnull %3, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.09, 1
  %4 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv_num, align 4
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !101, !103, !105, !107, !109, !111, !112, !114, !115, !117, !119, !121, !123, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 460, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 494, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 500, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 551, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 651, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 663, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mwifiex_ret_802_11_associate._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @mwifiex_ret_802_11_associate._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 677, i32 3}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 683, i32 3}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 688, i32 5}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 692, i32 5}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 712, i32 2}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 756, i32 2}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 774, i32 3}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 793, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 884, i32 2}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 917, i32 3}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 922, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 956, i32 3}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 961, i32 3}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 974, i32 4}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 990, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 993, i32 2}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1007, i32 3}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1023, i32 3}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1146, i32 4}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1178, i32 2}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1183, i32 2}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1222, i32 3}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1228, i32 3}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1281, i32 3}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1295, i32 3}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1310, i32 3}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1323, i32 3}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1338, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1340, i32 2}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1403, i32 2}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1405, i32 2}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1407, i32 2}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1429, i32 2}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1432, i32 2}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1435, i32 2}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1437, i32 2}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1446, i32 3}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1462, i32 2}
!94 = !{ptr @__ksymtab_mwifiex_deauthenticate_all, !95, !"__ksymtab_mwifiex_deauthenticate_all", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 1539, i32 1}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 218, i32 3}
!98 = !{ptr @__func__.mwifiex_setup_rates_from_bssdesc, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 155, i32 3}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 172, i32 2}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 183, i32 3}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 298, i32 3}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 251, i32 3}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 56, i32 3}
!111 = !{ptr @__func__.mwifiex_cmd_append_generic_ie, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 128, i32 2}
!114 = !{ptr @__func__.mwifiex_cmd_append_tsf_tlv, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 563, i32 10}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 565, i32 10}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 567, i32 10}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 569, i32 10}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 571, i32 10}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/marvell/mwifiex/join.c", i32 574, i32 9}
!127 = distinct !{null, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"auto-init"}
