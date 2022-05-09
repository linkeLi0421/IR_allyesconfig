; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/usb.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_card_rec = type { ptr, ptr, ptr, %struct.completion, i8, %struct.urb_context, %struct.atomic_t, [6 x %struct.urb_context], i8, i8, %struct.atomic_t, i8, %struct.atomic_t, i32, %struct.urb_context, i8, [2 x %struct.usb_tx_data_port], i32, i8, i32, i8 }
%struct.urb_context = type { ptr, ptr, ptr, i8 }
%struct.usb_tx_data_port = type { i8, i8, %struct.atomic_t, i32, [6 x %struct.urb_context], %struct.usb_tx_aggr, [6 x ptr], %struct.spinlock }
%struct.usb_tx_aggr = type { %struct.sk_buff_head, i32, i32, %struct.tx_aggr_tmr_cnxt }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.tx_aggr_tmr_cnxt = type { ptr, ptr, %struct.timer_list, i8, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.mwifiex_802_11d_domain_reg = type { [3 x i8], i8, [83 x %struct.ieee80211_country_ie_triplet] }
%struct.ieee80211_country_ie_triplet = type { %union.anon.156 }
%union.anon.156 = type { %struct.anon.157 }
%struct.anon.157 = type { i8, i8, i8 }
%struct.mwifiex_sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.mwifiex_sleep_period = type { i16, i16 }
%struct.mwifiex_hs_config_param = type <{ i32, i8, i8 }>
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
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
%struct.txpd = type { i8, i8, i16, i16, i16, i32, i8, i8, i8, [2 x i8], i8, [2 x i8] }
%struct.mwifiex_fw_image = type { ptr, i32, ptr, i32 }
%struct.fw_header = type { i32, i32, i32, i32 }
%struct.fw_data = type { %struct.fw_header, i32, [0 x i8] }
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
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.153 }
%struct.anon.153 = type { [3 x i8], i8 }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
%struct.mwifiex_802_11_security = type { i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.mwifiex_wep_key = type { i32, i32, i32, [16 x i8] }
%struct.host_cmd_ds_802_11_key_material = type { i16, %struct.mwifiex_ie_type_key_param_set }
%struct.mwifiex_ie_type_key_param_set = type { i16, i16, i16, i16, i16, [50 x i8] }
%struct.host_cmd_ds_802_11_key_material_v2 = type { i16, %struct.mwifiex_ie_type_key_param_set_v2 }
%struct.mwifiex_ie_type_key_param_set_v2 = type { i16, i16, [6 x i8], i8, i8, i16, %union.anon.154 }
%union.anon.154 = type { %struct.mwifiex_wapi_param }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }

@__initcall__kmod_mwifiex_usb__496_1621_mwifiex_usb_driver_init6 = internal global ptr @mwifiex_usb_driver_init, section ".initcall6.init", align 4
@mwifiex_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @mwifiex_usb_probe, ptr @mwifiex_usb_disconnect, ptr null, ptr @mwifiex_usb_suspend, ptr @mwifiex_usb_resume, ptr null, ptr null, ptr null, ptr @mwifiex_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap { %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_usb_coredump, ptr null }, i32 0 }, i8 16 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_mwifiex_usb_driver_exit = internal global ptr @mwifiex_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author497 = internal constant [46 x i8] c"mwifiex_usb.author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description498 = internal constant [62 x i8] c"mwifiex_usb.description=Marvell WiFi-Ex USB Driver version1.0\00", section ".modinfo", align 1
@__UNIQUE_ID_version499 = internal constant [24 x i8] c"mwifiex_usb.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mwifiex_usb\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file500 = internal constant [66 x i8] c"mwifiex_usb.file=drivers/net/wireless/marvell/mwifiex/mwifiex_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license501 = internal constant [27 x i8] c"mwifiex_usb.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware502 = internal constant [45 x i8] c"mwifiex_usb.firmware=mrvl/usb8766_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware503 = internal constant [45 x i8] c"mwifiex_usb.firmware=mrvl/usb8797_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware504 = internal constant [45 x i8] c"mwifiex_usb.firmware=mrvl/usb8801_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware505 = internal constant [50 x i8] c"mwifiex_usb.firmware=mrvl/usbusb8997_combo_v4.bin\00", section ".modinfo", align 1
@mwifiex_usb_table = internal constant { [9 x %struct.usb_device_id], [40 x i8] } { [9 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4742, i16 8257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4742, i16 8258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4742, i16 8259, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4742, i16 8260, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4742, i16 8265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4742, i16 8266, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4742, i16 8274, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4742, i16 8270, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@mwifiex_usb_probe.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mwifiex_usb_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/marvell/mwifiex/usb.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"info: VID/PID = %X/%X, Boot2 version = %X\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mwifiex_usb: info: VID/PID = %X/%X, Boot2 version = %X\0A\00", [40 x i8] zeroinitializer }, align 32
@mwifiex_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014mwifiex_usb: unknown id_product %#x\0A\00", [57 x i8] zeroinitializer }, align 32
@mwifiex_usb_probe._entry_ptr = internal global ptr @mwifiex_usb_probe._entry, section ".printk_index", align 4
@mwifiex_usb_probe.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"info: bcdUSB=%#x Device Class=%#x SubClass=%#x Protocol=%#x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"mwifiex_usb: info: bcdUSB=%#x Device Class=%#x SubClass=%#x Protocol=%#x\0A\00", [54 x i8] zeroinitializer }, align 32
@mwifiex_usb_probe.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 0, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"info: Rx CMD/EVT:: max pkt size: %d, addr: %d, ep_type: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"mwifiex_usb: info: Rx CMD/EVT:: max pkt size: %d, addr: %d, ep_type: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@mwifiex_usb_probe.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.12, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"info: bulk IN: max pkt size: %d, addr: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mwifiex_usb: info: bulk IN: max pkt size: %d, addr: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mwifiex_usb_probe.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.14, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"info: bulk OUT: max pkt size: %d, addr: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"mwifiex_usb: info: bulk OUT: max pkt size: %d, addr: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mwifiex_usb_probe.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.16, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"info: bulk OUT chan2:\09max pkt size: %d, addr: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mwifiex_usb: info: bulk OUT chan2:\09max pkt size: %d, addr: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mwifiex_usb_probe.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.14, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mwifiex_usb_probe.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.18, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"info: Tx CMD:: max pkt size: %d, addr: %d, ep_type: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"mwifiex_usb: info: Tx CMD:: max pkt size: %d, addr: %d, ep_type: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@usb_ops = internal global { %struct.mwifiex_if_ops, [40 x i8] } { %struct.mwifiex_if_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_register_dev, ptr @mwifiex_unregister_dev, ptr null, ptr null, ptr null, ptr @mwifiex_usb_host_to_card, ptr @mwifiex_pm_wakeup_card, ptr @mwifiex_pm_wakeup_card_complete, ptr null, ptr null, ptr @mwifiex_usb_cmd_event_complete, ptr @mwifiex_usb_cmd_event_complete, ptr null, ptr @mwifiex_usb_dnld_fw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_usb_submit_rem_rx_urbs, ptr null, ptr @mwifiex_usb_port_resync, ptr @mwifiex_usb_is_port_ready, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mwifiex_usb_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013mwifiex_usb: %s: mwifiex_add_card failed: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@mwifiex_usb_probe._entry_ptr.22 = internal global ptr @mwifiex_usb_probe._entry.20, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mrvl/usbusb8997_combo_v4.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mrvl/usb8766_uapsta.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mrvl/usb8801_uapsta.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mrvl/usb8797_uapsta.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: not allowed while suspended\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.mwifiex_usb_host_to_card = private unnamed_addr constant [25 x i8] c"mwifiex_usb_host_to_card\00", align 1
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: device removed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: ep=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Wrong usb tx data port\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: alloc skb_aggr failed\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.mwifiex_usb_prepare_tx_aggr_skb = private unnamed_addr constant [32 x i8] c"mwifiex_usb_prepare_tx_aggr_skb\00", align 1
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: usb_submit_urb failed\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.mwifiex_usb_construct_send_urb = private unnamed_addr constant [31 x i8] c"mwifiex_usb_construct_send_urb\00", align 1
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: status: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.mwifiex_usb_tx_complete = private unnamed_addr constant [24 x i8] c"mwifiex_usb_tx_complete\00", align 1
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: CMD\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: DATA\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: free rx_cmd skb\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.mwifiex_usb_submit_rx_urb = private unnamed_addr constant [26 x i8] c"mwifiex_usb_submit_rx_urb\00", align 1
@.str.38 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: card removed/suspended, EP %d rx_cmd URB submit skipped\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: dev_alloc_skb failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_submit_urb failed\0A\00", [41 x i8] zeroinitializer }, align 32
@mwifiex_usb_rx_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013mwifiex_usb: mwifiex adapter or card structure is not valid\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mwifiex_usb_rx_complete\00", [40 x i8] zeroinitializer }, align 32
@mwifiex_usb_rx_complete._entry_ptr = internal global ptr @mwifiex_usb_rx_complete._entry, section ".printk_index", align 4
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"URB status is failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"info: recv_length=%d, status=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"received data processing failed!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Card is removed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: invalid skb->len\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.mwifiex_usb_recv = private unnamed_addr constant [17 x i8] c"mwifiex_usb_recv\00", align 1
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: EP_CMD_EVENT\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CMD: skb->len too large\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CMD: no curr_cmd\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EVENT: skb->len too small\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"event_cause %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EVENT: event body too large\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown recv_type %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: EP_DATA\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DATA: skb->len too large\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: unknown endport %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"No firmware image found! Terminating download\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"write_data_sync: failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"read_data_sync: failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"USB is not the winner %#x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"start to download FW...\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"FW received block with CRC %#x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"info: FW download over, size %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"usb_bulk_msg for tx failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"usb_bulk_msg for rx failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mwifiex_usb_tx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(&port->tx_aggr.timer_cnxt.hold_timer)\00", [57 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"prepare tx aggr skb failed, err=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: removing card\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.mwifiex_usb_disconnect = private unnamed_addr constant [23 x i8] c"mwifiex_usb_disconnect\00", align 1
@mwifiex_usb_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.4, i32 559, ptr @.str.73, ptr @.str.74 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"card is not valid\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mwifiex_usb_suspend\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mwifiex_usb_suspend._entry_ptr = internal global ptr @mwifiex_usb_suspend._entry, section ".printk_index", align 4
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Device already suspended\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cmd: failed to suspend\0A\00", [40 x i8] zeroinitializer }, align 32
@mwifiex_usb_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 622, ptr @.str.73, ptr @.str.74 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: card->adapter is NULL\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mwifiex_usb_resume\00", [45 x i8] zeroinitializer }, align 32
@mwifiex_usb_resume._entry_ptr = internal global ptr @mwifiex_usb_resume._entry, section ".printk_index", align 4
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device already resumed\0A\00", [40 x i8] zeroinitializer }, align 32
@switch.table.mwifiex_usb_probe = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\01\02\01\02\01\01\01\01\01\02\01\01\01\02\01\01\01\01", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [8 x i64] [i64 6, i64 16, i64 8257, i64 8258, i64 8265, i64 8266, i64 8270, i64 8274]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 3203398350, i64 4027448014]
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"mwifiex_usb_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 694, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1625, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"mwifiex_usb_table\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 27, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 416, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 434, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 442, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 456, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 465, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 474, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 483, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 499, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant [8 x i8] c"usb_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1605, i32 30 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 530, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 87, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1330, i32 28 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1336, i32 28 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1342, i32 28 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1349, i32 28 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1191, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1197, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1201, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1224, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 905, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 864, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 265, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 269, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 274, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 304, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 309, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 318, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 342, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 174, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 187, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 201, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 215, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 224, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 69, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 76, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 85, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 90, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 107, i32 5 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 114, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 118, i32 5 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 131, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 138, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 140, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 150, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1404, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1458, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1472, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1484, i32 6 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1493, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1502, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1516, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 720, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 740, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1278, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1984, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1153, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 678, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 559, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 564, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 569, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 621, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.350 = private constant [46 x i8] c"../drivers/net/wireless/marvell/mwifiex/usb.c\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 628, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant [31 x i8] c"switch.table.mwifiex_usb_probe\00", align 1
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_author497, ptr @__UNIQUE_ID_description498, ptr @__UNIQUE_ID_file500, ptr @__UNIQUE_ID_firmware502, ptr @__UNIQUE_ID_firmware503, ptr @__UNIQUE_ID_firmware504, ptr @__UNIQUE_ID_firmware505, ptr @__UNIQUE_ID_license501, ptr @__UNIQUE_ID_version499, ptr @__exitcall_mwifiex_usb_driver_exit, ptr @__initcall__kmod_mwifiex_usb__496_1621_mwifiex_usb_driver_init6, ptr @__modver_attr, ptr @mwifiex_usb_driver_exit, ptr @mwifiex_usb_probe._entry, ptr @mwifiex_usb_probe._entry.20, ptr @mwifiex_usb_probe._entry_ptr, ptr @mwifiex_usb_probe._entry_ptr.22, ptr @mwifiex_usb_resume._entry, ptr @mwifiex_usb_resume._entry_ptr, ptr @mwifiex_usb_rx_complete._entry, ptr @mwifiex_usb_rx_complete._entry_ptr, ptr @mwifiex_usb_suspend._entry, ptr @mwifiex_usb_suspend._entry_ptr, ptr @mwifiex_usb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mwifiex_usb_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @usb_ops, ptr @.str.21, ptr @init_completion.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @mwifiex_usb_tx_init.__key, ptr @.str.67, ptr @skb_queue_head_init.__key, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @switch.table.mwifiex_usb_probe], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_usb_table to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_usb_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_usb_rx_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_usb_tx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_usb_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_usb_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mwifiex_usb_probe to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @mwifiex_usb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_deregister(ptr noundef nonnull @mwifiex_usb_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 852, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_done = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %fw_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fw_done, align 4
  %wait.i = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #12
  %idVendor = getelementptr i8, ptr %1, i32 936
  %5 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idVendor, align 8
  %idProduct = getelementptr i8, ptr %1, i32 938
  %7 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %bcdDevice = getelementptr i8, ptr %1, i32 940
  %10 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bcdDevice, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_usb_probe, %if.then8)) #12
          to label %do.end [label %if.then8], !srcloc !204

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %13 to i32
  %conv9 = zext i16 %9 to i32
  %conv10 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_usb_probe.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %conv9, i32 noundef %conv10) #12
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %switch.tableidx = add i16 %9, -8257
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %switch.tableidx)
  %14 = icmp ult i16 %switch.tableidx, 18
  br i1 %14, label %switch.hole_check, label %do.end.do.end17_crit_edge

do.end.do.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

do.end17:                                         ; preds = %switch.hole_check.do.end17_crit_edge, %do.end.do.end17_crit_edge
  %conv12 = zext i16 %9 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv12) #15
  br label %sw.epilog

switch.hole_check:                                ; preds = %do.end
  %switch.maskindex = zext i16 %switch.tableidx to i32
  %switch.shifted = lshr i32 140047, %switch.maskindex
  %15 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %switch.lobit.not = icmp eq i32 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end17_crit_edge, label %switch.lookup

switch.hole_check.do.end17_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %16 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [18 x i8], ptr @switch.table.mwifiex_usb_probe, i32 0, i32 %16
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %17)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end17
  %.sink = phi i8 [ 1, %do.end17 ], [ %switch.load, %switch.lookup ]
  %usb_boot_state21 = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %usb_boot_state21 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %usb_boot_state21, align 4
  %udev22 = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %udev22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %udev22, align 4
  %intf23 = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %intf23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %intf, ptr %intf23, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_usb_probe, %if.then36)) #12
          to label %do.end47 [label %if.then36], !srcloc !204

if.then36:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %bcdUSB = getelementptr i8, ptr %1, i32 930
  %21 = ptrtoint ptr %bcdUSB to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bcdUSB, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv38 = zext i16 %23 to i32
  %bDeviceClass = getelementptr i8, ptr %1, i32 932
  %24 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bDeviceClass, align 4
  %conv40 = zext i8 %25 to i32
  %bDeviceSubClass = getelementptr i8, ptr %1, i32 933
  %26 = ptrtoint ptr %bDeviceSubClass to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bDeviceSubClass, align 1
  %conv42 = zext i8 %27 to i32
  %bDeviceProtocol = getelementptr i8, ptr %1, i32 934
  %28 = ptrtoint ptr %bDeviceProtocol to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bDeviceProtocol, align 2
  %conv44 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_usb_probe.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.9, i32 noundef %conv38, i32 noundef %conv40, i32 noundef %conv42, i32 noundef %conv44) #12
  br label %do.end47

do.end47:                                         ; preds = %if.then36, %sw.epilog
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp496.not = icmp eq i8 %31, 0
  br i1 %cmp496.not, label %do.end47.for.end_crit_edge, label %for.body.lr.ph

do.end47.for.end_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end47
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %rx_cmd_ep_type = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 17
  %rx_cmd_interval = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 18
  %rx_cmd_ep = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 4
  %rx_cmd_urb_pending = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 6
  %rx_data_ep = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 9
  %rx_data_urb_pending = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 10
  %port = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 16
  %tx_data_urb_pending = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 16, i32 0, i32 2
  %arrayidx187 = getelementptr %struct.usb_card_rec, ptr %call.i, i32 0, i32 16, i32 1
  %tx_data_urb_pending191 = getelementptr %struct.usb_card_rec, ptr %call.i, i32 0, i32 16, i32 1, i32 2
  %tx_cmd_ep_type = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 19
  %tx_cmd_interval = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 20
  %tx_cmd_ep = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 11
  %tx_cmd_urb_pending = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 12
  %bulk_out_maxpktsize = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0497 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %32 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %33, i32 %i.0497
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %34 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bEndpointAddress.i, align 1
  %36 = and i8 %35, -113
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %36)
  %37 = icmp eq i8 %36, -127
  br i1 %37, label %land.lhs.true56, label %for.body.if.end84_crit_edge

for.body.if.end84_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

land.lhs.true56:                                  ; preds = %for.body
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %38 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bmAttributes.i, align 1
  %40 = and i8 %39, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %switch.not = icmp eq i8 %40, 0
  br i1 %switch.not, label %land.lhs.true56.if.end84_crit_edge, label %if.then61

land.lhs.true56.if.end84_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.then61:                                        ; preds = %land.lhs.true56
  %41 = and i8 %39, 3
  %and.i438 = zext i8 %41 to i32
  %42 = ptrtoint ptr %rx_cmd_ep_type to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and.i438, ptr %rx_cmd_ep_type, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 5
  %43 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bInterval, align 1
  %45 = ptrtoint ptr %rx_cmd_interval to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %rx_cmd_interval, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_usb_probe, %if.then75)) #12
          to label %do.end81 [label %if.then75], !srcloc !204

if.then75:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %46 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %wMaxPacketSize, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %conv76 = zext i16 %48 to i32
  %49 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bEndpointAddress.i, align 1
  %conv77 = zext i8 %50 to i32
  %51 = ptrtoint ptr %rx_cmd_ep_type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_cmd_ep_type, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_usb_probe.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.11, i32 noundef %conv76, i32 noundef %conv77, i32 noundef %52) #12
  br label %do.end81

do.end81:                                         ; preds = %if.then75, %if.then61
  %53 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bEndpointAddress.i, align 1
  %55 = and i8 %54, 15
  %56 = ptrtoint ptr %rx_cmd_ep to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %rx_cmd_ep, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_cmd_urb_pending, i32 noundef 4) #12
  %57 = ptrtoint ptr %rx_cmd_urb_pending to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 0, ptr %rx_cmd_urb_pending, align 4
  br label %if.end84

if.end84:                                         ; preds = %do.end81, %land.lhs.true56.if.end84_crit_edge, %for.body.if.end84_crit_edge
  %58 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bEndpointAddress.i, align 1
  %60 = and i8 %59, -113
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %60)
  %61 = icmp eq i8 %60, -126
  br i1 %61, label %land.lhs.true91, label %if.end84.if.end117_crit_edge

if.end84.if.end117_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

land.lhs.true91:                                  ; preds = %if.end84
  %bmAttributes.i445 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %62 = ptrtoint ptr %bmAttributes.i445 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bmAttributes.i445, align 1
  %64 = and i8 %63, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %cmp.i446.not = icmp eq i8 %64, 2
  br i1 %cmp.i446.not, label %do.body95, label %land.lhs.true91.if.end117_crit_edge

land.lhs.true91.if.end117_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

do.body95:                                        ; preds = %land.lhs.true91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_usb_probe, %if.then107)) #12
          to label %do.end114 [label %if.then107], !srcloc !204

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #14
  %wMaxPacketSize108 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %65 = ptrtoint ptr %wMaxPacketSize108 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %wMaxPacketSize108, align 1
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  %conv109 = zext i16 %67 to i32
  %68 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bEndpointAddress.i, align 1
  %conv111 = zext i8 %69 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_usb_probe.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.13, i32 noundef %conv109, i32 noundef %conv111) #12
  br label %do.end114

do.end114:                                        ; preds = %if.then107, %do.body95
  %70 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bEndpointAddress.i, align 1
  %72 = and i8 %71, 15
  %73 = ptrtoint ptr %rx_data_ep to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %rx_data_ep, align 1
  %call.i.i417 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_data_urb_pending, i32 noundef 4) #12
  %74 = ptrtoint ptr %rx_data_urb_pending to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 0, ptr %rx_data_urb_pending, align 4
  br label %if.end117

if.end117:                                        ; preds = %do.end114, %land.lhs.true91.if.end117_crit_edge, %if.end84.if.end117_crit_edge
  %75 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %bEndpointAddress.i, align 1
  %77 = and i8 %76, -113
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %77)
  %78 = icmp eq i8 %77, 2
  br i1 %78, label %land.lhs.true124, label %if.end117.if.end153_crit_edge

if.end117.if.end153_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

land.lhs.true124:                                 ; preds = %if.end117
  %bmAttributes.i453 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %79 = ptrtoint ptr %bmAttributes.i453 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bmAttributes.i453, align 1
  %81 = and i8 %80, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %cmp.i454.not = icmp eq i8 %81, 2
  br i1 %cmp.i454.not, label %do.body128, label %land.lhs.true124.if.end153_crit_edge

land.lhs.true124.if.end153_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

do.body128:                                       ; preds = %land.lhs.true124
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_usb_probe, %if.then140)) #12
          to label %do.end147 [label %if.then140], !srcloc !204

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #14
  %wMaxPacketSize141 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %82 = ptrtoint ptr %wMaxPacketSize141 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %wMaxPacketSize141, align 1
  %84 = tail call i16 @llvm.bswap.i16(i16 %83)
  %conv142 = zext i16 %84 to i32
  %85 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bEndpointAddress.i, align 1
  %conv144 = zext i8 %86 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_usb_probe.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.15, i32 noundef %conv142, i32 noundef %conv144) #12
  br label %do.end147

do.end147:                                        ; preds = %if.then140, %do.body128
  %87 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bEndpointAddress.i, align 1
  %89 = and i8 %88, 15
  %90 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %port, align 4
  %call.i.i421 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_data_urb_pending, i32 noundef 4) #12
  %91 = ptrtoint ptr %tx_data_urb_pending to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 0, ptr %tx_data_urb_pending, align 4
  br label %if.end153

if.end153:                                        ; preds = %do.end147, %land.lhs.true124.if.end153_crit_edge, %if.end117.if.end153_crit_edge
  %92 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bEndpointAddress.i, align 1
  %94 = and i8 %93, -113
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %94)
  %95 = icmp eq i8 %94, 3
  br i1 %95, label %land.lhs.true160, label %if.end153.if.end192_crit_edge

if.end153.if.end192_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

land.lhs.true160:                                 ; preds = %if.end153
  %bmAttributes.i462 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %96 = ptrtoint ptr %bmAttributes.i462 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %bmAttributes.i462, align 1
  %98 = and i8 %97, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %98)
  %cmp.i463.not = icmp eq i8 %98, 2
  br i1 %cmp.i463.not, label %do.body164, label %land.lhs.true160.if.end192_crit_edge

land.lhs.true160.if.end192_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

do.body164:                                       ; preds = %land.lhs.true160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_usb_probe, %if.then176)) #12
          to label %do.end183 [label %if.then176], !srcloc !204

if.then176:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #14
  %wMaxPacketSize177 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %99 = ptrtoint ptr %wMaxPacketSize177 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %wMaxPacketSize177, align 1
  %101 = tail call i16 @llvm.bswap.i16(i16 %100)
  %conv178 = zext i16 %101 to i32
  %102 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %bEndpointAddress.i, align 1
  %conv180 = zext i8 %103 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_usb_probe.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.17, i32 noundef %conv178, i32 noundef %conv180) #12
  br label %do.end183

do.end183:                                        ; preds = %if.then176, %do.body164
  %104 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %bEndpointAddress.i, align 1
  %106 = and i8 %105, 15
  %107 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %arrayidx187, align 4
  %call.i.i425 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_data_urb_pending191, i32 noundef 4) #12
  %108 = ptrtoint ptr %tx_data_urb_pending191 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 0, ptr %tx_data_urb_pending191, align 4
  br label %if.end192

if.end192:                                        ; preds = %do.end183, %land.lhs.true160.if.end192_crit_edge, %if.end153.if.end192_crit_edge
  %109 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %bEndpointAddress.i, align 1
  %111 = and i8 %110, -113
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %111)
  %112 = icmp eq i8 %111, 1
  br i1 %112, label %land.lhs.true199, label %if.end192.for.inc_crit_edge

if.end192.for.inc_crit_edge:                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true199:                                 ; preds = %if.end192
  %bmAttributes.i471 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %113 = ptrtoint ptr %bmAttributes.i471 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %bmAttributes.i471, align 1
  %115 = and i8 %114, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %switch494.not = icmp eq i8 %115, 0
  br i1 %switch494.not, label %land.lhs.true199.for.inc_crit_edge, label %if.then205

land.lhs.true199.for.inc_crit_edge:               ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then205:                                       ; preds = %land.lhs.true199
  %116 = and i8 %114, 3
  %and.i478 = zext i8 %116 to i32
  %117 = ptrtoint ptr %tx_cmd_ep_type to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %and.i478, ptr %tx_cmd_ep_type, align 4
  %bInterval207 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 5
  %118 = ptrtoint ptr %bInterval207 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %bInterval207, align 1
  %120 = ptrtoint ptr %tx_cmd_interval to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %tx_cmd_interval, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_usb_probe, %if.then220)) #12
          to label %do.body228 [label %if.then220], !srcloc !204

if.then220:                                       ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #14
  %wMaxPacketSize221 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %121 = ptrtoint ptr %wMaxPacketSize221 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %wMaxPacketSize221, align 1
  %123 = tail call i16 @llvm.bswap.i16(i16 %122)
  %conv222 = zext i16 %123 to i32
  %124 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %bEndpointAddress.i, align 1
  %conv224 = zext i8 %125 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_usb_probe.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.15, i32 noundef %conv222, i32 noundef %conv224) #12
  br label %do.body228

do.body228:                                       ; preds = %if.then220, %if.then205
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_usb_probe, %if.then240)) #12
          to label %do.end248 [label %if.then240], !srcloc !204

if.then240:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #14
  %wMaxPacketSize241 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %126 = ptrtoint ptr %wMaxPacketSize241 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %wMaxPacketSize241, align 1
  %128 = tail call i16 @llvm.bswap.i16(i16 %127)
  %conv242 = zext i16 %128 to i32
  %129 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %bEndpointAddress.i, align 1
  %conv244 = zext i8 %130 to i32
  %131 = ptrtoint ptr %tx_cmd_ep_type to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tx_cmd_ep_type, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_usb_probe.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.19, i32 noundef %conv242, i32 noundef %conv244, i32 noundef %132) #12
  br label %do.end248

do.end248:                                        ; preds = %if.then240, %do.body228
  %133 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %bEndpointAddress.i, align 1
  %135 = and i8 %134, 15
  %136 = ptrtoint ptr %tx_cmd_ep to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %tx_cmd_ep, align 4
  %call.i.i432 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cmd_urb_pending, i32 noundef 4) #12
  %137 = ptrtoint ptr %tx_cmd_urb_pending to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile i32 0, ptr %tx_cmd_urb_pending, align 4
  %wMaxPacketSize251 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %138 = ptrtoint ptr %wMaxPacketSize251 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %wMaxPacketSize251, align 1
  %140 = tail call i16 @llvm.bswap.i16(i16 %139)
  %conv252 = zext i16 %140 to i32
  %141 = ptrtoint ptr %bulk_out_maxpktsize to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %conv252, ptr %bulk_out_maxpktsize, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end248, %land.lhs.true199.for.inc_crit_edge, %if.end192.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0497, 1
  %142 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %bNumEndpoints, align 4
  %conv48 = zext i8 %143 to i32
  %cmp = icmp ult i32 %inc, %conv48
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end47.for.end_crit_edge
  %usb_boot_state254 = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 8
  %144 = ptrtoint ptr %usb_boot_state254 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %usb_boot_state254, align 4
  %146 = zext i8 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values)
  switch i8 %145, label %do.end281 [
    i8 1, label %sw.bb256
    i8 2, label %for.end.sw.epilog295_crit_edge
  ]

for.end.sw.epilog295_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog295

sw.bb256:                                         ; preds = %for.end
  %rx_cmd_ep257 = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 4
  %147 = ptrtoint ptr %rx_cmd_ep257 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %rx_cmd_ep257, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool258.not = icmp eq i8 %148, 0
  br i1 %tobool258.not, label %sw.bb256.cleanup_crit_edge, label %lor.lhs.false259

sw.bb256.cleanup_crit_edge:                       ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false259:                                 ; preds = %sw.bb256
  %tx_cmd_ep260 = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 11
  %149 = ptrtoint ptr %tx_cmd_ep260 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %tx_cmd_ep260, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool261.not = icmp eq i8 %150, 0
  br i1 %tobool261.not, label %lor.lhs.false259.cleanup_crit_edge, label %if.end263

lor.lhs.false259.cleanup_crit_edge:               ; preds = %lor.lhs.false259
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end263:                                        ; preds = %lor.lhs.false259
  %bulk_out_maxpktsize264 = getelementptr inbounds %struct.usb_card_rec, ptr %call.i, i32 0, i32 13
  %151 = ptrtoint ptr %bulk_out_maxpktsize264 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bulk_out_maxpktsize264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp265 = icmp eq i32 %152, 0
  br i1 %cmp265, label %if.end263.cleanup_crit_edge, label %if.end263.sw.epilog295_crit_edge

if.end263.sw.epilog295_crit_edge:                 ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog295

if.end263.cleanup_crit_edge:                      ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end281:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 521, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

sw.epilog295:                                     ; preds = %if.end263.sw.epilog295_crit_edge, %for.end.sw.epilog295_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %153 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %154 = ptrtoint ptr %udev22 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %udev22, align 4
  %dev298 = getelementptr inbounds %struct.usb_device, ptr %155, i32 0, i32 15
  %call299 = tail call i32 @mwifiex_add_card(ptr noundef nonnull %call.i, ptr noundef %fw_done, ptr noundef nonnull @usb_ops, i8 noundef zeroext 2, ptr noundef %dev298) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299)
  %tobool300.not = icmp eq i32 %call299, 0
  br i1 %tobool300.not, label %if.end308, label %do.end304

do.end304:                                        ; preds = %sw.epilog295
  call void @__sanitizer_cov_trace_pc() #14
  %call306 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, i32 noundef %call299) #15
  %call307 = tail call i32 @usb_reset_device(ptr noundef %add.ptr.i) #12
  br label %cleanup

if.end308:                                        ; preds = %sw.epilog295
  call void @__sanitizer_cov_trace_pc() #14
  %call309 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end308, %do.end304, %do.end281, %if.end263.cleanup_crit_edge, %lor.lhs.false259.cleanup_crit_edge, %sw.bb256.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end281 ], [ %call299, %do.end304 ], [ 0, %if.end308 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false259.cleanup_crit_edge ], [ -19, %sw.bb256.cleanup_crit_edge ], [ -19, %if.end263.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_usb_disconnect(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fw_done = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %fw_done) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %udev = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %state = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %mfg_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 147
  %10 = ptrtoint ptr %mfg_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mfg_mode, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  tail call void @mwifiex_deauthenticate_all(ptr noundef nonnull %3) #12
  %12 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %priv_num, align 4
  %conv.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp2.not.i = icmp eq i8 %13, 0
  br i1 %cmp2.not.i, label %if.then4.mwifiex_get_priv.exit_crit_edge, label %if.then4.for.body.i_crit_edge

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i

if.then4.mwifiex_get_priv.exit_crit_edge:         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then4.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %3, i32 0, i32 4, i32 %i.03.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.mwifiex_get_priv.exit_crit_edge

for.body.i.mwifiex_get_priv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %for.body.i.mwifiex_get_priv.exit_crit_edge, %if.then4.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %if.then4.mwifiex_get_priv.exit_crit_edge ], [ %15, %for.body.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %call6 = tail call i32 @mwifiex_init_shutdown_fw(ptr noundef %cond.i, i32 noundef 2) #12
  br label %if.end7

if.end7:                                          ; preds = %mwifiex_get_priv.exit, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.mwifiex_usb_disconnect) #12
  %call8 = tail call i32 @mwifiex_remove_card(ptr noundef nonnull %3) #12
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 -128
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_usb_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fw_done = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %fw_done) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %work_flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then6, !prof !206

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 536870912, ptr noundef nonnull @.str.75) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @mwifiex_enable_hs(ptr noundef nonnull %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull @.str.76) #12
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %work_flags) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %work_flags) #12
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %work_flags) #12
  %rx_cmd_urb_pending = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_cmd_urb_pending, i32 noundef 4) #12
  %7 = ptrtoint ptr %rx_cmd_urb_pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %rx_cmd_urb_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not = icmp eq i32 %8, 0
  br i1 %tobool16.not, label %if.end12.if.end21_crit_edge, label %land.lhs.true

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end12
  %urb = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %urb, align 4
  %tobool17.not = icmp eq ptr %10, null
  br i1 %tobool17.not, label %land.lhs.true.if.end21_crit_edge, label %if.then18

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %10) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %rx_data_urb_pending = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 10
  %call.i.i97 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_data_urb_pending, i32 noundef 4) #12
  %11 = ptrtoint ptr %rx_data_urb_pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %rx_data_urb_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool23.not = icmp eq i32 %12, 0
  br i1 %tobool23.not, label %if.end21.if.end32_crit_edge, label %for.body.preheader

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

for.body.preheader:                               ; preds = %if.end21
  %urb25 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 0, i32 2
  %13 = ptrtoint ptr %urb25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %urb25, align 4
  %tobool26.not = icmp eq ptr %14, null
  br i1 %tobool26.not, label %for.body.preheader.for.inc_crit_edge, label %if.then27

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then27:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %14) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %for.body.preheader.for.inc_crit_edge
  %urb25.1 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 1, i32 2
  %15 = ptrtoint ptr %urb25.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %urb25.1, align 4
  %tobool26.not.1 = icmp eq ptr %16, null
  br i1 %tobool26.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then27.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then27.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %16) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then27.1, %for.inc.for.inc.1_crit_edge
  %urb25.2 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 2, i32 2
  %17 = ptrtoint ptr %urb25.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urb25.2, align 4
  %tobool26.not.2 = icmp eq ptr %18, null
  br i1 %tobool26.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then27.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then27.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %18) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then27.2, %for.inc.1.for.inc.2_crit_edge
  %urb25.3 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 3, i32 2
  %19 = ptrtoint ptr %urb25.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %urb25.3, align 4
  %tobool26.not.3 = icmp eq ptr %20, null
  br i1 %tobool26.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then27.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then27.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %20) #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then27.3, %for.inc.2.for.inc.3_crit_edge
  %urb25.4 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 4, i32 2
  %21 = ptrtoint ptr %urb25.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %urb25.4, align 4
  %tobool26.not.4 = icmp eq ptr %22, null
  br i1 %tobool26.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then27.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then27.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %22) #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then27.4, %for.inc.3.for.inc.4_crit_edge
  %urb25.5 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 5, i32 2
  %23 = ptrtoint ptr %urb25.5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %urb25.5, align 4
  %tobool26.not.5 = icmp eq ptr %24, null
  br i1 %tobool26.not.5, label %for.inc.4.if.end32_crit_edge, label %if.then27.5

for.inc.4.if.end32_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then27.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %24) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then27.5, %for.inc.4.if.end32_crit_edge, %if.end21.if.end32_crit_edge
  %urb42 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0, i32 4, i32 0, i32 2
  %25 = ptrtoint ptr %urb42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %urb42, align 4
  %tobool43.not = icmp eq ptr %26, null
  br i1 %tobool43.not, label %if.end32.for.inc49_crit_edge, label %if.then44

if.end32.for.inc49_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49

if.then44:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %26) #12
  br label %for.inc49

for.inc49:                                        ; preds = %if.then44, %if.end32.for.inc49_crit_edge
  %urb42.1 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0, i32 4, i32 1, i32 2
  %27 = ptrtoint ptr %urb42.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %urb42.1, align 4
  %tobool43.not.1 = icmp eq ptr %28, null
  br i1 %tobool43.not.1, label %for.inc49.for.inc49.1_crit_edge, label %if.then44.1

for.inc49.for.inc49.1_crit_edge:                  ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49.1

if.then44.1:                                      ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %28) #12
  br label %for.inc49.1

for.inc49.1:                                      ; preds = %if.then44.1, %for.inc49.for.inc49.1_crit_edge
  %urb42.2 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0, i32 4, i32 2, i32 2
  %29 = ptrtoint ptr %urb42.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %urb42.2, align 4
  %tobool43.not.2 = icmp eq ptr %30, null
  br i1 %tobool43.not.2, label %for.inc49.1.for.inc49.2_crit_edge, label %if.then44.2

for.inc49.1.for.inc49.2_crit_edge:                ; preds = %for.inc49.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49.2

if.then44.2:                                      ; preds = %for.inc49.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %30) #12
  br label %for.inc49.2

for.inc49.2:                                      ; preds = %if.then44.2, %for.inc49.1.for.inc49.2_crit_edge
  %urb42.3 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0, i32 4, i32 3, i32 2
  %31 = ptrtoint ptr %urb42.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %urb42.3, align 4
  %tobool43.not.3 = icmp eq ptr %32, null
  br i1 %tobool43.not.3, label %for.inc49.2.for.inc49.3_crit_edge, label %if.then44.3

for.inc49.2.for.inc49.3_crit_edge:                ; preds = %for.inc49.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49.3

if.then44.3:                                      ; preds = %for.inc49.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %32) #12
  br label %for.inc49.3

for.inc49.3:                                      ; preds = %if.then44.3, %for.inc49.2.for.inc49.3_crit_edge
  %urb42.4 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0, i32 4, i32 4, i32 2
  %33 = ptrtoint ptr %urb42.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %urb42.4, align 4
  %tobool43.not.4 = icmp eq ptr %34, null
  br i1 %tobool43.not.4, label %for.inc49.3.for.inc49.4_crit_edge, label %if.then44.4

for.inc49.3.for.inc49.4_crit_edge:                ; preds = %for.inc49.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49.4

if.then44.4:                                      ; preds = %for.inc49.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %34) #12
  br label %for.inc49.4

for.inc49.4:                                      ; preds = %if.then44.4, %for.inc49.3.for.inc49.4_crit_edge
  %urb42.5 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0, i32 4, i32 5, i32 2
  %35 = ptrtoint ptr %urb42.5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %urb42.5, align 4
  %tobool43.not.5 = icmp eq ptr %36, null
  br i1 %tobool43.not.5, label %for.inc49.4.for.inc49.5_crit_edge, label %if.then44.5

for.inc49.4.for.inc49.5_crit_edge:                ; preds = %for.inc49.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49.5

if.then44.5:                                      ; preds = %for.inc49.4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %36) #12
  br label %for.inc49.5

for.inc49.5:                                      ; preds = %if.then44.5, %for.inc49.4.for.inc49.5_crit_edge
  %urb42.1101 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1, i32 4, i32 0, i32 2
  %37 = ptrtoint ptr %urb42.1101 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %urb42.1101, align 4
  %tobool43.not.1102 = icmp eq ptr %38, null
  br i1 %tobool43.not.1102, label %for.inc49.5.for.inc49.1104_crit_edge, label %if.then44.1103

for.inc49.5.for.inc49.1104_crit_edge:             ; preds = %for.inc49.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49.1104

if.then44.1103:                                   ; preds = %for.inc49.5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %38) #12
  br label %for.inc49.1104

for.inc49.1104:                                   ; preds = %if.then44.1103, %for.inc49.5.for.inc49.1104_crit_edge
  %urb42.1.1 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1, i32 4, i32 1, i32 2
  %39 = ptrtoint ptr %urb42.1.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %urb42.1.1, align 4
  %tobool43.not.1.1 = icmp eq ptr %40, null
  br i1 %tobool43.not.1.1, label %for.inc49.1104.for.inc49.1.1_crit_edge, label %if.then44.1.1

for.inc49.1104.for.inc49.1.1_crit_edge:           ; preds = %for.inc49.1104
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49.1.1

if.then44.1.1:                                    ; preds = %for.inc49.1104
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %40) #12
  br label %for.inc49.1.1

for.inc49.1.1:                                    ; preds = %if.then44.1.1, %for.inc49.1104.for.inc49.1.1_crit_edge
  %urb42.2.1 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1, i32 4, i32 2, i32 2
  %41 = ptrtoint ptr %urb42.2.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %urb42.2.1, align 4
  %tobool43.not.2.1 = icmp eq ptr %42, null
  br i1 %tobool43.not.2.1, label %for.inc49.1.1.for.inc49.2.1_crit_edge, label %if.then44.2.1

for.inc49.1.1.for.inc49.2.1_crit_edge:            ; preds = %for.inc49.1.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49.2.1

if.then44.2.1:                                    ; preds = %for.inc49.1.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %42) #12
  br label %for.inc49.2.1

for.inc49.2.1:                                    ; preds = %if.then44.2.1, %for.inc49.1.1.for.inc49.2.1_crit_edge
  %urb42.3.1 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1, i32 4, i32 3, i32 2
  %43 = ptrtoint ptr %urb42.3.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %urb42.3.1, align 4
  %tobool43.not.3.1 = icmp eq ptr %44, null
  br i1 %tobool43.not.3.1, label %for.inc49.2.1.for.inc49.3.1_crit_edge, label %if.then44.3.1

for.inc49.2.1.for.inc49.3.1_crit_edge:            ; preds = %for.inc49.2.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49.3.1

if.then44.3.1:                                    ; preds = %for.inc49.2.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %44) #12
  br label %for.inc49.3.1

for.inc49.3.1:                                    ; preds = %if.then44.3.1, %for.inc49.2.1.for.inc49.3.1_crit_edge
  %urb42.4.1 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1, i32 4, i32 4, i32 2
  %45 = ptrtoint ptr %urb42.4.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %urb42.4.1, align 4
  %tobool43.not.4.1 = icmp eq ptr %46, null
  br i1 %tobool43.not.4.1, label %for.inc49.3.1.for.inc49.4.1_crit_edge, label %if.then44.4.1

for.inc49.3.1.for.inc49.4.1_crit_edge:            ; preds = %for.inc49.3.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49.4.1

if.then44.4.1:                                    ; preds = %for.inc49.3.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %46) #12
  br label %for.inc49.4.1

for.inc49.4.1:                                    ; preds = %if.then44.4.1, %for.inc49.3.1.for.inc49.4.1_crit_edge
  %urb42.5.1 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1, i32 4, i32 5, i32 2
  %47 = ptrtoint ptr %urb42.5.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %urb42.5.1, align 4
  %tobool43.not.5.1 = icmp eq ptr %48, null
  br i1 %tobool43.not.5.1, label %for.inc49.4.1.for.inc49.5.1_crit_edge, label %if.then44.5.1

for.inc49.4.1.for.inc49.5.1_crit_edge:            ; preds = %for.inc49.4.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49.5.1

if.then44.5.1:                                    ; preds = %for.inc49.4.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %48) #12
  br label %for.inc49.5.1

for.inc49.5.1:                                    ; preds = %if.then44.5.1, %for.inc49.4.1.for.inc49.5.1_crit_edge
  %urb55 = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 14, i32 2
  %49 = ptrtoint ptr %urb55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %urb55, align 4
  %tobool56.not = icmp eq ptr %50, null
  br i1 %tobool56.not, label %for.inc49.5.1.cleanup_crit_edge, label %if.then57

for.inc49.5.1.cleanup_crit_edge:                  ; preds = %for.inc49.5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then57:                                        ; preds = %for.inc49.5.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %50) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %for.inc49.5.1.cleanup_crit_edge, %if.then10, %do.end
  %retval.0 = phi i32 [ -14, %if.then10 ], [ 0, %do.end ], [ 0, %if.then57 ], [ 0, %for.inc49.5.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_usb_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %work_flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then8, label %if.end9, !prof !207

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 536870912, ptr noundef nonnull @.str.79) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %work_flags) #12
  %rx_data_urb_pending = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_data_urb_pending, i32 noundef 4) #12
  %7 = ptrtoint ptr %rx_data_urb_pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %rx_data_urb_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %for.body.preheader, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

for.body.preheader:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 0
  %call14 = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx, i32 noundef 4096)
  %arrayidx.1 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 1
  %call14.1 = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.1, i32 noundef 4096)
  %arrayidx.2 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 2
  %call14.2 = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.2, i32 noundef 4096)
  %arrayidx.3 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 3
  %call14.3 = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.3, i32 noundef 4096)
  %arrayidx.4 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 4
  %call14.4 = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.4, i32 noundef 4096)
  %arrayidx.5 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 5
  %call14.5 = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.5, i32 noundef 4096)
  br label %if.end15

if.end15:                                         ; preds = %for.body.preheader, %if.end9.if.end15_crit_edge
  %rx_cmd_urb_pending = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 6
  %call.i.i49 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_cmd_urb_pending, i32 noundef 4) #12
  %9 = ptrtoint ptr %rx_cmd_urb_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %rx_cmd_urb_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not = icmp eq i32 %10, 0
  br i1 %tobool17.not, label %if.then18, label %if.end15.if.end27_crit_edge

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then18:                                        ; preds = %if.end15
  %call.i.i50 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2048, i32 noundef 2592) #12
  %skb = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i50, ptr %skb, align 4
  %tobool22.not = icmp eq ptr %call.i.i50, null
  br i1 %tobool22.not, label %if.then18.if.end27_crit_edge, label %if.then23

if.then18.if.end27_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %rx_cmd = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 5
  %call25 = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %rx_cmd, i32 noundef 2048)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then18.if.end27_crit_edge, %if.end15.if.end27_crit_edge
  %hs_activated = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 108
  %12 = ptrtoint ptr %hs_activated to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hs_activated, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool28.not = icmp eq i8 %13, 0
  br i1 %tobool28.not, label %if.end27.cleanup_crit_edge, label %if.then29

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then29:                                        ; preds = %if.end27
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp2.not.i = icmp eq i8 %15, 0
  br i1 %cmp2.not.i, label %if.then29.mwifiex_get_priv.exit_crit_edge, label %if.then29.for.body.i_crit_edge

if.then29.for.body.i_crit_edge:                   ; preds = %if.then29
  br label %for.body.i

if.then29.mwifiex_get_priv.exit_crit_edge:        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then29.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then29.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %3, i32 0, i32 4, i32 %i.03.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.mwifiex_get_priv.exit_crit_edge

for.body.i.mwifiex_get_priv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %for.body.i.mwifiex_get_priv.exit_crit_edge, %if.then29.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %if.then29.mwifiex_get_priv.exit_crit_edge ], [ %17, %for.body.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %call31 = tail call i32 @mwifiex_cancel_hs(ptr noundef %cond.i, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %mwifiex_get_priv.exit, %if.end27.cleanup_crit_edge, %if.then8, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_usb_coredump(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp2.not.i = icmp eq i8 %5, 0
  br i1 %cmp2.not.i, label %entry.mwifiex_get_priv.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mwifiex_get_priv.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %3, i32 0, i32 4, i32 %i.03.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.mwifiex_get_priv.exit_crit_edge

for.body.i.mwifiex_get_priv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %for.body.i.mwifiex_get_priv.exit_crit_edge, %entry.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %entry.mwifiex_get_priv.exit_crit_edge ], [ %7, %for.body.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  tail call void @mwifiex_fw_dump_event(ptr noundef %cond.i) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_add_card(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mwifiex_register_dev(ptr noundef %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %adapter, ptr %1, align 4
  %udev = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 8
  %5 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idProduct, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %7, label %sw.default [
    i16 8274, label %entry.sw.bb_crit_edge
    i16 8270, label %entry.sw.bb_crit_edge35
    i16 8257, label %entry.sw.bb3_crit_edge
    i16 8258, label %entry.sw.bb3_crit_edge36
    i16 8265, label %entry.sw.bb9_crit_edge
    i16 8266, label %entry.sw.bb9_crit_edge37
  ]

entry.sw.bb9_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9

entry.sw.bb3_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge35
  %tx_buf_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 39
  %9 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4096, ptr %tx_buf_size, align 2
  %fw_name = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 7
  %10 = call ptr @memcpy(ptr %fw_name, ptr @.str.24, i32 29)
  %ext_scan = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 137
  %11 = ptrtoint ptr %ext_scan to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %ext_scan, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge36
  %tx_buf_size4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 39
  %12 = ptrtoint ptr %tx_buf_size4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2048, ptr %tx_buf_size4, align 2
  %fw_name5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %fw_name5, ptr @.str.25, i32 24)
  %ext_scan8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 137
  %14 = ptrtoint ptr %ext_scan8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %ext_scan8, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge37
  %tx_buf_size10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 39
  %15 = ptrtoint ptr %tx_buf_size10 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2048, ptr %tx_buf_size10, align 2
  %fw_name11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 7
  %16 = call ptr @memcpy(ptr %fw_name11, ptr @.str.26, i32 24)
  %ext_scan14 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 137
  %17 = ptrtoint ptr %ext_scan14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ext_scan14, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tx_buf_size16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 39
  %18 = ptrtoint ptr %tx_buf_size16 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2048, ptr %tx_buf_size16, align 2
  %fw_name17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 7
  %19 = call ptr @memcpy(ptr %fw_name17, ptr @.str.27, i32 24)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb3, %sw.bb
  %usb_mc_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 160
  %20 = ptrtoint ptr %usb_mc_status to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %usb_mc_status, align 1
  %usb_mc_setup = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 161
  %21 = ptrtoint ptr %usb_mc_setup to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %usb_mc_setup, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_unregister_dev(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %rx_cmd_urb_pending.i = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_cmd_urb_pending.i, i32 noundef 4) #12
  %2 = ptrtoint ptr %rx_cmd_urb_pending.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %rx_cmd_urb_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %urb.i = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %5) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %urb5.i = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %urb5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb5.i, align 4
  tail call void @usb_free_urb(ptr noundef %7) #12
  %8 = ptrtoint ptr %urb5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %urb5.i, align 4
  %rx_data_urb_pending.i = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 10
  %call.i.i85.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_data_urb_pending.i, i32 noundef 4) #12
  %9 = ptrtoint ptr %rx_data_urb_pending.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %rx_data_urb_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not.i = icmp eq i32 %10, 0
  br i1 %tobool9.not.i, label %if.end.i.mwifiex_usb_free.exit_crit_edge, label %for.body.preheader.i

if.end.i.mwifiex_usb_free.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_usb_free.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %urb11.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 0, i32 2
  %11 = ptrtoint ptr %urb11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %urb11.i, align 4
  %tobool12.not.i = icmp eq ptr %12, null
  br i1 %tobool12.not.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.then13.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then13.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %12) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then13.i, %for.body.preheader.i.for.inc.i_crit_edge
  %urb11.1.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 1, i32 2
  %13 = ptrtoint ptr %urb11.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %urb11.1.i, align 4
  %tobool12.not.1.i = icmp eq ptr %14, null
  br i1 %tobool12.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then13.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

if.then13.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %14) #12
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then13.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %urb11.2.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 2, i32 2
  %15 = ptrtoint ptr %urb11.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %urb11.2.i, align 4
  %tobool12.not.2.i = icmp eq ptr %16, null
  br i1 %tobool12.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then13.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

if.then13.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %16) #12
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then13.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %urb11.3.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 3, i32 2
  %17 = ptrtoint ptr %urb11.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urb11.3.i, align 4
  %tobool12.not.3.i = icmp eq ptr %18, null
  br i1 %tobool12.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then13.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

if.then13.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %18) #12
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then13.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %urb11.4.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 4, i32 2
  %19 = ptrtoint ptr %urb11.4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %urb11.4.i, align 4
  %tobool12.not.4.i = icmp eq ptr %20, null
  br i1 %tobool12.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then13.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4.i

if.then13.4.i:                                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %20) #12
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then13.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %urb11.5.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 5, i32 2
  %21 = ptrtoint ptr %urb11.5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %urb11.5.i, align 4
  %tobool12.not.5.i = icmp eq ptr %22, null
  br i1 %tobool12.not.5.i, label %for.inc.4.i.mwifiex_usb_free.exit_crit_edge, label %if.then13.5.i

for.inc.4.i.mwifiex_usb_free.exit_crit_edge:      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_usb_free.exit

if.then13.5.i:                                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %22) #12
  br label %mwifiex_usb_free.exit

mwifiex_usb_free.exit:                            ; preds = %if.then13.5.i, %for.inc.4.i.mwifiex_usb_free.exit_crit_edge, %if.end.i.mwifiex_usb_free.exit_crit_edge
  %urb24.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 0, i32 2
  %23 = ptrtoint ptr %urb24.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %urb24.i, align 4
  tail call void @usb_free_urb(ptr noundef %24) #12
  %25 = ptrtoint ptr %urb24.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %urb24.i, align 4
  %urb24.1.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 1, i32 2
  %26 = ptrtoint ptr %urb24.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %urb24.1.i, align 4
  tail call void @usb_free_urb(ptr noundef %27) #12
  %28 = ptrtoint ptr %urb24.1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %urb24.1.i, align 4
  %urb24.2.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 2, i32 2
  %29 = ptrtoint ptr %urb24.2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %urb24.2.i, align 4
  tail call void @usb_free_urb(ptr noundef %30) #12
  %31 = ptrtoint ptr %urb24.2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %urb24.2.i, align 4
  %urb24.3.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 3, i32 2
  %32 = ptrtoint ptr %urb24.3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %urb24.3.i, align 4
  tail call void @usb_free_urb(ptr noundef %33) #12
  %34 = ptrtoint ptr %urb24.3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %urb24.3.i, align 4
  %urb24.4.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 4, i32 2
  %35 = ptrtoint ptr %urb24.4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %urb24.4.i, align 4
  tail call void @usb_free_urb(ptr noundef %36) #12
  %37 = ptrtoint ptr %urb24.4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %urb24.4.i, align 4
  %urb24.5.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 5, i32 2
  %38 = ptrtoint ptr %urb24.5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %urb24.5.i, align 4
  tail call void @usb_free_urb(ptr noundef %39) #12
  %40 = ptrtoint ptr %urb24.5.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %urb24.5.i, align 4
  %urb40.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0, i32 4, i32 0, i32 2
  %41 = ptrtoint ptr %urb40.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %urb40.i, align 4
  tail call void @usb_kill_urb(ptr noundef %42) #12
  %43 = ptrtoint ptr %urb40.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %urb40.i, align 4
  tail call void @usb_free_urb(ptr noundef %44) #12
  %45 = ptrtoint ptr %urb40.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %urb40.i, align 4
  %urb40.1.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0, i32 4, i32 1, i32 2
  %46 = ptrtoint ptr %urb40.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %urb40.1.i, align 4
  tail call void @usb_kill_urb(ptr noundef %47) #12
  %48 = ptrtoint ptr %urb40.1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %urb40.1.i, align 4
  tail call void @usb_free_urb(ptr noundef %49) #12
  %50 = ptrtoint ptr %urb40.1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %urb40.1.i, align 4
  %urb40.2.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0, i32 4, i32 2, i32 2
  %51 = ptrtoint ptr %urb40.2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %urb40.2.i, align 4
  tail call void @usb_kill_urb(ptr noundef %52) #12
  %53 = ptrtoint ptr %urb40.2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %urb40.2.i, align 4
  tail call void @usb_free_urb(ptr noundef %54) #12
  %55 = ptrtoint ptr %urb40.2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %urb40.2.i, align 4
  %urb40.3.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0, i32 4, i32 3, i32 2
  %56 = ptrtoint ptr %urb40.3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %urb40.3.i, align 4
  tail call void @usb_kill_urb(ptr noundef %57) #12
  %58 = ptrtoint ptr %urb40.3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %urb40.3.i, align 4
  tail call void @usb_free_urb(ptr noundef %59) #12
  %60 = ptrtoint ptr %urb40.3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %urb40.3.i, align 4
  %urb40.4.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0, i32 4, i32 4, i32 2
  %61 = ptrtoint ptr %urb40.4.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %urb40.4.i, align 4
  tail call void @usb_kill_urb(ptr noundef %62) #12
  %63 = ptrtoint ptr %urb40.4.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %urb40.4.i, align 4
  tail call void @usb_free_urb(ptr noundef %64) #12
  %65 = ptrtoint ptr %urb40.4.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %urb40.4.i, align 4
  %urb40.5.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0, i32 4, i32 5, i32 2
  %66 = ptrtoint ptr %urb40.5.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %urb40.5.i, align 4
  tail call void @usb_kill_urb(ptr noundef %67) #12
  %68 = ptrtoint ptr %urb40.5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %urb40.5.i, align 4
  tail call void @usb_free_urb(ptr noundef %69) #12
  %70 = ptrtoint ptr %urb40.5.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %urb40.5.i, align 4
  %urb40.190.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1, i32 4, i32 0, i32 2
  %71 = ptrtoint ptr %urb40.190.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %urb40.190.i, align 4
  tail call void @usb_kill_urb(ptr noundef %72) #12
  %73 = ptrtoint ptr %urb40.190.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %urb40.190.i, align 4
  tail call void @usb_free_urb(ptr noundef %74) #12
  %75 = ptrtoint ptr %urb40.190.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %urb40.190.i, align 4
  %urb40.1.1.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1, i32 4, i32 1, i32 2
  %76 = ptrtoint ptr %urb40.1.1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %urb40.1.1.i, align 4
  tail call void @usb_kill_urb(ptr noundef %77) #12
  %78 = ptrtoint ptr %urb40.1.1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %urb40.1.1.i, align 4
  tail call void @usb_free_urb(ptr noundef %79) #12
  %80 = ptrtoint ptr %urb40.1.1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %urb40.1.1.i, align 4
  %urb40.2.1.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1, i32 4, i32 2, i32 2
  %81 = ptrtoint ptr %urb40.2.1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %urb40.2.1.i, align 4
  tail call void @usb_kill_urb(ptr noundef %82) #12
  %83 = ptrtoint ptr %urb40.2.1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %urb40.2.1.i, align 4
  tail call void @usb_free_urb(ptr noundef %84) #12
  %85 = ptrtoint ptr %urb40.2.1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %urb40.2.1.i, align 4
  %urb40.3.1.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1, i32 4, i32 3, i32 2
  %86 = ptrtoint ptr %urb40.3.1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %urb40.3.1.i, align 4
  tail call void @usb_kill_urb(ptr noundef %87) #12
  %88 = ptrtoint ptr %urb40.3.1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %urb40.3.1.i, align 4
  tail call void @usb_free_urb(ptr noundef %89) #12
  %90 = ptrtoint ptr %urb40.3.1.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %urb40.3.1.i, align 4
  %urb40.4.1.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1, i32 4, i32 4, i32 2
  %91 = ptrtoint ptr %urb40.4.1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %urb40.4.1.i, align 4
  tail call void @usb_kill_urb(ptr noundef %92) #12
  %93 = ptrtoint ptr %urb40.4.1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %urb40.4.1.i, align 4
  tail call void @usb_free_urb(ptr noundef %94) #12
  %95 = ptrtoint ptr %urb40.4.1.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %urb40.4.1.i, align 4
  %urb40.5.1.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1, i32 4, i32 5, i32 2
  %96 = ptrtoint ptr %urb40.5.1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %urb40.5.1.i, align 4
  tail call void @usb_kill_urb(ptr noundef %97) #12
  %98 = ptrtoint ptr %urb40.5.1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %urb40.5.1.i, align 4
  tail call void @usb_free_urb(ptr noundef %99) #12
  %100 = ptrtoint ptr %urb40.5.1.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %urb40.5.1.i, align 4
  %urb53.i = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 14, i32 2
  %101 = ptrtoint ptr %urb53.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %urb53.i, align 4
  tail call void @usb_free_urb(ptr noundef %102) #12
  %103 = ptrtoint ptr %urb53.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %urb53.i, align 4
  %104 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %card1, align 4
  %bus_aggr.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 166
  %106 = ptrtoint ptr %bus_aggr.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %bus_aggr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool.not.i5 = icmp eq i16 %107, 0
  br i1 %tobool.not.i5, label %mwifiex_usb_free.exit.if.end.i6_crit_edge, label %while.cond.preheader.i

mwifiex_usb_free.exit.if.end.i6_crit_edge:        ; preds = %mwifiex_usb_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i6

while.cond.preheader.i:                           ; preds = %mwifiex_usb_free.exit
  %tx_aggr.i = getelementptr %struct.usb_card_rec, ptr %105, i32 0, i32 16, i32 0, i32 5
  %call25.i = tail call ptr @skb_dequeue(ptr noundef %tx_aggr.i) #12
  %tobool3.not26.i = icmp eq ptr %call25.i, null
  br i1 %tobool3.not26.i, label %while.cond.preheader.i.if.end.i6_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.end.i6_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i6

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call27.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call25.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call4.i = tail call i32 @mwifiex_write_data_complete(ptr noundef %adapter, ptr noundef nonnull %call27.i, i32 noundef 0, i32 noundef -1) #12
  %call.i = tail call ptr @skb_dequeue(ptr noundef %tx_aggr.i) #12
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %while.body.i.if.end.i6_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.if.end.i6_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i6

if.end.i6:                                        ; preds = %while.body.i.if.end.i6_crit_edge, %while.cond.preheader.i.if.end.i6_crit_edge, %mwifiex_usb_free.exit.if.end.i6_crit_edge
  %function.i = getelementptr %struct.usb_card_rec, ptr %105, i32 0, i32 16, i32 0, i32 5, i32 3, i32 2, i32 2
  %108 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %function.i, align 4
  %tobool6.not.i = icmp eq ptr %109, null
  br i1 %tobool6.not.i, label %if.end.i6.if.end12.i_crit_edge, label %if.then7.i

if.end.i6.if.end12.i_crit_edge:                   ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then7.i:                                       ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #14
  %hold_timer.i = getelementptr %struct.usb_card_rec, ptr %105, i32 0, i32 16, i32 0, i32 5, i32 3, i32 2
  %call11.i = tail call i32 @del_timer_sync(ptr noundef %hold_timer.i) #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then7.i, %if.end.i6.if.end12.i_crit_edge
  %is_hold_timer_set.i = getelementptr %struct.usb_card_rec, ptr %105, i32 0, i32 16, i32 0, i32 5, i32 3, i32 3
  %110 = ptrtoint ptr %is_hold_timer_set.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %is_hold_timer_set.i, align 4
  %hold_tmo_msecs.i = getelementptr %struct.usb_card_rec, ptr %105, i32 0, i32 16, i32 0, i32 5, i32 3, i32 4
  %111 = ptrtoint ptr %hold_tmo_msecs.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %hold_tmo_msecs.i, align 4
  %112 = ptrtoint ptr %bus_aggr.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %bus_aggr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool.not.1.i = icmp eq i16 %113, 0
  br i1 %tobool.not.1.i, label %if.end12.i.if.end.1.i_crit_edge, label %while.cond.preheader.1.i

if.end12.i.if.end.1.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1.i

while.cond.preheader.1.i:                         ; preds = %if.end12.i
  %tx_aggr.1.i = getelementptr %struct.usb_card_rec, ptr %105, i32 0, i32 16, i32 1, i32 5
  %call25.1.i = tail call ptr @skb_dequeue(ptr noundef %tx_aggr.1.i) #12
  %tobool3.not26.1.i = icmp eq ptr %call25.1.i, null
  br i1 %tobool3.not26.1.i, label %while.cond.preheader.1.i.if.end.1.i_crit_edge, label %while.cond.preheader.1.i.while.body.1.i_crit_edge

while.cond.preheader.1.i.while.body.1.i_crit_edge: ; preds = %while.cond.preheader.1.i
  br label %while.body.1.i

while.cond.preheader.1.i.if.end.1.i_crit_edge:    ; preds = %while.cond.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1.i

while.body.1.i:                                   ; preds = %while.body.1.i.while.body.1.i_crit_edge, %while.cond.preheader.1.i.while.body.1.i_crit_edge
  %call27.1.i = phi ptr [ %call.1.i, %while.body.1.i.while.body.1.i_crit_edge ], [ %call25.1.i, %while.cond.preheader.1.i.while.body.1.i_crit_edge ]
  %call4.1.i = tail call i32 @mwifiex_write_data_complete(ptr noundef %adapter, ptr noundef nonnull %call27.1.i, i32 noundef 0, i32 noundef -1) #12
  %call.1.i = tail call ptr @skb_dequeue(ptr noundef %tx_aggr.1.i) #12
  %tobool3.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool3.not.1.i, label %while.body.1.i.if.end.1.i_crit_edge, label %while.body.1.i.while.body.1.i_crit_edge

while.body.1.i.while.body.1.i_crit_edge:          ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.1.i

while.body.1.i.if.end.1.i_crit_edge:              ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %while.body.1.i.if.end.1.i_crit_edge, %while.cond.preheader.1.i.if.end.1.i_crit_edge, %if.end12.i.if.end.1.i_crit_edge
  %function.1.i = getelementptr %struct.usb_card_rec, ptr %105, i32 0, i32 16, i32 1, i32 5, i32 3, i32 2, i32 2
  %114 = ptrtoint ptr %function.1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %function.1.i, align 4
  %tobool6.not.1.i = icmp eq ptr %115, null
  br i1 %tobool6.not.1.i, label %if.end.1.i.mwifiex_usb_cleanup_tx_aggr.exit_crit_edge, label %if.then7.1.i

if.end.1.i.mwifiex_usb_cleanup_tx_aggr.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_usb_cleanup_tx_aggr.exit

if.then7.1.i:                                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %hold_timer.1.i = getelementptr %struct.usb_card_rec, ptr %105, i32 0, i32 16, i32 1, i32 5, i32 3, i32 2
  %call11.1.i = tail call i32 @del_timer_sync(ptr noundef %hold_timer.1.i) #12
  br label %mwifiex_usb_cleanup_tx_aggr.exit

mwifiex_usb_cleanup_tx_aggr.exit:                 ; preds = %if.then7.1.i, %if.end.1.i.mwifiex_usb_cleanup_tx_aggr.exit_crit_edge
  %is_hold_timer_set.1.i = getelementptr %struct.usb_card_rec, ptr %105, i32 0, i32 16, i32 1, i32 5, i32 3, i32 3
  %116 = ptrtoint ptr %is_hold_timer_set.1.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %is_hold_timer_set.1.i, align 4
  %hold_tmo_msecs.1.i = getelementptr %struct.usb_card_rec, ptr %105, i32 0, i32 16, i32 1, i32 5, i32 3, i32 4
  %117 = ptrtoint ptr %hold_tmo_msecs.1.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %hold_tmo_msecs.1.i, align 4
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_usb_host_to_card(ptr noundef %adapter, i8 noundef zeroext %ep, ptr noundef %skb, ptr noundef readonly %tx_param) #2 align 64 {
entry:
  %skb_send.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 12
  %2 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %work_flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.mwifiex_usb_host_to_card) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %work_flags, align 4
  %and1.i82 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i82)
  %tobool4.not = icmp eq i32 %and1.i82, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.mwifiex_usb_host_to_card) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %conv = zext i8 %ep to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.mwifiex_usb_host_to_card, i32 noundef %conv) #12
  %tx_cmd_ep = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %tx_cmd_ep to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_cmd_ep, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %ep)
  %cmp = icmp eq i8 %8, %ep
  br i1 %cmp, label %if.then10, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end6
  %arrayidx = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %ep)
  %cmp16 = icmp eq i8 %10, %ep
  br i1 %cmp16, label %for.body.preheader.if.then18_crit_edge, label %for.inc

for.body.preheader.if.then18_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %tx_cmd = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 14
  br label %if.end44

if.then18:                                        ; preds = %for.inc.if.then18_crit_edge, %for.body.preheader.if.then18_crit_edge
  %idx.0103.lcssa = phi i32 [ 0, %for.body.preheader.if.then18_crit_edge ], [ 1, %for.inc.if.then18_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %for.body.preheader.if.then18_crit_edge ], [ %arrayidx.1, %for.inc.if.then18_crit_edge ]
  %tx_data_urb_pending = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_data_urb_pending, i32 noundef 4) #12
  %11 = ptrtoint ptr %tx_data_urb_pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %tx_data_urb_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp22 = icmp sgt i32 %12, 5
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.then18
  %block_status = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 1
  %13 = ptrtoint ptr %block_status to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %block_status, align 1
  %14 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card1, align 4
  %block_status.i = getelementptr %struct.usb_card_rec, ptr %15, i32 0, i32 16, i32 0, i32 1
  %16 = ptrtoint ptr %block_status.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %block_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.then24.mwifiex_usb_data_sent.exit_crit_edge, label %for.cond.i

if.then24.mwifiex_usb_data_sent.exit_crit_edge:   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_usb_data_sent.exit

for.cond.i:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %block_status.1.i = getelementptr %struct.usb_card_rec, ptr %15, i32 0, i32 16, i32 1, i32 1
  %18 = ptrtoint ptr %block_status.1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %block_status.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.1.i = icmp ne i8 %19, 0
  %spec.select.i = zext i1 %tobool.not.1.i to i8
  br label %mwifiex_usb_data_sent.exit

mwifiex_usb_data_sent.exit:                       ; preds = %for.cond.i, %if.then24.mwifiex_usb_data_sent.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %if.then24.mwifiex_usb_data_sent.exit_crit_edge ], [ %spec.select.i, %for.cond.i ]
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %20 = ptrtoint ptr %data_sent to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %retval.0.i, ptr %data_sent, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.then18
  %tx_data_ix = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 3
  %21 = ptrtoint ptr %tx_data_ix to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_data_ix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp27 = icmp sgt i32 %22, 5
  br i1 %cmp27, label %if.then29, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %tx_data_ix to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tx_data_ix, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %ep)
  %cmp16.1 = icmp eq i8 %25, %ep
  br i1 %cmp16.1, label %for.inc.if.then18_crit_edge, label %for.inc.if.then34_crit_edge

for.inc.if.then34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

for.inc.if.then18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

for.end:                                          ; preds = %if.then29, %if.end26.for.end_crit_edge
  %tobool33.not = icmp eq ptr %arrayidx.lcssa, null
  br i1 %tobool33.not, label %for.end.if.then34_crit_edge, label %if.end35

for.end.if.then34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

if.then34:                                        ; preds = %for.end.if.then34_crit_edge, %for.inc.if.then34_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.31) #12
  br label %cleanup

if.end35:                                         ; preds = %for.end
  %bus_aggr = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 166
  %26 = ptrtoint ptr %bus_aggr to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bus_aggr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool36.not = icmp eq i16 %27, 0
  br i1 %tobool36.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end35
  %tx_aggr_lock = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_aggr_lock) #12
  %tx_aggr_align.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 166, i32 4
  %28 = ptrtoint ptr %tx_aggr_align.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tx_aggr_align.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb_send.i) #12
  %30 = ptrtoint ptr %skb_send.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %skb_send.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %intf_hdr_len.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %33 = ptrtoint ptr %intf_hdr_len.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %intf_hdr_len.i, align 4
  %conv.i = zext i8 %34 to i32
  %add.ptr.i = getelementptr i8, ptr %32, i32 %conv.i
  %conv1.i = zext i16 %29 to i32
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %sub.i = add nsw i32 %conv1.i, -1
  %and.i = and i32 %36, %sub.i
  %sub3.i = sub i32 %conv1.i, %and.i
  %rem.i = urem i32 %sub3.i, %conv1.i
  %tobool.not.i83 = icmp eq ptr %tx_param, null
  br i1 %tobool.not.i83, label %if.then37.if.else35.i_crit_edge, label %land.lhs.true.i

if.then37.if.else35.i_crit_edge:                  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else35.i

land.lhs.true.i:                                  ; preds = %if.then37
  %37 = ptrtoint ptr %tx_param to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool6.not.i = icmp eq i32 %38, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.else35.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else35.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else35.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %aggr_len.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 1
  %39 = ptrtoint ptr %aggr_len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %aggr_len.i, align 4
  %conv8.i = and i32 %rem.i, 255
  %add.i = add i32 %conv8.i, %36
  %add9.i = add i32 %add.i, %40
  %tx_aggr_max_size.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 166, i32 2
  %41 = ptrtoint ptr %tx_aggr_max_size.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tx_aggr_max_size.i, align 2
  %conv11.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i, i32 %conv11.i)
  %cmp.i = icmp ugt i32 %add9.i, %conv11.i
  br i1 %cmp.i, label %if.then.i.if.end57.i_crit_edge, label %if.else.i

if.then.i.if.end57.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

if.else.i:                                        ; preds = %if.then.i
  %add21.i = add i32 %add9.i, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i, i32 %conv11.i)
  %cmp25.i = icmp ugt i32 %add21.i, %conv11.i
  br i1 %cmp25.i, label %if.else.i.if.then33.i_crit_edge, label %lor.lhs.false.i

if.else.i.if.then33.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %aggr_num.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 2
  %43 = ptrtoint ptr %aggr_num.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %aggr_num.i, align 4
  %add28.i = add i32 %44, 2
  %tx_aggr_max_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 166, i32 3
  %45 = ptrtoint ptr %tx_aggr_max_num.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %tx_aggr_max_num.i, align 2
  %conv30.i = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add28.i, i32 %conv30.i)
  %cmp31.i = icmp sgt i32 %add28.i, %conv30.i
  br i1 %cmp31.i, label %lor.lhs.false.i.if.then33.i_crit_edge, label %lor.lhs.false.i.if.end57.i_crit_edge

lor.lhs.false.i.if.end57.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

lor.lhs.false.i.if.then33.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i

if.then33.i:                                      ; preds = %lor.lhs.false.i.if.then33.i_crit_edge, %if.else.i.if.then33.i_crit_edge
  br label %if.end57.i

if.else35.i:                                      ; preds = %land.lhs.true.i.if.else35.i_crit_edge, %if.then37.if.else35.i_crit_edge
  %aggr_num37.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 2
  %47 = ptrtoint ptr %aggr_num37.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %aggr_num37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp38.i = icmp sgt i32 %48, 0
  br i1 %cmp38.i, label %if.then40.i, label %if.else35.i.if.end57.i_crit_edge

if.else35.i.if.end57.i_crit_edge:                 ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

if.then40.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #14
  %aggr_len42.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 1
  %49 = ptrtoint ptr %aggr_len42.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %aggr_len42.i, align 4
  %conv45.i = and i32 %rem.i, 255
  %add44.i = add i32 %conv45.i, %36
  %add46.i = add i32 %add44.i, %50
  %tx_aggr_max_size48.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 166, i32 2
  %51 = ptrtoint ptr %tx_aggr_max_size48.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %tx_aggr_max_size48.i, align 2
  %conv49.i = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.i, i32 %conv49.i)
  %cmp50.i = icmp ugt i32 %add46.i, %conv49.i
  %..i = zext i1 %cmp50.i to i8
  %not.cmp50.i = xor i1 %cmp50.i, true
  %.289.i = zext i1 %not.cmp50.i to i8
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then40.i, %if.else35.i.if.end57.i_crit_edge, %if.then33.i, %lor.lhs.false.i.if.end57.i_crit_edge, %if.then.i.if.end57.i_crit_edge
  %f_send_aggr_buf.0.i = phi i8 [ 1, %if.then33.i ], [ 0, %lor.lhs.false.i.if.end57.i_crit_edge ], [ 1, %if.then40.i ], [ 1, %if.then.i.if.end57.i_crit_edge ], [ 0, %if.else35.i.if.end57.i_crit_edge ]
  %f_send_cur_buf.1.i = phi i8 [ 0, %if.then33.i ], [ 0, %lor.lhs.false.i.if.end57.i_crit_edge ], [ %..i, %if.then40.i ], [ 0, %if.then.i.if.end57.i_crit_edge ], [ 1, %if.else35.i.if.end57.i_crit_edge ]
  %f_precopy_cur_buf.1.i = phi i8 [ 1, %if.then33.i ], [ 1, %lor.lhs.false.i.if.end57.i_crit_edge ], [ %.289.i, %if.then40.i ], [ 0, %if.then.i.if.end57.i_crit_edge ], [ 0, %if.else35.i.if.end57.i_crit_edge ]
  %tobool70.not.i = phi i8 [ 0, %if.then33.i ], [ 0, %lor.lhs.false.i.if.end57.i_crit_edge ], [ %..i, %if.then40.i ], [ 1, %if.then.i.if.end57.i_crit_edge ], [ 1, %if.else35.i.if.end57.i_crit_edge ]
  %f_postcopy_cur_buf.0.i = phi i8 [ 0, %if.then33.i ], [ 0, %lor.lhs.false.i.if.end57.i_crit_edge ], [ 0, %if.then40.i ], [ 1, %if.then.i.if.end57.i_crit_edge ], [ 0, %if.else35.i.if.end57.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.txpd, ptr %add.ptr.i, i32 0, i32 7
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %flags.i, align 1
  %55 = and i8 %54, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool60.not.i = icmp eq i8 %55, 0
  br i1 %tobool60.not.i, label %if.end57.i.if.end74.i_crit_edge, label %if.then61.i

if.end57.i.if.end74.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i

if.then61.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %f_precopy_cur_buf.1.i)
  %tobool62.not.i = icmp eq i8 %f_precopy_cur_buf.1.i, 0
  br i1 %tobool62.not.i, label %if.then61.i.send_aggr_buf.i_crit_edge, label %if.then63.i

if.then61.i.send_aggr_buf.i_crit_edge:            ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_aggr_buf.i

if.then63.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_aggr64.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5
  %56 = ptrtoint ptr %tx_aggr64.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_aggr64.i, align 4
  %cmp.i.not.i = icmp eq ptr %57, %tx_aggr64.i
  %not.cmp.i.not.i = xor i1 %cmp.i.not.i, true
  %.290.i = zext i1 %not.cmp.i.not.i to i8
  %f_send_cur_buf.1..i = select i1 %cmp.i.not.i, i8 1, i8 %f_send_cur_buf.1.i
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then63.i, %if.end57.i.if.end74.i_crit_edge
  %f_send_aggr_buf.1.i = phi i8 [ %f_send_aggr_buf.0.i, %if.end57.i.if.end74.i_crit_edge ], [ %.290.i, %if.then63.i ]
  %f_send_cur_buf.2.i = phi i8 [ %f_send_cur_buf.1.i, %if.end57.i.if.end74.i_crit_edge ], [ %f_send_cur_buf.1..i, %if.then63.i ]
  %f_precopy_cur_buf.2.i = phi i8 [ %f_precopy_cur_buf.1.i, %if.end57.i.if.end74.i_crit_edge ], [ %.290.i, %if.then63.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %f_precopy_cur_buf.2.i)
  %tobool75.not.i = icmp eq i8 %f_precopy_cur_buf.2.i, 0
  br i1 %tobool75.not.i, label %if.end74.i.send_aggr_buf.i_crit_edge, label %if.then76.i

if.end74.i.send_aggr_buf.i_crit_edge:             ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_aggr_buf.i

if.then76.i:                                      ; preds = %if.end74.i
  %tx_aggr77.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5
  tail call void @skb_queue_tail(ptr noundef %tx_aggr77.i, ptr noundef %skb) #12
  %58 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i, align 4
  %conv80.i = and i32 %rem.i, 255
  %add81.i = add i32 %59, %conv80.i
  %aggr_len83.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 1
  %60 = ptrtoint ptr %aggr_len83.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %aggr_len83.i, align 4
  %add84.i = add i32 %add81.i, %61
  store i32 %add84.i, ptr %aggr_len83.i, align 4
  %aggr_num86.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 2
  %62 = ptrtoint ptr %aggr_num86.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %aggr_num86.i, align 4
  %inc.i = add i32 %63, 1
  store i32 %inc.i, ptr %aggr_num86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %f_send_aggr_buf.1.i)
  %tobool87.not.i = icmp eq i8 %f_send_aggr_buf.1.i, 0
  br i1 %tobool87.not.i, label %if.end89.i, label %if.then76.i.if.then127.i_crit_edge

if.then76.i.if.then127.i_crit_edge:               ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then127.i

if.end89.i:                                       ; preds = %if.then76.i
  %is_hold_timer_set.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 3, i32 3
  %64 = ptrtoint ptr %is_hold_timer_set.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %is_hold_timer_set.i, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool91.not.i = icmp eq i8 %65, 0
  %hold_tmo_msecs.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 3, i32 4
  br i1 %tobool91.not.i, label %if.then92.i, label %if.else106.i

if.then92.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %hold_tmo_msecs.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %hold_tmo_msecs.i, align 4
  %hold_timer.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 3, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %add101.i = add i32 %67, 1
  %call102.i = tail call i32 @mod_timer(ptr noundef %hold_timer.i, i32 noundef %add101.i) #12
  %68 = ptrtoint ptr %is_hold_timer_set.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %is_hold_timer_set.i, align 4
  br label %if.end139.i

if.else106.i:                                     ; preds = %if.end89.i
  %69 = ptrtoint ptr %hold_tmo_msecs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hold_tmo_msecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %70)
  %cmp110.i = icmp ult i32 %70, 4
  br i1 %cmp110.i, label %if.then112.i, label %if.else106.i.if.end139.i_crit_edge

if.else106.i.if.end139.i_crit_edge:               ; preds = %if.else106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.i

if.then112.i:                                     ; preds = %if.else106.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc116.i = add nuw nsw i32 %70, 1
  %71 = ptrtoint ptr %hold_tmo_msecs.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %inc116.i, ptr %hold_tmo_msecs.i, align 4
  %hold_timer119.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 3, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %inc116.i) #12
  %add121.i = add i32 %call2.i.i, %72
  %call122.i = tail call i32 @mod_timer(ptr noundef %hold_timer119.i, i32 noundef %add121.i) #12
  br label %if.end139.i

send_aggr_buf.i:                                  ; preds = %if.end74.i.send_aggr_buf.i_crit_edge, %if.then61.i.send_aggr_buf.i_crit_edge
  %f_postcopy_cur_buf.1300.i = phi i8 [ %f_postcopy_cur_buf.0.i, %if.end74.i.send_aggr_buf.i_crit_edge ], [ 0, %if.then61.i.send_aggr_buf.i_crit_edge ]
  %f_send_cur_buf.2299.i = phi i8 [ %f_send_cur_buf.2.i, %if.end74.i.send_aggr_buf.i_crit_edge ], [ %tobool70.not.i, %if.then61.i.send_aggr_buf.i_crit_edge ]
  %f_send_aggr_buf.1298.i = phi i8 [ %f_send_aggr_buf.1.i, %if.end74.i.send_aggr_buf.i_crit_edge ], [ %f_send_aggr_buf.0.i, %if.then61.i.send_aggr_buf.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %f_send_aggr_buf.1298.i)
  %tobool126.not.i = icmp eq i8 %f_send_aggr_buf.1298.i, 0
  br i1 %tobool126.not.i, label %send_aggr_buf.i.if.end139.i_crit_edge, label %send_aggr_buf.i.if.then127.i_crit_edge

send_aggr_buf.i.if.then127.i_crit_edge:           ; preds = %send_aggr_buf.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then127.i

send_aggr_buf.i.if.end139.i_crit_edge:            ; preds = %send_aggr_buf.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.i

if.then127.i:                                     ; preds = %send_aggr_buf.i.if.then127.i_crit_edge, %if.then76.i.if.then127.i_crit_edge
  %f_send_cur_buf.2299314.i = phi i8 [ %f_send_cur_buf.2299.i, %send_aggr_buf.i.if.then127.i_crit_edge ], [ %f_send_cur_buf.2.i, %if.then76.i.if.then127.i_crit_edge ]
  %f_postcopy_cur_buf.1300313.i = phi i8 [ %f_postcopy_cur_buf.1300.i, %send_aggr_buf.i.if.then127.i_crit_edge ], [ %f_postcopy_cur_buf.0.i, %if.then76.i.if.then127.i_crit_edge ]
  %call128.i = call fastcc i32 @mwifiex_usb_prepare_tx_aggr_skb(ptr noundef %adapter, ptr noundef nonnull %arrayidx.lcssa, ptr noundef nonnull %skb_send.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i)
  %tobool129.not.i = icmp eq i32 %call128.i, 0
  br i1 %tobool129.not.i, label %if.then130.i, label %if.then127.i.if.end139.i_crit_edge

if.then127.i.if.end139.i_crit_edge:               ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.i

if.then130.i:                                     ; preds = %if.then127.i
  %73 = ptrtoint ptr %tx_data_ix to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_data_ix, align 4
  %inc131.i = add i32 %74, 1
  store i32 %inc131.i, ptr %tx_data_ix, align 4
  %arrayidx.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 4, i32 %74
  %75 = ptrtoint ptr %skb_send.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %skb_send.i, align 4
  %call132.i = tail call fastcc i32 @mwifiex_usb_construct_send_urb(ptr noundef %adapter, ptr noundef nonnull %arrayidx.lcssa, i8 noundef zeroext %ep, ptr noundef %arrayidx.i, ptr noundef %76) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call132.i)
  %cmp133.i = icmp eq i32 %call132.i, -1
  br i1 %cmp133.i, label %if.then135.i, label %if.then130.i.if.end139.i_crit_edge

if.then130.i.if.end139.i_crit_edge:               ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.i

if.then135.i:                                     ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #14
  %call136.i = tail call i32 @mwifiex_write_data_complete(ptr noundef %adapter, ptr noundef %76, i32 noundef 0, i32 noundef -1) #12
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.then135.i, %if.then130.i.if.end139.i_crit_edge, %if.then127.i.if.end139.i_crit_edge, %send_aggr_buf.i.if.end139.i_crit_edge, %if.then112.i, %if.else106.i.if.end139.i_crit_edge, %if.then92.i
  %tobool126.not307.i = phi i1 [ false, %if.then127.i.if.end139.i_crit_edge ], [ false, %if.then135.i ], [ false, %if.then130.i.if.end139.i_crit_edge ], [ true, %send_aggr_buf.i.if.end139.i_crit_edge ], [ true, %if.else106.i.if.end139.i_crit_edge ], [ true, %if.then112.i ], [ true, %if.then92.i ]
  %f_send_cur_buf.2299306.i = phi i8 [ %f_send_cur_buf.2299314.i, %if.then127.i.if.end139.i_crit_edge ], [ %f_send_cur_buf.2299314.i, %if.then135.i ], [ %f_send_cur_buf.2299314.i, %if.then130.i.if.end139.i_crit_edge ], [ %f_send_cur_buf.2299.i, %send_aggr_buf.i.if.end139.i_crit_edge ], [ %f_send_cur_buf.2.i, %if.else106.i.if.end139.i_crit_edge ], [ %f_send_cur_buf.2.i, %if.then112.i ], [ %f_send_cur_buf.2.i, %if.then92.i ]
  %f_postcopy_cur_buf.1300305.i = phi i8 [ %f_postcopy_cur_buf.1300313.i, %if.then127.i.if.end139.i_crit_edge ], [ %f_postcopy_cur_buf.1300313.i, %if.then135.i ], [ %f_postcopy_cur_buf.1300313.i, %if.then130.i.if.end139.i_crit_edge ], [ %f_postcopy_cur_buf.1300.i, %send_aggr_buf.i.if.end139.i_crit_edge ], [ %f_postcopy_cur_buf.0.i, %if.else106.i.if.end139.i_crit_edge ], [ %f_postcopy_cur_buf.0.i, %if.then112.i ], [ %f_postcopy_cur_buf.0.i, %if.then92.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %f_send_cur_buf.2299306.i)
  %tobool140.not.i = icmp eq i8 %f_send_cur_buf.2299306.i, 0
  br i1 %tobool140.not.i, label %postcopy_cur_buf.i, label %if.then141.i

if.then141.i:                                     ; preds = %if.end139.i
  br i1 %tobool126.not307.i, label %if.then141.i.if.end156.i_crit_edge, label %if.then143.i

if.then141.i.if.end156.i_crit_edge:               ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end156.i

if.then143.i:                                     ; preds = %if.then141.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_data_urb_pending, i32 noundef 4) #12
  %77 = ptrtoint ptr %tx_data_urb_pending to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %tx_data_urb_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %78)
  %cmp145.i = icmp sgt i32 %78, 5
  br i1 %cmp145.i, label %if.then147.i, label %if.end149.i

if.then147.i:                                     ; preds = %if.then143.i
  %block_status.i84 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 1
  %79 = ptrtoint ptr %block_status.i84 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %block_status.i84, align 1
  %80 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %card1, align 4
  %block_status.i.i = getelementptr %struct.usb_card_rec, ptr %81, i32 0, i32 16, i32 0, i32 1
  %82 = ptrtoint ptr %block_status.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %block_status.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i.i, label %if.then147.i.postcopy_cur_buf.thread.i_crit_edge, label %for.cond.i.i

if.then147.i.postcopy_cur_buf.thread.i_crit_edge: ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %postcopy_cur_buf.thread.i

for.cond.i.i:                                     ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #14
  %block_status.1.i.i = getelementptr %struct.usb_card_rec, ptr %81, i32 0, i32 16, i32 1, i32 1
  %84 = ptrtoint ptr %block_status.1.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %block_status.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.1.i.i = icmp ne i8 %85, 0
  %spec.select.i.i = zext i1 %tobool.not.1.i.i to i8
  br label %postcopy_cur_buf.thread.i

postcopy_cur_buf.thread.i:                        ; preds = %for.cond.i.i, %if.then147.i.postcopy_cur_buf.thread.i_crit_edge
  %retval.0.i292.i = phi i8 [ 0, %if.then147.i.postcopy_cur_buf.thread.i_crit_edge ], [ %spec.select.i.i, %for.cond.i.i ]
  %data_sent.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %86 = ptrtoint ptr %data_sent.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %retval.0.i292.i, ptr %data_sent.i, align 4
  br label %if.then168.i

if.end149.i:                                      ; preds = %if.then143.i
  %87 = ptrtoint ptr %tx_data_ix to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx_data_ix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %88)
  %cmp151.i = icmp sgt i32 %88, 5
  br i1 %cmp151.i, label %if.then153.i, label %if.end149.i.if.end156.i_crit_edge

if.end149.i.if.end156.i_crit_edge:                ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end156.i

if.then153.i:                                     ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %tx_data_ix to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %tx_data_ix, align 4
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.then153.i, %if.end149.i.if.end156.i_crit_edge, %if.then141.i.if.end156.i_crit_edge
  %90 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i, align 4
  %arrayidx158.i = getelementptr i8, ptr %91, i32 2
  %92 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -29952, ptr %arrayidx158.i, align 2
  %93 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len.i, align 4
  %conv160.i = trunc i32 %94 to i16
  %95 = tail call i16 @llvm.bswap.i16(i16 %conv160.i) #12
  %96 = ptrtoint ptr %91 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %91, align 2
  %97 = ptrtoint ptr %tx_data_ix to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_data_ix, align 4
  %inc163.i = add i32 %98, 1
  store i32 %inc163.i, ptr %tx_data_ix, align 4
  %arrayidx164.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 4, i32 %98
  %call165.i = tail call fastcc i32 @mwifiex_usb_construct_send_urb(ptr noundef %adapter, ptr noundef nonnull %arrayidx.lcssa, i8 noundef zeroext %ep, ptr noundef %arrayidx164.i, ptr noundef %skb) #12
  br label %mwifiex_usb_aggr_tx_data.exit

postcopy_cur_buf.i:                               ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %f_postcopy_cur_buf.1300305.i)
  %tobool167.not.i = icmp eq i8 %f_postcopy_cur_buf.1300305.i, 0
  br i1 %tobool167.not.i, label %postcopy_cur_buf.i.mwifiex_usb_aggr_tx_data.exit_crit_edge, label %postcopy_cur_buf.i.if.then168.i_crit_edge

postcopy_cur_buf.i.if.then168.i_crit_edge:        ; preds = %postcopy_cur_buf.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then168.i

postcopy_cur_buf.i.mwifiex_usb_aggr_tx_data.exit_crit_edge: ; preds = %postcopy_cur_buf.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_usb_aggr_tx_data.exit

if.then168.i:                                     ; preds = %postcopy_cur_buf.i.if.then168.i_crit_edge, %postcopy_cur_buf.thread.i
  %tx_aggr169.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5
  tail call void @skb_queue_tail(ptr noundef %tx_aggr169.i, ptr noundef %skb) #12
  %99 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len.i, align 4
  %conv172.i = and i32 %rem.i, 255
  %add173.i = add i32 %100, %conv172.i
  %aggr_len175.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 1
  %101 = ptrtoint ptr %aggr_len175.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %aggr_len175.i, align 4
  %add176.i = add i32 %add173.i, %102
  store i32 %add176.i, ptr %aggr_len175.i, align 4
  %aggr_num178.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 2
  %103 = ptrtoint ptr %aggr_num178.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %aggr_num178.i, align 4
  %inc179.i = add i32 %104, 1
  store i32 %inc179.i, ptr %aggr_num178.i, align 4
  %is_hold_timer_set182.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 3, i32 3
  %105 = ptrtoint ptr %is_hold_timer_set182.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %is_hold_timer_set182.i, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool183.not.i = icmp eq i8 %106, 0
  br i1 %tobool183.not.i, label %if.then184.i, label %if.then168.i.mwifiex_usb_aggr_tx_data.exit_crit_edge

if.then168.i.mwifiex_usb_aggr_tx_data.exit_crit_edge: ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_usb_aggr_tx_data.exit

if.then184.i:                                     ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #14
  %hold_tmo_msecs187.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 3, i32 4
  %107 = ptrtoint ptr %hold_tmo_msecs187.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %hold_tmo_msecs187.i, align 4
  %hold_timer193.i = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 5, i32 3, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %108 = load volatile i32, ptr @jiffies, align 128
  %add195.i = add i32 %108, 1
  %call196.i = tail call i32 @mod_timer(ptr noundef %hold_timer193.i, i32 noundef %add195.i) #12
  %109 = ptrtoint ptr %is_hold_timer_set182.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %is_hold_timer_set182.i, align 4
  br label %mwifiex_usb_aggr_tx_data.exit

mwifiex_usb_aggr_tx_data.exit:                    ; preds = %if.then184.i, %if.then168.i.mwifiex_usb_aggr_tx_data.exit_crit_edge, %postcopy_cur_buf.i.mwifiex_usb_aggr_tx_data.exit_crit_edge, %if.end156.i
  %retval.0.i85 = phi i32 [ %call165.i, %if.end156.i ], [ -115, %if.then168.i.mwifiex_usb_aggr_tx_data.exit_crit_edge ], [ -115, %if.then184.i ], [ -115, %postcopy_cur_buf.i.mwifiex_usb_aggr_tx_data.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb_send.i) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_aggr_lock) #12
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %tx_data_ix to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tx_data_ix, align 4
  %inc42 = add i32 %111, 1
  store i32 %inc42, ptr %tx_data_ix, align 4
  %arrayidx43 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 %idx.0103.lcssa, i32 4, i32 %111
  br label %if.end44

if.end44:                                         ; preds = %if.end40, %if.then10
  %context.0 = phi ptr [ %tx_cmd, %if.then10 ], [ %arrayidx43, %if.end40 ]
  %port.1 = phi ptr [ null, %if.then10 ], [ %arrayidx.lcssa, %if.end40 ]
  %call45 = tail call fastcc i32 @mwifiex_usb_construct_send_urb(ptr noundef %adapter, ptr noundef %port.1, i8 noundef zeroext %ep, ptr noundef %context.0, ptr noundef %skb)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %mwifiex_usb_aggr_tx_data.exit, %if.then34, %mwifiex_usb_data_sent.exit, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %call45, %if.end44 ], [ -16, %mwifiex_usb_data_sent.exit ], [ %retval.0.i85, %mwifiex_usb_aggr_tx_data.exit ], [ -1, %if.then34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pm_wakeup_card(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_wakeup_fw_try = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 105
  %0 = ptrtoint ptr %pm_wakeup_fw_try to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pm_wakeup_fw_try, align 4
  %wakeup_timer = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 106
  %call = tail call i32 @del_timer(ptr noundef %wakeup_timer) #12
  %pm_wakeup_card_req = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 102
  %1 = ptrtoint ptr %pm_wakeup_card_req to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %pm_wakeup_card_req, align 2
  %ps_state = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 90
  %2 = ptrtoint ptr %ps_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ps_state, align 4
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mwifiex_pm_wakeup_card_complete(ptr nocapture noundef readnone %adapter) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_usb_cmd_event_complete(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readnone %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card1.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1.i, align 4
  %rx_cmd.i = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 5
  %skb.i = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb.i, align 4
  %call.i = tail call ptr @skb_push(ptr noundef %3, i32 noundef 4) #12
  %rx_cmd_ep.i = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %rx_cmd_ep.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_cmd_ep.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i = icmp eq i8 %5, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.mwifiex_submit_rx_urb.exit_crit_edge

entry.mwifiex_submit_rx_urb.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_submit_rx_urb.exit

land.lhs.true.i:                                  ; preds = %entry
  %rx_cmd_urb_pending.i = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_cmd_urb_pending.i, i32 noundef 4) #12
  %6 = ptrtoint ptr %rx_cmd_urb_pending.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %rx_cmd_urb_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.mwifiex_submit_rx_urb.exit_crit_edge

land.lhs.true.i.mwifiex_submit_rx_urb.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_submit_rx_urb.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %rx_cmd.i, i32 noundef 2048) #12
  br label %mwifiex_submit_rx_urb.exit

mwifiex_submit_rx_urb.exit:                       ; preds = %if.then.i, %land.lhs.true.i.mwifiex_submit_rx_urb.exit_crit_edge, %entry.mwifiex_submit_rx_urb.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_usb_dnld_fw(ptr noundef %adapter, ptr nocapture noundef readonly %fw) #2 align 64 {
entry:
  %actual_length.i102.i = alloca i32, align 4
  %actual_length.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %usb_boot_state = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %usb_boot_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_boot_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  %fw_buf.i = getelementptr inbounds %struct.mwifiex_fw_image, ptr %fw, i32 0, i32 2
  %4 = ptrtoint ptr %fw_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw_buf.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.58) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 620) #16
  %tobool1.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i101.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 2048) #16
  %tobool5.not.i = icmp eq ptr %call7.i.i101.i, null
  br i1 %tobool5.not.i, label %if.end.critedge, label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %if.end3.i
  %data_len.i = getelementptr inbounds %struct.fw_header, ptr %call7.i.i.i, i32 0, i32 2
  %data.i = getelementptr inbounds %struct.fw_data, ptr %call7.i.i.i, i32 0, i32 2
  %seq_num.i = getelementptr inbounds %struct.fw_data, ptr %call7.i.i.i, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %do.body.preheader.i
  %retries.0.i = phi i32 [ %retries.2.ph.i, %while.end.i.do.body.i_crit_edge ], [ 4, %do.body.preheader.i ]
  %fw_seqnum.0.i = phi i32 [ %inc.i, %while.end.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %tlen.0.i = phi i32 [ %tlen.1.i, %while.end.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %dnld_cmd.0.i = phi i32 [ %dnld_cmd.1.i, %while.end.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %tobool8.not.i = phi i1 [ true, %while.end.i.do.body.i_crit_edge ], [ false, %do.body.preheader.i ]
  %check_winner.0.i = phi i8 [ 0, %while.end.i.do.body.i_crit_edge ], [ 1, %do.body.preheader.i ]
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 16)
  br label %if.end18.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr i8, ptr %5, i32 %tlen.0.i
  %9 = call ptr @memcpy(ptr %call7.i.i.i, ptr %arrayidx.i, i32 16)
  %10 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i, align 8
  %12 = call i32 @llvm.bswap.i32(i32 %11) #12
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call7.i.i.i, align 8
  %15 = call i32 @llvm.bswap.i32(i32 %14) #12
  %add.i = add i32 %tlen.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %14)
  %cmp.i = icmp eq i32 %14, 117440512
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %12
  %arrayidx16.i = getelementptr i8, ptr %5, i32 %add.i
  %16 = call ptr @memcpy(ptr %data.i, ptr %arrayidx16.i, i32 %spec.select.i)
  %17 = call i32 @llvm.bswap.i32(i32 %fw_seqnum.0.i) #12
  %18 = ptrtoint ptr %seq_num.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %seq_num.i, align 8
  %add17.i = add i32 %spec.select.i, %add.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then9.i
  %dlen.1.i = phi i32 [ 0, %if.then9.i ], [ %spec.select.i, %if.else.i ]
  %tlen.1.i = phi i32 [ %tlen.0.i, %if.then9.i ], [ %add17.i, %if.else.i ]
  %dnld_cmd.1.i = phi i32 [ %dnld_cmd.0.i, %if.then9.i ], [ %15, %if.else.i ]
  %dec142.i = add i32 %retries.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec142.i)
  %tobool19.not143.i = icmp eq i32 %dec142.i, 0
  br i1 %tobool19.not143.i, label %if.end.critedge44, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end18.i
  %add21.i = add i32 %dlen.1.i, 20
  %inc.i.i = add i32 %dlen.1.i, 21
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec145.i = phi i32 [ %dec142.i, %while.body.lr.ph.i ], [ %dec.i, %cleanup.i.while.body.i_crit_edge ]
  %check_winner.1144.i = phi i8 [ %check_winner.0.i, %while.body.lr.ph.i ], [ %check_winner.2.i, %cleanup.i.while.body.i_crit_edge ]
  %19 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i) #12
  %21 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %actual_length.i.i, align 4, !annotation !208
  %bulk_out_maxpktsize.i.i = getelementptr inbounds %struct.usb_card_rec, ptr %20, i32 0, i32 13
  %22 = ptrtoint ptr %bulk_out_maxpktsize.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bulk_out_maxpktsize.i.i, align 4
  %rem.i.i = urem i32 %add21.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  %spec.select132.i = select i1 %tobool.not.i.i, i32 %inc.i.i, i32 %add21.i
  %udev.i.i = getelementptr inbounds %struct.usb_card_rec, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i.i = shl i32 %27, 8
  %or.i.i = or i32 %shl.i.i.i, -1073709056
  %call3.i.i = call i32 @usb_bulk_msg(ptr noundef %25, i32 noundef %or.i.i, ptr noundef nonnull %call7.i.i.i, i32 noundef %spec.select132.i, ptr noundef nonnull %actual_length.i.i, i32 noundef 100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end25.i, label %if.then24.i

if.then24.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.65, i32 noundef %call3.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i) #12
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.59, i32 noundef %call3.i.i) #12
  br label %cleanup.i

if.end25.i:                                       ; preds = %while.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i) #12
  %28 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i102.i) #12
  %30 = ptrtoint ptr %actual_length.i102.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %actual_length.i102.i, align 4, !annotation !208
  %udev.i104.i = getelementptr inbounds %struct.usb_card_rec, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %udev.i104.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %udev.i104.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i.i105.i = shl i32 %34, 8
  %or3.i.i = or i32 %shl.i.i105.i, -1073708928
  %call4.i.i = call i32 @usb_bulk_msg(ptr noundef %32, i32 noundef %or3.i.i, ptr noundef nonnull %call7.i.i101.i, i32 noundef 2048, ptr noundef nonnull %actual_length.i102.i, i32 noundef 100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i106.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i106.i, label %if.end29.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.66, i32 noundef %call4.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i102.i) #12
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.60, i32 noundef %call4.i.i) #12
  br label %cleanup.i

if.end29.i:                                       ; preds = %if.end25.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i102.i) #12
  %35 = ptrtoint ptr %call7.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %sync_fw.sroa.0.0.copyload.i = load i32, ptr %call7.i.i101.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %check_winner.1144.i)
  %tobool30.not.i = icmp eq i8 %check_winner.1144.i, 0
  br i1 %tobool30.not.i, label %if.end36.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end29.i
  %.mask.i = and i32 %sync_fw.sroa.0.0.copyload.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool32.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool32.not.i, label %if.end35.i, label %cleanup.thread115.i

cleanup.thread115.i:                              ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 536870912, ptr noundef nonnull @.str.61, i32 noundef %sync_fw.sroa.0.0.copyload.i) #12
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.64, i32 noundef %tlen.1.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i101.i) #12
  br label %if.end

if.end35.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.62) #12
  br label %while.end.i

if.end36.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync_fw.sroa.0.0.copyload.i)
  %tobool38.not.i = icmp eq i32 %sync_fw.sroa.0.0.copyload.i, 0
  br i1 %tobool38.not.i, label %if.end36.i.while.end.i_crit_edge, label %if.then39.i

if.end36.i.while.end.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.63, i32 noundef %sync_fw.sroa.0.0.copyload.i) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then39.i, %if.then28.i, %if.then24.i
  %check_winner.2.i = phi i8 [ %check_winner.1144.i, %if.then24.i ], [ %check_winner.1144.i, %if.then28.i ], [ 0, %if.then39.i ]
  %dec.i = add i32 %dec145.i, -1
  %tobool19.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool19.not.i, label %cleanup.critedge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %if.end36.i.while.end.i_crit_edge, %if.end35.i
  %retries.2.ph.i = phi i32 [ %dec145.i, %if.end35.i ], [ 4, %if.end36.i.while.end.i_crit_edge ]
  %cmp43.not.i = icmp eq i32 %dnld_cmd.1.i, 4
  %inc.i = add i32 %fw_seqnum.0.i, 1
  br i1 %cmp43.not.i, label %mwifiex_prog_fw_w_helper.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

mwifiex_prog_fw_w_helper.exit:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.64, i32 noundef %tlen.1.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i101.i) #12
  br label %if.end

if.end.critedge:                                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.64, i32 noundef 0) #12
  call void @kfree(ptr noundef null) #12
  br label %if.end

if.end.critedge44:                                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.64, i32 noundef %tlen.1.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i101.i) #12
  br label %if.end

if.end:                                           ; preds = %if.end.critedge44, %if.end.critedge, %mwifiex_prog_fw_w_helper.exit, %cleanup.thread115.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  %36 = ptrtoint ptr %usb_boot_state to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %usb_boot_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp6 = icmp eq i8 %37, 1
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %38 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card1, align 4
  %rx_cmd.i = getelementptr inbounds %struct.usb_card_rec, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %rx_cmd.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %adapter, ptr %rx_cmd.i, align 4
  %rx_cmd_ep.i = getelementptr inbounds %struct.usb_card_rec, ptr %39, i32 0, i32 4
  %41 = ptrtoint ptr %rx_cmd_ep.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rx_cmd_ep.i, align 4
  %ep.i = getelementptr inbounds %struct.usb_card_rec, ptr %39, i32 0, i32 5, i32 3
  %43 = ptrtoint ptr %ep.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %ep.i, align 4
  %call.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb.i = getelementptr inbounds %struct.usb_card_rec, ptr %39, i32 0, i32 5, i32 2
  %44 = ptrtoint ptr %urb.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %urb.i, align 4
  %tobool.not.i23 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i23, label %if.end10.cleanup_crit_edge, label %if.end.i24

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i24:                                       ; preds = %if.end10
  %call.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2048, i32 noundef 2592) #12
  %skb.i = getelementptr inbounds %struct.usb_card_rec, ptr %39, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i.i.i, ptr %skb.i, align 4
  %tobool11.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool11.not.i, label %if.end.i24.cleanup_crit_edge, label %if.end13.i

if.end.i24.cleanup_crit_edge:                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i24
  %call15.i = call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %rx_cmd.i, i32 noundef 2048) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %for.cond.preheader.i, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end13.i
  %rx_data_ep.i = getelementptr inbounds %struct.usb_card_rec, ptr %39, i32 0, i32 9
  %arrayidx.i25 = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 0
  %46 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %adapter, ptr %arrayidx.i25, align 4
  %47 = ptrtoint ptr %rx_data_ep.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rx_data_ep.i, align 1
  %ep22.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 0, i32 3
  %49 = ptrtoint ptr %ep22.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %ep22.i, align 4
  %call23.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb26.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 0, i32 2
  %50 = ptrtoint ptr %urb26.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call23.i, ptr %urb26.i, align 4
  %tobool30.not.i26 = icmp eq ptr %call23.i, null
  br i1 %tobool30.not.i26, label %for.cond.preheader.i.cleanup_crit_edge, label %if.end32.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.i:                                       ; preds = %if.end32.i
  %arrayidx.1.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %adapter, ptr %arrayidx.1.i, align 4
  %52 = ptrtoint ptr %rx_data_ep.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rx_data_ep.i, align 1
  %ep22.1.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 1, i32 3
  %54 = ptrtoint ptr %ep22.1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %ep22.1.i, align 4
  %call23.1.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb26.1.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 1, i32 2
  %55 = ptrtoint ptr %urb26.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call23.1.i, ptr %urb26.1.i, align 4
  %tobool30.not.1.i = icmp eq ptr %call23.1.i, null
  br i1 %tobool30.not.1.i, label %for.cond.i.cleanup_crit_edge, label %if.end32.1.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32.1.i:                                     ; preds = %for.cond.i
  %call35.1.i = call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.1.i, i32 noundef 4096) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.1.i)
  %tobool36.not.1.i = icmp eq i32 %call35.1.i, 0
  br i1 %tobool36.not.1.i, label %for.cond.1.i, label %if.end32.1.i.cleanup_crit_edge

if.end32.1.i.cleanup_crit_edge:                   ; preds = %if.end32.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.1.i:                                     ; preds = %if.end32.1.i
  %arrayidx.2.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 2
  %56 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %adapter, ptr %arrayidx.2.i, align 4
  %57 = ptrtoint ptr %rx_data_ep.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %rx_data_ep.i, align 1
  %ep22.2.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 2, i32 3
  %59 = ptrtoint ptr %ep22.2.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %ep22.2.i, align 4
  %call23.2.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb26.2.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 2, i32 2
  %60 = ptrtoint ptr %urb26.2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call23.2.i, ptr %urb26.2.i, align 4
  %tobool30.not.2.i = icmp eq ptr %call23.2.i, null
  br i1 %tobool30.not.2.i, label %for.cond.1.i.cleanup_crit_edge, label %if.end32.2.i

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32.2.i:                                     ; preds = %for.cond.1.i
  %call35.2.i = call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.2.i, i32 noundef 4096) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.2.i)
  %tobool36.not.2.i = icmp eq i32 %call35.2.i, 0
  br i1 %tobool36.not.2.i, label %for.cond.2.i, label %if.end32.2.i.cleanup_crit_edge

if.end32.2.i.cleanup_crit_edge:                   ; preds = %if.end32.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.2.i:                                     ; preds = %if.end32.2.i
  %arrayidx.3.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 3
  %61 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %adapter, ptr %arrayidx.3.i, align 4
  %62 = ptrtoint ptr %rx_data_ep.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %rx_data_ep.i, align 1
  %ep22.3.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 3, i32 3
  %64 = ptrtoint ptr %ep22.3.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %ep22.3.i, align 4
  %call23.3.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb26.3.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 3, i32 2
  %65 = ptrtoint ptr %urb26.3.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call23.3.i, ptr %urb26.3.i, align 4
  %tobool30.not.3.i = icmp eq ptr %call23.3.i, null
  br i1 %tobool30.not.3.i, label %for.cond.2.i.cleanup_crit_edge, label %if.end32.3.i

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32.3.i:                                     ; preds = %for.cond.2.i
  %call35.3.i = call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.3.i, i32 noundef 4096) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.3.i)
  %tobool36.not.3.i = icmp eq i32 %call35.3.i, 0
  br i1 %tobool36.not.3.i, label %for.cond.3.i, label %if.end32.3.i.cleanup_crit_edge

if.end32.3.i.cleanup_crit_edge:                   ; preds = %if.end32.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.3.i:                                     ; preds = %if.end32.3.i
  %arrayidx.4.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 4
  %66 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %adapter, ptr %arrayidx.4.i, align 4
  %67 = ptrtoint ptr %rx_data_ep.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rx_data_ep.i, align 1
  %ep22.4.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 4, i32 3
  %69 = ptrtoint ptr %ep22.4.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %ep22.4.i, align 4
  %call23.4.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb26.4.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 4, i32 2
  %70 = ptrtoint ptr %urb26.4.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call23.4.i, ptr %urb26.4.i, align 4
  %tobool30.not.4.i = icmp eq ptr %call23.4.i, null
  br i1 %tobool30.not.4.i, label %for.cond.3.i.cleanup_crit_edge, label %if.end32.4.i

for.cond.3.i.cleanup_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32.4.i:                                     ; preds = %for.cond.3.i
  %call35.4.i = call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.4.i, i32 noundef 4096) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.4.i)
  %tobool36.not.4.i = icmp eq i32 %call35.4.i, 0
  br i1 %tobool36.not.4.i, label %for.cond.4.i, label %if.end32.4.i.cleanup_crit_edge

if.end32.4.i.cleanup_crit_edge:                   ; preds = %if.end32.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.4.i:                                     ; preds = %if.end32.4.i
  %arrayidx.5.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 5
  %71 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %adapter, ptr %arrayidx.5.i, align 4
  %72 = ptrtoint ptr %rx_data_ep.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rx_data_ep.i, align 1
  %ep22.5.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 5, i32 3
  %74 = ptrtoint ptr %ep22.5.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %ep22.5.i, align 4
  %call23.5.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb26.5.i = getelementptr %struct.usb_card_rec, ptr %39, i32 0, i32 7, i32 5, i32 2
  %75 = ptrtoint ptr %urb26.5.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call23.5.i, ptr %urb26.5.i, align 4
  %tobool30.not.5.i = icmp eq ptr %call23.5.i, null
  br i1 %tobool30.not.5.i, label %for.cond.4.i.cleanup_crit_edge, label %mwifiex_usb_rx_init.exit

for.cond.4.i.cleanup_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32.i:                                       ; preds = %for.cond.preheader.i
  %call35.i = call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.i25, i32 noundef 4096) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %for.cond.i, label %if.end32.i.cleanup_crit_edge

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mwifiex_usb_rx_init.exit:                         ; preds = %for.cond.4.i
  %call35.5.i = call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.5.i, i32 noundef 4096) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.5.i)
  %tobool36.not.5.i.not = icmp eq i32 %call35.5.i, 0
  br i1 %tobool36.not.5.i.not, label %if.then13, label %mwifiex_usb_rx_init.exit.cleanup_crit_edge

mwifiex_usb_rx_init.exit.cleanup_crit_edge:       ; preds = %mwifiex_usb_rx_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %mwifiex_usb_rx_init.exit
  %76 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %card1, align 4
  %tx_cmd.i = getelementptr inbounds %struct.usb_card_rec, ptr %77, i32 0, i32 14
  %78 = ptrtoint ptr %tx_cmd.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %adapter, ptr %tx_cmd.i, align 4
  %tx_cmd_ep.i = getelementptr inbounds %struct.usb_card_rec, ptr %77, i32 0, i32 11
  %79 = ptrtoint ptr %tx_cmd_ep.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %tx_cmd_ep.i, align 4
  %ep.i31 = getelementptr inbounds %struct.usb_card_rec, ptr %77, i32 0, i32 14, i32 3
  %81 = ptrtoint ptr %ep.i31 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %ep.i31, align 4
  %call.i32 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb.i33 = getelementptr inbounds %struct.usb_card_rec, ptr %77, i32 0, i32 14, i32 2
  %82 = ptrtoint ptr %urb.i33 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i32, ptr %urb.i33, align 4
  %tobool.not.i34 = icmp eq ptr %call.i32, null
  br i1 %tobool.not.i34, label %if.then13.cleanup_crit_edge, label %if.then13.for.body.i_crit_edge

if.then13.for.body.i_crit_edge:                   ; preds = %if.then13
  br label %for.body.i

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.inc48.i.for.body.i_crit_edge, %if.then13.for.body.i_crit_edge
  %i.087.i = phi i32 [ %inc49.i, %for.inc48.i.for.body.i_crit_edge ], [ 0, %if.then13.for.body.i_crit_edge ]
  %arrayidx.i35 = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i
  %83 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool8.not.i36 = icmp eq i8 %84, 0
  br i1 %tobool8.not.i36, label %for.body.i.for.inc48.i_crit_edge, label %if.end10.i

for.body.i.for.inc48.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc48.i

if.end10.i:                                       ; preds = %for.body.i
  %tx_data_ix.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 3
  %85 = ptrtoint ptr %tx_data_ix.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %tx_data_ix.i, align 4
  %tx_aggr.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 5
  %lock.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %tx_aggr.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %86 = ptrtoint ptr %tx_aggr.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %tx_aggr.i, ptr %tx_aggr.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon.79, ptr %tx_aggr.i, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %tx_aggr.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %tx_aggr.i, i32 0, i32 1
  %88 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %qlen.i.i.i, align 4
  %89 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %90)
  %cmp12.i = icmp ne i8 %90, 2
  %spec.select.i37 = zext i1 %cmp12.i to i8
  %91 = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %spec.select.i37, ptr %91, align 1
  %arrayidx21.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 0
  %93 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %adapter, ptr %arrayidx21.i, align 4
  %ep26.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 0, i32 3
  %94 = ptrtoint ptr %ep26.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %90, ptr %ep26.i, align 4
  %call27.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb30.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 0, i32 2
  %95 = ptrtoint ptr %urb30.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call27.i, ptr %urb30.i, align 4
  %tobool34.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool34.not.i, label %if.end10.i.cleanup_crit_edge, label %for.cond17.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond17.i:                                     ; preds = %if.end10.i
  %arrayidx21.1.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 1
  %96 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %adapter, ptr %arrayidx21.1.i, align 4
  %97 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.i35, align 4
  %ep26.1.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 1, i32 3
  %99 = ptrtoint ptr %ep26.1.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %ep26.1.i, align 4
  %call27.1.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb30.1.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 1, i32 2
  %100 = ptrtoint ptr %urb30.1.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call27.1.i, ptr %urb30.1.i, align 4
  %tobool34.not.1.i = icmp eq ptr %call27.1.i, null
  br i1 %tobool34.not.1.i, label %for.cond17.i.cleanup_crit_edge, label %for.cond17.1.i

for.cond17.i.cleanup_crit_edge:                   ; preds = %for.cond17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond17.1.i:                                   ; preds = %for.cond17.i
  %arrayidx21.2.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 2
  %101 = ptrtoint ptr %arrayidx21.2.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %adapter, ptr %arrayidx21.2.i, align 4
  %102 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i35, align 4
  %ep26.2.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 2, i32 3
  %104 = ptrtoint ptr %ep26.2.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %ep26.2.i, align 4
  %call27.2.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb30.2.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 2, i32 2
  %105 = ptrtoint ptr %urb30.2.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call27.2.i, ptr %urb30.2.i, align 4
  %tobool34.not.2.i = icmp eq ptr %call27.2.i, null
  br i1 %tobool34.not.2.i, label %for.cond17.1.i.cleanup_crit_edge, label %for.cond17.2.i

for.cond17.1.i.cleanup_crit_edge:                 ; preds = %for.cond17.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond17.2.i:                                   ; preds = %for.cond17.1.i
  %arrayidx21.3.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 3
  %106 = ptrtoint ptr %arrayidx21.3.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %adapter, ptr %arrayidx21.3.i, align 4
  %107 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.i35, align 4
  %ep26.3.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 3, i32 3
  %109 = ptrtoint ptr %ep26.3.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %ep26.3.i, align 4
  %call27.3.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb30.3.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 3, i32 2
  %110 = ptrtoint ptr %urb30.3.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call27.3.i, ptr %urb30.3.i, align 4
  %tobool34.not.3.i = icmp eq ptr %call27.3.i, null
  br i1 %tobool34.not.3.i, label %for.cond17.2.i.cleanup_crit_edge, label %for.cond17.3.i

for.cond17.2.i.cleanup_crit_edge:                 ; preds = %for.cond17.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond17.3.i:                                   ; preds = %for.cond17.2.i
  %arrayidx21.4.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 4
  %111 = ptrtoint ptr %arrayidx21.4.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %adapter, ptr %arrayidx21.4.i, align 4
  %112 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i35, align 4
  %ep26.4.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 4, i32 3
  %114 = ptrtoint ptr %ep26.4.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %ep26.4.i, align 4
  %call27.4.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb30.4.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 4, i32 2
  %115 = ptrtoint ptr %urb30.4.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call27.4.i, ptr %urb30.4.i, align 4
  %tobool34.not.4.i = icmp eq ptr %call27.4.i, null
  br i1 %tobool34.not.4.i, label %for.cond17.3.i.cleanup_crit_edge, label %for.cond17.4.i

for.cond17.3.i.cleanup_crit_edge:                 ; preds = %for.cond17.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond17.4.i:                                   ; preds = %for.cond17.3.i
  %arrayidx21.5.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 5
  %116 = ptrtoint ptr %arrayidx21.5.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %adapter, ptr %arrayidx21.5.i, align 4
  %117 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i35, align 4
  %ep26.5.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 5, i32 3
  %119 = ptrtoint ptr %ep26.5.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %ep26.5.i, align 4
  %call27.5.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb30.5.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 4, i32 5, i32 2
  %120 = ptrtoint ptr %urb30.5.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call27.5.i, ptr %urb30.5.i, align 4
  %tobool34.not.5.i = icmp eq ptr %call27.5.i, null
  br i1 %tobool34.not.5.i, label %for.cond17.4.i.cleanup_crit_edge, label %for.cond17.5.i

for.cond17.4.i.cleanup_crit_edge:                 ; preds = %for.cond17.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond17.5.i:                                   ; preds = %for.cond17.4.i
  call void @__sanitizer_cov_trace_pc() #14
  %timer_cnxt.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 5, i32 3
  %121 = ptrtoint ptr %timer_cnxt.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %adapter, ptr %timer_cnxt.i, align 4
  %port41.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 5, i32 3, i32 1
  %122 = ptrtoint ptr %port41.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %arrayidx.i35, ptr %port41.i, align 4
  %is_hold_timer_set.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 5, i32 3, i32 3
  %123 = ptrtoint ptr %is_hold_timer_set.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %is_hold_timer_set.i, align 4
  %hold_tmo_msecs.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 5, i32 3, i32 4
  %124 = ptrtoint ptr %hold_tmo_msecs.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %hold_tmo_msecs.i, align 4
  %hold_timer.i = getelementptr %struct.usb_card_rec, ptr %77, i32 0, i32 16, i32 %i.087.i, i32 5, i32 3, i32 2
  call void @init_timer_key(ptr noundef %hold_timer.i, ptr noundef nonnull @mwifiex_usb_tx_aggr_tmo, i32 noundef 0, ptr noundef nonnull @.str.67, ptr noundef nonnull @mwifiex_usb_tx_init.__key) #12
  br label %for.inc48.i

for.inc48.i:                                      ; preds = %for.cond17.5.i, %for.body.i.for.inc48.i_crit_edge
  %inc49.i = add nuw nsw i32 %i.087.i, 1
  %exitcond.not.i = icmp eq i32 %inc49.i, 2
  br i1 %exitcond.not.i, label %for.inc48.i.cleanup_crit_edge, label %for.inc48.i.for.body.i_crit_edge

for.inc48.i.for.body.i_crit_edge:                 ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc48.i.cleanup_crit_edge:                    ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.critedge:                                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.64, i32 noundef %tlen.1.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i101.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %for.inc48.i.cleanup_crit_edge, %for.cond17.4.i.cleanup_crit_edge, %for.cond17.3.i.cleanup_crit_edge, %for.cond17.2.i.cleanup_crit_edge, %for.cond17.1.i.cleanup_crit_edge, %for.cond17.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %mwifiex_usb_rx_init.exit.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge, %for.cond.4.i.cleanup_crit_edge, %if.end32.4.i.cleanup_crit_edge, %for.cond.3.i.cleanup_crit_edge, %if.end32.3.i.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %if.end32.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %if.end32.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.end.i24.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i
  %retval.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ -1, %mwifiex_usb_rx_init.exit.cleanup_crit_edge ], [ -12, %if.then13.cleanup_crit_edge ], [ -1, %if.then.i ], [ -1, %if.end.i.cleanup_crit_edge ], [ -1, %for.cond.4.i.cleanup_crit_edge ], [ -1, %if.end32.4.i.cleanup_crit_edge ], [ -1, %for.cond.3.i.cleanup_crit_edge ], [ -1, %if.end32.3.i.cleanup_crit_edge ], [ -1, %for.cond.2.i.cleanup_crit_edge ], [ -1, %if.end32.2.i.cleanup_crit_edge ], [ -1, %for.cond.1.i.cleanup_crit_edge ], [ -1, %if.end32.1.i.cleanup_crit_edge ], [ -1, %for.cond.i.cleanup_crit_edge ], [ -1, %if.end32.i.cleanup_crit_edge ], [ -1, %for.cond.preheader.i.cleanup_crit_edge ], [ -1, %if.end13.i.cleanup_crit_edge ], [ -12, %if.end.i24.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -1, %cleanup.critedge ], [ -12, %for.cond17.4.i.cleanup_crit_edge ], [ -12, %for.cond17.3.i.cleanup_crit_edge ], [ -12, %for.cond17.2.i.cleanup_crit_edge ], [ -12, %for.cond17.1.i.cleanup_crit_edge ], [ -12, %for.cond17.i.cleanup_crit_edge ], [ -12, %if.end10.i.cleanup_crit_edge ], [ 0, %for.inc48.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_usb_submit_rem_rx_urbs(ptr nocapture noundef readonly %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %skb = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 0, i32 1
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 0
  %call = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx, i32 noundef 4096)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %skb.1 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 1, i32 1
  %4 = ptrtoint ptr %skb.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.1 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 1
  %call.1 = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.1, i32 noundef 4096)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %skb.2 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 2, i32 1
  %6 = ptrtoint ptr %skb.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %if.end.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.2 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 2
  %call.2 = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.2, i32 noundef 4096)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %skb.3 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 3, i32 1
  %8 = ptrtoint ptr %skb.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb.3, align 4
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %if.end.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.3 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 3
  %call.3 = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.3, i32 noundef 4096)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %skb.4 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 4, i32 1
  %10 = ptrtoint ptr %skb.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb.4, align 4
  %tobool.not.4 = icmp eq ptr %11, null
  br i1 %tobool.not.4, label %if.end.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.4 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 4
  %call.4 = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.4, i32 noundef 4096)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %skb.5 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 5, i32 1
  %12 = ptrtoint ptr %skb.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb.5, align 4
  %tobool.not.5 = icmp eq ptr %13, null
  br i1 %tobool.not.5, label %if.end.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.5 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 7, i32 5
  %call.5 = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %arrayidx.5, i32 noundef 4096)
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4.for.inc.5_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_usb_port_resync(ptr nocapture noundef readonly %adapter) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %usb_mc_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 160
  %2 = ptrtoint ptr %usb_mc_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_mc_status, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %priv_num27 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %4 = ptrtoint ptr %priv_num27 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv_num27, align 4
  br i1 %tobool.not, label %for.cond26.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp146.not = icmp eq i8 %5, 0
  br i1 %cmp146.not, label %for.cond.preheader.for.cond18.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond18.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond18.preheader

for.cond26.preheader:                             ; preds = %entry
  %conv28 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp29150.not = icmp eq i8 %5, 0
  br i1 %cmp29150.not, label %for.cond26.preheader.for.cond75.preheader_crit_edge, label %for.cond26.preheader.for.body31_crit_edge

for.cond26.preheader.for.body31_crit_edge:        ; preds = %for.cond26.preheader
  br label %for.body31

for.cond26.preheader.for.cond75.preheader_crit_edge: ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond75.preheader

for.cond18.preheader:                             ; preds = %for.inc.for.cond18.preheader_crit_edge, %for.cond.preheader.for.cond18.preheader_crit_edge
  %block_status = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0, i32 1
  %6 = ptrtoint ptr %block_status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %block_status, align 1
  br label %if.end97

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0147 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.0147
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bss_role, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %10, label %if.end.for.inc_crit_edge [
    i8 1, label %land.lhs.true
    i8 0, label %land.lhs.true14
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %bss_started = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 5
  %12 = ptrtoint ptr %bss_started to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bss_started, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %land.lhs.true.if.then16_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

land.lhs.true14:                                  ; preds = %if.end
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 8
  %14 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not = icmp eq i8 %15, 0
  br i1 %tobool15.not, label %land.lhs.true14.if.then16_crit_edge, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true14.if.then16_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %land.lhs.true14.if.then16_crit_edge, %land.lhs.true.if.then16_crit_edge
  %usb_port = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 10
  %16 = ptrtoint ptr %usb_port to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %usb_port, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %land.lhs.true14.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0147, 1
  %17 = ptrtoint ptr %priv_num27 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %priv_num27, align 4
  %conv = zext i8 %18 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond18.preheader_crit_edge

for.inc.for.cond18.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond18.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body31:                                       ; preds = %for.inc57.for.body31_crit_edge, %for.cond26.preheader.for.body31_crit_edge
  %i.2151 = phi i32 [ %inc58, %for.inc57.for.body31_crit_edge ], [ 0, %for.cond26.preheader.for.body31_crit_edge ]
  %arrayidx33 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.2151
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx33, align 4
  %tobool34.not = icmp eq ptr %20, null
  br i1 %tobool34.not, label %for.body31.for.inc57_crit_edge, label %if.end36

for.body31.for.inc57_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc57

if.end36:                                         ; preds = %for.body31
  %bss_role37 = getelementptr inbounds %struct.mwifiex_private, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %bss_role37 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bss_role37, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %22, label %if.end36.for.inc57_crit_edge [
    i8 1, label %land.lhs.true41
    i8 0, label %land.lhs.true50
  ]

if.end36.for.inc57_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc57

land.lhs.true41:                                  ; preds = %if.end36
  %bss_started42 = getelementptr inbounds %struct.mwifiex_private, ptr %20, i32 0, i32 5
  %24 = ptrtoint ptr %bss_started42 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bss_started42, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool44.not = icmp eq i8 %25, 0
  br i1 %tobool44.not, label %land.lhs.true41.for.inc57_crit_edge, label %land.lhs.true41.if.then54_crit_edge

land.lhs.true41.if.then54_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

land.lhs.true41.for.inc57_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc57

land.lhs.true50:                                  ; preds = %if.end36
  %media_connected51 = getelementptr inbounds %struct.mwifiex_private, ptr %20, i32 0, i32 8
  %26 = ptrtoint ptr %media_connected51 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %media_connected51, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool53.not = icmp eq i8 %27, 0
  br i1 %tobool53.not, label %land.lhs.true50.for.inc57_crit_edge, label %land.lhs.true50.if.then54_crit_edge

land.lhs.true50.if.then54_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

land.lhs.true50.for.inc57_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc57

if.then54:                                        ; preds = %land.lhs.true50.if.then54_crit_edge, %land.lhs.true41.if.then54_crit_edge
  %usb_port55 = getelementptr inbounds %struct.mwifiex_private, ptr %20, i32 0, i32 10
  %28 = ptrtoint ptr %usb_port55 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %usb_port55, align 2
  br label %for.end59

for.inc57:                                        ; preds = %land.lhs.true50.for.inc57_crit_edge, %land.lhs.true41.for.inc57_crit_edge, %if.end36.for.inc57_crit_edge, %for.body31.for.inc57_crit_edge
  %inc58 = add nuw nsw i32 %i.2151, 1
  %exitcond.not = icmp eq i32 %inc58, %conv28
  br i1 %exitcond.not, label %for.inc57.for.end59_crit_edge, label %for.inc57.for.body31_crit_edge

for.inc57.for.body31_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body31

for.inc57.for.end59_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end59

for.end59:                                        ; preds = %for.inc57.for.end59_crit_edge, %if.then54
  %active_port.0.ph = phi i8 [ %29, %if.then54 ], [ 2, %for.inc57.for.end59_crit_edge ]
  %30 = ptrtoint ptr %priv_num27 to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr = load i8, ptr %priv_num27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp63153.not = icmp eq i8 %.pr, 0
  br i1 %cmp63153.not, label %for.end59.for.cond75.preheader_crit_edge, label %for.end59.for.body65_crit_edge

for.end59.for.body65_crit_edge:                   ; preds = %for.end59
  br label %for.body65

for.end59.for.cond75.preheader_crit_edge:         ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond75.preheader

for.cond75.preheader:                             ; preds = %for.inc72.for.cond75.preheader_crit_edge, %for.end59.for.cond75.preheader_crit_edge, %for.cond26.preheader.for.cond75.preheader_crit_edge
  %active_port.0162 = phi i8 [ %active_port.0.ph, %for.end59.for.cond75.preheader_crit_edge ], [ 2, %for.cond26.preheader.for.cond75.preheader_crit_edge ], [ %active_port.0.ph, %for.inc72.for.cond75.preheader_crit_edge ]
  %arrayidx81 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0
  %31 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx81, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %active_port.0162, i8 %32)
  %cmp83 = icmp ne i8 %active_port.0162, %32
  %spec.select = zext i1 %cmp83 to i8
  %33 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %spec.select, ptr %33, align 1
  %arrayidx81.1 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1
  %35 = ptrtoint ptr %arrayidx81.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx81.1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %active_port.0162, i8 %36)
  %cmp83.1 = icmp ne i8 %active_port.0162, %36
  %.sink159 = zext i1 %cmp83.1 to i8
  br label %if.end97

for.body65:                                       ; preds = %for.inc72.for.body65_crit_edge, %for.end59.for.body65_crit_edge
  %i.3154 = phi i32 [ %inc73, %for.inc72.for.body65_crit_edge ], [ 0, %for.end59.for.body65_crit_edge ]
  %arrayidx67 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.3154
  %37 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %38, null
  br i1 %tobool68.not, label %for.body65.for.inc72_crit_edge, label %if.then69

for.body65.for.inc72_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72

if.then69:                                        ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #14
  %usb_port70 = getelementptr inbounds %struct.mwifiex_private, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %usb_port70 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %active_port.0.ph, ptr %usb_port70, align 2
  br label %for.inc72

for.inc72:                                        ; preds = %if.then69, %for.body65.for.inc72_crit_edge
  %inc73 = add nuw nsw i32 %i.3154, 1
  %40 = ptrtoint ptr %priv_num27 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %priv_num27, align 4
  %conv62 = zext i8 %41 to i32
  %cmp63 = icmp ult i32 %inc73, %conv62
  br i1 %cmp63, label %for.inc72.for.body65_crit_edge, label %for.inc72.for.cond75.preheader_crit_edge

for.inc72.for.cond75.preheader_crit_edge:         ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond75.preheader

for.inc72.for.body65_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body65

if.end97:                                         ; preds = %for.cond75.preheader, %for.cond18.preheader
  %.sink = phi i8 [ 0, %for.cond18.preheader ], [ %.sink159, %for.cond75.preheader ]
  %block_status.1 = getelementptr %struct.usb_card_rec, ptr %1, i32 0, i32 16, i32 1, i32 1
  %42 = ptrtoint ptr %block_status.1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %.sink, ptr %block_status.1, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mwifiex_usb_is_port_ready(ptr nocapture noundef readonly %priv) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %usb_port = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 10
  %4 = ptrtoint ptr %usb_port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %usb_port, align 2
  %arrayidx = getelementptr %struct.usb_card_rec, ptr %3, i32 0, i32 16, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp3 = icmp eq i8 %5, %7
  br i1 %cmp3, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %idx.014.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ]
  %block_status = getelementptr %struct.usb_card_rec, ptr %3, i32 0, i32 16, i32 %idx.014.lcssa, i32 1
  %8 = ptrtoint ptr %block_status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %block_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.usb_card_rec, ptr %3, i32 0, i32 16, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %11)
  %cmp3.1 = icmp eq i8 %5, %11
  br i1 %cmp3.1, label %for.inc.if.then_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ %tobool.not, %if.then ], [ false, %for.inc.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_write_data_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_usb_construct_send_urb(ptr noundef %adapter, ptr noundef %port, i8 noundef zeroext %ep, ptr noundef %context, ptr noundef %skb_send) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %adapter, ptr %context, align 4
  %ep3 = getelementptr inbounds %struct.urb_context, ptr %context, i32 0, i32 3
  %3 = ptrtoint ptr %ep3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %ep, ptr %ep3, align 4
  %skb = getelementptr inbounds %struct.urb_context, ptr %context, i32 0, i32 1
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb_send, ptr %skb, align 4
  %urb = getelementptr inbounds %struct.urb_context, ptr %context, i32 0, i32 2
  %5 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb, align 4
  %conv = zext i8 %ep to i32
  %tx_cmd_ep = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %tx_cmd_ep to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_cmd_ep, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %ep)
  %cmp = icmp eq i8 %8, %ep
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %tx_cmd_ep_type = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %tx_cmd_ep_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_cmd_ep_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp6 = icmp eq i32 %10, 3
  br i1 %cmp6, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %udev = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i = shl i32 %14, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, 1073741824
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb_send, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb_send, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %tx_cmd_interval = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 20
  %19 = ptrtoint ptr %tx_cmd_interval to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx_cmd_interval, align 4
  %conv10 = zext i8 %20 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 8
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %12, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 10
  %22 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 14
  %23 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %16, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 19
  %24 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %18, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 28
  %25 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mwifiex_usb_tx_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 27
  %26 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %context, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 4
  %27 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp.i = icmp eq i32 %28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp6.i = icmp ugt i32 %28, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.then.usb_fill_int_urb.exit_crit_edge

if.then.usb_fill_int_urb.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %29 = tail call i32 @llvm.smax.i32(i32 %conv10, i32 1) #12
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 16) #12
  %sub.i = add nsw i32 %30, -1
  %shl.i106 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.then.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i106, %if.then.i ], [ %conv10, %if.then.usb_fill_int_urb.exit_crit_edge ]
  %31 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 25
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %interval.sink.i, ptr %31, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 23
  %33 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %udev11 = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %udev11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %udev11, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i107 = shl i32 %37, 8
  %shl1.i108 = shl nuw nsw i32 %conv, 15
  %or.i109 = or i32 %shl1.i108, %shl.i107
  %or15 = or i32 %or.i109, -1073741824
  %data16 = getelementptr inbounds %struct.sk_buff, ptr %skb_send, i32 0, i32 19
  %38 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data16, align 4
  %len17 = getelementptr inbounds %struct.sk_buff, ptr %skb_send, i32 0, i32 6
  %40 = ptrtoint ptr %len17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len17, align 4
  %dev1.i110 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 8
  %42 = ptrtoint ptr %dev1.i110 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %35, ptr %dev1.i110, align 4
  %pipe2.i111 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 10
  %43 = ptrtoint ptr %pipe2.i111 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or15, ptr %pipe2.i111, align 4
  %transfer_buffer3.i112 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 14
  %44 = ptrtoint ptr %transfer_buffer3.i112 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %39, ptr %transfer_buffer3.i112, align 4
  %transfer_buffer_length.i113 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 19
  %45 = ptrtoint ptr %transfer_buffer_length.i113 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %41, ptr %transfer_buffer_length.i113, align 4
  %complete.i114 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 28
  %46 = ptrtoint ptr %complete.i114 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @mwifiex_usb_tx_complete, ptr %complete.i114, align 4
  %context4.i115 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 27
  %47 = ptrtoint ptr %context4.i115 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %context, ptr %context4.i115, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %usb_fill_int_urb.exit
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 13
  %48 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %transfer_flags, align 4
  %or18 = or i32 %49, 64
  store i32 %or18, ptr %transfer_flags, align 4
  %50 = ptrtoint ptr %tx_cmd_ep to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %tx_cmd_ep, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %ep)
  %cmp22 = icmp eq i8 %51, %ep
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx_cmd_urb_pending = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cmd_urb_pending, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %tx_cmd_urb_pending, i32 1, i32 3, i32 1) #12
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_cmd_urb_pending, ptr %tx_cmd_urb_pending, i32 1, ptr elementtype(i32) %tx_cmd_urb_pending) #12, !srcloc !209
  br label %if.end26

if.else25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx_data_urb_pending = getelementptr inbounds %struct.usb_tx_data_port, ptr %port, i32 0, i32 2
  %call.i.i102 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_data_urb_pending, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %tx_data_urb_pending, i32 1, i32 3, i32 1) #12
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_data_urb_pending, ptr %tx_data_urb_pending, i32 1, ptr elementtype(i32) %tx_data_urb_pending) #12, !srcloc !209
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then24
  %54 = ptrtoint ptr %tx_cmd_ep to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tx_cmd_ep, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %ep)
  %cmp30.not = icmp eq i8 %55, %ep
  br i1 %cmp30.not, label %if.end26.if.end39_crit_edge, label %land.lhs.true32

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.lhs.true32:                                  ; preds = %if.end26
  %tx_data_urb_pending33 = getelementptr inbounds %struct.usb_tx_data_port, ptr %port, i32 0, i32 2
  %call.i.i103 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_data_urb_pending33, i32 noundef 4) #12
  %56 = ptrtoint ptr %tx_data_urb_pending33 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %tx_data_urb_pending33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %57)
  %cmp35 = icmp eq i32 %57, 6
  br i1 %cmp35, label %if.then37, label %land.lhs.true32.if.end39_crit_edge

land.lhs.true32.if.end39_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then37:                                        ; preds = %land.lhs.true32
  %block_status = getelementptr inbounds %struct.usb_tx_data_port, ptr %port, i32 0, i32 1
  %58 = ptrtoint ptr %block_status to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %block_status, align 1
  %59 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card1, align 4
  %block_status.i = getelementptr %struct.usb_card_rec, ptr %60, i32 0, i32 16, i32 0, i32 1
  %61 = ptrtoint ptr %block_status.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %block_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i = icmp eq i8 %62, 0
  br i1 %tobool.not.i, label %if.then37.mwifiex_usb_data_sent.exit_crit_edge, label %for.cond.i

if.then37.mwifiex_usb_data_sent.exit_crit_edge:   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_usb_data_sent.exit

for.cond.i:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %block_status.1.i = getelementptr %struct.usb_card_rec, ptr %60, i32 0, i32 16, i32 1, i32 1
  %63 = ptrtoint ptr %block_status.1.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %block_status.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.1.i = icmp ne i8 %64, 0
  %spec.select.i = zext i1 %tobool.not.1.i to i8
  br label %mwifiex_usb_data_sent.exit

mwifiex_usb_data_sent.exit:                       ; preds = %for.cond.i, %if.then37.mwifiex_usb_data_sent.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %if.then37.mwifiex_usb_data_sent.exit_crit_edge ], [ %spec.select.i, %for.cond.i ]
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %65 = ptrtoint ptr %data_sent to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %retval.0.i, ptr %data_sent, align 4
  br label %if.end39

if.end39:                                         ; preds = %mwifiex_usb_data_sent.exit, %land.lhs.true32.if.end39_crit_edge, %if.end26.if.end39_crit_edge
  %ret.0 = phi i32 [ -63, %mwifiex_usb_data_sent.exit ], [ -115, %land.lhs.true32.if.end39_crit_edge ], [ -115, %if.end26.if.end39_crit_edge ]
  %call40 = tail call i32 @usb_submit_urb(ptr noundef %6, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool.not = icmp eq i32 %call40, 0
  br i1 %tobool.not, label %if.end39.if.end60_crit_edge, label %if.then41

if.end39.if.end60_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then41:                                        ; preds = %if.end39
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.mwifiex_usb_construct_send_urb) #12
  %66 = ptrtoint ptr %tx_cmd_ep to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %tx_cmd_ep, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %ep)
  %cmp45 = icmp eq i8 %67, %ep
  br i1 %cmp45, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  %tx_cmd_urb_pending48 = getelementptr inbounds %struct.usb_card_rec, ptr %1, i32 0, i32 12
  %call.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cmd_urb_pending48, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %tx_cmd_urb_pending48, i32 1, i32 3, i32 1) #12
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_cmd_urb_pending48, ptr %tx_cmd_urb_pending48, i32 1, ptr elementtype(i32) %tx_cmd_urb_pending48) #12, !srcloc !210
  br label %if.end60

if.else49:                                        ; preds = %if.then41
  %tx_data_urb_pending50 = getelementptr inbounds %struct.usb_tx_data_port, ptr %port, i32 0, i32 2
  %call.i.i105 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_data_urb_pending50, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %tx_data_urb_pending50, i32 1, i32 3, i32 1) #12
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_data_urb_pending50, ptr %tx_data_urb_pending50, i32 1, ptr elementtype(i32) %tx_data_urb_pending50) #12, !srcloc !210
  %block_status51 = getelementptr inbounds %struct.usb_tx_data_port, ptr %port, i32 0, i32 1
  %70 = ptrtoint ptr %block_status51 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %block_status51, align 1
  %data_sent52 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %71 = ptrtoint ptr %data_sent52 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %data_sent52, align 4
  %tx_data_ix = getelementptr inbounds %struct.usb_tx_data_port, ptr %port, i32 0, i32 3
  %72 = ptrtoint ptr %tx_data_ix to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_data_ix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool53.not = icmp eq i32 %73, 0
  br i1 %tobool53.not, label %if.else56, label %if.then54

if.then54:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i32 %73, -1
  %74 = ptrtoint ptr %tx_data_ix to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %dec, ptr %tx_data_ix, align 4
  br label %if.end60

if.else56:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %tx_data_ix to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 6, ptr %tx_data_ix, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else56, %if.then54, %if.then47, %if.end39.if.end60_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end39.if.end60_crit_edge ], [ -1, %if.then54 ], [ -1, %if.else56 ], [ -1, %if.then47 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_usb_prepare_tx_aggr_skb(ptr noundef %adapter, ptr noundef %port, ptr nocapture noundef writeonly %skb_send) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_aggr_align = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 166, i32 4
  %0 = ptrtoint ptr %tx_aggr_align to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_aggr_align, align 2
  %tx_aggr = getelementptr inbounds %struct.usb_tx_data_port, ptr %port, i32 0, i32 5
  %is_hold_timer_set = getelementptr inbounds %struct.usb_tx_data_port, ptr %port, i32 0, i32 5, i32 3, i32 3
  %2 = ptrtoint ptr %is_hold_timer_set to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_hold_timer_set, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hold_timer = getelementptr inbounds %struct.usb_tx_data_port, ptr %port, i32 0, i32 5, i32 3, i32 2
  %call = tail call i32 @del_timer(ptr noundef %hold_timer) #12
  %4 = ptrtoint ptr %is_hold_timer_set to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_hold_timer_set, align 4
  %hold_tmo_msecs = getelementptr inbounds %struct.usb_tx_data_port, ptr %port, i32 0, i32 5, i32 3, i32 4
  %5 = ptrtoint ptr %hold_tmo_msecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %hold_tmo_msecs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %aggr_len = getelementptr inbounds %struct.usb_tx_data_port, ptr %port, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %aggr_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aggr_len, align 4
  %call9 = tail call ptr @mwifiex_alloc_dma_align_buf(i32 noundef %7, i32 noundef 2592) #12
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.mwifiex_usb_prepare_tx_aggr_skb) #12
  %call13136 = tail call ptr @skb_dequeue(ptr noundef %tx_aggr) #12
  %tobool14.not137 = icmp eq ptr %call13136, null
  br i1 %tobool14.not137, label %if.then11.while.end_crit_edge, label %if.then11.while.body_crit_edge

if.then11.while.body_crit_edge:                   ; preds = %if.then11
  br label %while.body

if.then11.while.end_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then11.while.body_crit_edge
  %call13138 = phi ptr [ %call13, %while.body.while.body_crit_edge ], [ %call13136, %if.then11.while.body_crit_edge ]
  %call15 = tail call i32 @mwifiex_write_data_complete(ptr noundef %adapter, ptr noundef nonnull %call13138, i32 noundef 0, i32 noundef -1) #12
  %call13 = tail call ptr @skb_dequeue(ptr noundef %tx_aggr) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then11.while.end_crit_edge
  %aggr_num = getelementptr inbounds %struct.usb_tx_data_port, ptr %port, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %aggr_num to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %aggr_num, align 4
  %9 = ptrtoint ptr %aggr_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %aggr_len, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %10 = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 3, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 24)
  %call24131 = tail call ptr @skb_dequeue(ptr noundef %tx_aggr) #12
  %tobool25.not132 = icmp eq ptr %call24131, null
  br i1 %tobool25.not132, label %if.end19.while.end67_crit_edge, label %while.body26.lr.ph

if.end19.while.end67_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end67

while.body26.lr.ph:                               ; preds = %if.end19
  %conv = zext i16 %1 to i32
  %sub = add nsw i32 %conv, -1
  %len42 = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 6
  %bss_num54 = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 3, i32 13
  %bss_type56 = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 3, i32 14
  %aggr_num59 = getelementptr inbounds %struct.usb_tx_data_port, ptr %port, i32 0, i32 5, i32 2
  %len.peel = getelementptr inbounds %struct.sk_buff, ptr %call24131, i32 0, i32 6
  %12 = ptrtoint ptr %len.peel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.peel, align 4
  %and.peel = and i32 %13, %sub
  %sub28.peel = sub i32 %conv, %and.peel
  %rem.peel = urem i32 %sub28.peel, %conv
  %conv32.peel = and i32 %rem.peel, 255
  %add.peel = add i32 %conv32.peel, %13
  %call33.peel = tail call ptr @skb_put(ptr noundef nonnull %call9, i32 noundef %add.peel) #12
  %data.peel = getelementptr inbounds %struct.sk_buff, ptr %call24131, i32 0, i32 19
  %14 = ptrtoint ptr %data.peel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.peel, align 4
  %16 = ptrtoint ptr %len.peel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.peel, align 4
  %18 = call ptr @memcpy(ptr %call33.peel, ptr %15, i32 %17)
  %19 = ptrtoint ptr %tx_aggr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_aggr, align 4
  %cmp.i.not.peel = icmp eq ptr %20, %tx_aggr
  %21 = load i32, ptr %len.peel, align 4
  br i1 %cmp.i.not.peel, label %if.then39.peel, label %if.else.peel

if.else.peel:                                     ; preds = %while.body26.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  %add47.peel = add i32 %21, %conv32.peel
  %conv48.peel = trunc i32 %add47.peel to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv48.peel)
  %23 = ptrtoint ptr %call33.peel to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %call33.peel, align 2
  %arrayidx49.peel = getelementptr i8, ptr %call33.peel, i32 2
  %24 = ptrtoint ptr %arrayidx49.peel to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2816, ptr %arrayidx49.peel, align 2
  br label %if.end57.peel

if.then39.peel:                                   ; preds = %while.body26.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  %conv41.peel = trunc i32 %21 to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv41.peel)
  %26 = ptrtoint ptr %call33.peel to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %call33.peel, align 2
  %arrayidx.peel = getelementptr i8, ptr %call33.peel, i32 2
  %27 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -29952, ptr %arrayidx.peel, align 2
  %28 = ptrtoint ptr %len42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len42, align 4
  %sub44.peel = sub i32 %29, %conv32.peel
  tail call void @skb_trim(ptr noundef nonnull %call9, i32 noundef %sub44.peel) #12
  br label %if.end57.peel

if.end57.peel:                                    ; preds = %if.then39.peel, %if.else.peel
  %bss_num.peel = getelementptr inbounds %struct.sk_buff, ptr %call24131, i32 0, i32 3, i32 13
  %30 = ptrtoint ptr %bss_num.peel to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bss_num.peel, align 1
  %32 = ptrtoint ptr %bss_num54 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %bss_num54, align 1
  %bss_type.peel = getelementptr inbounds %struct.sk_buff, ptr %call24131, i32 0, i32 3, i32 14
  %33 = ptrtoint ptr %bss_type.peel to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bss_type.peel, align 2
  %35 = ptrtoint ptr %bss_type56 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %bss_type56, align 2
  %36 = ptrtoint ptr %aggr_num59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %aggr_num59, align 4
  %dec.peel = add i32 %37, -1
  store i32 %dec.peel, ptr %aggr_num59, align 4
  %38 = ptrtoint ptr %len.peel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.peel, align 4
  %40 = ptrtoint ptr %aggr_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %aggr_len, align 4
  %42 = add i32 %39, %conv32.peel
  %sub65.peel = sub i32 %41, %42
  store i32 %sub65.peel, ptr %aggr_len, align 4
  %call66.peel = tail call i32 @mwifiex_write_data_complete(ptr noundef %adapter, ptr noundef nonnull %call24131, i32 noundef 0, i32 noundef 0) #12
  %call24.peel = tail call ptr @skb_dequeue(ptr noundef %tx_aggr) #12
  %tobool25.not.peel = icmp eq ptr %call24.peel, null
  br i1 %tobool25.not.peel, label %if.end57.peel.while.end67_crit_edge, label %if.end57.peel.while.body26_crit_edge

if.end57.peel.while.body26_crit_edge:             ; preds = %if.end57.peel
  br label %while.body26

if.end57.peel.while.end67_crit_edge:              ; preds = %if.end57.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end67

while.body26:                                     ; preds = %if.end57.while.body26_crit_edge, %if.end57.peel.while.body26_crit_edge
  %call24134 = phi ptr [ %call24, %if.end57.while.body26_crit_edge ], [ %call24.peel, %if.end57.peel.while.body26_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %call24134, i32 0, i32 6
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %and = and i32 %44, %sub
  %sub28 = sub i32 %conv, %and
  %rem = urem i32 %sub28, %conv
  %conv32 = and i32 %rem, 255
  %add = add i32 %conv32, %44
  %call33 = tail call ptr @skb_put(ptr noundef nonnull %call9, i32 noundef %add) #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %call24134, i32 0, i32 19
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  %49 = call ptr @memcpy(ptr %call33, ptr %46, i32 %48)
  %50 = ptrtoint ptr %tx_aggr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_aggr, align 4
  %cmp.i.not = icmp eq ptr %51, %tx_aggr
  %52 = load i32, ptr %len, align 4
  br i1 %cmp.i.not, label %if.then39, label %if.else

if.then39:                                        ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #14
  %conv41 = trunc i32 %52 to i16
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv41)
  %54 = ptrtoint ptr %call33 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %call33, align 2
  %arrayidx = getelementptr i8, ptr %call33, i32 2
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -29952, ptr %arrayidx, align 2
  %56 = ptrtoint ptr %len42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len42, align 4
  %sub44 = sub i32 %57, %conv32
  tail call void @skb_trim(ptr noundef nonnull %call9, i32 noundef %sub44) #12
  br label %if.end57

if.else:                                          ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #14
  %add47 = add i32 %52, %conv32
  %conv48 = trunc i32 %add47 to i16
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv48)
  %59 = ptrtoint ptr %call33 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %call33, align 2
  %arrayidx49 = getelementptr i8, ptr %call33, i32 2
  %60 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 2816, ptr %arrayidx49, align 2
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then39
  %61 = ptrtoint ptr %aggr_num59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %aggr_num59, align 4
  %dec = add i32 %62, -1
  store i32 %dec, ptr %aggr_num59, align 4
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len, align 4
  %65 = ptrtoint ptr %aggr_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %aggr_len, align 4
  %67 = add i32 %64, %conv32
  %sub65 = sub i32 %66, %67
  store i32 %sub65, ptr %aggr_len, align 4
  %call66 = tail call i32 @mwifiex_write_data_complete(ptr noundef %adapter, ptr noundef nonnull %call24134, i32 noundef 0, i32 noundef 0) #12
  %call24 = tail call ptr @skb_dequeue(ptr noundef %tx_aggr) #12
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end57.while.end67_crit_edge, label %if.end57.while.body26_crit_edge, !llvm.loop !211

if.end57.while.body26_crit_edge:                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body26

if.end57.while.end67_crit_edge:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end67

while.end67:                                      ; preds = %if.end57.while.end67_crit_edge, %if.end57.peel.while.end67_crit_edge, %if.end19.while.end67_crit_edge
  %len68 = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 6
  %68 = ptrtoint ptr %len68 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len68, align 4
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %70 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %intf_hdr_len, align 4
  %conv69 = zext i8 %71 to i32
  %add70.neg = add i32 %69, -20
  %sub71 = sub i32 %add70.neg, %conv69
  %pkt_len = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 3, i32 16
  %72 = ptrtoint ptr %pkt_len to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub71, ptr %pkt_len, align 8
  %flags = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 3, i32 12
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %flags, align 4
  %75 = or i8 %74, 32
  store i8 %75, ptr %flags, align 4
  %aggr_num75 = getelementptr inbounds %struct.usb_tx_data_port, ptr %port, i32 0, i32 5, i32 2
  %76 = ptrtoint ptr %aggr_num75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %aggr_num75, align 4
  %77 = ptrtoint ptr %aggr_len to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %aggr_len, align 4
  %78 = ptrtoint ptr %skb_send to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call9, ptr %skb_send, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end67, %while.end
  %retval.0 = phi i32 [ 0, %while.end67 ], [ -16, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_alloc_dma_align_buf(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_usb_tx_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %card3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %card3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card3, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.mwifiex_usb_tx_complete, i32 noundef %7) #12
  %ep = getelementptr inbounds %struct.urb_context, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %ep to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ep, align 4
  %tx_cmd_ep = getelementptr inbounds %struct.usb_card_rec, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %tx_cmd_ep to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_cmd_ep, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp = icmp eq i8 %9, %11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.mwifiex_usb_tx_complete) #12
  %tx_cmd_urb_pending = getelementptr inbounds %struct.usb_card_rec, ptr %5, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cmd_urb_pending, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %tx_cmd_urb_pending, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_cmd_urb_pending, ptr %tx_cmd_urb_pending, i32 1, ptr elementtype(i32) %tx_cmd_urb_pending) #12, !srcloc !210
  %cmd_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 54
  %13 = ptrtoint ptr %cmd_sent to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %cmd_sent, align 1
  br label %if.end16

if.else:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 8, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.mwifiex_usb_tx_complete) #12
  %skb = getelementptr inbounds %struct.urb_context, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb, align 4
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp ne i32 %17, 0
  %cond = sext i1 %tobool.not to i32
  %call = tail call i32 @mwifiex_write_data_complete(ptr noundef %3, ptr noundef %15, i32 noundef 0, i32 noundef %cond) #12
  %18 = ptrtoint ptr %ep to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ep, align 4
  %arrayidx = getelementptr %struct.usb_card_rec, ptr %5, i32 0, i32 16, i32 0
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp13 = icmp eq i8 %19, %21
  br i1 %cmp13, label %if.else.if.then15_crit_edge, label %for.inc

if.else.if.then15_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.then15:                                        ; preds = %for.inc.if.then15_crit_edge, %if.else.if.then15_crit_edge
  %i.042.lcssa = phi i32 [ 0, %if.else.if.then15_crit_edge ], [ 1, %for.inc.if.then15_crit_edge ]
  %tx_data_urb_pending = getelementptr %struct.usb_card_rec, ptr %5, i32 0, i32 16, i32 %i.042.lcssa, i32 2
  %call.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_data_urb_pending, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %tx_data_urb_pending, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_data_urb_pending, ptr %tx_data_urb_pending, i32 1, ptr elementtype(i32) %tx_data_urb_pending) #12, !srcloc !210
  %block_status = getelementptr %struct.usb_card_rec, ptr %5, i32 0, i32 16, i32 %i.042.lcssa, i32 1
  %23 = ptrtoint ptr %block_status to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %block_status, align 1
  br label %for.end

for.inc:                                          ; preds = %if.else
  %arrayidx.1 = getelementptr %struct.usb_card_rec, ptr %5, i32 0, i32 16, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %25)
  %cmp13.1 = icmp eq i8 %19, %25
  br i1 %cmp13.1, label %for.inc.if.then15_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.if.then15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then15
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 53
  %26 = ptrtoint ptr %data_sent to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %data_sent, align 4
  br label %if.end16

if.end16:                                         ; preds = %for.end, %if.then
  %mc_resync_flag = getelementptr inbounds %struct.usb_card_rec, ptr %5, i32 0, i32 15
  %27 = ptrtoint ptr %mc_resync_flag to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mc_resync_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool17.not = icmp eq i8 %28, 0
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.then18

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mwifiex_multi_chan_resync(ptr noundef %3) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  tail call void @mwifiex_queue_main_work(ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_multi_chan_resync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_queue_main_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %ctx, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %card2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card2, align 4
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %work_flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %rx_cmd_ep10 = getelementptr inbounds %struct.usb_card_rec, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %rx_cmd_ep10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rx_cmd_ep10, align 4
  %ep12 = getelementptr inbounds %struct.urb_context, ptr %ctx, i32 0, i32 3
  %9 = ptrtoint ptr %ep12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ep12, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp14.not = icmp eq i8 %8, %10
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp14.not, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.mwifiex_usb_submit_rx_urb) #12
  %skb = getelementptr inbounds %struct.urb_context, ptr %ctx, i32 0, i32 1
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %12, i32 noundef 1) #12
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %skb, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %14 = ptrtoint ptr %ep12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ep12, align 4
  %conv8 = zext i8 %15 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.mwifiex_usb_submit_rx_urb, i32 noundef %conv8) #12
  br label %cleanup

if.end9:                                          ; preds = %entry
  br i1 %cmp14.not, label %if.end9.if.end23_crit_edge, label %if.then16

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then16:                                        ; preds = %if.end9
  %call.i.i124 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %size, i32 noundef 2592) #12
  %skb18 = getelementptr inbounds %struct.urb_context, ptr %ctx, i32 0, i32 1
  %16 = ptrtoint ptr %skb18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i124, ptr %skb18, align 4
  %tobool20.not = icmp eq ptr %call.i.i124, null
  br i1 %tobool20.not, label %if.then21, label %if.then16.if.end23_crit_edge

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.mwifiex_usb_submit_rx_urb) #12
  br label %cleanup

if.end23:                                         ; preds = %if.then16.if.end23_crit_edge, %if.end9.if.end23_crit_edge
  %17 = ptrtoint ptr %rx_cmd_ep10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rx_cmd_ep10, align 4
  %19 = ptrtoint ptr %ep12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ep12, align 4
  %conv27 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp28 = icmp eq i8 %18, %20
  br i1 %cmp28, label %land.lhs.true, label %if.end23.if.else_crit_edge

if.end23.if.else_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end23
  %rx_cmd_ep_type = getelementptr inbounds %struct.usb_card_rec, ptr %3, i32 0, i32 17
  %21 = ptrtoint ptr %rx_cmd_ep_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_cmd_ep_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp30 = icmp eq i32 %22, 3
  br i1 %cmp30, label %if.then32, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then32:                                        ; preds = %land.lhs.true
  %urb = getelementptr inbounds %struct.urb_context, ptr %ctx, i32 0, i32 2
  %23 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %urb, align 4
  %udev = getelementptr inbounds %struct.usb_card_rec, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i = shl i32 %28, 8
  %shl1.i = shl nuw nsw i32 %conv27, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or37 = or i32 %or.i, 1073741952
  %skb38 = getelementptr inbounds %struct.urb_context, ptr %ctx, i32 0, i32 1
  %29 = ptrtoint ptr %skb38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skb38, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 19
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %rx_cmd_interval = getelementptr inbounds %struct.usb_card_rec, ptr %3, i32 0, i32 18
  %33 = ptrtoint ptr %rx_cmd_interval to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rx_cmd_interval, align 4
  %conv39 = zext i8 %34 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 8
  %35 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %26, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 10
  %36 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or37, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 14
  %37 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %32, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 19
  %38 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %size, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 28
  %39 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @mwifiex_usb_rx_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 27
  %40 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ctx, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 4
  %41 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp.i = icmp eq i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp6.i = icmp ugt i32 %42, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.then32.usb_fill_int_urb.exit_crit_edge

if.then32.usb_fill_int_urb.exit_crit_edge:        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %43 = tail call i32 @llvm.smax.i32(i32 %conv39, i32 1) #12
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 16) #12
  %sub.i = add nsw i32 %44, -1
  %shl.i125 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.then32.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i125, %if.then.i ], [ %conv39, %if.then32.usb_fill_int_urb.exit_crit_edge ]
  %45 = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 25
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %interval.sink.i, ptr %45, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 23
  %47 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end50

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end23.if.else_crit_edge
  %urb40 = getelementptr inbounds %struct.urb_context, ptr %ctx, i32 0, i32 2
  %48 = ptrtoint ptr %urb40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %urb40, align 4
  %udev41 = getelementptr inbounds %struct.usb_card_rec, ptr %3, i32 0, i32 1
  %50 = ptrtoint ptr %udev41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %udev41, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i126 = shl i32 %53, 8
  %shl1.i127 = shl nuw nsw i32 %conv27, 15
  %or.i128 = or i32 %shl1.i127, %shl.i126
  %or47 = or i32 %or.i128, -1073741696
  %skb48 = getelementptr inbounds %struct.urb_context, ptr %ctx, i32 0, i32 1
  %54 = ptrtoint ptr %skb48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %skb48, align 4
  %data49 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 19
  %56 = ptrtoint ptr %data49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data49, align 4
  %dev1.i129 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 8
  %58 = ptrtoint ptr %dev1.i129 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %51, ptr %dev1.i129, align 4
  %pipe2.i130 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 10
  %59 = ptrtoint ptr %pipe2.i130 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or47, ptr %pipe2.i130, align 4
  %transfer_buffer3.i131 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 14
  %60 = ptrtoint ptr %transfer_buffer3.i131 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %transfer_buffer3.i131, align 4
  %transfer_buffer_length.i132 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 19
  %61 = ptrtoint ptr %transfer_buffer_length.i132 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %size, ptr %transfer_buffer_length.i132, align 4
  %complete.i133 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 28
  %62 = ptrtoint ptr %complete.i133 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @mwifiex_usb_rx_complete, ptr %complete.i133, align 4
  %context4.i134 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 27
  %63 = ptrtoint ptr %context4.i134 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %ctx, ptr %context4.i134, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else, %usb_fill_int_urb.exit
  %64 = ptrtoint ptr %rx_cmd_ep10 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rx_cmd_ep10, align 4
  %66 = ptrtoint ptr %ep12 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ep12, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %67)
  %cmp55 = icmp eq i8 %65, %67
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %rx_cmd_urb_pending = getelementptr inbounds %struct.usb_card_rec, ptr %3, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_cmd_urb_pending, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %rx_cmd_urb_pending, i32 1, i32 3, i32 1) #12
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_cmd_urb_pending, ptr %rx_cmd_urb_pending, i32 1, ptr elementtype(i32) %rx_cmd_urb_pending) #12, !srcloc !209
  br label %if.end59

if.else58:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %rx_data_urb_pending = getelementptr inbounds %struct.usb_card_rec, ptr %3, i32 0, i32 10
  %call.i.i121 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_data_urb_pending, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %rx_data_urb_pending, i32 1, i32 3, i32 1) #12
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_data_urb_pending, ptr %rx_data_urb_pending, i32 1, ptr elementtype(i32) %rx_data_urb_pending) #12, !srcloc !209
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then57
  %urb60 = getelementptr inbounds %struct.urb_context, ptr %ctx, i32 0, i32 2
  %70 = ptrtoint ptr %urb60 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %urb60, align 4
  %call61 = tail call i32 @usb_submit_urb(ptr noundef %71, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end59.cleanup_crit_edge, label %if.then63

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then63:                                        ; preds = %if.end59
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.40) #12
  %skb64 = getelementptr inbounds %struct.urb_context, ptr %ctx, i32 0, i32 1
  %72 = ptrtoint ptr %skb64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %skb64, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %73, i32 noundef 1) #12
  %74 = ptrtoint ptr %skb64 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %skb64, align 4
  %75 = ptrtoint ptr %rx_cmd_ep10 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %rx_cmd_ep10, align 4
  %77 = ptrtoint ptr %ep12 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ep12, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %78)
  %cmp70 = icmp eq i8 %76, %78
  br i1 %cmp70, label %if.then72, label %if.else74

if.then72:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  %rx_cmd_urb_pending73 = getelementptr inbounds %struct.usb_card_rec, ptr %3, i32 0, i32 6
  %call.i.i122 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_cmd_urb_pending73, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %rx_cmd_urb_pending73, i32 1, i32 3, i32 1) #12
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_cmd_urb_pending73, ptr %rx_cmd_urb_pending73, i32 1, ptr elementtype(i32) %rx_cmd_urb_pending73) #12, !srcloc !210
  br label %cleanup

if.else74:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  %rx_data_urb_pending75 = getelementptr inbounds %struct.usb_card_rec, ptr %3, i32 0, i32 10
  %call.i.i123 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_data_urb_pending75, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %rx_data_urb_pending75, i32 1, i32 3, i32 1) #12
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_data_urb_pending75, ptr %rx_data_urb_pending75, i32 1, ptr elementtype(i32) %rx_data_urb_pending75) #12, !srcloc !210
  br label %cleanup

cleanup:                                          ; preds = %if.else74, %if.then72, %if.end59.cleanup_crit_edge, %if.then21, %if.end
  %retval.0 = phi i32 [ -1, %if.end ], [ -12, %if.then21 ], [ -1, %if.else74 ], [ -1, %if.then72 ], [ 0, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_usb_rx_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %skb3 = getelementptr inbounds %struct.urb_context, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb3, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %card4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %card4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card4, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rx_cmd_ep = getelementptr inbounds %struct.usb_card_rec, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %rx_cmd_ep to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rx_cmd_ep, align 4
  %ep = getelementptr inbounds %struct.urb_context, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %ep to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp = icmp eq i8 %11, %13
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rx_cmd_urb_pending = getelementptr inbounds %struct.usb_card_rec, ptr %9, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_cmd_urb_pending, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %rx_cmd_urb_pending, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_cmd_urb_pending, ptr %rx_cmd_urb_pending, i32 1, ptr elementtype(i32) %rx_cmd_urb_pending) #12, !srcloc !210
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rx_data_urb_pending = getelementptr inbounds %struct.usb_card_rec, ptr %9, i32 0, i32 10
  %call.i.i173 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_data_urb_pending, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %rx_data_urb_pending, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_data_urb_pending, ptr %rx_data_urb_pending, i32 1, ptr elementtype(i32) %rx_data_urb_pending) #12, !srcloc !210
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  %status64 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %16 = ptrtoint ptr %status64 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool65.not = icmp eq i32 %17, 0
  br i1 %tobool11.not, label %if.else63, label %if.then12

if.then12:                                        ; preds = %if.end10
  br i1 %tobool65.not, label %lor.lhs.false15, label %if.then12.if.then18_crit_edge

if.then12.if.then18_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

lor.lhs.false15:                                  ; preds = %if.then12
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %work_flags, align 4
  %and1.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool17.not = icmp eq i32 %and1.i, 0
  br i1 %tobool17.not, label %if.end28, label %lor.lhs.false15.if.then18_crit_edge

lor.lhs.false15.if.then18_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false15.if.then18_crit_edge, %if.then12.if.then18_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull @.str.43, i32 noundef %17) #12
  %20 = ptrtoint ptr %rx_cmd_ep to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rx_cmd_ep, align 4
  %22 = ptrtoint ptr %ep to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp24.not = icmp eq i8 %21, %23
  br i1 %cmp24.not, label %if.then18.setup_for_next_crit_edge, label %if.then18.setup_for_next.sink.split_crit_edge

if.then18.setup_for_next.sink.split_crit_edge:    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %setup_for_next.sink.split

if.then18.setup_for_next_crit_edge:               ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %setup_for_next

if.end28:                                         ; preds = %lor.lhs.false15
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %25)
  %cmp29 = icmp ult i32 %7, %25
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @skb_trim(ptr noundef %5, i32 noundef %7) #12
  br label %if.end35

if.else32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %7, %25
  %call34 = tail call ptr @skb_put(ptr noundef %5, i32 noundef %sub) #12
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.then31
  %26 = ptrtoint ptr %ep to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ep, align 4
  %hs_activated.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 108
  %28 = ptrtoint ptr %hs_activated.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hs_activated.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.end35.if.end.i_crit_edge, label %if.then.i

if.end35.if.end.i_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mwifiex_process_hs_config(ptr noundef nonnull %3) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end35.if.end.i_crit_edge
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp.i = icmp ult i32 %31, 4
  br i1 %cmp.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.mwifiex_usb_recv) #12
  br label %if.then52

if.end2.i:                                        ; preds = %if.end.i
  %32 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %27, label %sw.default38.i [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb32.i
  ]

sw.bb.i:                                          ; preds = %if.end2.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.mwifiex_usb_recv) #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %34, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #12
  %call.i = tail call ptr @skb_pull(ptr noundef %5, i32 noundef 4) #12
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %37, label %sw.default.i [
    i32 -267519282, label %sw.bb3.i
    i32 -1091568946, label %sw.bb18.i
  ]

sw.bb3.i:                                         ; preds = %sw.bb.i
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %40)
  %cmp5.i = icmp ugt i32 %40, 2048
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull @.str.49) #12
  br label %mwifiex_usb_recv.exit.thread181

if.else.i:                                        ; preds = %sw.bb3.i
  %curr_cmd.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 60
  %41 = ptrtoint ptr %curr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %curr_cmd.i, align 4
  %tobool8.not.i = icmp eq ptr %42, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end16.i

if.then9.i:                                       ; preds = %if.else.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 536870912, ptr noundef nonnull @.str.50) #12
  %ps_state.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 90
  %43 = ptrtoint ptr %ps_state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ps_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp10.i = icmp eq i32 %44, 2
  br i1 %cmp10.i, label %mwifiex_usb_recv.exit, label %if.then9.i.mwifiex_usb_recv.exit.thread181_crit_edge

if.then9.i.mwifiex_usb_recv.exit.thread181_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_usb_recv.exit.thread181

if.end16.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %resp_skb.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %42, i32 0, i32 5
  %45 = ptrtoint ptr %resp_skb.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %5, ptr %resp_skb.i, align 4
  %cmd_resp_received.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 55
  %46 = ptrtoint ptr %cmd_resp_received.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %cmd_resp_received.i, align 2
  br label %if.then40

sw.bb18.i:                                        ; preds = %sw.bb.i
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp20.i = icmp ult i32 %48, 4
  br i1 %cmp20.i, label %if.then22.i, label %if.end23.i

if.then22.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull @.str.51) #12
  br label %mwifiex_usb_recv.exit.thread181

if.end23.i:                                       ; preds = %sw.bb18.i
  %49 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %50, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #12
  %event_cause.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 50
  %54 = ptrtoint ptr %event_cause.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %event_cause.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.52, i32 noundef %53) #12
  %55 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %56)
  %cmp26.i = icmp ugt i32 %56, 2048
  br i1 %cmp26.i, label %if.then28.i, label %if.end29.i

if.then28.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull @.str.53) #12
  br label %mwifiex_usb_recv.exit.thread181

if.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  %event_body.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 112
  %57 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %58, i32 4
  %59 = call ptr @memcpy(ptr %event_body.i, ptr %add.ptr.i, i32 %56)
  %event_received.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 56
  %60 = ptrtoint ptr %event_received.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %event_received.i, align 1
  %event_skb.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 51
  %61 = ptrtoint ptr %event_skb.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %5, ptr %event_skb.i, align 4
  br label %if.then40

sw.default.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull @.str.54, i32 noundef %37) #12
  br label %mwifiex_usb_recv.exit.thread181

sw.bb32.i:                                        ; preds = %if.end2.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.mwifiex_usb_recv) #12
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %63)
  %cmp34.i = icmp ugt i32 %63, 4096
  br i1 %cmp34.i, label %if.then36.i, label %if.end37.i

if.then36.i:                                      ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull @.str.56) #12
  br label %if.then52

if.end37.i:                                       ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #14
  %rx_data_q.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 146
  tail call void @skb_queue_tail(ptr noundef %rx_data_q.i, ptr noundef %5) #12
  %data_received.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 57
  %64 = ptrtoint ptr %data_received.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %data_received.i, align 4
  %rx_pending.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_pending.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %rx_pending.i, i32 1, i32 3, i32 1) #12
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_pending.i, ptr %rx_pending.i, i32 1, ptr elementtype(i32) %rx_pending.i) #12, !srcloc !209
  br label %if.then40

sw.default38.i:                                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %27 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.mwifiex_usb_recv, i32 noundef %conv.i) #12
  br label %if.then52

mwifiex_usb_recv.exit.thread181:                  ; preds = %sw.default.i, %if.then28.i, %if.then22.i, %if.then9.i.mwifiex_usb_recv.exit.thread181_crit_edge, %if.then7.i
  %call41.i183 = tail call ptr @skb_push(ptr noundef %5, i32 noundef 4) #12
  br label %if.then52

mwifiex_usb_recv.exit:                            ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i, align 4
  %68 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len, align 4
  tail call void @mwifiex_process_sleep_confirm_resp(ptr noundef nonnull %3, ptr noundef %67, i32 noundef %69) #12
  %call41.i = tail call ptr @skb_push(ptr noundef %5, i32 noundef 4) #12
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 1073741824, ptr noundef nonnull @.str.44, i32 noundef %7, i32 noundef 0) #12
  br label %if.end53

if.then40:                                        ; preds = %if.end37.i, %if.end29.i, %if.end16.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 1073741824, ptr noundef nonnull @.str.44, i32 noundef %7, i32 noundef -115) #12
  tail call void @mwifiex_queue_main_work(ptr noundef nonnull %3) #12
  %70 = ptrtoint ptr %rx_cmd_ep to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %rx_cmd_ep, align 4
  %72 = ptrtoint ptr %ep to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %73)
  %cmp45 = icmp eq i8 %71, %73
  br i1 %cmp45, label %if.then40.cleanup_crit_edge, label %if.then40.setup_for_next_crit_edge

if.then40.setup_for_next_crit_edge:               ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %setup_for_next

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then52:                                        ; preds = %mwifiex_usb_recv.exit.thread181, %sw.default38.i, %if.then36.i, %if.then1.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 1073741824, ptr noundef nonnull @.str.44, i32 noundef %7, i32 noundef -1) #12
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull @.str.45) #12
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %mwifiex_usb_recv.exit
  %74 = ptrtoint ptr %rx_cmd_ep to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rx_cmd_ep, align 4
  %76 = ptrtoint ptr %ep to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %77)
  %cmp58.not = icmp eq i8 %75, %77
  br i1 %cmp58.not, label %if.end53.setup_for_next_crit_edge, label %if.end53.setup_for_next.sink.split_crit_edge

if.end53.setup_for_next.sink.split_crit_edge:     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %setup_for_next.sink.split

if.end53.setup_for_next_crit_edge:                ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %setup_for_next

if.else63:                                        ; preds = %if.end10
  br i1 %tobool65.not, label %if.else74, label %if.then66

if.then66:                                        ; preds = %if.else63
  %work_flags67 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 12
  %78 = ptrtoint ptr %work_flags67 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %work_flags67, align 4
  %80 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool69.not = icmp eq i32 %80, 0
  br i1 %tobool69.not, label %if.then70, label %if.then66.if.end73_crit_edge

if.then66.if.end73_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then70:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull @.str.46, i32 noundef %17) #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %work_flags67) #12
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.then66.if.end73_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %5, i32 noundef 1) #12
  br label %cleanup

if.else74:                                        ; preds = %if.else63
  %81 = ptrtoint ptr %rx_cmd_ep to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %rx_cmd_ep, align 4
  %83 = ptrtoint ptr %ep to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %84)
  %cmp79.not = icmp eq i8 %82, %84
  br i1 %cmp79.not, label %if.else74.setup_for_next_crit_edge, label %if.else74.setup_for_next.sink.split_crit_edge

if.else74.setup_for_next.sink.split_crit_edge:    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #14
  br label %setup_for_next.sink.split

if.else74.setup_for_next_crit_edge:               ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #14
  br label %setup_for_next

setup_for_next.sink.split:                        ; preds = %if.else74.setup_for_next.sink.split_crit_edge, %if.end53.setup_for_next.sink.split_crit_edge, %if.then18.setup_for_next.sink.split_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %5, i32 noundef 1) #12
  br label %setup_for_next

setup_for_next:                                   ; preds = %setup_for_next.sink.split, %if.else74.setup_for_next_crit_edge, %if.end53.setup_for_next_crit_edge, %if.then40.setup_for_next_crit_edge, %if.then18.setup_for_next_crit_edge
  %85 = ptrtoint ptr %rx_cmd_ep to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %rx_cmd_ep, align 4
  %87 = ptrtoint ptr %ep to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %88)
  %cmp89 = icmp eq i8 %86, %88
  %. = select i1 %cmp89, i32 2048, i32 4096
  br i1 %cmp89, label %if.then100, label %if.else102

if.then100:                                       ; preds = %setup_for_next
  call void @__sanitizer_cov_trace_pc() #14
  %call101 = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %1, i32 noundef %.)
  br label %cleanup

if.else102:                                       ; preds = %setup_for_next
  %rx_pending = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 20
  %call.i.i175 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_pending, i32 noundef 4) #12
  %89 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %90)
  %cmp104 = icmp slt i32 %90, 51
  br i1 %cmp104, label %if.then106, label %if.else108

if.then106:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #14
  %call107 = tail call fastcc i32 @mwifiex_usb_submit_rx_urb(ptr noundef %1, i32 noundef %.)
  br label %cleanup

if.else108:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %skb3 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %skb3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else108, %if.then106, %if.then100, %if.end73, %if.then40.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_process_hs_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_process_sleep_confirm_resp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_usb_tx_aggr_tmo(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  %skb_send = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb_send) #12
  %0 = ptrtoint ptr %skb_send to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %skb_send, align 4
  %add.ptr = getelementptr i8, ptr %t, i32 -8
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %port2 = getelementptr i8, ptr %t, i32 -4
  %3 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port2, align 4
  %tx_aggr_lock = getelementptr inbounds %struct.usb_tx_data_port, ptr %4, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_aggr_lock) #12
  %call = call fastcc i32 @mwifiex_usb_prepare_tx_aggr_skb(ptr noundef %2, ptr noundef %4, ptr noundef nonnull %skb_send)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.69, i32 noundef %call) #12
  br label %unlock

if.end:                                           ; preds = %entry
  %tx_data_urb_pending = getelementptr inbounds %struct.usb_tx_data_port, ptr %4, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_data_urb_pending, i32 noundef 4) #12
  %5 = ptrtoint ptr %tx_data_urb_pending to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %tx_data_urb_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp = icmp sgt i32 %6, 5
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %block_status = getelementptr inbounds %struct.usb_tx_data_port, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %block_status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %block_status, align 1
  %card1.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 17
  %8 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card1.i, align 4
  %block_status.i = getelementptr %struct.usb_card_rec, ptr %9, i32 0, i32 16, i32 0, i32 1
  %10 = ptrtoint ptr %block_status.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %block_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then4.mwifiex_usb_data_sent.exit_crit_edge, label %for.cond.i

if.then4.mwifiex_usb_data_sent.exit_crit_edge:    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_usb_data_sent.exit

for.cond.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %block_status.1.i = getelementptr %struct.usb_card_rec, ptr %9, i32 0, i32 16, i32 1, i32 1
  %12 = ptrtoint ptr %block_status.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %block_status.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.1.i = icmp ne i8 %13, 0
  %spec.select.i = zext i1 %tobool.not.1.i to i8
  br label %mwifiex_usb_data_sent.exit

mwifiex_usb_data_sent.exit:                       ; preds = %for.cond.i, %if.then4.mwifiex_usb_data_sent.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %if.then4.mwifiex_usb_data_sent.exit_crit_edge ], [ %spec.select.i, %for.cond.i ]
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 53
  %14 = ptrtoint ptr %data_sent to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %retval.0.i, ptr %data_sent, align 4
  br label %if.then14

if.end6:                                          ; preds = %if.end
  %tx_data_ix = getelementptr inbounds %struct.usb_tx_data_port, ptr %4, i32 0, i32 3
  %15 = ptrtoint ptr %tx_data_ix to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_data_ix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp7 = icmp sgt i32 %16, 5
  br i1 %cmp7, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %tx_data_ix to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tx_data_ix, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %18 = ptrtoint ptr %tx_data_ix to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_data_ix, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %tx_data_ix, align 4
  %arrayidx = getelementptr %struct.usb_tx_data_port, ptr %4, i32 0, i32 4, i32 %19
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %4, align 4
  %22 = ptrtoint ptr %skb_send to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb_send, align 4
  %call12 = tail call fastcc i32 @mwifiex_usb_construct_send_urb(ptr noundef %2, ptr noundef %4, i8 noundef zeroext %21, ptr noundef %arrayidx, ptr noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12)
  %phi.cmp = icmp eq i32 %call12, -1
  br i1 %phi.cmp, label %if.end10.if.then14_crit_edge, label %if.end10.unlock_crit_edge

if.end10.unlock_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end10.if.then14_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.then14:                                        ; preds = %if.end10.if.then14_crit_edge, %mwifiex_usb_data_sent.exit
  %24 = ptrtoint ptr %skb_send to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb_send, align 4
  %call15 = tail call i32 @mwifiex_write_data_complete(ptr noundef %2, ptr noundef %25, i32 noundef 0, i32 noundef -1) #12
  br label %unlock

unlock:                                           ; preds = %if.then14, %if.end10.unlock_crit_edge, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_aggr_lock) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb_send) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_deauthenticate_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_init_shutdown_fw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_remove_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_enable_hs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cancel_hs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_fw_dump_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !73, !75, !77, !79, !81, !82, !84, !86, !88, !90, !91, !93, !94, !96, !97, !99, !101, !103, !104, !106, !108, !110, !112, !113, !114, !115, !117, !119, !121, !123, !125, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !167, !169, !170, !172, !174, !175, !177, !178, !179, !180, !181, !182, !184, !186, !188, !189, !190, !191, !193}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @__initcall__kmod_mwifiex_usb__496_1621_mwifiex_usb_driver_init6, !1, !"__initcall__kmod_mwifiex_usb__496_1621_mwifiex_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1621, i32 1}
!2 = !{ptr @__exitcall_mwifiex_usb_driver_exit, !1, !"__exitcall_mwifiex_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author497, !4, !"__UNIQUE_ID_author497", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1623, i32 1}
!5 = !{ptr @__UNIQUE_ID_description498, !6, !"__UNIQUE_ID_description498", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1624, i32 1}
!7 = !{ptr @__UNIQUE_ID_version499, !8, !"__UNIQUE_ID_version499", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1625, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file500, !14, !"__UNIQUE_ID_file500", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1626, i32 1}
!15 = !{ptr @__UNIQUE_ID_license501, !14, !"__UNIQUE_ID_license501", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_firmware502, !17, !"__UNIQUE_ID_firmware502", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1627, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware503, !19, !"__UNIQUE_ID_firmware503", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1628, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware504, !21, !"__UNIQUE_ID_firmware504", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1629, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware505, !23, !"__UNIQUE_ID_firmware505", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1630, i32 1}
!24 = !{ptr @mwifiex_usb_driver, !25, !"mwifiex_usb_driver", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 694, i32 26}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 416, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug488, !27, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!31 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 434, i32 3}
!34 = !{ptr @mwifiex_usb_probe._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mwifiex_usb_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 442, i32 2}
!38 = !{ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug489, !37, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!39 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 456, i32 4}
!42 = !{ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug490, !41, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!43 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 465, i32 4}
!46 = !{ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug491, !45, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!47 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 474, i32 4}
!50 = !{ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug492, !49, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!51 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 483, i32 4}
!54 = !{ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug493, !53, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!55 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug494, !57, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 496, i32 4}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 499, i32 4}
!60 = !{ptr @mwifiex_usb_probe.__UNIQUE_ID_ddebug495, !59, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!61 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 530, i32 3}
!64 = !{ptr @mwifiex_usb_probe._entry.20, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mwifiex_usb_probe._entry_ptr.22, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @init_completion.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../include/linux/completion.h", i32 87, i32 2}
!68 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @usb_ops, !70, !"usb_ops", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1605, i32 30}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1330, i32 28}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1336, i32 28}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1342, i32 28}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1349, i32 28}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1191, i32 3}
!81 = !{ptr @__func__.mwifiex_usb_host_to_card, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1197, i32 3}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1201, i32 2}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1224, i32 4}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 905, i32 3}
!90 = !{ptr @__func__.mwifiex_usb_prepare_tx_aggr_skb, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 864, i32 3}
!93 = !{ptr @__func__.mwifiex_usb_construct_send_urb, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 265, i32 2}
!96 = !{ptr @__func__.mwifiex_usb_tx_complete, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 269, i32 3}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 274, i32 3}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 304, i32 4}
!103 = !{ptr @__func__.mwifiex_usb_submit_rx_urb, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 309, i32 3}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 318, i32 4}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 342, i32 3}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 174, i32 3}
!112 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @mwifiex_usb_rx_complete._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @mwifiex_usb_rx_complete._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 187, i32 4}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 201, i32 3}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 215, i32 5}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 224, i32 4}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 69, i32 3}
!125 = !{ptr @__func__.mwifiex_usb_recv, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 76, i32 3}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 85, i32 5}
!130 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 90, i32 5}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 107, i32 5}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 114, i32 4}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 118, i32 5}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 131, i32 4}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 138, i32 3}
!142 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 140, i32 4}
!144 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 150, i32 3}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1404, i32 3}
!148 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1458, i32 5}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1472, i32 5}
!152 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1484, i32 6}
!154 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1493, i32 5}
!156 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1502, i32 5}
!158 = !{ptr @.str.64, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1516, i32 2}
!160 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 720, i32 3}
!162 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 740, i32 3}
!164 = !{ptr @mwifiex_usb_tx_init.__key, !165, !"__key", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1278, i32 3}
!166 = !{ptr @.str.67, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @skb_queue_head_init.__key, !168, !"__key", i1 false, i1 false}
!168 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!169 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.69, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 1153, i32 3}
!172 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 678, i32 2}
!174 = !{ptr @__func__.mwifiex_usb_disconnect, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.71, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 559, i32 3}
!177 = !{ptr @.str.72, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.73, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.74, !176, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @mwifiex_usb_suspend._entry, !176, !"_entry", i1 false, i1 false}
!181 = !{ptr @mwifiex_usb_suspend._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 564, i32 3}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 569, i32 3}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 621, i32 3}
!188 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @mwifiex_usb_resume._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @mwifiex_usb_resume._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 628, i32 3}
!193 = !{ptr @mwifiex_usb_table, !194, !"mwifiex_usb_table", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/marvell/mwifiex/usb.c", i32 27, i32 35}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{i64 2148411119, i64 2148411124, i64 2148411137, i64 2148411181, i64 2148411215, i64 2148411236}
!205 = !{i8 0, i8 2}
!206 = !{!"branch_weights", i32 2000, i32 1}
!207 = !{!"branch_weights", i32 1, i32 2000}
!208 = !{!"auto-init"}
!209 = !{i64 2148586521, i64 2148586547, i64 2148586576, i64 2148586610, i64 2148586641, i64 2148586664}
!210 = !{i64 2148588986, i64 2148589012, i64 2148589041, i64 2148589075, i64 2148589106, i64 2148589129}
!211 = distinct !{!211, !212}
!212 = !{!"llvm.loop.peeled.count", i32 1}
