; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/pcie.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/pcie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mwifiex_pcie_device = type { ptr, i16, i16, i8, ptr, i8, i8 }
%struct.mwifiex_pcie_card_reg = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i16, i16, i16, i8, i8, i8 }
%struct.memory_type_mapping = type { [8 x i8], ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.126 = type { ptr }
%struct.pcie_service_card = type { ptr, ptr, %struct.mwifiex_pcie_device, %struct.completion, i8, i32, i32, i32, ptr, i32, [32 x ptr], [32 x ptr], i32, i32, i32, ptr, i32, [32 x ptr], [32 x ptr], i32, i32, i32, ptr, i32, [8 x ptr], [8 x ptr], ptr, ptr, ptr, i32, ptr, ptr, i32, i32, [4 x %struct.msix_entry], [4 x %struct.mwifiex_msix_context], %struct.mwifiex_msix_context, %struct.work_struct, i32, i8, i32 }
%struct.msix_entry = type { i32, i16 }
%struct.mwifiex_msix_context = type { ptr, i16 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.mwifiex_802_11d_domain_reg = type { [3 x i8], i8, [83 x %struct.ieee80211_country_ie_triplet] }
%struct.ieee80211_country_ie_triplet = type { %union.anon.157 }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type { i8, i8, i8 }
%struct.mwifiex_sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.mwifiex_sleep_period = type { i16, i16 }
%struct.mwifiex_hs_config_param = type <{ i32, i8, i8 }>
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.mwifiex_fw_image = type { ptr, i32, ptr, i32 }
%struct.mwifiex_fw_header = type { i32, i32, i32, i32 }
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
%struct.mwifiex_pfu_buf_desc = type <{ i16, i16, i16, i16, i64, i32 }>
%struct.mwifiex_pcie_buf_desc = type <{ i64, i16, i16 }>
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.mwifiex_evt_buf_desc = type <{ i64, i16, i16 }>
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
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
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.154 }
%struct.anon.154 = type { [3 x i8], i8 }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
%struct.mwifiex_802_11_security = type { i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.mwifiex_wep_key = type { i32, i32, i32, [16 x i8] }
%struct.host_cmd_ds_802_11_key_material = type { i16, %struct.mwifiex_ie_type_key_param_set }
%struct.mwifiex_ie_type_key_param_set = type { i16, i16, i16, i16, i16, [50 x i8] }
%struct.host_cmd_ds_802_11_key_material_v2 = type { i16, %struct.mwifiex_ie_type_key_param_set_v2 }
%struct.mwifiex_ie_type_key_param_set_v2 = type { i16, i16, [6 x i8], i8, i8, i16, %union.anon.155 }
%union.anon.155 = type { %struct.mwifiex_wapi_param }
%struct.mwifiex_wapi_param = type { [16 x i8], i16, [32 x i8] }
%struct.mwifiex_wmm_desc = type { [8 x %struct.mwifiex_tid_tbl], [8 x i32], [8 x i32], %struct.spinlock, [4 x %struct.mwifiex_wmm_ac_status], [4 x i8], i32, [4 x i8], [8 x i32], %struct.atomic_t, %struct.atomic_t }
%struct.mwifiex_tid_tbl = type { %struct.list_head }
%struct.mwifiex_wmm_ac_status = type { i8, i8, i8 }
%struct.mwifiex_tx_aggr = type { i8, i8, i8 }
%struct.mwifiex_add_ba_param = type { i32, i32, i32, i8, i8 }
%struct.mwifiex_vendor_spec_cfg_ie = type { i16, i16, [256 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.151, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.151 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.152 }
%union.anon.152 = type { %struct.cfg80211_bss_select_adjust }
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

@__initcall__kmod_mwifiex_pcie__493_3449_mwifiex_pcie_init6 = internal global ptr @mwifiex_pcie_init, section ".initcall6.init", align 4
@mwifiex_pcie = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @mwifiex_ids, ptr @mwifiex_pcie_probe, ptr @mwifiex_pcie_remove, ptr null, ptr null, ptr @mwifiex_pcie_shutdown, ptr null, ptr null, ptr null, ptr @mwifiex_pcie_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_pcie_pm_ops, ptr @mwifiex_pcie_coredump, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mwifiex_pcie_exit = internal global ptr @mwifiex_pcie_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author494 = internal constant [47 x i8] c"mwifiex_pcie.author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description495 = internal constant [72 x i8] c"mwifiex_pcie.description=Marvell WiFi-Ex PCI-Express Driver version 1.0\00", section ".modinfo", align 1
@__UNIQUE_ID_version496 = internal constant [25 x i8] c"mwifiex_pcie.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mwifiex_pcie\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file497 = internal constant [68 x i8] c"mwifiex_pcie.file=drivers/net/wireless/marvell/mwifiex/mwifiex_pcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license498 = internal constant [28 x i8] c"mwifiex_pcie.license=GPL v2\00", section ".modinfo", align 1
@mwifiex_ids = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4523, i32 11056, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @mwifiex_pcie8766 to i32), i32 0 }, %struct.pci_device_id { i32 4523, i32 11064, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @mwifiex_pcie8897 to i32), i32 0 }, %struct.pci_device_id { i32 4523, i32 11074, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @mwifiex_pcie8997 to i32), i32 0 }, %struct.pci_device_id { i32 6987, i32 11074, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @mwifiex_pcie8997 to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@mwifiex_pcie_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr null, ptr null, ptr null, ptr @mwifiex_pcie_reset_prepare, ptr @mwifiex_pcie_reset_done, ptr null }, [40 x i8] zeroinitializer }, align 32
@mwifiex_pcie_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mwifiex_pcie_suspend, ptr @mwifiex_pcie_resume, ptr @mwifiex_pcie_suspend, ptr @mwifiex_pcie_resume, ptr @mwifiex_pcie_suspend, ptr @mwifiex_pcie_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mwifiex_pcie8766 = internal constant { %struct.mwifiex_pcie_device, [44 x i8] } { %struct.mwifiex_pcie_device { ptr @mwifiex_reg_8766, i16 256, i16 2048, i8 0, ptr null, i8 0, i8 1 }, [44 x i8] zeroinitializer }, align 32
@mwifiex_pcie8897 = internal constant { %struct.mwifiex_pcie_device, [44 x i8] } { %struct.mwifiex_pcie_device { ptr @mwifiex_reg_8897, i16 256, i16 4096, i8 1, ptr @mem_type_mapping_tbl_w8897, i8 8, i8 1 }, [44 x i8] zeroinitializer }, align 32
@mwifiex_pcie8997 = internal constant { %struct.mwifiex_pcie_device, [44 x i8] } { %struct.mwifiex_pcie_device { ptr @mwifiex_reg_8997, i16 256, i16 4096, i8 1, ptr @mem_type_mapping_tbl_w8997, i8 1, i8 1 }, [44 x i8] zeroinitializer }, align 32
@mwifiex_reg_8766 = internal constant { %struct.mwifiex_pcie_card_reg, [52 x i8] } { %struct.mwifiex_pcie_card_reg { i16 3088, i16 3092, i16 3140, i16 3136, i16 3280, i16 3284, i16 3288, i16 3292, i16 3296, i16 3300, i16 3304, i16 3308, i16 3312, i16 0, i32 63, i32 0, i32 63, i32 0, i32 128, i32 128, i32 128, i8 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 1, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@mwifiex_reg_8897 = internal constant { %struct.mwifiex_pcie_card_reg, [52 x i8] } { %struct.mwifiex_pcie_card_reg { i16 3088, i16 3092, i16 3140, i16 3136, i16 3280, i16 3284, i16 -16244, i16 -16292, i16 -16292, i16 -16244, i16 3304, i16 3308, i16 3312, i16 16, i32 67043328, i32 134152192, i32 1023, i32 2047, i32 67108864, i32 1024, i32 128, i8 1, i8 2, i8 4, i8 8, i32 65536, i8 1, i8 0, i16 3316, i16 3320, i16 3327, i8 -18, i8 -2, i8 0 }, [52 x i8] zeroinitializer }, align 32
@mem_type_mapping_tbl_w8897 = internal global { [8 x %struct.memory_type_mapping], [32 x i8] } { [8 x %struct.memory_type_mapping] [%struct.memory_type_mapping { [8 x i8] c"ITCM\00\00\00\00", ptr null, i32 0, i8 -16 }, %struct.memory_type_mapping { [8 x i8] c"DTCM\00\00\00\00", ptr null, i32 0, i8 -15 }, %struct.memory_type_mapping { [8 x i8] c"SQRAM\00\00\00", ptr null, i32 0, i8 -14 }, %struct.memory_type_mapping { [8 x i8] c"IRAM\00\00\00\00", ptr null, i32 0, i8 -13 }, %struct.memory_type_mapping { [8 x i8] c"APU\00\00\00\00\00", ptr null, i32 0, i8 -12 }, %struct.memory_type_mapping { [8 x i8] c"CIU\00\00\00\00\00", ptr null, i32 0, i8 -11 }, %struct.memory_type_mapping { [8 x i8] c"ICU\00\00\00\00\00", ptr null, i32 0, i8 -10 }, %struct.memory_type_mapping { [8 x i8] c"MAC\00\00\00\00\00", ptr null, i32 0, i8 -9 }], [32 x i8] zeroinitializer }, align 32
@mwifiex_reg_8997 = internal constant { %struct.mwifiex_pcie_card_reg, [52 x i8] } { %struct.mwifiex_pcie_card_reg { i16 3088, i16 3092, i16 3140, i16 3136, i16 3280, i16 3284, i16 -15964, i16 -16012, i16 -16012, i16 -15964, i16 3304, i16 3308, i16 3312, i16 16, i32 268369920, i32 536805376, i32 4095, i32 8191, i32 268435456, i32 4096, i32 128, i8 1, i8 2, i8 4, i8 8, i32 65536, i8 1, i8 0, i16 3316, i16 3320, i16 3327, i8 -52, i8 -35, i8 0 }, [52 x i8] zeroinitializer }, align 32
@mem_type_mapping_tbl_w8997 = internal global { [1 x %struct.memory_type_mapping], [44 x i8] } { [1 x %struct.memory_type_mapping] [%struct.memory_type_mapping { [8 x i8] c"DUMP\00\00\00\00", ptr null, i32 0, i8 -35 }], [44 x i8] zeroinitializer }, align 32
@mwifiex_pcie_probe.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mwifiex_pcie_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/marvell/mwifiex/pcie.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"info: vendor=0x%4.04X device=0x%4.04X rev=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"mwifiex_pcie: info: vendor=0x%4.04X device=0x%4.04X rev=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@mwifiex_pcie_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&card->work)\00", [33 x i8] zeroinitializer }, align 32
@pcie_ops = internal global { %struct.mwifiex_if_ops, [40 x i8] } { %struct.mwifiex_if_ops { ptr @mwifiex_init_pcie, ptr @mwifiex_cleanup_pcie, ptr @mwifiex_check_fw_status, ptr @mwifiex_check_winner_status, ptr @mwifiex_prog_fw_w_helper, ptr @mwifiex_register_dev, ptr @mwifiex_unregister_dev, ptr @mwifiex_pcie_enable_host_int, ptr @mwifiex_pcie_disable_host_int_noerr, ptr @mwifiex_process_int_status, ptr @mwifiex_pcie_host_to_card, ptr @mwifiex_pm_wakeup_card, ptr @mwifiex_pm_wakeup_card_complete, ptr null, ptr null, ptr @mwifiex_pcie_cmdrsp_complete, ptr @mwifiex_pcie_event_complete, ptr @mwifiex_pcie_init_fw_port, ptr null, ptr @mwifiex_pcie_card_reset, ptr @mwifiex_pcie_reg_dump, ptr @mwifiex_pcie_device_dump, ptr @mwifiex_clean_pcie_ring_buf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_pcie_down_dev, ptr @mwifiex_pcie_up_dev }, [40 x i8] zeroinitializer }, align 32
@mwifiex_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013mwifiex_pcie: %s failed\0A\00", [37 x i8] zeroinitializer }, align 32
@mwifiex_pcie_probe._entry_ptr = internal global ptr @mwifiex_pcie_probe._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vzalloc devdump data failure!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"== mwifiex firmware dump start ==\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware dump Finished!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s_SIZE=0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Vmalloc %s failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Start %s output, please wait...\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pre-allocated buf not enough\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s done: size=0x%tx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"== mwifiex firmware dump end ==\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"The ctrl reg was changed, re-try again!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Fail to pull ctrl_data\0A\00", [40 x i8] zeroinitializer }, align 32
@mwifiex_pcie_of_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pci11ab,2b42\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pci1b4b,2b42\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mwifiex_pcie_probe_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 196, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"required compatible string missing\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mwifiex_pcie_probe_of\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mwifiex_pcie_probe_of._entry_ptr = internal global ptr @mwifiex_pcie_probe_of._entry, section ".printk_index", align 4
@mwifiex_init_pcie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 3121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013mwifiex_pcie: dma_set_mask(32) failed: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mwifiex_init_pcie\00", [46 x i8] zeroinitializer }, align 32
@mwifiex_init_pcie._entry_ptr = internal global ptr @mwifiex_init_pcie._entry, section ".printk_index", align 4
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Marvell mwifiex PCIe\00", [43 x i8] zeroinitializer }, align 32
@mwifiex_init_pcie._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.4, i32 3127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013mwifiex_pcie: req_reg(0) error\0A\00", [62 x i8] zeroinitializer }, align 32
@mwifiex_init_pcie._entry_ptr.31 = internal global ptr @mwifiex_init_pcie._entry.29, section ".printk_index", align 4
@mwifiex_init_pcie._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.4, i32 3132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013mwifiex_pcie: iomap(0) error\0A\00", [32 x i8] zeroinitializer }, align 32
@mwifiex_init_pcie._entry_ptr.34 = internal global ptr @mwifiex_init_pcie._entry.32, section ".printk_index", align 4
@mwifiex_init_pcie._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.4, i32 3138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013mwifiex_pcie: req_reg(2) error\0A\00", [62 x i8] zeroinitializer }, align 32
@mwifiex_init_pcie._entry_ptr.37 = internal global ptr @mwifiex_init_pcie._entry.35, section ".printk_index", align 4
@mwifiex_init_pcie._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.27, ptr @.str.4, i32 3143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013mwifiex_pcie: iomap(2) error\0A\00", [32 x i8] zeroinitializer }, align 32
@mwifiex_init_pcie._entry_ptr.40 = internal global ptr @mwifiex_init_pcie._entry.38, section ".printk_index", align 4
@mwifiex_init_pcie._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.27, ptr @.str.4, i32 3149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015mwifiex_pcie: PCI memory map Virt0: %pK PCI memory map Virt2: %pK\0A\00", [59 x i8] zeroinitializer }, align 32
@mwifiex_init_pcie._entry_ptr.43 = internal global ptr @mwifiex_init_pcie._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create txbd ring\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create rxbd ring\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create evtbd ring\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate cmdbuf buffer\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate sleep_cookie buffer\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"info: txbd_ring: Allocating %d bytes\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"allocate coherent memory (%d bytes) failed!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"info: txbd_ring - base: %p, pbase: %#x:%x, len: %#x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"info: rxbd_ring: Allocating %d bytes\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"info: rxbd_ring - base: %p, pbase: %#x:%x, len: %#x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to allocate skb for RX ring.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"info: RX ring: skb=%p len=%d data=%p buf_pa=%#x:%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to map pci memory!\0A\00", [37 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"info: evtbd_ring: Allocating %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"info: CMDRSP/EVT bd_ring - base: %p pbase: %#x:%x len: %#x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to allocate skb for EVENT buf.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"info: EVT ring: skb=%p len=%d data=%p buf_pa=%#x:%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unable to allocate skb for command response data.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dma_alloc_coherent failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"alloc_scook: sleep cookie=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"performing cancel_work_sync()...\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cancel_work_sync() done\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"skipped cancel_work_sync() because we're in card reset failure path\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Clearing driver ready signature\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Setting driver ready signature\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Try %d if FW is ready <%d,%#x>\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCI-E is the winner\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCI-E is not the winner <%#x>\00", [34 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"No firmware image found! Terminating download\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"info: Downloading FW image (%d bytes)\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.mwifiex_prog_fw_w_helper = private unnamed_addr constant [25 x i8] c"mwifiex_prog_fw_w_helper\00", align 1
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read scratch register 13\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to extract wifi fw\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"info: dnld wifi firmware from %d bytes\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed reading len from boot code\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"FW download failure @ %d, invalid length %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"FW download failure @ %d, over max\09retry count\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"FW CRC error indicated by the\09helper: len = 0x%04X, txlen = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to send firmware download command\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed to read\09interrupt status during fw dnld.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Card failed to ACK download\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"info: FW download over, size %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"info: ACCESS_HW: sleep cookie=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"extract wifi-only fw failure!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad FW parse\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"input wifi-only firmware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no cmd7 before cmd1!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown dnld_cmd %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid parameter in %s <%p. len %d>\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.mwifiex_pcie_send_boot_cmd = private unnamed_addr constant [27 x i8] c"mwifiex_pcie_send_boot_cmd\00", align 1
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MWIFIEX_PCIE_MSIX\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_irq fail: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MSIx enabled!\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msi_enable = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MRVL_PCIE\00", [22 x i8] zeroinitializer }, align 32
@mwifiex_pcie_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.4, i32 3269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013mwifiex_pcie: request_irq failed: ret=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mwifiex_pcie_request_irq\00", [39 x i8] zeroinitializer }, align 32
@mwifiex_pcie_request_irq._entry_ptr = internal global ptr @mwifiex_pcie_request_irq._entry, section ".printk_index", align 4
@mwifiex_pcie_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.4, i32 2620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013mwifiex_pcie: info: %s: card=%p adapter=%p\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mwifiex_pcie_interrupt\00", [41 x i8] zeroinitializer }, align 32
@mwifiex_pcie_interrupt._entry_ptr = internal global ptr @mwifiex_pcie_interrupt._entry, section ".printk_index", align 4
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Read register failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ireg: 0x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mrvl/pcie8766_uapsta.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mrvl/pcie8897_uapsta_a0.bin\00", [36 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mrvl/pcie8897_uapsta.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mrvl/pcieuart8997_combo_v4.bin\00", [33 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mrvl/pcieusb8997_combo_v4.bin\00", [34 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): calling free_irq()\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.mwifiex_unregister_dev = private unnamed_addr constant [23 x i8] c"mwifiex_unregister_dev\00", align 1
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"info: TX DNLD Done\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"info: Rx DATA\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"info: Rx EVENT\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"info: CMD sent Interrupt\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"info: cmd_sent=%d data_sent=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SEND COMP: failed to read reg->tx_rdptr\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SEND COMP: rdptr_prev=0x%x, rdptr=0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"SEND COMP: Detach skb %p at txbd_rdidx=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RECV DATA: failed to read reg->rx_wrptr\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid RX len %d, Rd=%#x, Wr=%#x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"info: RECV DATA: Rd=%#x, Wr=%#x, Len=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to allocate skb.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"RECV DATA: Attach new sk_buff %p at rxbd_rdidx=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"info: RECV DATA: <Rd: %#x, Wr: %#x>\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"info: RECV DATA: Rcvd packet from fw successfully\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"info: Event being processed,\09do not process this interrupt just yet\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"info: Invalid read pointer...\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"EventReady: failed to read reg->evt_wrptr\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"info: EventReady: Initial <Rd: 0x%x, Wr: 0x%x>\00", [49 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"info: Read Index: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"info: Event length: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"info: Rx CMD Response\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"There is no command but got cmdrsp\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sleep cookie found at count %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"max count reached while accessing sleep cookie\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Passed NULL skb to %s\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.mwifiex_pcie_host_to_card = private unnamed_addr constant [26 x i8] c"mwifiex_pcie_host_to_card\00", align 1
@.str.149 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): invalid parameter <%p, %#x>\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.mwifiex_pcie_send_data = private unnamed_addr constant [23 x i8] c"mwifiex_pcie_send_data\00", align 1
@.str.150 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"info: SEND DATA: <Rd: %#x, Wr: %#x>\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SEND DATA: delay dnld-rdy interrupt.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"info: SEND DATA: Updated <Rd: %#x, Wr:\09%#x> and sent packet to firmware successfully\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"info: TX Ring full, can't send packets to fw\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid parameter in %s <%p, %#x>\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.mwifiex_pcie_send_cmd = private unnamed_addr constant [22 x i8] c"mwifiex_pcie_send_cmd\00", align 1
@.str.158 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"No response buffer available, send command failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"event: Wakeup device...\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware didn't wake up\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PCIE wakeup: Setting PS_STATE_AWAKE\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmd: Wakeup device completed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"event_complete: Invalid rdptr 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"event_complete: failed to read reg->evt_wrptr\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"info: ERROR: buf still valid at index %d, <%p, %p>\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"info: Updated <Rd: 0x%x, Wr: 0x%x>\00", [61 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"info: Check Events Again\0A\00", [38 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.172 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCIE register dump start\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to read firmware status\00", [33 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcie scratch register:\00", [41 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg:0x%x, value=0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCIE register dump end\0A\00", [40 x i8] zeroinitializer }, align 32
@mwifiex_pcie_reset_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.4, i32 521, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: adapter structure is not valid\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mwifiex_pcie_reset_prepare\00", [37 x i8] zeroinitializer }, align 32
@mwifiex_pcie_reset_prepare._entry_ptr = internal global ptr @mwifiex_pcie_reset_prepare._entry, section ".printk_index", align 4
@.str.181 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: vendor=0x%4.04x device=0x%4.04x rev=%d Pre-FLR\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s, successful\0A\00", [16 x i8] zeroinitializer }, align 32
@mwifiex_pcie_reset_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.183, ptr @.str.4, i32 557, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mwifiex_pcie_reset_done\00", [40 x i8] zeroinitializer }, align 32
@mwifiex_pcie_reset_done._entry_ptr = internal global ptr @mwifiex_pcie_reset_done._entry, section ".printk_index", align 4
@.str.184 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: vendor=0x%4.04x device=0x%4.04x rev=%d Post-FLR\0A\00", [43 x i8] zeroinitializer }, align 32
@mwifiex_pcie_reset_done._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.183, ptr @.str.4, i32 567, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reinit failed: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mwifiex_pcie_reset_done._entry_ptr.187 = internal global ptr @mwifiex_pcie_reset_done._entry.185, section ".printk_index", align 4
@mwifiex_pcie_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.4, i32 312, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adapter is not valid\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mwifiex_pcie_suspend\00", [43 x i8] zeroinitializer }, align 32
@mwifiex_pcie_suspend._entry_ptr = internal global ptr @mwifiex_pcie_suspend._entry, section ".printk_index", align 4
@.str.190 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cmd: failed to suspend\0A\00", [40 x i8] zeroinitializer }, align 32
@mwifiex_pcie_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.192, ptr @.str.4, i32 351, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"adapter structure is not valid\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mwifiex_pcie_resume\00", [44 x i8] zeroinitializer }, align 32
@mwifiex_pcie_resume._entry_ptr = internal global ptr @mwifiex_pcie_resume._entry, section ".printk_index", align 4
@.str.193 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device already resumed\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 3132808446, i64 4294967295]
@__sancov_gen_cov_switch_values.195 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 16, i64 11056, i64 11064, i64 11074]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 16, i64 4352, i64 4608]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.200 = internal global [5 x i64] [i64 3, i64 16, i64 11056, i64 11064, i64 11074]
@__sancov_gen_cov_switch_values.201 = internal global [5 x i64] [i64 3, i64 16, i64 11056, i64 11064, i64 11074]
@__sancov_gen_cov_switch_values.202 = internal global [5 x i64] [i64 3, i64 16, i64 11056, i64 11064, i64 11074]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.204 = internal global [5 x i64] [i64 3, i64 16, i64 11056, i64 11064, i64 11074]
@__sancov_gen_cov_switch_values.205 = internal global [5 x i64] [i64 3, i64 16, i64 11056, i64 11064, i64 11074]
@__sancov_gen_cov_switch_values.206 = internal global [5 x i64] [i64 3, i64 16, i64 11056, i64 11064, i64 11074]
@__sancov_gen_cov_switch_values.207 = internal global [5 x i64] [i64 3, i64 16, i64 11056, i64 11064, i64 11074]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.209 = private unnamed_addr constant [13 x i8] c"mwifiex_pcie\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 586, i32 26 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3453, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant [12 x i8] c"mwifiex_ids\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 485, i32 35 }
@___asan_gen_.224 = private unnamed_addr constant [25 x i8] c"mwifiex_pcie_err_handler\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 574, i32 40 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c"mwifiex_pcie_pm_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 581, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"mwifiex_pcie8766\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 159, i32 41 }
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"mwifiex_pcie8897\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 167, i32 41 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"mwifiex_pcie8997\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 177, i32 41 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"mwifiex_reg_8766\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 38, i32 43 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"mwifiex_reg_8897\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 70, i32 43 }
@___asan_gen_.245 = private unnamed_addr constant [27 x i8] c"mem_type_mapping_tbl_w8897\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 144, i32 35 }
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"mwifiex_reg_8997\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 107, i32 43 }
@___asan_gen_.251 = private unnamed_addr constant [27 x i8] c"mem_type_mapping_tbl_w8997\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 155, i32 35 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 385, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 405, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [9 x i8] c"pcie_ops\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3420, i32 30 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 420, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 87, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2981, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2874, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2911, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2921, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2926, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2934, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2950, i32 5 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2968, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2974, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2831, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2844, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [28 x i8] c"mwifiex_pcie_of_match_table\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 187, i32 34 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 196, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3121, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3125, i32 36 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3127, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3132, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3138, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3143, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3148, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3042, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3048, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3054, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3060, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3067, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1025, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1033, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1039, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1091, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1105, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 805, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 818, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 214, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 326, i32 6 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1156, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1170, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 862, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 878, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1213, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1270, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1278, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3191, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3193, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3195, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3201, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2484, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2501, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2531, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2534, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2310, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2315, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2333, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2341, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2345, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2361, i32 5 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2373, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2385, i32 5 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2391, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2417, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2427, i32 5 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2441, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2454, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 282, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2210, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2226, i32 5 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2233, i32 5 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2239, i32 5 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2278, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1716, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3236, i32 9 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3243, i32 5 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3250, i32 5 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3262, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3267, i32 6 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3269, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2619, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2566, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2600, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3289, i32 28 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3297, i32 29 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3300, i32 29 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3318, i32 29 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3320, i32 29 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3374, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2695, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2701, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2707, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2714, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2724, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1345, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1350, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1366, i32 4 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1584, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1616, i32 4 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1622, i32 4 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1638, i32 4 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1650, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1675, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1696, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2037, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2044, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2051, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2056, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2067, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2087, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1919, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1966, i32 4 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 635, i32 4 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 647, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2749, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1441, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1451, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1522, i32 4 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1535, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1540, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1802, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1810, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 661, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 681, i32 4 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 689, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 704, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2132, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2140, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2159, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2170, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2182, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2780, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2783, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2788, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2791, i32 23 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2795, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2798, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 520, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 525, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 539, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 556, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 561, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 567, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 312, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 320, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 351, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.783 = private constant [47 x i8] c"../drivers/net/wireless/marvell/mwifiex/pcie.c\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 358, i32 3 }
@llvm.compiler.used = appending global [216 x ptr] [ptr @__UNIQUE_ID_author494, ptr @__UNIQUE_ID_description495, ptr @__UNIQUE_ID_file497, ptr @__UNIQUE_ID_license498, ptr @__UNIQUE_ID_version496, ptr @__exitcall_mwifiex_pcie_exit, ptr @__initcall__kmod_mwifiex_pcie__493_3449_mwifiex_pcie_init6, ptr @__modver_attr, ptr @mwifiex_init_pcie._entry, ptr @mwifiex_init_pcie._entry.29, ptr @mwifiex_init_pcie._entry.32, ptr @mwifiex_init_pcie._entry.35, ptr @mwifiex_init_pcie._entry.38, ptr @mwifiex_init_pcie._entry.41, ptr @mwifiex_init_pcie._entry_ptr, ptr @mwifiex_init_pcie._entry_ptr.31, ptr @mwifiex_init_pcie._entry_ptr.34, ptr @mwifiex_init_pcie._entry_ptr.37, ptr @mwifiex_init_pcie._entry_ptr.40, ptr @mwifiex_init_pcie._entry_ptr.43, ptr @mwifiex_pcie_exit, ptr @mwifiex_pcie_interrupt._entry, ptr @mwifiex_pcie_interrupt._entry_ptr, ptr @mwifiex_pcie_probe._entry, ptr @mwifiex_pcie_probe._entry_ptr, ptr @mwifiex_pcie_probe_of._entry, ptr @mwifiex_pcie_probe_of._entry_ptr, ptr @mwifiex_pcie_request_irq._entry, ptr @mwifiex_pcie_request_irq._entry_ptr, ptr @mwifiex_pcie_reset_done._entry, ptr @mwifiex_pcie_reset_done._entry.185, ptr @mwifiex_pcie_reset_done._entry_ptr, ptr @mwifiex_pcie_reset_done._entry_ptr.187, ptr @mwifiex_pcie_reset_prepare._entry, ptr @mwifiex_pcie_reset_prepare._entry_ptr, ptr @mwifiex_pcie_resume._entry, ptr @mwifiex_pcie_resume._entry_ptr, ptr @mwifiex_pcie_suspend._entry, ptr @mwifiex_pcie_suspend._entry_ptr, ptr @mwifiex_pcie, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mwifiex_ids, ptr @mwifiex_pcie_err_handler, ptr @mwifiex_pcie_pm_ops, ptr @mwifiex_pcie8766, ptr @mwifiex_pcie8897, ptr @mwifiex_pcie8997, ptr @mwifiex_reg_8766, ptr @mwifiex_reg_8897, ptr @mem_type_mapping_tbl_w8897, ptr @mwifiex_reg_8997, ptr @mem_type_mapping_tbl_w8997, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mwifiex_pcie_probe.__key, ptr @.str.7, ptr @pcie_ops, ptr @.str.8, ptr @init_completion.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @mwifiex_pcie_of_match_table, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193], section "llvm.metadata"
@0 = internal global [192 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_ids to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie8766 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie8897 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie8997 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_reg_8766 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_reg_8897 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_type_mapping_tbl_w8897 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_reg_8997 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_type_mapping_tbl_w8997 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie_of_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie_probe_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_pcie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_pcie._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_pcie._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_pcie._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_pcie._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_pcie._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie_reset_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie_reset_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie_reset_done._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_pcie_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pcie_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mwifiex_pcie, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_pcie_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @mwifiex_pcie) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pcie_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_pcie_probe.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_pcie_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !438

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  %conv = zext i16 %1 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %conv3 = zext i16 %3 to i32
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  %conv4 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_pcie_probe.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 884, i32 noundef 3520) #9
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %fw_done = getelementptr inbounds %struct.pcie_service_card, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %fw_done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %fw_done, align 4
  %wait.i = getelementptr inbounds %struct.pcie_service_card, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #9
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %call.i, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.end8.if.end39_crit_edge, label %if.then11

if.end8.if.end39_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %10 = inttoptr i32 %9 to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %pcie to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %pcie, align 4
  %blksz_fw_dl = getelementptr inbounds %struct.mwifiex_pcie_device, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %blksz_fw_dl to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %blksz_fw_dl, align 4
  %blksz_fw_dl15 = getelementptr inbounds %struct.pcie_service_card, ptr %call.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %blksz_fw_dl15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %blksz_fw_dl15, align 4
  %tx_buf_size = getelementptr inbounds %struct.mwifiex_pcie_device, ptr %10, i32 0, i32 2
  %17 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tx_buf_size, align 2
  %tx_buf_size17 = getelementptr inbounds %struct.pcie_service_card, ptr %call.i, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %tx_buf_size17 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %tx_buf_size17, align 2
  %can_dump_fw = getelementptr inbounds %struct.mwifiex_pcie_device, ptr %10, i32 0, i32 3
  %20 = ptrtoint ptr %can_dump_fw to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %can_dump_fw, align 4, !range !439
  %can_dump_fw20 = getelementptr inbounds %struct.pcie_service_card, ptr %call.i, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %can_dump_fw20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %can_dump_fw20, align 4
  %mem_type_mapping_tbl = getelementptr inbounds %struct.mwifiex_pcie_device, ptr %10, i32 0, i32 4
  %23 = ptrtoint ptr %mem_type_mapping_tbl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mem_type_mapping_tbl, align 4
  %mem_type_mapping_tbl23 = getelementptr inbounds %struct.pcie_service_card, ptr %call.i, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %mem_type_mapping_tbl23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %mem_type_mapping_tbl23, align 4
  %num_mem_types = getelementptr inbounds %struct.mwifiex_pcie_device, ptr %10, i32 0, i32 5
  %26 = ptrtoint ptr %num_mem_types to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_mem_types, align 4
  %num_mem_types25 = getelementptr inbounds %struct.pcie_service_card, ptr %call.i, i32 0, i32 2, i32 5
  %28 = ptrtoint ptr %num_mem_types25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %num_mem_types25, align 4
  %can_ext_scan = getelementptr inbounds %struct.mwifiex_pcie_device, ptr %10, i32 0, i32 6
  %29 = ptrtoint ptr %can_ext_scan to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %can_ext_scan, align 1, !range !439
  %can_ext_scan28 = getelementptr inbounds %struct.pcie_service_card, ptr %call.i, i32 0, i32 2, i32 6
  %31 = ptrtoint ptr %can_ext_scan28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %can_ext_scan28, align 1
  %work = getelementptr inbounds %struct.pcie_service_card, ptr %call.i, i32 0, i32 37
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %32 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.pcie_service_card, ptr %call.i, i32 0, i32 37, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @mwifiex_pcie_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry35 = getelementptr inbounds %struct.pcie_service_card, ptr %call.i, i32 0, i32 37, i32 1
  %33 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry35, ptr %entry35, align 4
  %prev.i = getelementptr inbounds %struct.pcie_service_card, ptr %call.i, i32 0, i32 37, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry35, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.pcie_service_card, ptr %call.i, i32 0, i32 37, i32 2
  %35 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mwifiex_pcie_work, ptr %func, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then11, %if.end8.if.end39_crit_edge
  %of_node = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 27
  %36 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node, align 8
  %tobool41.not = icmp eq ptr %37, null
  br i1 %tobool41.not, label %if.end39.if.end48_crit_edge, label %if.then42

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then42:                                        ; preds = %if.end39
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node, align 8
  %call.i93 = tail call ptr @of_match_node(ptr noundef nonnull @mwifiex_pcie_of_match_table, ptr noundef %39) #9
  %tobool.not.i = icmp eq ptr %call.i93, null
  br i1 %tobool.not.i, label %mwifiex_pcie_probe_of.exit, label %if.then42.if.end48_crit_edge

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

mwifiex_pcie_probe_of.exit:                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #12
  br label %cleanup

if.end48:                                         ; preds = %if.then42.if.end48_crit_edge, %if.end39.if.end48_crit_edge
  tail call void @mwifiex_initialize_quirks(ptr noundef nonnull %call.i) #9
  %call51 = tail call i32 @mwifiex_add_card(ptr noundef nonnull %call.i, ptr noundef %fw_done, ptr noundef nonnull @pcie_ops, i8 noundef zeroext 1, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end48.cleanup_crit_edge, label %do.end56

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.end48.cleanup_crit_edge, %mwifiex_pcie_probe_of.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end56 ], [ -12, %do.end.cleanup_crit_edge ], [ -22, %mwifiex_pcie_probe_of.exit ], [ 0, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_pcie_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fw_done = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %fw_done) #9
  %adapter1 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.end15_crit_edge, label %if.end8

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end8:                                          ; preds = %if.end
  %fw_status6 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fw_status6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fw_status6, align 4
  %conv = zext i16 %9 to i32
  %card1.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card1.i, align 4
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %11, i32 0, i32 31
  %12 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %conv
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 12246270, i32 %14)
  %cmp = icmp eq i32 %14, 12246270
  br i1 %cmp, label %land.lhs.true, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %mfg_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 147
  %15 = ptrtoint ptr %mfg_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mfg_mode, align 4, !range !439
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not = icmp eq i8 %16, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then11:                                        ; preds = %land.lhs.true
  tail call void @mwifiex_deauthenticate_all(ptr noundef nonnull %3) #9
  %17 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %priv_num, align 4
  %conv.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp29.not.i = icmp eq i8 %18, 0
  br i1 %cmp29.not.i, label %if.then11.mwifiex_get_priv.exit_crit_edge, label %if.then11.for.body.i_crit_edge

if.then11.for.body.i_crit_edge:                   ; preds = %if.then11
  br label %for.body.i

if.then11.mwifiex_get_priv.exit_crit_edge:        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then11.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then11.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %3, i32 0, i32 4, i32 %i.030.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.mwifiex_get_priv.exit_crit_edge

for.body.i.mwifiex_get_priv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %for.body.i.mwifiex_get_priv.exit_crit_edge, %if.then11.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %if.then11.mwifiex_get_priv.exit_crit_edge ], [ %20, %for.body.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %call13 = tail call i32 @mwifiex_disable_auto_ds(ptr noundef %cond.i) #9
  %call14 = tail call i32 @mwifiex_init_shutdown_fw(ptr noundef %cond.i, i32 noundef 2) #9
  br label %if.end15

if.end15:                                         ; preds = %mwifiex_get_priv.exit, %land.lhs.true.if.end15_crit_edge, %if.end8.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %call16 = tail call i32 @mwifiex_remove_card(ptr noundef nonnull %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_pcie_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mwifiex_pcie_remove(ptr noundef %pdev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_pcie_coredump(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work_flags = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 38
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %work_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %work = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_pcie_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %work_flags = getelementptr i8, ptr %work, i32 44
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %work_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %adapter = getelementptr i8, ptr %work, i32 -824
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %call.i = tail call noalias ptr @vzalloc(i32 noundef 2097152) #13
  %devdump_data.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 167
  %2 = ptrtoint ptr %devdump_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %devdump_data.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.10) #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  tail call void @mwifiex_drv_info_dump(ptr noundef %1) #9
  %card1.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %card1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card1.i.i, align 4
  %pcie.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %pcie.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcie.i.i, align 4
  %can_dump_fw.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %4, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %can_dump_fw.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %can_dump_fw.i.i, align 4, !range !439
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %if.end.i.mwifiex_pcie_fw_dump.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.mwifiex_pcie_fw_dump.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_pcie_fw_dump.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end.i
  %num_mem_types.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 144
  %9 = ptrtoint ptr %num_mem_types.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_mem_types.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp246.not.i.i = icmp eq i8 %10, 0
  br i1 %cmp246.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %mem_type_mapping_tbl.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 143
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end11.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %if.end11.i.i.for.body.i.i_crit_edge ]
  %11 = ptrtoint ptr %mem_type_mapping_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem_type_mapping_tbl.i.i, align 4
  %mem_ptr.i.i = getelementptr %struct.memory_type_mapping, ptr %12, i32 %indvars.iv.i.i, i32 1
  %13 = ptrtoint ptr %mem_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mem_ptr.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %14, null
  br i1 %tobool7.not.i.i, label %for.body.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i

for.body.i.i.if.end11.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %14) #9
  %15 = ptrtoint ptr %mem_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %mem_ptr.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %for.body.i.i.if.end11.i.i_crit_edge
  %mem_size.i.i = getelementptr %struct.memory_type_mapping, ptr %12, i32 %indvars.iv.i.i, i32 2
  %16 = ptrtoint ptr %mem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %mem_size.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %17 = ptrtoint ptr %num_mem_types.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_mem_types.i.i, align 4
  %19 = zext i8 %18 to i32
  %cmp.i.i = icmp ult i32 %indvars.iv.next.i.i, %19
  br i1 %cmp.i.i, label %if.end11.i.i.for.body.i.i_crit_edge, label %if.end11.i.i.for.end.i.i_crit_edge

if.end11.i.i.for.end.i.i_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.end11.i.i.for.body.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end11.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.11) #9
  %call.i.i = tail call fastcc i32 @mwifiex_pcie_rdwr_firmware(ptr noundef %1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp12.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp12.i.i, label %for.end.i.i.mwifiex_pcie_fw_dump.exit.i_crit_edge, label %for.body28.lr.ph.i.i

for.end.i.i.mwifiex_pcie_fw_dump.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_pcie_fw_dump.exit.i

for.body28.lr.ph.i.i:                             ; preds = %for.end.i.i
  %fw_dump_start.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %6, i32 0, i32 29
  %20 = ptrtoint ptr %fw_dump_start.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fw_dump_start.i.i, align 4
  %conv16.i.i = zext i16 %21 to i32
  %22 = ptrtoint ptr %card1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card1.i.i, align 4
  %pci_mmap1.i.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %23, i32 0, i32 31
  %24 = ptrtoint ptr %pci_mmap1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_mmap1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %conv16.i.i
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #9, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp19.i.i = icmp eq i8 %26, 0
  %narrow.i.i = select i1 %cmp19.i.i, i8 1, i8 %26
  %mem_type_mapping_tbl30.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 143
  %fw_dump_end.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %6, i32 0, i32 30
  %wide.trip.count.i.i = zext i8 %narrow.i.i to i32
  br label %for.body28.i.i

for.body28.i.i:                                   ; preds = %for.inc120.i.i.for.body28.i.i_crit_edge, %for.body28.lr.ph.i.i
  %indvars.iv271.i.i = phi i32 [ 0, %for.body28.lr.ph.i.i ], [ %indvars.iv.next272.i.i, %for.inc120.i.i.for.body28.i.i_crit_edge ]
  %doneflag.0260.i.i = phi i8 [ 0, %for.body28.lr.ph.i.i ], [ %54, %for.inc120.i.i.for.body28.i.i_crit_edge ]
  %27 = ptrtoint ptr %mem_type_mapping_tbl30.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mem_type_mapping_tbl30.i.i, align 4
  %arrayidx32.i.i = getelementptr %struct.memory_type_mapping, ptr %28, i32 %indvars.iv271.i.i
  br i1 %cmp19.i.i, label %for.body28.i.i.if.end67.i.i_crit_edge, label %if.then36.i.i

for.body28.i.i.if.end67.i.i_crit_edge:            ; preds = %for.body28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.i

if.then36.i.i:                                    ; preds = %for.body28.i.i
  %call37.i.i = tail call fastcc i32 @mwifiex_pcie_rdwr_firmware(ptr noundef %1, i8 noundef zeroext %doneflag.0260.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37.i.i)
  %cmp38.i.i = icmp eq i32 %call37.i.i, 1
  br i1 %cmp38.i.i, label %if.then36.i.i.mwifiex_pcie_fw_dump.exit.i_crit_edge, label %if.end41.i.i

if.then36.i.i.mwifiex_pcie_fw_dump.exit.i_crit_edge: ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_pcie_fw_dump.exit.i

if.end41.i.i:                                     ; preds = %if.then36.i.i
  %29 = ptrtoint ptr %fw_dump_start.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fw_dump_start.i.i, align 4
  %conv43.i.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %card1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card1.i.i, align 4
  %pci_mmap1.i219.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %32, i32 0, i32 31
  %33 = ptrtoint ptr %pci_mmap1.i219.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_mmap1.i219.i.i, align 4
  %add.ptr.i220.i.i = getelementptr i8, ptr %34, i32 %conv43.i.i
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i220.i.i) #9, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  %conv50.i.i = zext i8 %35 to i32
  %inc52.i.i = add nuw nsw i32 %conv43.i.i, 1
  %36 = ptrtoint ptr %card1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card1.i.i, align 4
  %pci_mmap1.i219.1.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %37, i32 0, i32 31
  %38 = ptrtoint ptr %pci_mmap1.i219.1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci_mmap1.i219.1.i.i, align 4
  %add.ptr.i220.1.i.i = getelementptr i8, ptr %39, i32 %inc52.i.i
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i220.1.i.i) #9, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  %conv50.1.i.i = zext i8 %40 to i32
  %shl.1.i.i = shl nuw nsw i32 %conv50.1.i.i, 8
  %or.1.i.i = or i32 %shl.1.i.i, %conv50.i.i
  %inc52.1.i.i = add nuw nsw i32 %conv43.i.i, 2
  %41 = ptrtoint ptr %card1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card1.i.i, align 4
  %pci_mmap1.i219.2.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %42, i32 0, i32 31
  %43 = ptrtoint ptr %pci_mmap1.i219.2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci_mmap1.i219.2.i.i, align 4
  %add.ptr.i220.2.i.i = getelementptr i8, ptr %44, i32 %inc52.1.i.i
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i220.2.i.i) #9, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  %conv50.2.i.i = zext i8 %45 to i32
  %shl.2.i.i = shl nuw nsw i32 %conv50.2.i.i, 16
  %or.2.i.i = or i32 %shl.2.i.i, %or.1.i.i
  %inc52.2.i.i = add nuw nsw i32 %conv43.i.i, 3
  %46 = ptrtoint ptr %card1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card1.i.i, align 4
  %pci_mmap1.i219.3.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %47, i32 0, i32 31
  %48 = ptrtoint ptr %pci_mmap1.i219.3.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci_mmap1.i219.3.i.i, align 4
  %add.ptr.i220.3.i.i = getelementptr i8, ptr %49, i32 %inc52.2.i.i
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i220.3.i.i) #9, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  %conv50.3.i.i = zext i8 %50 to i32
  %shl.3.i.i = shl nuw i32 %conv50.3.i.i, 24
  %or.3.i.i = or i32 %shl.3.i.i, %or.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.3.i.i)
  %cmp58.i.i = icmp eq i32 %or.3.i.i, 0
  br i1 %cmp58.i.i, label %cleanup.i.i, label %if.end41.i.i.if.end67.i.i_crit_edge

if.end41.i.i.if.end67.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %if.end41.i.i.if.end67.i.i_crit_edge, %for.body28.i.i.if.end67.i.i_crit_edge
  %memory_size.1230.i.i = phi i32 [ %or.3.i.i, %if.end41.i.i.if.end67.i.i_crit_edge ], [ 1441792, %for.body28.i.i.if.end67.i.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef -2147483648, ptr noundef nonnull @.str.14, ptr noundef %arrayidx32.i.i, i32 noundef %memory_size.1230.i.i) #9
  %add.i.i = add i32 %memory_size.1230.i.i, 1
  %call68.i.i = tail call noalias ptr @vmalloc(i32 noundef %add.i.i) #13
  %mem_ptr69.i.i = getelementptr %struct.memory_type_mapping, ptr %28, i32 %indvars.iv271.i.i, i32 1
  %51 = ptrtoint ptr %mem_ptr69.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call68.i.i, ptr %mem_ptr69.i.i, align 4
  %mem_size70.i.i = getelementptr %struct.memory_type_mapping, ptr %28, i32 %indvars.iv271.i.i, i32 2
  %52 = ptrtoint ptr %mem_size70.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %memory_size.1230.i.i, ptr %mem_size70.i.i, align 4
  %tobool72.not.i.i = icmp eq ptr %call68.i.i, null
  br i1 %tobool72.not.i.i, label %if.then73.i.i, label %if.end76.i.i

if.then73.i.i:                                    ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.15, ptr noundef %arrayidx32.i.i) #9
  br label %mwifiex_pcie_fw_dump.exit.i

if.end76.i.i:                                     ; preds = %if.end67.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call68.i.i, i32 %memory_size.1230.i.i
  %done_flag.i.i = getelementptr %struct.memory_type_mapping, ptr %28, i32 %indvars.iv271.i.i, i32 3
  %53 = ptrtoint ptr %done_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %done_flag.i.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef -2147483648, ptr noundef nonnull @.str.16, ptr noundef %arrayidx32.i.i) #9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.end112.i.i.do.body.i.i_crit_edge, %if.end76.i.i
  %dbg_ptr.0.i.i = phi ptr [ %call68.i.i, %if.end76.i.i ], [ %dbg_ptr.1.lcssa.i.i, %for.end112.i.i.do.body.i.i_crit_edge ]
  %end_ptr.0.i.i = phi ptr [ %add.ptr.i.i, %if.end76.i.i ], [ %end_ptr.1.lcssa.i.i, %for.end112.i.i.do.body.i.i_crit_edge ]
  %memory_size.2.i.i = phi i32 [ %memory_size.1230.i.i, %if.end76.i.i ], [ %memory_size.3.lcssa.i.i, %for.end112.i.i.do.body.i.i_crit_edge ]
  %call80.i.i = tail call fastcc i32 @mwifiex_pcie_rdwr_firmware(ptr noundef %1, i8 noundef zeroext %54) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call80.i.i)
  %cmp81.i.i = icmp eq i32 %call80.i.i, 1
  br i1 %cmp81.i.i, label %do.body.i.i.mwifiex_pcie_fw_dump.exit.i_crit_edge, label %if.end84.i.i

do.body.i.i.mwifiex_pcie_fw_dump.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_pcie_fw_dump.exit.i

if.end84.i.i:                                     ; preds = %do.body.i.i
  %55 = ptrtoint ptr %fw_dump_start.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %fw_dump_start.i.i, align 4
  %57 = ptrtoint ptr %fw_dump_end.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %fw_dump_end.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %58)
  %cmp89.not251.i.i = icmp ugt i16 %56, %58
  br i1 %cmp89.not251.i.i, label %if.end84.i.i.for.end112.i.i_crit_edge, label %for.body91.preheader.i.i

if.end84.i.i.for.end112.i.i_crit_edge:            ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end112.i.i

for.body91.preheader.i.i:                         ; preds = %if.end84.i.i
  %conv87.i.i = zext i16 %58 to i32
  %conv86.i.i = zext i16 %56 to i32
  br label %for.body91.i.i

for.body91.i.i:                                   ; preds = %for.inc110.i.i.for.body91.i.i_crit_edge, %for.body91.preheader.i.i
  %memory_size.3255.i.i = phi i32 [ %memory_size.4.i.i, %for.inc110.i.i.for.body91.i.i_crit_edge ], [ %memory_size.2.i.i, %for.body91.preheader.i.i ]
  %end_ptr.1254.i.i = phi ptr [ %end_ptr.2.i.i, %for.inc110.i.i.for.body91.i.i_crit_edge ], [ %end_ptr.0.i.i, %for.body91.preheader.i.i ]
  %dbg_ptr.1253.i.i = phi ptr [ %dbg_ptr.2.i.i, %for.inc110.i.i.for.body91.i.i_crit_edge ], [ %dbg_ptr.0.i.i, %for.body91.preheader.i.i ]
  %reg2.1252.i.i = phi i32 [ %inc111.i.i, %for.inc110.i.i.for.body91.i.i_crit_edge ], [ %conv86.i.i, %for.body91.preheader.i.i ]
  %59 = ptrtoint ptr %card1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card1.i.i, align 4
  %pci_mmap1.i225.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %60, i32 0, i32 31
  %61 = ptrtoint ptr %pci_mmap1.i225.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pci_mmap1.i225.i.i, align 4
  %add.ptr.i226.i.i = getelementptr i8, ptr %62, i32 %reg2.1252.i.i
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i226.i.i) #9, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  %64 = ptrtoint ptr %dbg_ptr.1253.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %dbg_ptr.1253.i.i, align 1
  %cmp93.i.i = icmp ult ptr %dbg_ptr.1253.i.i, %end_ptr.1254.i.i
  br i1 %cmp93.i.i, label %if.then95.i.i, label %if.end96.i.i

if.then95.i.i:                                    ; preds = %for.body91.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i.i = getelementptr i8, ptr %dbg_ptr.1253.i.i, i32 1
  br label %for.inc110.i.i

if.end96.i.i:                                     ; preds = %for.body91.i.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.17) #9
  %add97.i.i = add i32 %memory_size.3255.i.i, 16384
  %call98.i.i = tail call noalias ptr @vzalloc(i32 noundef %add97.i.i) #13
  %tobool99.not.i.i = icmp eq ptr %call98.i.i, null
  br i1 %tobool99.not.i.i, label %if.end96.i.i.mwifiex_pcie_fw_dump.exit.i_crit_edge, label %if.end101.i.i

if.end96.i.i.mwifiex_pcie_fw_dump.exit.i_crit_edge: ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_pcie_fw_dump.exit.i

if.end101.i.i:                                    ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %mem_ptr69.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mem_ptr69.i.i, align 4
  %67 = call ptr @memcpy(ptr %call98.i.i, ptr %66, i32 %memory_size.3255.i.i)
  %68 = load ptr, ptr %mem_ptr69.i.i, align 4
  tail call void @vfree(ptr noundef %68) #9
  %69 = ptrtoint ptr %mem_ptr69.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call98.i.i, ptr %mem_ptr69.i.i, align 4
  %add.ptr106.i.i = getelementptr i8, ptr %call98.i.i, i32 %memory_size.3255.i.i
  %add.ptr109.i.i = getelementptr i8, ptr %call98.i.i, i32 %add97.i.i
  br label %for.inc110.i.i

for.inc110.i.i:                                   ; preds = %if.end101.i.i, %if.then95.i.i
  %dbg_ptr.2.i.i = phi ptr [ %incdec.ptr.i.i, %if.then95.i.i ], [ %add.ptr106.i.i, %if.end101.i.i ]
  %end_ptr.2.i.i = phi ptr [ %end_ptr.1254.i.i, %if.then95.i.i ], [ %add.ptr109.i.i, %if.end101.i.i ]
  %memory_size.4.i.i = phi i32 [ %memory_size.3255.i.i, %if.then95.i.i ], [ %add97.i.i, %if.end101.i.i ]
  %inc111.i.i = add nuw nsw i32 %reg2.1252.i.i, 1
  %exitcond.i.i = icmp eq i32 %reg2.1252.i.i, %conv87.i.i
  br i1 %exitcond.i.i, label %for.inc110.i.i.for.end112.i.i_crit_edge, label %for.inc110.i.i.for.body91.i.i_crit_edge

for.inc110.i.i.for.body91.i.i_crit_edge:          ; preds = %for.inc110.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body91.i.i

for.inc110.i.i.for.end112.i.i_crit_edge:          ; preds = %for.inc110.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end112.i.i

for.end112.i.i:                                   ; preds = %for.inc110.i.i.for.end112.i.i_crit_edge, %if.end84.i.i.for.end112.i.i_crit_edge
  %dbg_ptr.1.lcssa.i.i = phi ptr [ %dbg_ptr.0.i.i, %if.end84.i.i.for.end112.i.i_crit_edge ], [ %dbg_ptr.2.i.i, %for.inc110.i.i.for.end112.i.i_crit_edge ]
  %end_ptr.1.lcssa.i.i = phi ptr [ %end_ptr.0.i.i, %if.end84.i.i.for.end112.i.i_crit_edge ], [ %end_ptr.2.i.i, %for.inc110.i.i.for.end112.i.i_crit_edge ]
  %memory_size.3.lcssa.i.i = phi i32 [ %memory_size.2.i.i, %if.end84.i.i.for.end112.i.i_crit_edge ], [ %memory_size.4.i.i, %for.inc110.i.i.for.end112.i.i_crit_edge ]
  %cmp113.not.i.i = icmp eq i32 %call80.i.i, 2
  br i1 %cmp113.not.i.i, label %for.inc120.i.i, label %for.end112.i.i.do.body.i.i_crit_edge

for.end112.i.i.do.body.i.i_crit_edge:             ; preds = %for.end112.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

cleanup.i.i:                                      ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.12) #9
  %fw_dump_ctrl.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %6, i32 0, i32 28
  %70 = ptrtoint ptr %fw_dump_ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %fw_dump_ctrl.i.i, align 2
  %conv61.i.i = zext i16 %71 to i32
  %fw_dump_read_done.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %6, i32 0, i32 32
  %72 = ptrtoint ptr %fw_dump_read_done.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %fw_dump_read_done.i.i, align 1
  %conv62.i.i = zext i8 %73 to i32
  %74 = ptrtoint ptr %card1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card1.i.i, align 4
  %pci_mmap1.i222.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %75, i32 0, i32 31
  %76 = ptrtoint ptr %pci_mmap1.i222.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pci_mmap1.i222.i.i, align 4
  %add.ptr.i223.i.i = getelementptr i8, ptr %77, i32 %conv61.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %78 = shl nuw i32 %conv62.i.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i223.i.i, i32 %78) #9, !srcloc !445
  br label %for.end122.i.i

for.inc120.i.i:                                   ; preds = %for.end112.i.i
  %79 = ptrtoint ptr %mem_ptr69.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mem_ptr69.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %dbg_ptr.1.lcssa.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %80 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef -2147483648, ptr noundef nonnull @.str.18, ptr noundef %arrayidx32.i.i, i32 noundef %sub.ptr.sub.i.i) #9
  %indvars.iv.next272.i.i = add nuw nsw i32 %indvars.iv271.i.i, 1
  %exitcond273.not.i.i = icmp eq i32 %indvars.iv.next272.i.i, %wide.trip.count.i.i
  br i1 %exitcond273.not.i.i, label %for.inc120.i.i.for.end122.i.i_crit_edge, label %for.inc120.i.i.for.body28.i.i_crit_edge

for.inc120.i.i.for.body28.i.i_crit_edge:          ; preds = %for.inc120.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28.i.i

for.inc120.i.i.for.end122.i.i_crit_edge:          ; preds = %for.inc120.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end122.i.i

for.end122.i.i:                                   ; preds = %for.inc120.i.i.for.end122.i.i_crit_edge, %cleanup.i.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.19) #9
  br label %mwifiex_pcie_fw_dump.exit.i

mwifiex_pcie_fw_dump.exit.i:                      ; preds = %for.end122.i.i, %if.end96.i.i.mwifiex_pcie_fw_dump.exit.i_crit_edge, %do.body.i.i.mwifiex_pcie_fw_dump.exit.i_crit_edge, %if.then73.i.i, %if.then36.i.i.mwifiex_pcie_fw_dump.exit.i_crit_edge, %for.end.i.i.mwifiex_pcie_fw_dump.exit.i_crit_edge, %if.end.i.mwifiex_pcie_fw_dump.exit.i_crit_edge
  tail call void @mwifiex_prepare_fw_dump_info(ptr noundef %1) #9
  tail call void @mwifiex_upload_device_dump(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %mwifiex_pcie_fw_dump.exit.i, %if.then.i, %entry.if.end_crit_edge
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %work_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %adapter5 = getelementptr i8, ptr %work, i32 -824
  %81 = ptrtoint ptr %adapter5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %adapter5, align 4
  %card1.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %82, i32 0, i32 17
  %83 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %card1.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %call.i10 = tail call i32 @pci_try_reset_function(ptr noundef %86) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_initialize_quirks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_add_card(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_drv_info_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_prepare_fw_dump_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_upload_device_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_pcie_rdwr_firmware(ptr noundef %adapter, i8 noundef zeroext %doneflag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %fw_status3 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fw_status3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fw_status3, align 4
  %conv = zext i16 %5 to i32
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not = icmp eq i32 %8, -1
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_dump_ctrl = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 28
  %9 = ptrtoint ptr %fw_dump_ctrl to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fw_dump_ctrl, align 2
  %conv4 = zext i16 %10 to i32
  %fw_dump_host_ready = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 31
  %11 = ptrtoint ptr %fw_dump_host_ready to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fw_dump_host_ready, align 4
  %conv5 = zext i8 %12 to i32
  %13 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card1, align 4
  %pci_mmap1.i65 = getelementptr inbounds %struct.pcie_service_card, ptr %14, i32 0, i32 31
  %15 = ptrtoint ptr %pci_mmap1.i65 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_mmap1.i65, align 4
  %add.ptr.i66 = getelementptr i8, ptr %16, i32 %conv4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %17 = shl nuw i32 %conv5, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %17) #9, !srcloc !445
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %doneflag)
  %tobool20.not = icmp ne i8 %doneflag, 0
  br label %for.body

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %if.end
  %tries.074 = phi i32 [ 0, %if.end ], [ %inc, %if.end41.for.body_crit_edge ]
  %18 = ptrtoint ptr %fw_dump_ctrl to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fw_dump_ctrl, align 2
  %conv12 = zext i16 %19 to i32
  %20 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card1, align 4
  %pci_mmap1.i68 = getelementptr inbounds %struct.pcie_service_card, ptr %21, i32 0, i32 31
  %22 = ptrtoint ptr %pci_mmap1.i68 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_mmap1.i68, align 4
  %add.ptr.i69 = getelementptr i8, ptr %23, i32 %conv12
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i69) #9, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp15 = icmp eq i8 %24, -1
  br i1 %cmp15, label %for.body.cleanup_crit_edge, label %if.end18

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %doneflag)
  %cmp23 = icmp eq i8 %24, %doneflag
  %or.cond = select i1 %tobool20.not, i1 %cmp23, i1 false
  br i1 %or.cond, label %if.end18.cleanup_crit_edge, label %if.end26

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %25 = ptrtoint ptr %fw_dump_host_ready to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fw_dump_host_ready, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp30.not = icmp eq i8 %24, %26
  br i1 %cmp30.not, label %if.end26.if.end41_crit_edge, label %if.then32

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 536870912, ptr noundef nonnull @.str.20) #9
  %27 = ptrtoint ptr %fw_dump_ctrl to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fw_dump_ctrl, align 2
  %conv34 = zext i16 %28 to i32
  %29 = ptrtoint ptr %fw_dump_host_ready to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fw_dump_host_ready, align 4
  %conv36 = zext i8 %30 to i32
  %31 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card1, align 4
  %pci_mmap1.i71 = getelementptr inbounds %struct.pcie_service_card, ptr %32, i32 0, i32 31
  %33 = ptrtoint ptr %pci_mmap1.i71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_mmap1.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %34, i32 %conv34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %35 = shl nuw i32 %conv36, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %35) #9, !srcloc !445
  br label %if.end41

if.end41:                                         ; preds = %if.then32, %if.end26.if.end41_crit_edge
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #9
  %inc = add nuw nsw i32 %tries.074, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.end, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.21) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end18.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end18.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_reset_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_init_pcie(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %driver_data.i.i, align 4
  %call = tail call i32 @pci_enable_device(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %3) #9
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev2, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call.i) #12
  br label %err_set_dma_mask

if.end7:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev2, i64 noundef 4294967295) #9
  %call8 = tail call i32 @pci_request_region(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #12
  br label %err_set_dma_mask

if.end16:                                         ; preds = %if.end7
  %call17 = tail call ptr @pci_iomap(ptr noundef %3, i32 noundef 0, i32 noundef 0) #9
  %pci_mmap = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 30
  %5 = ptrtoint ptr %pci_mmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call17, ptr %pci_mmap, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %err_iomap0

if.end26:                                         ; preds = %if.end16
  %call27 = tail call i32 @pci_request_region(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #12
  br label %err_req_region2

if.end35:                                         ; preds = %if.end26
  %call36 = tail call ptr @pci_iomap(ptr noundef %3, i32 noundef 2, i32 noundef 0) #9
  %pci_mmap1 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %pci_mmap1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call36, ptr %pci_mmap1, align 4
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %do.end42, label %do.end48

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #12
  br label %err_iomap2

do.end48:                                         ; preds = %if.end35
  %7 = ptrtoint ptr %pci_mmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_mmap, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %8, ptr noundef nonnull %call36) #12
  %call53 = tail call fastcc i32 @mwifiex_pcie_alloc_buffers(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %err_alloc_buffers

if.end56:                                         ; preds = %do.end48
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11064, i16 %10)
  %cmp = icmp eq i16 %10, 11064
  br i1 %cmp, label %if.then58, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %ignore_btcoex_events = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 170
  %11 = ptrtoint ptr %ignore_btcoex_events to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %ignore_btcoex_events, align 4
  br label %cleanup

err_alloc_buffers:                                ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %pci_mmap1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_mmap1, align 4
  tail call void @pci_iounmap(ptr noundef %3, ptr noundef %13) #9
  br label %err_iomap2

err_iomap2:                                       ; preds = %err_alloc_buffers, %do.end42
  %ret.0 = phi i32 [ %call53, %err_alloc_buffers ], [ -5, %do.end42 ]
  tail call void @pci_release_region(ptr noundef %3, i32 noundef 2) #9
  br label %err_req_region2

err_req_region2:                                  ; preds = %err_iomap2, %do.end32
  %ret.1 = phi i32 [ %call27, %do.end32 ], [ %ret.0, %err_iomap2 ]
  %14 = ptrtoint ptr %pci_mmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_mmap, align 4
  tail call void @pci_iounmap(ptr noundef %3, ptr noundef %15) #9
  br label %err_iomap0

err_iomap0:                                       ; preds = %err_req_region2, %do.end23
  %ret.2 = phi i32 [ %ret.1, %err_req_region2 ], [ -5, %do.end23 ]
  tail call void @pci_release_region(ptr noundef %3, i32 noundef 0) #9
  br label %err_set_dma_mask

err_set_dma_mask:                                 ; preds = %err_iomap0, %do.end13, %do.end
  %ret.3 = phi i32 [ %call.i, %do.end ], [ %call8, %do.end13 ], [ %ret.2, %err_iomap0 ]
  tail call void @pci_disable_device(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %err_set_dma_mask, %if.then58, %if.end56.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then58 ], [ 0, %if.end56.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %ret.3, %err_set_dma_mask ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_cleanup_pcie(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie, align 4
  %pci_reset_ongoing = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 39
  %6 = ptrtoint ptr %pci_reset_ongoing to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pci_reset_ongoing, align 4, !range !439
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.66) #9
  %work = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 37
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.str.68.sink = phi ptr [ @.str.67, %if.then ], [ @.str.68, %entry.if.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull %.str.68.sink) #9
  %fw_status3 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fw_status3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fw_status3, align 4
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card1, align 4
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %11, i32 0, i32 31
  %12 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %conv
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 12246270, i32 %14)
  %cmp = icmp eq i32 %14, 12246270
  br i1 %cmp, label %if.then6, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.69) #9
  %drv_rdy = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %5, i32 0, i32 12
  %15 = ptrtoint ptr %drv_rdy to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %drv_rdy, align 4
  %conv7 = zext i16 %16 to i32
  %17 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card1, align 4
  %pci_mmap1.i32 = getelementptr inbounds %struct.pcie_service_card, ptr %18, i32 0, i32 31
  %19 = ptrtoint ptr %pci_mmap1.i32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_mmap1.i32, align 4
  %add.ptr.i33 = getelementptr i8, ptr %20, i32 %conv7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 0) #9, !srcloc !445
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.end.if.end12_crit_edge
  tail call void @pci_disable_device(ptr noundef %3) #9
  %pci_mmap = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 30
  %21 = ptrtoint ptr %pci_mmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_mmap, align 4
  tail call void @pci_iounmap(ptr noundef %3, ptr noundef %22) #9
  %pci_mmap1 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 31
  %23 = ptrtoint ptr %pci_mmap1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_mmap1, align 4
  tail call void @pci_iounmap(ptr noundef %3, ptr noundef %24) #9
  tail call void @pci_release_region(ptr noundef %3, i32 noundef 2) #9
  tail call void @pci_release_region(ptr noundef %3, i32 noundef 0) #9
  tail call fastcc void @mwifiex_pcie_free_buffers(ptr noundef %adapter)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_check_fw_status(ptr noundef %adapter, i32 noundef %poll_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251658240) #9, !srcloc !445
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.72) #9
  %drv_rdy = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %drv_rdy to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %drv_rdy, align 4
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card1, align 4
  %pci_mmap1.i38 = getelementptr inbounds %struct.pcie_service_card, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %pci_mmap1.i38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_mmap1.i38, align 4
  %add.ptr.i39 = getelementptr i8, ptr %11, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 12246270) #9, !srcloc !445
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %poll_num)
  %cmp44.not = icmp eq i32 %poll_num, 0
  br i1 %cmp44.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %fw_status = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tries.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %fw_status to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fw_status, align 4
  %conv8 = zext i16 %13 to i32
  %14 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card1, align 4
  %pci_mmap1.i41 = getelementptr inbounds %struct.pcie_service_card, ptr %15, i32 0, i32 31
  %16 = ptrtoint ptr %pci_mmap1.i41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_mmap1.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %17, i32 %conv8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #9, !srcloc !440
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not = icmp eq i32 %18, -1
  %. = sext i1 %cmp.i.not to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.74, i32 noundef %tries.045, i32 noundef %., i32 noundef %19) #9
  br i1 %cmp.i.not, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 12246270, i32 %18)
  %cmp16 = icmp eq i32 %18, 12246270
  br i1 %cmp16, label %if.end15.cleanup_crit_edge, label %if.else19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 100) #9
  br label %for.inc

for.inc:                                          ; preds = %if.else19, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %tries.045, 1
  %exitcond.not = icmp eq i32 %inc, %poll_num
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %ret.3 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_check_winner_status(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %fw_status = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fw_status to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fw_status, align 4
  %conv = zext i16 %5 to i32
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.else6 [
    i32 -1, label %entry.if.end7_crit_edge
    i32 0, label %if.then4
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.75) #9
  %winner5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 8
  %10 = ptrtoint ptr %winner5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %winner5, align 4
  br label %if.end7

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.76, i32 noundef %11) #9
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then4, %entry.if.end7_crit_edge
  %ret.0 = phi i32 [ 0, %if.else6 ], [ 0, %if.then4 ], [ %8, %entry.if.end7_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_prog_fw_w_helper(ptr noundef %adapter, ptr nocapture noundef readonly %fw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_buf = getelementptr inbounds %struct.mwifiex_fw_image, ptr %fw, i32 0, i32 2
  %0 = ptrtoint ptr %fw_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_buf, align 4
  %fw_len = getelementptr inbounds %struct.mwifiex_fw_image, ptr %fw, i32 0, i32 3
  %2 = ptrtoint ptr %fw_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_len, align 4
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %4 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie, align 4
  %tobool.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.77) #9
  br label %cleanup90

if.end:                                           ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.78, i32 noundef %3) #9
  %8 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card1, align 4
  %pcie.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %pcie.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie.i.i, align 4
  %sleep_cookie.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %sleep_cookie.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sleep_cookie.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.end.if.then.i_crit_edge, label %if.end.i.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.end
  %sleep_cookie_vbase.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %9, i32 0, i32 28
  %14 = ptrtoint ptr %sleep_cookie_vbase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sleep_cookie_vbase.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.mwifiex_pcie_disable_host_int.exit_crit_edge, label %if.then4.i.i

if.end.i.i.mwifiex_pcie_disable_host_int.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_pcie_disable_host_int.exit

if.then4.i.i:                                     ; preds = %if.end.i.i
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %15, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 1437226410
  br i1 %cmp.i.i, label %if.then4.i.i.if.then.i_crit_edge, label %if.then4.i.i.mwifiex_pcie_disable_host_int.exit_crit_edge

if.then4.i.i.mwifiex_pcie_disable_host_int.exit_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_pcie_disable_host_int.exit

if.then4.i.i.if.then.i_crit_edge:                 ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then4.i.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %19 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card1, align 4
  %pci_mmap1.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %20, i32 0, i32 31
  %21 = ptrtoint ptr %pci_mmap1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_mmap1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 3124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !445
  br label %mwifiex_pcie_disable_host_int.exit

mwifiex_pcie_disable_host_int.exit:               ; preds = %if.then.i, %if.then4.i.i.mwifiex_pcie_disable_host_int.exit_crit_edge, %if.end.i.i.mwifiex_pcie_disable_host_int.exit_crit_edge
  %tx_hw_pending.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_hw_pending.i, i32 noundef 4) #9
  %23 = ptrtoint ptr %tx_hw_pending.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %tx_hw_pending.i, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2312, i32 noundef 2592) #9
  %tobool8.not = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not, label %mwifiex_pcie_disable_host_int.exit.done_crit_edge, label %if.end10

mwifiex_pcie_disable_host_int.exit.done_crit_edge: ; preds = %mwifiex_pcie_disable_host_int.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end10:                                         ; preds = %mwifiex_pcie_disable_host_int.exit
  %24 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card1, align 4
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %25, i32 0, i32 31
  %26 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 3316
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %28, label %if.end10.for.cond.preheader.lr.ph_crit_edge [
    i32 -1, label %if.then13
    i32 -1162158850, label %if.then15
  ]

if.end10.for.cond.preheader.lr.ph_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.lr.ph

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 2, ptr noundef nonnull @.str.80) #9
  br label %done

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp2.not87.i = icmp ugt i32 %3, 16
  br i1 %cmp2.not87.i, label %if.then15.if.end.i_crit_edge, label %if.then15.if.then.i168_crit_edge

if.then15.if.then.i168_crit_edge:                 ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i168

if.then15.if.end.i_crit_edge:                     ; preds = %if.then15
  br label %if.end.i

if.then.i168:                                     ; preds = %sw.epilog.i.if.then.i168_crit_edge, %if.then15.if.then.i168_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.93) #9
  br label %if.then18

if.end.i:                                         ; preds = %sw.epilog.i.if.end.i_crit_edge, %if.then15.if.end.i_crit_edge
  %add91.i = phi i32 [ %add.i, %sw.epilog.i.if.end.i_crit_edge ], [ 16, %if.then15.if.end.i_crit_edge ]
  %first_cmd.0.off090.i = phi i1 [ true, %sw.epilog.i.if.end.i_crit_edge ], [ false, %if.then15.if.end.i_crit_edge ]
  %cmd7_before.0.off089.i = phi i1 [ %cmd7_before.1.off0.i, %sw.epilog.i.if.end.i_crit_edge ], [ false, %if.then15.if.end.i_crit_edge ]
  %offset.088.i = phi i32 [ %offset.1.i, %sw.epilog.i.if.end.i_crit_edge ], [ 0, %if.then15.if.end.i_crit_edge ]
  %add.ptr.i169 = getelementptr i8, ptr %1, i32 %offset.088.i
  %30 = ptrtoint ptr %add.ptr.i169 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %add.ptr.i169, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  %data_length.i = getelementptr inbounds %struct.mwifiex_fw_header, ptr %add.ptr.i169, i32 0, i32 2
  %33 = ptrtoint ptr %data_length.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %data_length.i, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %36 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %32, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 5, label %sw.bb16.i
    i32 6, label %sw.bb22.i
    i32 7, label %if.end.i.sw.epilog.i_crit_edge
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  %add6.i = add i32 %35, %add91.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %35)
  %cmp7.i = icmp ult i32 %add6.i, %35
  br i1 %cmp7.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.94) #9
  br label %if.then18

if.end9.i:                                        ; preds = %sw.bb.i
  br i1 %first_cmd.0.off090.i, label %if.end11.i, label %if.end20.thread333

if.end20.thread333:                               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.95) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 0) #9
  br label %for.cond.preheader.lr.ph

if.end11.i:                                       ; preds = %if.end9.i
  br i1 %cmd7_before.0.off089.i, label %if.end11.i.sw.epilog.i_crit_edge, label %if.then13.i

if.end11.i.sw.epilog.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.96) #9
  br label %if.then18

sw.bb16.i:                                        ; preds = %if.end.i
  %add17.i = add i32 %35, %add91.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i, i32 %35)
  %cmp18.i = icmp ult i32 %add17.i, %35
  br i1 %cmp18.i, label %if.then19.i, label %sw.bb16.i.sw.epilog.i_crit_edge

sw.bb16.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then19.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.94) #9
  br label %if.then18

sw.bb22.i:                                        ; preds = %if.end.i
  %add23.i = add i32 %35, %add91.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i, i32 %35)
  %cmp24.i = icmp ult i32 %add23.i, %35
  br i1 %cmp24.i, label %if.then25.i, label %if.end26.i

if.then25.i:                                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.94) #9
  br label %if.then18

if.end26.i:                                       ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i, i32 %3)
  %cmp28.not.i = icmp ult i32 %add23.i, %3
  br i1 %cmp28.not.i, label %mwifiex_extract_wifi_fw.exit, label %if.then29.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.93) #9
  br label %if.then18

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.97, i32 noundef %32) #9
  br label %if.then18

sw.epilog.i:                                      ; preds = %sw.bb16.i.sw.epilog.i_crit_edge, %if.end11.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge
  %offset.1.i = phi i32 [ %add6.i, %if.end11.i.sw.epilog.i_crit_edge ], [ %add17.i, %sw.bb16.i.sw.epilog.i_crit_edge ], [ %add91.i, %if.end.i.sw.epilog.i_crit_edge ]
  %cmd7_before.1.off0.i = phi i1 [ true, %if.end11.i.sw.epilog.i_crit_edge ], [ %cmd7_before.0.off089.i, %sw.bb16.i.sw.epilog.i_crit_edge ], [ true, %if.end.i.sw.epilog.i_crit_edge ]
  %add.i = add i32 %offset.1.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %offset.1.i)
  %cmp.i170 = icmp ult i32 %offset.1.i, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp2.not.i = icmp ult i32 %add.i, %3
  %or.cond.i = and i1 %cmp.i170, %cmp2.not.i
  br i1 %or.cond.i, label %sw.epilog.i.if.end.i_crit_edge, label %sw.epilog.i.if.then.i168_crit_edge

sw.epilog.i.if.then.i168_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i168

sw.epilog.i.if.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

mwifiex_extract_wifi_fw.exit:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add23.i)
  %cmp17 = icmp slt i32 %add23.i, 0
  br i1 %cmp17, label %mwifiex_extract_wifi_fw.exit.if.then18_crit_edge, label %if.end20

mwifiex_extract_wifi_fw.exit.if.then18_crit_edge: ; preds = %mwifiex_extract_wifi_fw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.then18:                                        ; preds = %mwifiex_extract_wifi_fw.exit.if.then18_crit_edge, %sw.default.i, %if.then29.i, %if.then25.i, %if.then19.i, %if.then13.i, %if.then8.i, %if.then.i168
  %retval.0.i206 = phi i32 [ %add23.i, %mwifiex_extract_wifi_fw.exit.if.then18_crit_edge ], [ -1, %if.then.i168 ], [ -1, %sw.default.i ], [ -1, %if.then25.i ], [ -1, %if.then29.i ], [ -1, %if.then19.i ], [ -1, %if.then8.i ], [ -1, %if.then13.i ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.81) #9
  br label %done

if.end20:                                         ; preds = %mwifiex_extract_wifi_fw.exit
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef %add23.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add23.i)
  %cmp21.not277 = icmp ugt i32 %3, %add23.i
  br i1 %cmp21.not277, label %if.end20.for.cond.preheader.lr.ph_crit_edge, label %if.end20.do.end_crit_edge

if.end20.do.end_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end20.for.cond.preheader.lr.ph_crit_edge:      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.lr.ph

for.cond.preheader.lr.ph:                         ; preds = %if.end20.for.cond.preheader.lr.ph_crit_edge, %if.end20.thread333, %if.end10.for.cond.preheader.lr.ph_crit_edge
  %offset.0332 = phi i32 [ %add23.i, %if.end20.for.cond.preheader.lr.ph_crit_edge ], [ 0, %if.end20.thread333 ], [ 0, %if.end10.for.cond.preheader.lr.ph_crit_edge ]
  %cmd_size = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %7, i32 0, i32 3
  %blksz_fw_dl = getelementptr inbounds %struct.pcie_service_card, ptr %5, i32 0, i32 2, i32 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %len60 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %cb1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %cleanup.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %block_retry_cnt.0282 = phi i32 [ 0, %for.cond.preheader.lr.ph ], [ %block_retry_cnt.1, %cleanup.for.cond.preheader_crit_edge ]
  %tx_blocks.0281 = phi i32 [ 0, %for.cond.preheader.lr.ph ], [ %tx_blocks.1, %cleanup.for.cond.preheader_crit_edge ]
  %offset.1278 = phi i32 [ %offset.0332, %for.cond.preheader.lr.ph ], [ %add89, %cleanup.for.cond.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %for.cond.preheader
  %tries.0275 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end31.for.body_crit_edge ]
  %37 = ptrtoint ptr %cmd_size to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %cmd_size, align 2
  %conv = zext i16 %38 to i32
  %39 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card1, align 4
  %pci_mmap1.i172 = getelementptr inbounds %struct.pcie_service_card, ptr %40, i32 0, i32 31
  %41 = ptrtoint ptr %pci_mmap1.i172 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci_mmap1.i172, align 4
  %add.ptr.i173 = getelementptr i8, ptr %42, i32 %conv
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i173) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %43, label %if.else.loopexit [
    i32 -1, label %if.then27
    i32 0, label %if.end31
  ]

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 2, ptr noundef nonnull @.str.83) #9
  br label %done

if.end31:                                         ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  %inc = add nuw nsw i32 %tries.0275, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end31.do.end_crit_edge, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end31.do.end_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.else.loopexit:                                 ; preds = %for.body
  %45 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2312, i32 %45)
  %cmp34 = icmp ugt i32 %45, 2312
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.else.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.84, i32 noundef %offset.1278, i32 noundef %45) #9
  br label %done

if.end38:                                         ; preds = %if.else.loopexit
  %and = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.else47, label %if.then40

if.then40:                                        ; preds = %if.end38
  %inc41 = add i32 %block_retry_cnt.0282, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc41)
  %cmp42 = icmp ugt i32 %inc41, 2
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.85, i32 noundef %offset.1278) #9
  br label %done

if.end45:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.86, i32 noundef %45, i32 noundef %45) #9
  br label %if.end59

if.else47:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %3, %offset.1278
  %46 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %45)
  %47 = ptrtoint ptr %blksz_fw_dl to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %blksz_fw_dl, align 4
  %conv54 = zext i16 %48 to i32
  %add = add nsw i32 %46, -1
  %sub55 = add nsw i32 %add, %conv54
  %div = udiv i32 %sub55, %conv54
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %offset.1278
  %51 = call ptr @memmove(ptr %50, ptr %arrayidx, i32 %46)
  br label %if.end59

if.end59:                                         ; preds = %if.else47, %if.end45
  %txlen.1 = phi i32 [ %46, %if.else47 ], [ 0, %if.end45 ]
  %tx_blocks.1 = phi i32 [ %div, %if.else47 ], [ %tx_blocks.0281, %if.end45 ]
  %block_retry_cnt.1 = phi i32 [ 0, %if.else47 ], [ %inc41, %if.end45 ]
  %52 = ptrtoint ptr %len60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len60, align 4
  %sub61 = sub i32 2312, %53
  %call62 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub61) #9
  %54 = ptrtoint ptr %blksz_fw_dl to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %blksz_fw_dl, align 4
  %conv65 = zext i16 %55 to i32
  %mul = mul i32 %tx_blocks.1, %conv65
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %mul) #9
  %56 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card1, align 4
  %pcie.i = getelementptr inbounds %struct.pcie_service_card, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %pcie.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcie.i, align 4
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 4
  %tobool.not.i = icmp eq ptr %61, null
  br i1 %tobool.not.i, label %if.end59.if.then.i177_crit_edge, label %land.lhs.true.i

if.end59.if.then.i177_crit_edge:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i177

land.lhs.true.i:                                  ; preds = %if.end59
  %62 = ptrtoint ptr %len60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool3.not.i = icmp eq i32 %63, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.then.i177_crit_edge, label %if.end.i178

land.lhs.true.i.if.then.i177_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i177

if.then.i177:                                     ; preds = %land.lhs.true.i.if.then.i177_crit_edge, %if.end59.if.then.i177_crit_edge
  %64 = ptrtoint ptr %len60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len60, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.98, ptr noundef nonnull @__func__.mwifiex_pcie_send_boot_cmd, ptr noundef %61, i32 noundef %65) #9
  br label %if.then68

if.end.i178:                                      ; preds = %land.lhs.true.i
  %call.i = tail call fastcc i32 @mwifiex_map_pci_memory(ptr noundef %adapter, ptr noundef nonnull %call.i.i, i32 noundef %63, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %mwifiex_pcie_send_boot_cmd.exit, label %if.end.i178.if.then68_crit_edge

if.end.i178.if.then68_crit_edge:                  ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

mwifiex_pcie_send_boot_cmd.exit:                  ; preds = %if.end.i178
  %66 = ptrtoint ptr %cb1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %cb1.i.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i.i = lshr i64 %67, 32
  %mapping.sroa.0.0.extract.trunc.i.i = trunc i64 %mapping.sroa.0.0.extract.shift.i.i to i32
  %68 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %59, align 4
  %conv.i = zext i16 %69 to i32
  %70 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card1, align 4
  %pci_mmap1.i.i179 = getelementptr inbounds %struct.pcie_service_card, ptr %71, i32 0, i32 31
  %72 = ptrtoint ptr %pci_mmap1.i.i179 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pci_mmap1.i.i179, align 4
  %add.ptr.i.i180 = getelementptr i8, ptr %73, i32 %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %74 = tail call i32 @llvm.bswap.i32(i32 %mapping.sroa.0.0.extract.trunc.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i180, i32 %74) #9, !srcloc !445
  %cmd_addr_hi.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %59, i32 0, i32 1
  %75 = ptrtoint ptr %cmd_addr_hi.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %cmd_addr_hi.i, align 2
  %conv15.i = zext i16 %76 to i32
  %77 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %card1, align 4
  %pci_mmap1.i63.i = getelementptr inbounds %struct.pcie_service_card, ptr %78, i32 0, i32 31
  %79 = ptrtoint ptr %pci_mmap1.i63.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pci_mmap1.i63.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %80, i32 %conv15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 0) #9, !srcloc !445
  %cmd_size.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %59, i32 0, i32 3
  %81 = ptrtoint ptr %cmd_size.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %cmd_size.i, align 2
  %conv22.i = zext i16 %82 to i32
  %83 = ptrtoint ptr %len60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len60, align 4
  %85 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %card1, align 4
  %pci_mmap1.i66.i = getelementptr inbounds %struct.pcie_service_card, ptr %86, i32 0, i32 31
  %87 = ptrtoint ptr %pci_mmap1.i66.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pci_mmap1.i66.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %88, i32 %conv22.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %89 = tail call i32 @llvm.bswap.i32(i32 %84) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 %89) #9, !srcloc !445
  %90 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %card1, align 4
  %pci_mmap1.i69.i = getelementptr inbounds %struct.pcie_service_card, ptr %91, i32 0, i32 31
  %92 = ptrtoint ptr %pci_mmap1.i69.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pci_mmap1.i69.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %93, i32 3096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 33554432) #9, !srcloc !445
  br label %for.body73

if.then68:                                        ; preds = %if.end.i178.if.then68_crit_edge, %if.then.i177
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.87) #9
  br label %done

for.body73:                                       ; preds = %if.end81.for.body73_crit_edge, %mwifiex_pcie_send_boot_cmd.exit
  %tries.1276 = phi i32 [ 0, %mwifiex_pcie_send_boot_cmd.exit ], [ %inc83, %if.end81.for.body73_crit_edge ]
  %94 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %card1, align 4
  %pci_mmap1.i184 = getelementptr inbounds %struct.pcie_service_card, ptr %95, i32 0, i32 31
  %96 = ptrtoint ptr %pci_mmap1.i184 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pci_mmap1.i184, align 4
  %add.ptr.i185 = getelementptr i8, ptr %97, i32 3100
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %98)
  %cmp.i186.not = icmp eq i32 %98, -1
  br i1 %cmp.i186.not, label %if.then76, label %if.end77

if.then76:                                        ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.mwifiex_prog_fw_w_helper) #9
  %99 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %card1, align 4
  %101 = ptrtoint ptr %cb1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %cb1.i.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i = lshr i64 %102, 32
  %mapping.sroa.0.0.extract.trunc.i = trunc i64 %mapping.sroa.0.0.extract.shift.i to i32
  %mapping.sroa.5.0.extract.trunc.i = trunc i64 %102 to i32
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %100, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %104, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i, i32 noundef %mapping.sroa.5.0.extract.trunc.i, i32 noundef 1, i32 noundef 0) #9
  br label %done

if.end77:                                         ; preds = %for.body73
  %105 = and i32 %98, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool79.not = icmp eq i32 %105, 0
  br i1 %tobool79.not, label %cleanup, label %if.end81

if.end81:                                         ; preds = %if.end77
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  %inc83 = add nuw nsw i32 %tries.1276, 1
  %exitcond329.not = icmp eq i32 %inc83, 100
  br i1 %exitcond329.not, label %if.then87, label %if.end81.for.body73_crit_edge

if.end81.for.body73_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body73

if.then87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.mwifiex_prog_fw_w_helper) #9
  %106 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %card1, align 4
  %108 = ptrtoint ptr %cb1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %cb1.i.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i191 = lshr i64 %109, 32
  %mapping.sroa.0.0.extract.trunc.i192 = trunc i64 %mapping.sroa.0.0.extract.shift.i191 to i32
  %mapping.sroa.5.0.extract.trunc.i193 = trunc i64 %109 to i32
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %107, align 4
  %dev2.i194 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i194, i32 noundef %mapping.sroa.0.0.extract.trunc.i192, i32 noundef %mapping.sroa.5.0.extract.trunc.i193, i32 noundef 1, i32 noundef 0) #9
  br label %done

cleanup:                                          ; preds = %if.end77
  %112 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %card1, align 4
  %114 = ptrtoint ptr %cb1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %cb1.i.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i197 = lshr i64 %115, 32
  %mapping.sroa.0.0.extract.trunc.i198 = trunc i64 %mapping.sroa.0.0.extract.shift.i197 to i32
  %mapping.sroa.5.0.extract.trunc.i199 = trunc i64 %115 to i32
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %113, align 4
  %dev2.i200 = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i200, i32 noundef %mapping.sroa.0.0.extract.trunc.i198, i32 noundef %mapping.sroa.5.0.extract.trunc.i199, i32 noundef 1, i32 noundef 0) #9
  %add89 = add i32 %txlen.1, %offset.1278
  %cmp21.not = icmp ugt i32 %3, %add89
  br i1 %cmp21.not, label %cleanup.for.cond.preheader_crit_edge, label %cleanup.do.end_crit_edge

cleanup.do.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

cleanup.for.cond.preheader_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

do.end:                                           ; preds = %cleanup.do.end_crit_edge, %if.end31.do.end_crit_edge, %if.end20.do.end_crit_edge
  %offset.1.lcssa = phi i32 [ %add23.i, %if.end20.do.end_crit_edge ], [ %offset.1278, %if.end31.do.end_crit_edge ], [ %add89, %cleanup.do.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.90, i32 noundef %offset.1.lcssa) #9
  br label %done

done:                                             ; preds = %do.end, %if.then87, %if.then76, %if.then68, %if.then44, %if.then36, %if.then27, %if.then18, %if.then13, %mwifiex_pcie_disable_host_int.exit.done_crit_edge
  %ret.5 = phi i32 [ -1, %if.then13 ], [ %retval.0.i206, %if.then18 ], [ 0, %do.end ], [ -12, %mwifiex_pcie_disable_host_int.exit.done_crit_edge ], [ -1, %if.then27 ], [ -1, %if.then36 ], [ -1, %if.then44 ], [ -1, %if.then68 ], [ -1, %if.then76 ], [ -1, %if.then87 ]
  tail call void @__dev_kfree_skb_any(ptr noundef %call.i.i, i32 noundef 1) #9
  br label %cleanup90

cleanup90:                                        ; preds = %done, %if.then
  %retval.0 = phi i32 [ %ret.5, %done ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_register_dev(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %adapter2 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %adapter, ptr %adapter2, align 4
  %3 = load ptr, ptr %card1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pcie.i = getelementptr inbounds %struct.pcie_service_card, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %pcie.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie.i, align 4
  %msix_support.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %msix_support.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %msix_support.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.if.end42.i_crit_edge, label %for.body.preheader.i

entry.if.end42.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

for.body.preheader.i:                             ; preds = %entry
  %entry2.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 34, i32 0, i32 1
  %10 = ptrtoint ptr %entry2.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %entry2.i, align 4
  %entry2.1.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 34, i32 1, i32 1
  %11 = ptrtoint ptr %entry2.1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %entry2.1.i, align 4
  %entry2.2.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 34, i32 2, i32 1
  %12 = ptrtoint ptr %entry2.2.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %entry2.2.i, align 4
  %entry2.3.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 34, i32 3, i32 1
  %13 = ptrtoint ptr %entry2.3.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 3, ptr %entry2.3.i, align 4
  %msix_entries3.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 34
  %call.i.i = tail call i32 @pci_enable_msix_range(ptr noundef %5, ptr noundef %msix_entries3.i, i32 noundef 4, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool4.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool4.not.i, label %for.body9.preheader.i, label %for.body.preheader.i.if.end42.i_crit_edge

for.body.preheader.i.if.end42.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

for.body9.preheader.i:                            ; preds = %for.body.preheader.i
  %arrayidx10.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 35, i32 0
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %5, ptr %arrayidx10.i, align 4
  %msg_id.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 35, i32 0, i32 1
  %15 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %msg_id.i, align 4
  %16 = ptrtoint ptr %msix_entries3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msix_entries3.i, align 4
  %call.i106.i = tail call i32 @request_threaded_irq(i32 noundef %17, ptr noundef nonnull @mwifiex_pcie_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.102, ptr noundef %arrayidx10.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106.i)
  %tobool20.not.i = icmp eq i32 %call.i106.i, 0
  br i1 %tobool20.not.i, label %for.inc22.i, label %if.then26.i

for.inc22.i:                                      ; preds = %for.body9.preheader.i
  %arrayidx10.1.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 35, i32 1
  %18 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %5, ptr %arrayidx10.1.i, align 4
  %msg_id.1.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 35, i32 1, i32 1
  %19 = ptrtoint ptr %msg_id.1.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %msg_id.1.i, align 4
  %arrayidx16.1.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 34, i32 1
  %20 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16.1.i, align 4
  %call.i106.1.i = tail call i32 @request_threaded_irq(i32 noundef %21, ptr noundef nonnull @mwifiex_pcie_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.102, ptr noundef %arrayidx10.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106.1.i)
  %tobool20.not.1.i = icmp eq i32 %call.i106.1.i, 0
  br i1 %tobool20.not.1.i, label %for.inc22.1.i, label %for.inc22.i.for.body30.lr.ph.i_crit_edge

for.inc22.i.for.body30.lr.ph.i_crit_edge:         ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30.lr.ph.i

for.inc22.1.i:                                    ; preds = %for.inc22.i
  %arrayidx10.2.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 35, i32 2
  %22 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %5, ptr %arrayidx10.2.i, align 4
  %msg_id.2.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 35, i32 2, i32 1
  %23 = ptrtoint ptr %msg_id.2.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2, ptr %msg_id.2.i, align 4
  %arrayidx16.2.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 34, i32 2
  %24 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx16.2.i, align 4
  %call.i106.2.i = tail call i32 @request_threaded_irq(i32 noundef %25, ptr noundef nonnull @mwifiex_pcie_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.102, ptr noundef %arrayidx10.2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106.2.i)
  %tobool20.not.2.i = icmp eq i32 %call.i106.2.i, 0
  br i1 %tobool20.not.2.i, label %for.inc22.2.i, label %for.inc22.1.i.for.body30.lr.ph.i_crit_edge

for.inc22.1.i.for.body30.lr.ph.i_crit_edge:       ; preds = %for.inc22.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30.lr.ph.i

for.inc22.2.i:                                    ; preds = %for.inc22.1.i
  %arrayidx10.3.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 35, i32 3
  %26 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %5, ptr %arrayidx10.3.i, align 4
  %msg_id.3.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 35, i32 3, i32 1
  %27 = ptrtoint ptr %msg_id.3.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 3, ptr %msg_id.3.i, align 4
  %arrayidx16.3.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 34, i32 3
  %28 = ptrtoint ptr %arrayidx16.3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx16.3.i, align 4
  %call.i106.3.i = tail call i32 @request_threaded_irq(i32 noundef %29, ptr noundef nonnull @mwifiex_pcie_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.102, ptr noundef %arrayidx10.3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106.3.i)
  %tobool20.not.3.i = icmp eq i32 %call.i106.3.i, 0
  br i1 %tobool20.not.3.i, label %for.inc22.3.i, label %for.inc22.2.i.for.body30.lr.ph.i_crit_edge

for.inc22.2.i.for.body30.lr.ph.i_crit_edge:       ; preds = %for.inc22.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30.lr.ph.i

for.inc22.3.i:                                    ; preds = %for.inc22.2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.104) #9
  %msix_enable.i = getelementptr inbounds %struct.pcie_service_card, ptr %3, i32 0, i32 33
  %30 = ptrtoint ptr %msix_enable.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %msix_enable.i, align 4
  br label %if.end

if.then26.i:                                      ; preds = %for.body9.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.103, i32 noundef %call.i106.i) #9
  br label %for.end39.i

for.body30.lr.ph.i:                               ; preds = %for.inc22.2.i.for.body30.lr.ph.i_crit_edge, %for.inc22.1.i.for.body30.lr.ph.i_crit_edge, %for.inc22.i.for.body30.lr.ph.i_crit_edge
  %exitcond.not.i.1 = phi i1 [ false, %for.inc22.2.i.for.body30.lr.ph.i_crit_edge ], [ true, %for.inc22.1.i.for.body30.lr.ph.i_crit_edge ], [ false, %for.inc22.i.for.body30.lr.ph.i_crit_edge ]
  %i.1112.lcssa.ph.i = phi i32 [ 3, %for.inc22.2.i.for.body30.lr.ph.i_crit_edge ], [ 2, %for.inc22.1.i.for.body30.lr.ph.i_crit_edge ], [ 1, %for.inc22.i.for.body30.lr.ph.i_crit_edge ]
  %call.i106.lcssa.ph.i = phi i32 [ %call.i106.3.i, %for.inc22.2.i.for.body30.lr.ph.i_crit_edge ], [ %call.i106.2.i, %for.inc22.1.i.for.body30.lr.ph.i_crit_edge ], [ %call.i106.1.i, %for.inc22.i.for.body30.lr.ph.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.103, i32 noundef %call.i106.lcssa.ph.i) #9
  %arrayidx35.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 35, i32 %i.1112.lcssa.ph.i
  %arrayidx32.i = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 34, i32 0
  %31 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx32.i, align 4
  %call36.i = tail call ptr @free_irq(i32 noundef %32, ptr noundef %arrayidx35.i) #9
  br i1 %tobool20.not.1.i, label %for.body30.i.1, label %for.body30.lr.ph.i.for.end39.i_crit_edge

for.body30.lr.ph.i.for.end39.i_crit_edge:         ; preds = %for.body30.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end39.i

for.body30.i.1:                                   ; preds = %for.body30.lr.ph.i
  %arrayidx32.i.1 = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 34, i32 1
  %33 = ptrtoint ptr %arrayidx32.i.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx32.i.1, align 4
  %call36.i.1 = tail call ptr @free_irq(i32 noundef %34, ptr noundef %arrayidx35.i) #9
  br i1 %exitcond.not.i.1, label %for.body30.i.1.for.end39.i_crit_edge, label %for.body30.i.2

for.body30.i.1.for.end39.i_crit_edge:             ; preds = %for.body30.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end39.i

for.body30.i.2:                                   ; preds = %for.body30.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx32.i.2 = getelementptr %struct.pcie_service_card, ptr %3, i32 0, i32 34, i32 2
  %35 = ptrtoint ptr %arrayidx32.i.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx32.i.2, align 4
  %call36.i.2 = tail call ptr @free_irq(i32 noundef %36, ptr noundef %arrayidx35.i) #9
  br label %for.end39.i

for.end39.i:                                      ; preds = %for.body30.i.2, %for.body30.i.1.for.end39.i_crit_edge, %for.body30.lr.ph.i.for.end39.i_crit_edge, %if.then26.i
  tail call void @pci_disable_msix(ptr noundef %5) #9
  br label %if.end42.i

if.end42.i:                                       ; preds = %for.end39.i, %for.body.preheader.i.if.end42.i_crit_edge, %entry.if.end42.i_crit_edge
  %call43.i = tail call i32 @pci_enable_msi(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp44.not.i = icmp eq i32 %call43.i, 0
  br i1 %cmp44.not.i, label %if.else47.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_disable_msi(ptr noundef %5) #9
  br label %if.end48.i

if.else47.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %msi_enable.i = getelementptr inbounds %struct.pcie_service_card, ptr %3, i32 0, i32 32
  %37 = ptrtoint ptr %msi_enable.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %msi_enable.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else47.i, %if.then46.i
  %msi_enable49.i = getelementptr inbounds %struct.pcie_service_card, ptr %3, i32 0, i32 32
  %38 = ptrtoint ptr %msi_enable49.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msi_enable49.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.105, i32 noundef %39) #9
  %share_irq_ctx.i = getelementptr inbounds %struct.pcie_service_card, ptr %3, i32 0, i32 36
  %40 = ptrtoint ptr %share_irq_ctx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %5, ptr %share_irq_ctx.i, align 4
  %msg_id52.i = getelementptr inbounds %struct.pcie_service_card, ptr %3, i32 0, i32 36, i32 1
  %41 = ptrtoint ptr %msg_id52.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -1, ptr %msg_id52.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %42 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq.i, align 4
  %call.i107.i = tail call i32 @request_threaded_irq(i32 noundef %43, ptr noundef nonnull @mwifiex_pcie_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.106, ptr noundef %share_irq_ctx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.i)
  %tobool55.not.i = icmp eq i32 %call.i107.i, 0
  br i1 %tobool55.not.i, label %if.end48.i.if.end_crit_edge, label %mwifiex_pcie_request_irq.exit

if.end48.i.if.end_crit_edge:                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

mwifiex_pcie_request_irq.exit:                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %call57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %call.i107.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.end48.i.if.end_crit_edge, %for.inc22.3.i
  %tx_buf_size = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %tx_buf_size, align 2
  %tx_buf_size3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 39
  %46 = ptrtoint ptr %tx_buf_size3 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %tx_buf_size3, align 2
  %mem_type_mapping_tbl = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2, i32 4
  %47 = ptrtoint ptr %mem_type_mapping_tbl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem_type_mapping_tbl, align 4
  %mem_type_mapping_tbl5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 143
  %49 = ptrtoint ptr %mem_type_mapping_tbl5 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %mem_type_mapping_tbl5, align 4
  %num_mem_types = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2, i32 5
  %50 = ptrtoint ptr %num_mem_types to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %num_mem_types, align 4
  %num_mem_types7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 144
  %52 = ptrtoint ptr %num_mem_types7 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %num_mem_types7, align 4
  %can_ext_scan = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2, i32 6
  %53 = ptrtoint ptr %can_ext_scan to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %can_ext_scan, align 1, !range !439
  %ext_scan = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 137
  %55 = ptrtoint ptr %ext_scan to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %ext_scan, align 1
  %56 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card1, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %device.i, align 2
  %62 = zext i16 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.197)
  switch i16 %61, label %if.end.cleanup_crit_edge [
    i16 11056, label %sw.bb.i
    i16 11064, label %sw.bb2.i
    i16 11074, label %sw.bb16.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %fw_name.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 7
  %63 = call ptr @memcpy(ptr %fw_name.i, ptr @.str.113, i32 25)
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end
  %pci_mmap1.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %57, i32 0, i32 31
  %64 = ptrtoint ptr %pci_mmap1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pci_mmap1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %65, i32 3160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 49280) #9, !srcloc !445
  %66 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %card1, align 4
  %pci_mmap1.i49.i = getelementptr inbounds %struct.pcie_service_card, ptr %67, i32 0, i32 31
  %68 = ptrtoint ptr %pci_mmap1.i49.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pci_mmap1.i49.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %69, i32 3160
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #9, !srcloc !440
  %71 = lshr i32 %70, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %72 = trunc i32 %71 to i16
  %trunc.i = and i16 %72, -256
  %73 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.198)
  switch i16 %trunc.i, label %sw.default.i [
    i16 4352, label %sw.bb5.i
    i16 4608, label %sw.bb9.i
  ]

sw.bb5.i:                                         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  %fw_name6.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 7
  %74 = call ptr @memcpy(ptr %fw_name6.i, ptr @.str.114, i32 28)
  br label %cleanup

sw.bb9.i:                                         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  %fw_name10.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 7
  %75 = call ptr @memcpy(ptr %fw_name10.i, ptr @.str.115, i32 25)
  br label %cleanup

sw.default.i:                                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  %fw_name13.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 7
  %76 = call ptr @memcpy(ptr %fw_name13.i, ptr @.str.115, i32 25)
  br label %cleanup

sw.bb16.i:                                        ; preds = %if.end
  %pci_mmap1.i52.i = getelementptr inbounds %struct.pcie_service_card, ptr %57, i32 0, i32 31
  %77 = ptrtoint ptr %pci_mmap1.i52.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pci_mmap1.i52.i, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %78, i32 8
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.i) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %80 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %card1, align 4
  %pci_mmap1.i57.i = getelementptr inbounds %struct.pcie_service_card, ptr %81, i32 0, i32 31
  %82 = ptrtoint ptr %pci_mmap1.i57.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pci_mmap1.i57.i, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %83, i32 3280
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.i) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %85 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %card1, align 4
  %pci_mmap1.i62.i = getelementptr inbounds %struct.pcie_service_card, ptr %86, i32 0, i32 31
  %87 = ptrtoint ptr %pci_mmap1.i62.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pci_mmap1.i62.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %88, i32 3284
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %.mask.i = and i32 %79, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 285212672, i32 %.mask.i)
  %cmp.i = icmp eq i32 %.mask.i, 285212672
  %.mask70.i = and i32 %89, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 603979776, i32 %.mask70.i)
  %cmp24.i = icmp eq i32 %.mask70.i, 603979776
  %or.cond.i = select i1 %cmp.i, i1 %cmp24.i, i1 false
  %90 = and i32 %84, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %90)
  %cmp27.i = icmp eq i32 %90, 50331648
  %or.cond69.i = select i1 %or.cond.i, i1 %cmp27.i, i1 false
  %fw_name29.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 7
  br i1 %or.cond69.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = call ptr @memcpy(ptr %fw_name29.i, ptr @.str.116, i32 31)
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = call ptr @memcpy(ptr %fw_name29.i, ptr @.str.117, i32 30)
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %sw.default.i, %sw.bb9.i, %sw.bb5.i, %sw.bb.i, %if.end.cleanup_crit_edge, %mwifiex_pcie_request_irq.exit
  %retval.0 = phi i32 [ -1, %mwifiex_pcie_request_irq.exit ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.bb5.i ], [ 0, %sw.bb9.i ], [ 0, %sw.default.i ], [ 0, %if.then.i ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_unregister_dev(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %msix_enable = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %msix_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msix_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 34, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void @synchronize_irq(i32 noundef %7) #9
  %arrayidx.1 = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 34, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1, align 4
  tail call void @synchronize_irq(i32 noundef %9) #9
  %arrayidx.2 = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 34, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2, align 4
  tail call void @synchronize_irq(i32 noundef %11) #9
  %arrayidx.3 = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 34, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3, align 4
  tail call void @synchronize_irq(i32 noundef %13) #9
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 35, i32 0
  %call = tail call ptr @free_irq(i32 noundef %15, ptr noundef %arrayidx8) #9
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 4
  %arrayidx8.1 = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 35, i32 1
  %call.1 = tail call ptr @free_irq(i32 noundef %17, ptr noundef %arrayidx8.1) #9
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2, align 4
  %arrayidx8.2 = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 35, i32 2
  %call.2 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %arrayidx8.2) #9
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.3, align 4
  %arrayidx8.3 = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 35, i32 3
  %call.3 = tail call ptr @free_irq(i32 noundef %21, ptr noundef %arrayidx8.3) #9
  %22 = ptrtoint ptr %msix_enable to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %msix_enable, align 4
  tail call void @pci_disable_msix(ptr noundef %3) #9
  br label %if.end17

if.else:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.118, ptr noundef nonnull @__func__.mwifiex_unregister_dev) #9
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 46
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %share_irq_ctx = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 36
  %call14 = tail call ptr @free_irq(i32 noundef %26, ptr noundef %share_irq_ctx) #9
  %msi_enable = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 32
  %27 = ptrtoint ptr %msi_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msi_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool15.not = icmp eq i32 %28, 0
  br i1 %tobool15.not, label %if.else.if.end17_crit_edge, label %if.then16

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_disable_msi(ptr noundef %3) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.else.if.end17_crit_edge, %for.body.preheader
  %adapter18 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %adapter18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %adapter18, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pcie_enable_host_int(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1.i, align 4
  %pcie.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie.i, align 4
  %sleep_cookie.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %sleep_cookie.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sleep_cookie.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %sleep_cookie_vbase.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %sleep_cookie_vbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sleep_cookie_vbase.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %if.end.i.return_crit_edge, label %if.then4.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then4.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %9)
  %cmp.i = icmp eq i32 %9, 1437226410
  br i1 %cmp.i, label %if.then4.i.if.then_crit_edge, label %if.then4.i.return_crit_edge

if.then4.i.return_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then4.i.if.then_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %if.then4.i.if.then_crit_edge, %entry.if.then_crit_edge
  %11 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card1.i, align 4
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %12, i32 0, i32 31
  %13 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 3124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251658240) #9, !srcloc !445
  br label %return

return:                                           ; preds = %if.then, %if.then4.i.return_crit_edge, %if.end.i.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_pcie_disable_host_int_noerr(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1.i.i, align 4
  %pcie.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie.i.i, align 4
  %sleep_cookie.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %sleep_cookie.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sleep_cookie.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %entry.if.then.i_crit_edge, label %if.end.i.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  %sleep_cookie_vbase.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %sleep_cookie_vbase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sleep_cookie_vbase.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.mwifiex_pcie_disable_host_int.exit_crit_edge, label %if.then4.i.i

if.end.i.i.mwifiex_pcie_disable_host_int.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_pcie_disable_host_int.exit

if.then4.i.i:                                     ; preds = %if.end.i.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 1437226410
  br i1 %cmp.i.i, label %if.then4.i.i.if.then.i_crit_edge, label %if.then4.i.i.mwifiex_pcie_disable_host_int.exit_crit_edge

if.then4.i.i.mwifiex_pcie_disable_host_int.exit_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_pcie_disable_host_int.exit

if.then4.i.i.if.then.i_crit_edge:                 ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then4.i.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %11 = ptrtoint ptr %card1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card1.i.i, align 4
  %pci_mmap1.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %12, i32 0, i32 31
  %13 = ptrtoint ptr %pci_mmap1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_mmap1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 3124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !445
  br label %mwifiex_pcie_disable_host_int.exit

mwifiex_pcie_disable_host_int.exit:               ; preds = %if.then.i, %if.then4.i.i.mwifiex_pcie_disable_host_int.exit_crit_edge, %if.end.i.i.mwifiex_pcie_disable_host_int.exit_crit_edge
  %tx_hw_pending.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_hw_pending.i, i32 noundef 4) #9
  %15 = ptrtoint ptr %tx_hw_pending.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %tx_hw_pending.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_process_int_status(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %int_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 48
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock) #9
  %msi_enable = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %msi_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msi_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %int_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 49
  %4 = ptrtoint ptr %int_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %int_status, align 4
  %conv6 = zext i8 %5 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pcie_ireg.0 = phi i32 [ %conv6, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %int_status7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 49
  %6 = ptrtoint ptr %int_status7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %int_status7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock, i32 noundef %call3) #9
  %7 = ptrtoint ptr %msi_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msi_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.end.if.end36_crit_edge, label %if.then11

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then11:                                        ; preds = %if.end
  %9 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card1, align 4
  %pcie.i = getelementptr inbounds %struct.pcie_service_card, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %pcie.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcie.i, align 4
  %sleep_cookie.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %sleep_cookie.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sleep_cookie.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then11.if.then13_crit_edge, label %if.end.i

if.then11.if.then13_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end.i:                                         ; preds = %if.then11
  %sleep_cookie_vbase.i = getelementptr inbounds %struct.pcie_service_card, ptr %10, i32 0, i32 28
  %15 = ptrtoint ptr %sleep_cookie_vbase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sleep_cookie_vbase.i, align 4
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %if.end.i.if.end36_crit_edge, label %if.then4.i

if.end.i.if.end36_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then4.i:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %16, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %18)
  %cmp.i = icmp eq i32 %18, 1437226410
  br i1 %cmp.i, label %if.then4.i.if.then13_crit_edge, label %if.then4.i.if.end36_crit_edge

if.then4.i.if.end36_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then4.i.if.then13_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %if.then4.i.if.then13_crit_edge, %if.then11.if.then13_crit_edge
  %20 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card1, align 4
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %21, i32 0, i32 31
  %22 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 3120
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !440
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i129.not = icmp eq i32 %24, -1
  br i1 %cmp.i129.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.111) #9
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %25, label %if.then21 [
    i32 -1, label %if.end17.if.end36_crit_edge
    i32 0, label %if.end17.if.end36_crit_edge224
  ]

if.end17.if.end36_crit_edge224:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end17.if.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then21:                                        ; preds = %if.end17
  %neg = xor i32 %25, -1
  %27 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card1, align 4
  %pci_mmap1.i131 = getelementptr inbounds %struct.pcie_service_card, ptr %28, i32 0, i32 31
  %29 = ptrtoint ptr %pci_mmap1.i131 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_mmap1.i131, align 4
  %add.ptr.i132 = getelementptr i8, ptr %30, i32 3120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %31 = tail call i32 @llvm.bswap.i32(i32 %neg) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %31) #9, !srcloc !445
  %pps_uapsd_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 104
  %32 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pps_uapsd_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool26.not = icmp eq i16 %33, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %if.then21.if.end36_crit_edge

if.then21.if.end36_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true27:                                  ; preds = %if.then21
  %ps_state = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 90
  %34 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ps_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp28 = icmp eq i32 %35, 3
  br i1 %cmp28, label %if.then30, label %land.lhs.true27.if.end36_crit_edge

land.lhs.true27.if.end36_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then30:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %ps_state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %ps_state, align 4
  %pm_wakeup_fw_try = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 105
  %37 = ptrtoint ptr %pm_wakeup_fw_try to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %pm_wakeup_fw_try, align 4
  %wakeup_timer = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 106
  %call32 = tail call i32 @del_timer(ptr noundef %wakeup_timer) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %land.lhs.true27.if.end36_crit_edge, %if.then21.if.end36_crit_edge, %if.end17.if.end36_crit_edge, %if.end17.if.end36_crit_edge224, %if.then4.i.if.end36_crit_edge, %if.end.i.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %pcie_ireg.1 = phi i32 [ %pcie_ireg.0, %if.end.if.end36_crit_edge ], [ %25, %if.then30 ], [ %25, %land.lhs.true27.if.end36_crit_edge ], [ %25, %if.then21.if.end36_crit_edge ], [ %25, %if.end17.if.end36_crit_edge ], [ %25, %if.end17.if.end36_crit_edge224 ], [ %pcie_ireg.0, %if.end.i.if.end36_crit_edge ], [ %pcie_ireg.0, %if.then4.i.if.end36_crit_edge ]
  %and = and i32 %pcie_ireg.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end36.if.end43_crit_edge, label %if.then38

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then38:                                        ; preds = %if.end36
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 64, ptr noundef nonnull @.str.120) #9
  %38 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card1, align 4
  %pcie.i134 = getelementptr inbounds %struct.pcie_service_card, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %pcie.i134 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcie.i134, align 4
  %sleep_cookie.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %sleep_cookie.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sleep_cookie.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i, label %if.then38.if.end.i135_crit_edge, label %if.end.i.i

if.then38.if.end.i135_crit_edge:                  ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i135

if.end.i.i:                                       ; preds = %if.then38
  %sleep_cookie_vbase.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %39, i32 0, i32 28
  %44 = ptrtoint ptr %sleep_cookie_vbase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sleep_cookie_vbase.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %45, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.then.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %45, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %47)
  %cmp.i.i = icmp eq i32 %47, 1437226410
  br i1 %cmp.i.i, label %if.then4.i.i.if.end.i135_crit_edge, label %if.then4.i.i.if.then.i_crit_edge

if.then4.i.i.if.then.i_crit_edge:                 ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then4.i.i.if.end.i135_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i135

if.then.i:                                        ; preds = %if.then4.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge
  %call3.i = tail call i32 @mwifiex_pm_wakeup_card(ptr noundef %adapter) #9
  br label %if.end.i135

if.end.i135:                                      ; preds = %if.then.i, %if.then4.i.i.if.end.i135_crit_edge, %if.then38.if.end.i135_crit_edge
  %tx_rdptr.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %41, i32 0, i32 6
  %49 = ptrtoint ptr %tx_rdptr.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %tx_rdptr.i, align 4
  %conv.i = zext i16 %50 to i32
  %51 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %card1, align 4
  %pci_mmap1.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %52, i32 0, i32 31
  %53 = ptrtoint ptr %pci_mmap1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci_mmap1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 %conv.i
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !440
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.i133.not.i = icmp eq i32 %55, -1
  br i1 %cmp.i133.not.i, label %mwifiex_pcie_send_data_complete.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i135
  %txbd_rdptr.i = getelementptr inbounds %struct.pcie_service_card, ptr %39, i32 0, i32 6
  %57 = ptrtoint ptr %txbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %txbd_rdptr.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.126, i32 noundef %58, i32 noundef %56) #9
  %tx_start_ptr.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %41, i32 0, i32 13
  %59 = ptrtoint ptr %tx_start_ptr.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %tx_start_ptr.i, align 2
  %conv7.i = zext i16 %60 to i32
  %shl.i = shl i32 32, %conv7.i
  %tx_rollover_ind.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %41, i32 0, i32 18
  %tx_mask.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %41, i32 0, i32 14
  %txbd_flush.i = getelementptr inbounds %struct.pcie_service_card, ptr %39, i32 0, i32 4
  %tx_hw_pending.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 23
  %pfu_enabled.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %41, i32 0, i32 26
  %ring_tx_start_ptr.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %41, i32 0, i32 25
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end6.i
  %unmap_count.0.i = phi i32 [ 0, %if.end6.i ], [ %unmap_count.1.i, %while.cond.i.backedge ]
  %61 = ptrtoint ptr %txbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %txbd_rdptr.i, align 4
  %63 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_mask.i, align 4
  %65 = xor i32 %62, %56
  %66 = and i32 %65, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.not.i = icmp eq i32 %66, 0
  br i1 %cmp.not.i, label %lor.rhs.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %67 = ptrtoint ptr %tx_rollover_ind.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_rollover_ind.i, align 4
  %69 = and i32 %68, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp16.not.i = icmp eq i32 %69, 0
  br i1 %cmp16.not.i, label %while.end.i, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %and20.i = and i32 %64, %62
  %70 = ptrtoint ptr %tx_start_ptr.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %tx_start_ptr.i, align 2
  %conv22.i = zext i16 %71 to i32
  %shr.i = lshr i32 %and20.i, %conv22.i
  %arrayidx.i = getelementptr %struct.pcie_service_card, ptr %39, i32 0, i32 11, i32 %shr.i
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i, align 4
  %tobool23.not.i = icmp eq ptr %73, null
  br i1 %tobool23.not.i, label %while.body.i.if.end30.i_crit_edge, label %if.then24.i

while.body.i.if.end30.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.then24.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.127, ptr noundef nonnull %73, i32 noundef %shr.i) #9
  %74 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card1, align 4
  %cb1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %73, i32 0, i32 3
  %76 = ptrtoint ptr %cb1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %cb1.i.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i.i = lshr i64 %77, 32
  %mapping.sroa.0.0.extract.trunc.i.i = trunc i64 %mapping.sroa.0.0.extract.shift.i.i to i32
  %mapping.sroa.5.0.extract.trunc.i.i = trunc i64 %77 to i32
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %75, align 4
  %dev2.i.i = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i.i, i32 noundef %mapping.sroa.5.0.extract.trunc.i.i, i32 noundef 1, i32 noundef 0) #9
  %inc.i = add i32 %unmap_count.0.i, 1
  %80 = ptrtoint ptr %txbd_flush.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %txbd_flush.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool25.not.i = icmp ne i8 %81, 0
  %..i136 = sext i1 %tobool25.not.i to i32
  %call28.i = tail call i32 @mwifiex_write_data_complete(ptr noundef %adapter, ptr noundef nonnull %73, i32 noundef 0, i32 noundef %..i136) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_hw_pending.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tx_hw_pending.i, i32 1, i32 3, i32 1) #9
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_hw_pending.i, ptr %tx_hw_pending.i, i32 1, ptr elementtype(i32) %tx_hw_pending.i) #9, !srcloc !446
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then24.i, %while.body.i.if.end30.i_crit_edge
  %unmap_count.1.i = phi i32 [ %inc.i, %if.then24.i ], [ %unmap_count.0.i, %while.body.i.if.end30.i_crit_edge ]
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %arrayidx.i, align 4
  %84 = ptrtoint ptr %pfu_enabled.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %pfu_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool33.not.i = icmp eq i8 %85, 0
  %arrayidx38.i = getelementptr %struct.pcie_service_card, ptr %39, i32 0, i32 10, i32 %shr.i
  %86 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx38.i, align 4
  br i1 %tobool33.not.i, label %if.else36.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = call ptr @memset(ptr %87, i32 0, i32 20)
  br label %if.end39.i

if.else36.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = call ptr @memset(ptr %87, i32 0, i32 12)
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else36.i, %if.then34.i
  %90 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %39, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %device.i, align 2
  %94 = zext i16 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.200)
  switch i16 %93, label %if.end39.i.sw.epilog.i_crit_edge [
    i16 11056, label %if.end39.i.sw.epilog.sink.split.i_crit_edge
    i16 11064, label %if.end39.i.sw.bb43.i_crit_edge
    i16 11074, label %if.end39.i.sw.bb43.i_crit_edge225
  ]

if.end39.i.sw.bb43.i_crit_edge225:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.end39.i.sw.bb43.i_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.end39.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

if.end39.i.sw.epilog.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb43.i:                                        ; preds = %if.end39.i.sw.bb43.i_crit_edge, %if.end39.i.sw.bb43.i_crit_edge225
  %95 = ptrtoint ptr %ring_tx_start_ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ring_tx_start_ptr.i, align 4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb43.i, %if.end39.i.sw.epilog.sink.split.i_crit_edge
  %.sink144.i = phi i32 [ %96, %sw.bb43.i ], [ 1, %if.end39.i.sw.epilog.sink.split.i_crit_edge ]
  %97 = ptrtoint ptr %txbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %txbd_rdptr.i, align 4
  %add.i = add i32 %98, %.sink144.i
  store i32 %add.i, ptr %txbd_rdptr.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end39.i.sw.epilog.i_crit_edge
  %99 = ptrtoint ptr %txbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %txbd_rdptr.i, align 4
  %101 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tx_mask.i, align 4
  %and47.i = and i32 %102, %100
  call void @__sanitizer_cov_trace_cmp4(i32 %and47.i, i32 %shl.i)
  %cmp48.i = icmp eq i32 %and47.i, %shl.i
  br i1 %cmp48.i, label %if.then50.i, label %sw.epilog.i.while.cond.i.backedge_crit_edge

sw.epilog.i.while.cond.i.backedge_crit_edge:      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.backedge

if.then50.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %tx_rollover_ind.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx_rollover_ind.i, align 4
  %105 = xor i32 %100, -1
  %xor.i = and i32 %104, %105
  %106 = ptrtoint ptr %txbd_rdptr.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %xor.i, ptr %txbd_rdptr.i, align 4
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %if.then50.i, %sw.epilog.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

while.end.i:                                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unmap_count.0.i)
  %tobool57.not.i = icmp eq i32 %unmap_count.0.i, 0
  br i1 %tobool57.not.i, label %while.end.i.if.end59.i_crit_edge, label %if.then58.i

while.end.i.if.end59.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

if.then58.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %data_sent.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %107 = ptrtoint ptr %data_sent.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %data_sent.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then58.i, %while.end.i.if.end59.i_crit_edge
  %108 = ptrtoint ptr %txbd_flush.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %txbd_flush.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool61.not.i = icmp eq i8 %109, 0
  br i1 %tobool61.not.i, label %if.end59.i.if.end43_crit_edge, label %if.then62.i

if.end59.i.if.end43_crit_edge:                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then62.i:                                      ; preds = %if.end59.i
  %110 = ptrtoint ptr %txbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %txbd_rdptr.i, align 4
  %112 = ptrtoint ptr %pcie.i134 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pcie.i134, align 4
  %114 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %39, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %device.i.i, align 2
  %118 = zext i16 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.201)
  switch i16 %117, label %if.then62.i.if.else68.i_crit_edge [
    i16 11056, label %sw.bb.i.i
    i16 11064, label %if.then62.i.sw.bb11.i.i_crit_edge
    i16 11074, label %if.then62.i.sw.bb11.i.i_crit_edge226
  ]

if.then62.i.sw.bb11.i.i_crit_edge226:             ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i.i

if.then62.i.sw.bb11.i.i_crit_edge:                ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i.i

if.then62.i.if.else68.i_crit_edge:                ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else68.i

sw.bb.i.i:                                        ; preds = %if.then62.i
  %txbd_wrptr.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %39, i32 0, i32 5
  %119 = ptrtoint ptr %txbd_wrptr.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %txbd_wrptr.i.i, align 4
  %tx_mask.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %113, i32 0, i32 14
  %121 = ptrtoint ptr %tx_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tx_mask.i.i, align 4
  %123 = xor i32 %120, %111
  %124 = and i32 %123, %122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp.i136.i = icmp eq i32 %124, 0
  br i1 %cmp.i136.i, label %land.lhs.true.i.i, label %sw.bb.i.i.if.else68.i_crit_edge

sw.bb.i.i.if.else68.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else68.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i.i
  %tx_rollover_ind.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %113, i32 0, i32 18
  %125 = ptrtoint ptr %tx_rollover_ind.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tx_rollover_ind.i.i, align 4
  %127 = and i32 %126, %123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp9.not.i.i = icmp eq i32 %127, 0
  br i1 %cmp9.not.i.i, label %land.lhs.true.i.i.if.else68.i_crit_edge, label %land.lhs.true.i.i.if.then66.i_crit_edge

land.lhs.true.i.i.if.then66.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66.i

land.lhs.true.i.i.if.else68.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else68.i

sw.bb11.i.i:                                      ; preds = %if.then62.i.sw.bb11.i.i_crit_edge, %if.then62.i.sw.bb11.i.i_crit_edge226
  %txbd_wrptr12.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %39, i32 0, i32 5
  %128 = ptrtoint ptr %txbd_wrptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %txbd_wrptr12.i.i, align 4
  %tx_mask13.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %113, i32 0, i32 14
  %130 = ptrtoint ptr %tx_mask13.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tx_mask13.i.i, align 4
  %132 = xor i32 %129, %111
  %133 = and i32 %132, %131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp17.i.i = icmp eq i32 %133, 0
  br i1 %cmp17.i.i, label %land.lhs.true19.i.i, label %sw.bb11.i.i.if.else68.i_crit_edge

sw.bb11.i.i.if.else68.i_crit_edge:                ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else68.i

land.lhs.true19.i.i:                              ; preds = %sw.bb11.i.i
  %tx_rollover_ind21.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %113, i32 0, i32 18
  %134 = ptrtoint ptr %tx_rollover_ind21.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tx_rollover_ind21.i.i, align 4
  %136 = and i32 %135, %132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp25.i.i = icmp eq i32 %136, 0
  br i1 %cmp25.i.i, label %land.lhs.true19.i.i.if.then66.i_crit_edge, label %land.lhs.true19.i.i.if.else68.i_crit_edge

land.lhs.true19.i.i.if.else68.i_crit_edge:        ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else68.i

land.lhs.true19.i.i.if.then66.i_crit_edge:        ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66.i

if.then66.i:                                      ; preds = %land.lhs.true19.i.i.if.then66.i_crit_edge, %land.lhs.true.i.i.if.then66.i_crit_edge
  %137 = ptrtoint ptr %txbd_flush.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %txbd_flush.i, align 4
  br label %if.end43

if.else68.i:                                      ; preds = %land.lhs.true19.i.i.if.else68.i_crit_edge, %sw.bb11.i.i.if.else68.i_crit_edge, %land.lhs.true.i.i.if.else68.i_crit_edge, %sw.bb.i.i.if.else68.i_crit_edge, %if.then62.i.if.else68.i_crit_edge
  %138 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %card1, align 4
  %txbd_rdptr.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %139, i32 0, i32 6
  %140 = ptrtoint ptr %txbd_rdptr.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %txbd_rdptr.i.i, align 4
  %pcie.i.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %139, i32 0, i32 2
  %142 = ptrtoint ptr %pcie.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pcie.i.i.i, align 4
  %144 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %139, align 4
  %device.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 8
  %146 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %device.i.i.i, align 2
  %148 = zext i16 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.202)
  switch i16 %147, label %if.else68.i.if.then.i.i_crit_edge [
    i16 11056, label %sw.bb.i.i.i
    i16 11064, label %if.else68.i.sw.bb11.i.i.i_crit_edge
    i16 11074, label %if.else68.i.sw.bb11.i.i.i_crit_edge227
  ]

if.else68.i.sw.bb11.i.i.i_crit_edge227:           ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i.i.i

if.else68.i.sw.bb11.i.i.i_crit_edge:              ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i.i.i

if.else68.i.if.then.i.i_crit_edge:                ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

sw.bb.i.i.i:                                      ; preds = %if.else68.i
  %txbd_wrptr.i.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %139, i32 0, i32 5
  %149 = ptrtoint ptr %txbd_wrptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %txbd_wrptr.i.i.i, align 4
  %tx_mask.i.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %143, i32 0, i32 14
  %151 = ptrtoint ptr %tx_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tx_mask.i.i.i, align 4
  %153 = xor i32 %150, %141
  %154 = and i32 %153, %152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp.i.i.i = icmp eq i32 %154, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %sw.bb.i.i.i.if.then.i.i_crit_edge

sw.bb.i.i.i.if.then.i.i_crit_edge:                ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb.i.i.i
  %tx_rollover_ind.i.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %143, i32 0, i32 18
  %155 = ptrtoint ptr %tx_rollover_ind.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tx_rollover_ind.i.i.i, align 4
  %157 = and i32 %156, %153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp9.not.i.i.i = icmp eq i32 %157, 0
  br i1 %cmp9.not.i.i.i, label %land.lhs.true.i.i.i.if.then.i.i_crit_edge, label %land.lhs.true.i.i.i.if.end43_crit_edge

land.lhs.true.i.i.i.if.end43_crit_edge:           ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

land.lhs.true.i.i.i.if.then.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

sw.bb11.i.i.i:                                    ; preds = %if.else68.i.sw.bb11.i.i.i_crit_edge, %if.else68.i.sw.bb11.i.i.i_crit_edge227
  %txbd_wrptr12.i.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %139, i32 0, i32 5
  %158 = ptrtoint ptr %txbd_wrptr12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %txbd_wrptr12.i.i.i, align 4
  %tx_mask13.i.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %143, i32 0, i32 14
  %160 = ptrtoint ptr %tx_mask13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %tx_mask13.i.i.i, align 4
  %162 = xor i32 %159, %141
  %163 = and i32 %162, %161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp17.i.i.i = icmp eq i32 %163, 0
  br i1 %cmp17.i.i.i, label %land.lhs.true19.i.i.i, label %sw.bb11.i.i.i.if.then.i.i_crit_edge

sw.bb11.i.i.i.if.then.i.i_crit_edge:              ; preds = %sw.bb11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

land.lhs.true19.i.i.i:                            ; preds = %sw.bb11.i.i.i
  %tx_rollover_ind21.i.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %143, i32 0, i32 18
  %164 = ptrtoint ptr %tx_rollover_ind21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %tx_rollover_ind21.i.i.i, align 4
  %166 = and i32 %165, %162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp25.i.i.i = icmp eq i32 %166, 0
  br i1 %cmp25.i.i.i, label %land.lhs.true19.i.i.i.if.end43_crit_edge, label %land.lhs.true19.i.i.i.if.then.i.i_crit_edge

land.lhs.true19.i.i.i.if.then.i.i_crit_edge:      ; preds = %land.lhs.true19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

land.lhs.true19.i.i.i.if.end43_crit_edge:         ; preds = %land.lhs.true19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then.i.i:                                      ; preds = %land.lhs.true19.i.i.i.if.then.i.i_crit_edge, %sw.bb11.i.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.i.i.if.then.i.i_crit_edge, %sw.bb.i.i.i.if.then.i.i_crit_edge, %if.else68.i.if.then.i.i_crit_edge
  %txbd_flush.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %139, i32 0, i32 4
  %167 = ptrtoint ptr %txbd_flush.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 1, ptr %txbd_flush.i.i, align 4
  %168 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %card1, align 4
  %pci_mmap1.i.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %169, i32 0, i32 31
  %170 = ptrtoint ptr %pci_mmap1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pci_mmap1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %171, i32 3096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #9, !srcloc !445
  br label %if.end43

mwifiex_pcie_send_data_complete.exit:             ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.125) #9
  br label %cleanup

if.end43:                                         ; preds = %if.then.i.i, %land.lhs.true19.i.i.i.if.end43_crit_edge, %land.lhs.true.i.i.i.if.end43_crit_edge, %if.then66.i, %if.end59.i.if.end43_crit_edge, %if.end36.if.end43_crit_edge
  %and44 = and i32 %pcie_ireg.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end51_crit_edge, label %if.then46

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then46:                                        ; preds = %if.end43
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 64, ptr noundef nonnull @.str.121) #9
  %172 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %card1, align 4
  %pcie.i139 = getelementptr inbounds %struct.pcie_service_card, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %pcie.i139 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pcie.i139, align 4
  %sleep_cookie.i.i140 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %175, i32 0, i32 27
  %176 = ptrtoint ptr %sleep_cookie.i.i140 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %sleep_cookie.i.i140, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i.i141 = icmp eq i8 %177, 0
  br i1 %tobool.not.i.i141, label %if.then46.if.end.i152_crit_edge, label %if.end.i.i144

if.then46.if.end.i152_crit_edge:                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i152

if.end.i.i144:                                    ; preds = %if.then46
  %sleep_cookie_vbase.i.i142 = getelementptr inbounds %struct.pcie_service_card, ptr %173, i32 0, i32 28
  %178 = ptrtoint ptr %sleep_cookie_vbase.i.i142 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %sleep_cookie_vbase.i.i142, align 4
  %tobool3.not.i.i143 = icmp eq ptr %179, null
  br i1 %tobool3.not.i.i143, label %if.end.i.i144.if.then.i148_crit_edge, label %if.then4.i.i146

if.end.i.i144.if.then.i148_crit_edge:             ; preds = %if.end.i.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i148

if.then4.i.i146:                                  ; preds = %if.end.i.i144
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_loadN_noabort(i32 %180, i32 4)
  %181 = load i32, ptr %179, align 1
  %182 = tail call i32 @llvm.bswap.i32(i32 %181) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %182) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %181)
  %cmp.i.i145 = icmp eq i32 %181, 1437226410
  br i1 %cmp.i.i145, label %if.then4.i.i146.if.end.i152_crit_edge, label %if.then4.i.i146.if.then.i148_crit_edge

if.then4.i.i146.if.then.i148_crit_edge:           ; preds = %if.then4.i.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i148

if.then4.i.i146.if.end.i152_crit_edge:            ; preds = %if.then4.i.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i152

if.then.i148:                                     ; preds = %if.then4.i.i146.if.then.i148_crit_edge, %if.end.i.i144.if.then.i148_crit_edge
  %call3.i147 = tail call i32 @mwifiex_pm_wakeup_card(ptr noundef %adapter) #9
  br label %if.end.i152

if.end.i152:                                      ; preds = %if.then.i148, %if.then4.i.i146.if.end.i152_crit_edge, %if.then46.if.end.i152_crit_edge
  %rx_wrptr.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %175, i32 0, i32 9
  %183 = ptrtoint ptr %rx_wrptr.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %rx_wrptr.i, align 2
  %conv.i149 = zext i16 %184 to i32
  %185 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %card1, align 4
  %pci_mmap1.i.i150 = getelementptr inbounds %struct.pcie_service_card, ptr %186, i32 0, i32 31
  %187 = ptrtoint ptr %pci_mmap1.i.i150 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pci_mmap1.i.i150, align 4
  %add.ptr.i.i151 = getelementptr i8, ptr %188, i32 %conv.i149
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i151) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %189)
  %cmp.i231.not.i = icmp eq i32 %189, -1
  br i1 %cmp.i231.not.i, label %if.end.i152.cleanup133.sink.split.i_crit_edge, label %if.end6.i154

if.end.i152.cleanup133.sink.split.i_crit_edge:    ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup133.sink.split.i

if.end6.i154:                                     ; preds = %if.end.i152
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #9
  %rxbd_wrptr.i = getelementptr inbounds %struct.pcie_service_card, ptr %173, i32 0, i32 12
  %rx_mask.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %175, i32 0, i32 16
  %rxbd_rdptr.i = getelementptr inbounds %struct.pcie_service_card, ptr %173, i32 0, i32 13
  %rx_rollover_ind.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %175, i32 0, i32 19
  %intf_hdr_len.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %rx_work_enabled.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 30
  %rx_data_q.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 146
  %data_received.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 57
  %rx_pending.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 20
  %pfu_enabled.i153 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %175, i32 0, i32 26
  %ring_flag_sop.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %175, i32 0, i32 21
  %ring_flag_eop.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %175, i32 0, i32 22
  %txbd_wrptr.i = getelementptr inbounds %struct.pcie_service_card, ptr %173, i32 0, i32 5
  %tx_wrap_mask.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %175, i32 0, i32 15
  %rx_rdptr.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %175, i32 0, i32 8
  br label %while.cond.i156

while.cond.i156:                                  ; preds = %cleanup.i, %if.end6.i154
  %wrptr.0.i = phi i32 [ %190, %if.end6.i154 ], [ %282, %cleanup.i ]
  %191 = ptrtoint ptr %rxbd_wrptr.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %wrptr.0.i, ptr %rxbd_wrptr.i, align 4
  %192 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rx_mask.i, align 4
  %194 = ptrtoint ptr %rxbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %rxbd_rdptr.i, align 4
  %196 = xor i32 %195, %wrptr.0.i
  %197 = and i32 %196, %193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp.not.i155 = icmp eq i32 %197, 0
  br i1 %cmp.not.i155, label %lor.rhs.i157, label %while.cond.i156.while.body.i159_crit_edge

while.cond.i156.while.body.i159_crit_edge:        ; preds = %while.cond.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i159

lor.rhs.i157:                                     ; preds = %while.cond.i156
  %198 = ptrtoint ptr %rx_rollover_ind.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %rx_rollover_ind.i, align 4
  %200 = and i32 %199, %196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %cmp14.i = icmp eq i32 %200, 0
  br i1 %cmp14.i, label %lor.rhs.i157.while.body.i159_crit_edge, label %lor.rhs.i157.if.end51_crit_edge

lor.rhs.i157.if.end51_crit_edge:                  ; preds = %lor.rhs.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

lor.rhs.i157.while.body.i159_crit_edge:           ; preds = %lor.rhs.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i159

while.body.i159:                                  ; preds = %lor.rhs.i157.while.body.i159_crit_edge, %while.cond.i156.while.body.i159_crit_edge
  %and18.i = and i32 %195, %193
  %arrayidx.i158 = getelementptr %struct.pcie_service_card, ptr %173, i32 0, i32 18, i32 %and18.i
  %201 = ptrtoint ptr %arrayidx.i158 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i158, align 4
  %tobool19.not.i = icmp eq ptr %202, null
  br i1 %tobool19.not.i, label %while.body.i159.cleanup_crit_edge, label %if.end21.i

while.body.i159.cleanup_crit_edge:                ; preds = %while.body.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21.i:                                       ; preds = %while.body.i159
  %203 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %card1, align 4
  %cb1.i.i.i160 = getelementptr inbounds %struct.sk_buff, ptr %202, i32 0, i32 3
  %205 = ptrtoint ptr %cb1.i.i.i160 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %cb1.i.i.i160, align 8
  %mapping.sroa.0.0.extract.shift.i.i161 = lshr i64 %206, 32
  %mapping.sroa.0.0.extract.trunc.i.i162 = trunc i64 %mapping.sroa.0.0.extract.shift.i.i161 to i32
  %mapping.sroa.5.0.extract.trunc.i.i163 = trunc i64 %206 to i32
  %207 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %204, align 4
  %dev2.i.i164 = getelementptr inbounds %struct.pci_dev, ptr %208, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i.i164, i32 noundef %mapping.sroa.0.0.extract.trunc.i.i162, i32 noundef %mapping.sroa.5.0.extract.trunc.i.i163, i32 noundef 2, i32 noundef 0) #9
  %209 = ptrtoint ptr %arrayidx.i158 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr null, ptr %arrayidx.i158, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %202, i32 0, i32 19
  %210 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %data.i, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_loadN_noabort(i32 %212, i32 2)
  %213 = load i16, ptr %211, align 1
  %214 = tail call i16 @llvm.bswap.i16(i16 %213) #9
  %conv25.i = zext i16 %214 to i32
  %215 = ptrtoint ptr %intf_hdr_len.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %intf_hdr_len.i, align 4
  %217 = zext i8 %216 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %214, i16 %217)
  %cmp27.not.i = icmp ule i16 %214, %217
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %214)
  %cmp31.i = icmp ugt i16 %214, 4096
  %spec.select.i = or i1 %cmp31.i, %cmp27.not.i
  br i1 %spec.select.i, label %do.end.i, label %if.else.i, !prof !447

do.end.i:                                         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1615, i32 noundef 9, ptr noundef null) #9
  %218 = ptrtoint ptr %rxbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %rxbd_rdptr.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef %conv25.i, i32 noundef %219, i32 noundef %wrptr.0.i) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %202, i32 noundef 1) #9
  br label %if.end71.i

if.else.i:                                        ; preds = %if.end21.i
  %call60.i = tail call ptr @skb_put(ptr noundef nonnull %202, i32 noundef %conv25.i) #9
  %220 = ptrtoint ptr %rxbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %rxbd_rdptr.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.130, i32 noundef %221, i32 noundef %wrptr.0.i, i32 noundef %conv25.i) #9
  %222 = ptrtoint ptr %intf_hdr_len.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %intf_hdr_len.i, align 4
  %conv64.i = zext i8 %223 to i32
  %call65.i = tail call ptr @skb_pull(ptr noundef nonnull %202, i32 noundef %conv64.i) #9
  %224 = ptrtoint ptr %rx_work_enabled.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %rx_work_enabled.i, align 4, !range !439
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool66.not.i = icmp eq i8 %225, 0
  br i1 %tobool66.not.i, label %if.else68.i166, label %if.then67.i

if.then67.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @skb_queue_tail(ptr noundef %rx_data_q.i, ptr noundef nonnull %202) #9
  %226 = ptrtoint ptr %data_received.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 1, ptr %data_received.i, align 4
  %call.i.i.i165 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_pending.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %rx_pending.i, i32 1, i32 3, i32 1) #9
  %227 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_pending.i, ptr %rx_pending.i, i32 1, ptr elementtype(i32) %rx_pending.i) #9, !srcloc !448
  br label %if.end71.i

if.else68.i166:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %call69.i = tail call i32 @mwifiex_handle_rx_packet(ptr noundef %adapter, ptr noundef nonnull %202) #9
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.else68.i166, %if.then67.i, %do.end.i
  %call72.i = tail call ptr @mwifiex_alloc_dma_align_buf(i32 noundef 4096, i32 noundef 3264) #9
  %tobool73.not.i = icmp eq ptr %call72.i, null
  br i1 %tobool73.not.i, label %if.end71.i.cleanup133.sink.split.i_crit_edge, label %if.end75.i

if.end71.i.cleanup133.sink.split.i_crit_edge:     ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup133.sink.split.i

if.end75.i:                                       ; preds = %if.end71.i
  %call76.i = tail call fastcc i32 @mwifiex_map_pci_memory(ptr noundef %adapter, ptr noundef nonnull %call72.i, i32 noundef 4096, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %if.end79.i, label %if.end75.i.cleanup_crit_edge

if.end75.i.cleanup_crit_edge:                     ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end79.i:                                       ; preds = %if.end75.i
  %cb1.i.i233.i = getelementptr inbounds %struct.sk_buff, ptr %call72.i, i32 0, i32 3
  %228 = ptrtoint ptr %cb1.i.i233.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %cb1.i.i233.i, align 8
  %mapping.sroa.0.0.extract.shift.i234.i = lshr i64 %229, 32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.132, ptr noundef nonnull %call72.i, i32 noundef %and18.i) #9
  %230 = ptrtoint ptr %arrayidx.i158 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %call72.i, ptr %arrayidx.i158, align 4
  %231 = ptrtoint ptr %pfu_enabled.i153 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %pfu_enabled.i153, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool83.not.i = icmp eq i8 %232, 0
  %arrayidx96.i = getelementptr %struct.pcie_service_card, ptr %173, i32 0, i32 17, i32 %and18.i
  %233 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx96.i, align 4
  br i1 %tobool83.not.i, label %if.else94.i, label %if.then84.i

if.then84.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  %paddr.i = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, ptr %234, i32 0, i32 4
  %235 = ptrtoint ptr %paddr.i to i32
  call void @__asan_storeN_noabort(i32 %235, i32 8)
  store i64 %mapping.sroa.0.0.extract.shift.i234.i, ptr %paddr.i, align 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call72.i, i32 0, i32 6
  %236 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %len.i, align 4
  %conv87.i = trunc i32 %237 to i16
  %len88.i = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, ptr %234, i32 0, i32 3
  %238 = ptrtoint ptr %len88.i to i32
  call void @__asan_storeN_noabort(i32 %238, i32 2)
  store i16 %conv87.i, ptr %len88.i, align 1
  %239 = load i32, ptr %len.i, align 4
  %conv90.i = trunc i32 %239 to i16
  %frag_len.i = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, ptr %234, i32 0, i32 2
  %240 = ptrtoint ptr %frag_len.i to i32
  call void @__asan_storeN_noabort(i32 %240, i32 2)
  store i16 %conv90.i, ptr %frag_len.i, align 1
  %offset.i = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, ptr %234, i32 0, i32 1
  %241 = ptrtoint ptr %offset.i to i32
  call void @__asan_storeN_noabort(i32 %241, i32 2)
  store i16 0, ptr %offset.i, align 1
  %242 = ptrtoint ptr %ring_flag_sop.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %ring_flag_sop.i, align 4
  %244 = ptrtoint ptr %ring_flag_eop.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %ring_flag_eop.i, align 1
  %or229.i = or i8 %245, %243
  %conv93.i = zext i8 %or229.i to i16
  %246 = ptrtoint ptr %234 to i32
  call void @__asan_storeN_noabort(i32 %246, i32 2)
  store i16 %conv93.i, ptr %234, align 1
  br label %if.end103.i

if.else94.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  %247 = ptrtoint ptr %234 to i32
  call void @__asan_storeN_noabort(i32 %247, i32 8)
  store i64 %mapping.sroa.0.0.extract.shift.i234.i, ptr %234, align 1
  %len99.i = getelementptr inbounds %struct.sk_buff, ptr %call72.i, i32 0, i32 6
  %248 = ptrtoint ptr %len99.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %len99.i, align 4
  %conv100.i = trunc i32 %249 to i16
  %len101.i = getelementptr inbounds %struct.mwifiex_pcie_buf_desc, ptr %234, i32 0, i32 1
  %250 = ptrtoint ptr %len101.i to i32
  call void @__asan_storeN_noabort(i32 %250, i32 2)
  store i16 %conv100.i, ptr %len101.i, align 1
  %flags102.i = getelementptr inbounds %struct.mwifiex_pcie_buf_desc, ptr %234, i32 0, i32 2
  %251 = ptrtoint ptr %flags102.i to i32
  call void @__asan_storeN_noabort(i32 %251, i32 2)
  store i16 0, ptr %flags102.i, align 1
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.else94.i, %if.then84.i
  %252 = ptrtoint ptr %rxbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %rxbd_rdptr.i, align 4
  %inc.i167 = add i32 %253, 1
  store i32 %inc.i167, ptr %rxbd_rdptr.i, align 4
  %254 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %rx_mask.i, align 4
  %and106.i = and i32 %255, %inc.i167
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and106.i)
  %cmp107.i = icmp eq i32 %and106.i, 32
  br i1 %cmp107.i, label %if.then109.i, label %if.end103.i.if.end115.i_crit_edge

if.end103.i.if.end115.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115.i

if.then109.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  %256 = ptrtoint ptr %rx_rollover_ind.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %rx_rollover_ind.i, align 4
  %258 = sub i32 -2, %253
  %xor.i168 = and i32 %257, %258
  %259 = ptrtoint ptr %rxbd_rdptr.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %xor.i168, ptr %rxbd_rdptr.i, align 4
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then109.i, %if.end103.i.if.end115.i_crit_edge
  %260 = ptrtoint ptr %rxbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %rxbd_rdptr.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.133, i32 noundef %261, i32 noundef %wrptr.0.i) #9
  %262 = ptrtoint ptr %txbd_wrptr.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %txbd_wrptr.i, align 4
  %264 = ptrtoint ptr %tx_wrap_mask.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %tx_wrap_mask.i, align 4
  %and117.i = and i32 %265, %263
  %266 = ptrtoint ptr %rx_rdptr.i to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %rx_rdptr.i, align 4
  %conv118.i = zext i16 %267 to i32
  %268 = ptrtoint ptr %rxbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %rxbd_rdptr.i, align 4
  %or120.i = or i32 %269, %and117.i
  %270 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %card1, align 4
  %pci_mmap1.i237.i = getelementptr inbounds %struct.pcie_service_card, ptr %271, i32 0, i32 31
  %272 = ptrtoint ptr %pci_mmap1.i237.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %pci_mmap1.i237.i, align 4
  %add.ptr.i238.i = getelementptr i8, ptr %273, i32 %conv118.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %274 = tail call i32 @llvm.bswap.i32(i32 %or120.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238.i, i32 %274) #9, !srcloc !445
  %275 = ptrtoint ptr %rx_wrptr.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %rx_wrptr.i, align 2
  %conv126.i = zext i16 %276 to i32
  %277 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %card1, align 4
  %pci_mmap1.i240.i = getelementptr inbounds %struct.pcie_service_card, ptr %278, i32 0, i32 31
  %279 = ptrtoint ptr %pci_mmap1.i240.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %pci_mmap1.i240.i, align 4
  %add.ptr.i241.i = getelementptr i8, ptr %280, i32 %conv126.i
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i241.i) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %cmp.i242.not.i = icmp eq i32 %281, -1
  br i1 %cmp.i242.not.i, label %if.end115.i.cleanup133.sink.split.i_crit_edge, label %cleanup.i

if.end115.i.cleanup133.sink.split.i_crit_edge:    ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup133.sink.split.i

cleanup.i:                                        ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #11
  %282 = tail call i32 @llvm.bswap.i32(i32 %281) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.135) #9
  br label %while.cond.i156

cleanup133.sink.split.i:                          ; preds = %if.end115.i.cleanup133.sink.split.i_crit_edge, %if.end71.i.cleanup133.sink.split.i_crit_edge, %if.end.i152.cleanup133.sink.split.i_crit_edge
  %.str.131.sink.i = phi ptr [ @.str.128, %if.end.i152.cleanup133.sink.split.i_crit_edge ], [ @.str.128, %if.end115.i.cleanup133.sink.split.i_crit_edge ], [ @.str.131, %if.end71.i.cleanup133.sink.split.i_crit_edge ]
  %retval.2.ph.i = phi i32 [ -1, %if.end.i152.cleanup133.sink.split.i_crit_edge ], [ -1, %if.end115.i.cleanup133.sink.split.i_crit_edge ], [ -12, %if.end71.i.cleanup133.sink.split.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull %.str.131.sink.i) #9
  br label %cleanup

if.end51:                                         ; preds = %lor.rhs.i157.if.end51_crit_edge, %if.end43.if.end51_crit_edge
  %and52 = and i32 %pcie_ireg.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end59_crit_edge, label %if.then54

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then54:                                        ; preds = %if.end51
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 64, ptr noundef nonnull @.str.122) #9
  %call55 = tail call fastcc i32 @mwifiex_pcie_process_event_ready(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then54.if.end59_crit_edge, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then54.if.end59_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end59:                                         ; preds = %if.then54.if.end59_crit_edge, %if.end51.if.end59_crit_edge
  %and60 = and i32 %pcie_ireg.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.if.end71_crit_edge, label %if.then62

if.end59.if.end71_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then62:                                        ; preds = %if.end59
  %cmd_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 54
  %283 = ptrtoint ptr %cmd_sent to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %cmd_sent, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %tobool63.not = icmp eq i8 %284, 0
  br i1 %tobool63.not, label %if.then62.if.end66_crit_edge, label %if.then64

if.then62.if.end66_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then64:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 64, ptr noundef nonnull @.str.123) #9
  %285 = ptrtoint ptr %cmd_sent to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 0, ptr %cmd_sent, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.then62.if.end66_crit_edge
  %286 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %card1, align 4
  %pcie.i170 = getelementptr inbounds %struct.pcie_service_card, ptr %287, i32 0, i32 2
  %288 = ptrtoint ptr %pcie.i170 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %pcie.i170, align 4
  %cmdrsp_buf.i = getelementptr inbounds %struct.pcie_service_card, ptr %287, i32 0, i32 27
  %290 = ptrtoint ptr %cmdrsp_buf.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %cmdrsp_buf.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.142) #9
  %curr_cmd.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 60
  %292 = ptrtoint ptr %curr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %curr_cmd.i, align 4
  %tobool.not.i171 = icmp eq ptr %293, null
  br i1 %tobool.not.i171, label %if.else.i178, label %if.then.i177

if.then.i177:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %294 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %card1, align 4
  %cb1.i.i.i172 = getelementptr inbounds %struct.sk_buff, ptr %291, i32 0, i32 3
  %296 = ptrtoint ptr %cb1.i.i.i172 to i32
  call void @__asan_load8_noabort(i32 %296)
  %297 = load i64, ptr %cb1.i.i.i172, align 8
  %mapping.sroa.0.0.extract.shift.i.i173 = lshr i64 %297, 32
  %mapping.sroa.0.0.extract.trunc.i.i174 = trunc i64 %mapping.sroa.0.0.extract.shift.i.i173 to i32
  %mapping.sroa.5.0.extract.trunc.i.i175 = trunc i64 %297 to i32
  %298 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %295, align 4
  %dev2.i.i176 = getelementptr inbounds %struct.pci_dev, ptr %299, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i.i176, i32 noundef %mapping.sroa.0.0.extract.trunc.i.i174, i32 noundef %mapping.sroa.5.0.extract.trunc.i.i175, i32 noundef 2, i32 noundef 0) #9
  br label %if.end.i179

if.else.i178:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %300 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %287, align 4
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %301, i32 0, i32 44
  %cb1.i.i128.i = getelementptr inbounds %struct.sk_buff, ptr %291, i32 0, i32 3
  %302 = ptrtoint ptr %cb1.i.i128.i to i32
  call void @__asan_load8_noabort(i32 %302)
  %303 = load i64, ptr %cb1.i.i128.i, align 8
  %mapping.sroa.0.0.extract.shift.i129.i = lshr i64 %303, 32
  %mapping.sroa.0.0.extract.trunc.i130.i = trunc i64 %mapping.sroa.0.0.extract.shift.i129.i to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev3.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i130.i, i32 noundef 2312, i32 noundef 2) #9
  br label %if.end.i179

if.end.i179:                                      ; preds = %if.else.i178, %if.then.i177
  %cmd_buf.i = getelementptr inbounds %struct.pcie_service_card, ptr %287, i32 0, i32 26
  %304 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %cmd_buf.i, align 4
  %tobool4.not.i = icmp eq ptr %305, null
  br i1 %tobool4.not.i, label %if.end.i179.if.end9.i_crit_edge, label %if.then5.i180

if.end.i179.if.end9.i_crit_edge:                  ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then5.i180:                                    ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #11
  %306 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %card1, align 4
  %cb1.i.i132.i = getelementptr inbounds %struct.sk_buff, ptr %305, i32 0, i32 3
  %308 = ptrtoint ptr %cb1.i.i132.i to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %cb1.i.i132.i, align 8
  %mapping.sroa.0.0.extract.shift.i133.i = lshr i64 %309, 32
  %mapping.sroa.0.0.extract.trunc.i134.i = trunc i64 %mapping.sroa.0.0.extract.shift.i133.i to i32
  %mapping.sroa.5.0.extract.trunc.i135.i = trunc i64 %309 to i32
  %310 = ptrtoint ptr %307 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %307, align 4
  %dev2.i136.i = getelementptr inbounds %struct.pci_dev, ptr %311, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i136.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i134.i, i32 noundef %mapping.sroa.5.0.extract.trunc.i135.i, i32 noundef 1, i32 noundef 0) #9
  %312 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %cmd_buf.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %313, i32 noundef 1) #9
  %314 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr null, ptr %cmd_buf.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i180, %if.end.i179.if.end9.i_crit_edge
  %data.i181 = getelementptr inbounds %struct.sk_buff, ptr %291, i32 0, i32 19
  %315 = ptrtoint ptr %data.i181 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %data.i181, align 4
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_loadN_noabort(i32 %317, i32 2)
  %318 = load i16, ptr %316, align 1
  %319 = tail call i16 @llvm.bswap.i16(i16 %318) #9
  %len.i182 = getelementptr inbounds %struct.sk_buff, ptr %291, i32 0, i32 6
  %320 = ptrtoint ptr %len.i182 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %len.i182, align 4
  %sub.i = sub i32 2312, %321
  %call11.i = tail call ptr @skb_put(ptr noundef %291, i32 noundef %sub.i) #9
  %conv.i183 = zext i16 %319 to i32
  tail call void @skb_trim(ptr noundef %291, i32 noundef %conv.i183) #9
  %322 = ptrtoint ptr %curr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %curr_cmd.i, align 4
  %tobool13.not.i = icmp eq ptr %323, null
  br i1 %tobool13.not.i, label %if.then14.i, label %if.else48.i

if.then14.i:                                      ; preds = %if.end9.i
  %ps_state.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 90
  %324 = ptrtoint ptr %ps_state.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %ps_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %325)
  %cmp.i184 = icmp eq i32 %325, 2
  br i1 %cmp.i184, label %if.then16.i, label %if.else35.i

if.then16.i:                                      ; preds = %if.then14.i
  %326 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %287, align 4
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %327, i32 0, i32 44
  %cb1.i.i137.i = getelementptr inbounds %struct.sk_buff, ptr %291, i32 0, i32 3
  %328 = ptrtoint ptr %cb1.i.i137.i to i32
  call void @__asan_load8_noabort(i32 %328)
  %329 = load i64, ptr %cb1.i.i137.i, align 8
  %mapping.sroa.0.0.extract.shift.i138.i = lshr i64 %329, 32
  %mapping.sroa.0.0.extract.trunc.i139.i = trunc i64 %mapping.sroa.0.0.extract.shift.i138.i to i32
  tail call void @dma_sync_single_for_device(ptr noundef %dev18.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i139.i, i32 noundef 4, i32 noundef 2) #9
  %330 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %card1, align 4
  %pci_mmap1.i.i185 = getelementptr inbounds %struct.pcie_service_card, ptr %331, i32 0, i32 31
  %332 = ptrtoint ptr %pci_mmap1.i.i185 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %pci_mmap1.i.i185, align 4
  %add.ptr.i.i186 = getelementptr i8, ptr %333, i32 3096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i186, i32 67108864) #9, !srcloc !445
  %334 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %card1, align 4
  %cmdrsp_buf.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %335, i32 0, i32 27
  %336 = ptrtoint ptr %cmdrsp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %cmdrsp_buf.i.i, align 4
  %cb1.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %337, i32 0, i32 3
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %337, i32 0, i32 19
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i187.for.body.i.i_crit_edge, %if.then16.i
  %count.06.i.i = phi i32 [ 0, %if.then16.i ], [ %inc.i.i, %if.end.i.i187.for.body.i.i_crit_edge ]
  %338 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %335, align 4
  %dev2.i142.i = getelementptr inbounds %struct.pci_dev, ptr %339, i32 0, i32 44
  %340 = ptrtoint ptr %cb1.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %340)
  %341 = load i64, ptr %cb1.i.i.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i.i.i = lshr i64 %341, 32
  %mapping.sroa.0.0.extract.trunc.i.i.i = trunc i64 %mapping.sroa.0.0.extract.shift.i.i.i to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev2.i142.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i.i.i, i32 noundef 4, i32 noundef 2) #9
  %342 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %data.i.i, align 4
  %344 = ptrtoint ptr %343 to i32
  call void @__asan_loadN_noabort(i32 %344, i32 4)
  %345 = load i32, ptr %343, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272699458, i32 %345)
  %cmp4.i.i = icmp eq i32 %345, -272699458
  br i1 %cmp4.i.i, label %for.end.i.i, label %if.end.i.i187

if.end.i.i187:                                    ; preds = %for.body.i.i
  %346 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %335, align 4
  %dev6.i.i = getelementptr inbounds %struct.pci_dev, ptr %347, i32 0, i32 44
  %348 = ptrtoint ptr %cb1.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %348)
  %349 = load i64, ptr %cb1.i.i.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i2.i.i = lshr i64 %349, 32
  %mapping.sroa.0.0.extract.trunc.i3.i.i = trunc i64 %mapping.sroa.0.0.extract.shift.i2.i.i to i32
  tail call void @dma_sync_single_for_device(ptr noundef %dev6.i.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i3.i.i, i32 noundef 4, i32 noundef 2) #9
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #9
  %inc.i.i = add nuw nsw i32 %count.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %if.then9.i.i, label %if.end.i.i187.for.body.i.i_crit_edge

if.end.i.i187.for.body.i.i_crit_edge:             ; preds = %if.end.i.i187
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.146, i32 noundef %count.06.i.i) #9
  br label %mwifiex_delay_for_sleep_cookie.exit.i

if.then9.i.i:                                     ; preds = %if.end.i.i187
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.147) #9
  br label %mwifiex_delay_for_sleep_cookie.exit.i

mwifiex_delay_for_sleep_cookie.exit.i:            ; preds = %if.then9.i.i, %for.end.i.i
  %350 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %card1, align 4
  %352 = ptrtoint ptr %cb1.i.i137.i to i32
  call void @__asan_load8_noabort(i32 %352)
  %353 = load i64, ptr %cb1.i.i137.i, align 8
  %mapping.sroa.0.0.extract.shift.i145.i = lshr i64 %353, 32
  %mapping.sroa.0.0.extract.trunc.i146.i = trunc i64 %mapping.sroa.0.0.extract.shift.i145.i to i32
  %mapping.sroa.5.0.extract.trunc.i147.i = trunc i64 %353 to i32
  %354 = ptrtoint ptr %351 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %351, align 4
  %dev2.i148.i = getelementptr inbounds %struct.pci_dev, ptr %355, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i148.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i146.i, i32 noundef %mapping.sroa.5.0.extract.trunc.i147.i, i32 noundef 2, i32 noundef 0) #9
  %intf_hdr_len.i188 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %356 = ptrtoint ptr %intf_hdr_len.i188 to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %intf_hdr_len.i188, align 4
  %conv24.i = zext i8 %357 to i32
  %call25.i = tail call ptr @skb_pull(ptr noundef %291, i32 noundef %conv24.i) #9
  %sleep_cookie.i189 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %289, i32 0, i32 27
  %358 = ptrtoint ptr %sleep_cookie.i189 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %sleep_cookie.i189, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %359)
  %tobool27.not172.i = icmp eq i8 %359, 0
  br i1 %tobool27.not172.i, label %mwifiex_delay_for_sleep_cookie.exit.i.while.end.i199_crit_edge, label %mwifiex_delay_for_sleep_cookie.exit.i.land.lhs.true.i_crit_edge

mwifiex_delay_for_sleep_cookie.exit.i.land.lhs.true.i_crit_edge: ; preds = %mwifiex_delay_for_sleep_cookie.exit.i
  br label %land.lhs.true.i

mwifiex_delay_for_sleep_cookie.exit.i.while.end.i199_crit_edge: ; preds = %mwifiex_delay_for_sleep_cookie.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i199

land.lhs.true.i:                                  ; preds = %while.body.i197.land.lhs.true.i_crit_edge, %mwifiex_delay_for_sleep_cookie.exit.i.land.lhs.true.i_crit_edge
  %count.0173.i = phi i32 [ %inc.i190, %while.body.i197.land.lhs.true.i_crit_edge ], [ 0, %mwifiex_delay_for_sleep_cookie.exit.i.land.lhs.true.i_crit_edge ]
  %inc.i190 = add nuw nsw i32 %count.0173.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %count.0173.i)
  %exitcond.not.i = icmp eq i32 %count.0173.i, 10
  br i1 %exitcond.not.i, label %land.lhs.true.i.while.end.i199_crit_edge, label %land.rhs.i

land.lhs.true.i.while.end.i199_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i199

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %360 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %card1, align 4
  %pcie.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %361, i32 0, i32 2
  %362 = ptrtoint ptr %pcie.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %pcie.i.i, align 4
  %sleep_cookie.i.i191 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %363, i32 0, i32 27
  %364 = ptrtoint ptr %sleep_cookie.i.i191 to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %sleep_cookie.i.i191, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %365)
  %tobool.not.i.i192 = icmp eq i8 %365, 0
  br i1 %tobool.not.i.i192, label %land.rhs.i.while.body.i197_crit_edge, label %if.end.i150.i

land.rhs.i.while.body.i197_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i197

if.end.i150.i:                                    ; preds = %land.rhs.i
  %sleep_cookie_vbase.i.i193 = getelementptr inbounds %struct.pcie_service_card, ptr %361, i32 0, i32 28
  %366 = ptrtoint ptr %sleep_cookie_vbase.i.i193 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %sleep_cookie_vbase.i.i193, align 4
  %tobool3.not.i.i194 = icmp eq ptr %367, null
  br i1 %tobool3.not.i.i194, label %if.end.i150.i.while.end.i199_crit_edge, label %if.then4.i.i196

if.end.i150.i.while.end.i199_crit_edge:           ; preds = %if.end.i150.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i199

if.then4.i.i196:                                  ; preds = %if.end.i150.i
  %368 = ptrtoint ptr %367 to i32
  call void @__asan_loadN_noabort(i32 %368, i32 4)
  %369 = load i32, ptr %367, align 1
  %370 = tail call i32 @llvm.bswap.i32(i32 %369) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %370) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %369)
  %cmp.i.i195 = icmp eq i32 %369, 1437226410
  br i1 %cmp.i.i195, label %if.then4.i.i196.while.body.i197_crit_edge, label %if.then4.i.i196.while.end.i199_crit_edge

if.then4.i.i196.while.end.i199_crit_edge:         ; preds = %if.then4.i.i196
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i199

if.then4.i.i196.while.body.i197_crit_edge:        ; preds = %if.then4.i.i196
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i197

while.body.i197:                                  ; preds = %if.then4.i.i196.while.body.i197_crit_edge, %land.rhs.i.while.body.i197_crit_edge
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 60, i32 noundef 2) #9
  %371 = ptrtoint ptr %sleep_cookie.i189 to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %sleep_cookie.i189, align 1
  %tobool27.not.i = icmp eq i8 %372, 0
  br i1 %tobool27.not.i, label %while.body.i197.while.end.i199_crit_edge, label %while.body.i197.land.lhs.true.i_crit_edge

while.body.i197.land.lhs.true.i_crit_edge:        ; preds = %while.body.i197
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

while.body.i197.while.end.i199_crit_edge:         ; preds = %while.body.i197
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i199

while.end.i199:                                   ; preds = %while.body.i197.while.end.i199_crit_edge, %if.then4.i.i196.while.end.i199_crit_edge, %if.end.i150.i.while.end.i199_crit_edge, %land.lhs.true.i.while.end.i199_crit_edge, %mwifiex_delay_for_sleep_cookie.exit.i.while.end.i199_crit_edge
  %373 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %card1, align 4
  %pcie.i.i.i198 = getelementptr inbounds %struct.pcie_service_card, ptr %374, i32 0, i32 2
  %375 = ptrtoint ptr %pcie.i.i.i198 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %pcie.i.i.i198, align 4
  %sleep_cookie.i.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %376, i32 0, i32 27
  %377 = ptrtoint ptr %sleep_cookie.i.i.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %sleep_cookie.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %378)
  %tobool.not.i.i.i = icmp eq i8 %378, 0
  br i1 %tobool.not.i.i.i, label %while.end.i199.if.then.i.i203_crit_edge, label %if.end.i.i.i

while.end.i199.if.then.i.i203_crit_edge:          ; preds = %while.end.i199
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i203

if.end.i.i.i:                                     ; preds = %while.end.i199
  %sleep_cookie_vbase.i.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %374, i32 0, i32 28
  %379 = ptrtoint ptr %sleep_cookie_vbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %sleep_cookie_vbase.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %380, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.mwifiex_pcie_enable_host_int.exit.i_crit_edge, label %if.then4.i.i.i

if.end.i.i.i.mwifiex_pcie_enable_host_int.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_pcie_enable_host_int.exit.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_loadN_noabort(i32 %381, i32 4)
  %382 = load i32, ptr %380, align 1
  %383 = tail call i32 @llvm.bswap.i32(i32 %382) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %383) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %382)
  %cmp.i.i.i200 = icmp eq i32 %382, 1437226410
  br i1 %cmp.i.i.i200, label %if.then4.i.i.i.if.then.i.i203_crit_edge, label %if.then4.i.i.i.mwifiex_pcie_enable_host_int.exit.i_crit_edge

if.then4.i.i.i.mwifiex_pcie_enable_host_int.exit.i_crit_edge: ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_pcie_enable_host_int.exit.i

if.then4.i.i.i.if.then.i.i203_crit_edge:          ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i203

if.then.i.i203:                                   ; preds = %if.then4.i.i.i.if.then.i.i203_crit_edge, %while.end.i199.if.then.i.i203_crit_edge
  %384 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %card1, align 4
  %pci_mmap1.i.i.i201 = getelementptr inbounds %struct.pcie_service_card, ptr %385, i32 0, i32 31
  %386 = ptrtoint ptr %pci_mmap1.i.i.i201 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %pci_mmap1.i.i.i201, align 4
  %add.ptr.i.i.i202 = getelementptr i8, ptr %387, i32 3124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i202, i32 251658240) #9, !srcloc !445
  br label %mwifiex_pcie_enable_host_int.exit.i

mwifiex_pcie_enable_host_int.exit.i:              ; preds = %if.then.i.i203, %if.then4.i.i.i.mwifiex_pcie_enable_host_int.exit.i_crit_edge, %if.end.i.i.i.mwifiex_pcie_enable_host_int.exit.i_crit_edge
  %388 = ptrtoint ptr %data.i181 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %data.i181, align 4
  %390 = ptrtoint ptr %len.i182 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %len.i182, align 4
  tail call void @mwifiex_process_sleep_confirm_resp(ptr noundef %adapter, ptr noundef %389, i32 noundef %391) #9
  br label %if.end36.i

if.else35.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.143) #9
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else35.i, %mwifiex_pcie_enable_host_int.exit.i
  %upld_buf.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 52
  %392 = ptrtoint ptr %data.i181 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %data.i181, align 4
  %394 = ptrtoint ptr %len.i182 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %len.i182, align 4
  %396 = tail call i32 @llvm.umin.i32(i32 %395, i32 2048) #9
  %397 = call ptr @memcpy(ptr %upld_buf.i, ptr %393, i32 %396)
  %intf_hdr_len41.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %398 = ptrtoint ptr %intf_hdr_len41.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %intf_hdr_len41.i, align 4
  %conv42.i = zext i8 %399 to i32
  %call43.i = tail call ptr @skb_push(ptr noundef %291, i32 noundef %conv42.i) #9
  %call44.i = tail call fastcc i32 @mwifiex_map_pci_memory(ptr noundef %adapter, ptr noundef %291, i32 noundef 2312, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end36.i.if.end71_crit_edge, label %if.end36.i.cleanup_crit_edge

if.end36.i.cleanup_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36.i.if.end71_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.else48.i:                                      ; preds = %if.end9.i
  %400 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %card1, align 4
  %pcie.i152.i = getelementptr inbounds %struct.pcie_service_card, ptr %401, i32 0, i32 2
  %402 = ptrtoint ptr %pcie.i152.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %pcie.i152.i, align 4
  %sleep_cookie.i153.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %403, i32 0, i32 27
  %404 = ptrtoint ptr %sleep_cookie.i153.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %sleep_cookie.i153.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %405)
  %tobool.not.i154.i = icmp eq i8 %405, 0
  br i1 %tobool.not.i154.i, label %if.else48.i.if.then50.i204_crit_edge, label %if.end.i157.i

if.else48.i.if.then50.i204_crit_edge:             ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50.i204

if.end.i157.i:                                    ; preds = %if.else48.i
  %sleep_cookie_vbase.i155.i = getelementptr inbounds %struct.pcie_service_card, ptr %401, i32 0, i32 28
  %406 = ptrtoint ptr %sleep_cookie_vbase.i155.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %sleep_cookie_vbase.i155.i, align 4
  %tobool3.not.i156.i = icmp eq ptr %407, null
  br i1 %tobool3.not.i156.i, label %if.end.i157.i.if.end71_crit_edge, label %if.then4.i159.i

if.end.i157.i.if.end71_crit_edge:                 ; preds = %if.end.i157.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then4.i159.i:                                  ; preds = %if.end.i157.i
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_loadN_noabort(i32 %408, i32 4)
  %409 = load i32, ptr %407, align 1
  %410 = tail call i32 @llvm.bswap.i32(i32 %409) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %410) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %409)
  %cmp.i158.i = icmp eq i32 %409, 1437226410
  br i1 %cmp.i158.i, label %if.then4.i159.i.if.then50.i204_crit_edge, label %if.then4.i159.i.if.end71_crit_edge

if.then4.i159.i.if.end71_crit_edge:               ; preds = %if.then4.i159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then4.i159.i.if.then50.i204_crit_edge:         ; preds = %if.then4.i159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50.i204

if.then50.i204:                                   ; preds = %if.then4.i159.i.if.then50.i204_crit_edge, %if.else48.i.if.then50.i204_crit_edge
  %intf_hdr_len51.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %411 = ptrtoint ptr %intf_hdr_len51.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %intf_hdr_len51.i, align 4
  %conv52.i = zext i8 %412 to i32
  %call53.i = tail call ptr @skb_pull(ptr noundef %291, i32 noundef %conv52.i) #9
  %413 = ptrtoint ptr %curr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %curr_cmd.i, align 4
  %resp_skb.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %414, i32 0, i32 5
  %415 = ptrtoint ptr %resp_skb.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store ptr %291, ptr %resp_skb.i, align 4
  %cmd_resp_received.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 55
  %416 = ptrtoint ptr %cmd_resp_received.i to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 1, ptr %cmd_resp_received.i, align 2
  %417 = ptrtoint ptr %cmdrsp_buf.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr null, ptr %cmdrsp_buf.i, align 4
  %cmdrsp_addr_lo.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %289, i32 0, i32 4
  %418 = ptrtoint ptr %cmdrsp_addr_lo.i to i32
  call void @__asan_load2_noabort(i32 %418)
  %419 = load i16, ptr %cmdrsp_addr_lo.i, align 4
  %conv56.i = zext i16 %419 to i32
  %420 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %card1, align 4
  %pci_mmap1.i164.i = getelementptr inbounds %struct.pcie_service_card, ptr %421, i32 0, i32 31
  %422 = ptrtoint ptr %pci_mmap1.i164.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %pci_mmap1.i164.i, align 4
  %add.ptr.i165.i = getelementptr i8, ptr %423, i32 %conv56.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165.i, i32 0) #9, !srcloc !445
  %cmdrsp_addr_hi.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %289, i32 0, i32 5
  %424 = ptrtoint ptr %cmdrsp_addr_hi.i to i32
  call void @__asan_load2_noabort(i32 %424)
  %425 = load i16, ptr %cmdrsp_addr_hi.i, align 2
  %conv61.i = zext i16 %425 to i32
  %426 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %card1, align 4
  %pci_mmap1.i167.i = getelementptr inbounds %struct.pcie_service_card, ptr %427, i32 0, i32 31
  %428 = ptrtoint ptr %pci_mmap1.i167.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %pci_mmap1.i167.i, align 4
  %add.ptr.i168.i = getelementptr i8, ptr %429, i32 %conv61.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168.i, i32 0) #9, !srcloc !445
  br label %if.end71

if.end71:                                         ; preds = %if.then50.i204, %if.then4.i159.i.if.end71_crit_edge, %if.end.i157.i.if.end71_crit_edge, %if.end36.i.if.end71_crit_edge, %if.end59.if.end71_crit_edge
  %cmd_sent72 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 54
  %430 = ptrtoint ptr %cmd_sent72 to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %cmd_sent72, align 1
  %conv73 = zext i8 %431 to i32
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %432 = ptrtoint ptr %data_sent to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %data_sent, align 4
  %conv74 = zext i8 %433 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 64, ptr noundef nonnull @.str.124, i32 noundef %conv73, i32 noundef %conv74) #9
  %434 = ptrtoint ptr %msi_enable to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %msi_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %435)
  %tobool76.not = icmp eq i32 %435, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true77:                                  ; preds = %if.end71
  %msix_enable = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 33
  %436 = ptrtoint ptr %msix_enable to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %msix_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %437)
  %tobool78.not = icmp eq i32 %437, 0
  br i1 %tobool78.not, label %land.lhs.true79, label %land.lhs.true77.cleanup_crit_edge

land.lhs.true77.cleanup_crit_edge:                ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true79:                                  ; preds = %land.lhs.true77
  %ps_state80 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 90
  %438 = ptrtoint ptr %ps_state80 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %ps_state80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %439)
  %cmp81.not = icmp eq i32 %439, 3
  br i1 %cmp81.not, label %land.lhs.true79.cleanup_crit_edge, label %if.then83

land.lhs.true79.cleanup_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then83:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #11
  %call84 = tail call i32 @mwifiex_pcie_enable_host_int(ptr noundef %adapter)
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %land.lhs.true79.cleanup_crit_edge, %land.lhs.true77.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.end36.i.cleanup_crit_edge, %if.then54.cleanup_crit_edge, %cleanup133.sink.split.i, %if.end75.i.cleanup_crit_edge, %while.body.i159.cleanup_crit_edge, %mwifiex_pcie_send_data_complete.exit, %if.then16
  %retval.0 = phi i32 [ -1, %if.then16 ], [ -1, %mwifiex_pcie_send_data_complete.exit ], [ -1, %if.then54.cleanup_crit_edge ], [ 0, %if.then83 ], [ 0, %land.lhs.true79.cleanup_crit_edge ], [ 0, %land.lhs.true77.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ], [ -1, %if.end36.i.cleanup_crit_edge ], [ %retval.2.ph.i, %cleanup133.sink.split.i ], [ -12, %while.body.i159.cleanup_crit_edge ], [ -1, %if.end75.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pcie_host_to_card(ptr noundef %adapter, i8 noundef zeroext %type, ptr noundef %skb, ptr nocapture noundef readonly %tx_param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.148, ptr noundef nonnull @__func__.mwifiex_pcie_host_to_card) #9
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.203)
  switch i8 %type, label %if.end.return_crit_edge [
    i8 0, label %if.then2
    i8 1, label %if.then6
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then2:                                         ; preds = %if.end
  %card1.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %1 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card1.i, align 4
  %pcie.i = getelementptr inbounds %struct.pcie_service_card, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %pcie.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcie.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then2.if.then.i_crit_edge, label %land.lhs.true.i

if.then2.if.then.i_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i:                                  ; preds = %if.then2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.then.i_crit_edge, label %if.end.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %if.then2.if.then.i_crit_edge
  %len5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len5.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.149, ptr noundef nonnull @__func__.mwifiex_pcie_send_data, ptr noundef %6, i32 noundef %10) #9
  br label %return

if.end.i:                                         ; preds = %land.lhs.true.i
  %sleep_cookie.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %4, i32 0, i32 27
  %11 = ptrtoint ptr %sleep_cookie.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sleep_cookie.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end8.i_crit_edge, label %if.end.i.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end.i.i:                                       ; preds = %if.end.i
  %sleep_cookie_vbase.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %2, i32 0, i32 28
  %13 = ptrtoint ptr %sleep_cookie_vbase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sleep_cookie_vbase.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.then6.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.then6.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %14, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 1437226410
  br i1 %cmp.i.i, label %if.then4.i.i.if.end8.i_crit_edge, label %if.then4.i.i.if.then6.i_crit_edge

if.then4.i.i.if.then6.i_crit_edge:                ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then4.i.i.if.end8.i_crit_edge:                 ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.then4.i.i.if.then6.i_crit_edge, %if.end.i.i.if.then6.i_crit_edge
  %call7.i = tail call i32 @mwifiex_pm_wakeup_card(ptr noundef %adapter) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then4.i.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %tx_start_ptr.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %4, i32 0, i32 13
  %18 = ptrtoint ptr %tx_start_ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx_start_ptr.i, align 2
  %conv.i = zext i16 %19 to i32
  %shl.i = shl i32 32, %conv.i
  %txbd_rdptr.i = getelementptr inbounds %struct.pcie_service_card, ptr %2, i32 0, i32 6
  %20 = ptrtoint ptr %txbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %txbd_rdptr.i, align 4
  %txbd_wrptr.i = getelementptr inbounds %struct.pcie_service_card, ptr %2, i32 0, i32 5
  %22 = ptrtoint ptr %txbd_wrptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %txbd_wrptr.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.150, i32 noundef %21, i32 noundef %23) #9
  %24 = ptrtoint ptr %pcie.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcie.i, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %2, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %device.i.i, align 2
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.204)
  switch i16 %29, label %if.end8.i.if.else79.i_crit_edge [
    i16 11056, label %sw.bb.i.i
    i16 11064, label %if.end8.i.sw.bb12.i.i_crit_edge
    i16 11074, label %if.end8.i.sw.bb12.i.i_crit_edge35
  ]

if.end8.i.sw.bb12.i.i_crit_edge35:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12.i.i

if.end8.i.sw.bb12.i.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12.i.i

if.end8.i.if.else79.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else79.i

sw.bb.i.i:                                        ; preds = %if.end8.i
  %31 = ptrtoint ptr %txbd_wrptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %txbd_wrptr.i, align 4
  %tx_mask.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %25, i32 0, i32 14
  %33 = ptrtoint ptr %tx_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_mask.i.i, align 4
  %35 = ptrtoint ptr %txbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %txbd_rdptr.i, align 4
  %37 = xor i32 %36, %32
  %38 = and i32 %37, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %sw.bb.i.i.if.then11.i_crit_edge

sw.bb.i.i.if.then11.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

lor.lhs.false.i.i:                                ; preds = %sw.bb.i.i
  %tx_rollover_ind.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %25, i32 0, i32 18
  %39 = ptrtoint ptr %tx_rollover_ind.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_rollover_ind.i.i, align 4
  %41 = and i32 %40, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp10.not.i.i = icmp eq i32 %41, 0
  br i1 %cmp10.not.i.i, label %lor.lhs.false.i.i.if.else79.i_crit_edge, label %lor.lhs.false.i.i.if.then11.i_crit_edge

lor.lhs.false.i.i.if.then11.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

lor.lhs.false.i.i.if.else79.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else79.i

sw.bb12.i.i:                                      ; preds = %if.end8.i.sw.bb12.i.i_crit_edge, %if.end8.i.sw.bb12.i.i_crit_edge35
  %42 = ptrtoint ptr %txbd_wrptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %txbd_wrptr.i, align 4
  %tx_mask14.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %25, i32 0, i32 14
  %44 = ptrtoint ptr %tx_mask14.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_mask14.i.i, align 4
  %46 = ptrtoint ptr %txbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %txbd_rdptr.i, align 4
  %48 = xor i32 %47, %43
  %49 = and i32 %48, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp19.not.i.i = icmp eq i32 %49, 0
  br i1 %cmp19.not.i.i, label %lor.lhs.false21.i.i, label %sw.bb12.i.i.if.then11.i_crit_edge

sw.bb12.i.i.if.then11.i_crit_edge:                ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

lor.lhs.false21.i.i:                              ; preds = %sw.bb12.i.i
  %tx_rollover_ind23.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %25, i32 0, i32 18
  %50 = ptrtoint ptr %tx_rollover_ind23.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_rollover_ind23.i.i, align 4
  %52 = and i32 %51, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp28.i.i = icmp eq i32 %52, 0
  br i1 %cmp28.i.i, label %lor.lhs.false21.i.i.if.then11.i_crit_edge, label %lor.lhs.false21.i.i.if.else79.i_crit_edge

lor.lhs.false21.i.i.if.else79.i_crit_edge:        ; preds = %lor.lhs.false21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else79.i

lor.lhs.false21.i.i.if.then11.i_crit_edge:        ; preds = %lor.lhs.false21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then11.i:                                      ; preds = %lor.lhs.false21.i.i.if.then11.i_crit_edge, %sw.bb12.i.i.if.then11.i_crit_edge, %lor.lhs.false.i.i.if.then11.i_crit_edge, %sw.bb.i.i.if.then11.i_crit_edge
  %data_sent.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %53 = ptrtoint ptr %data_sent.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %data_sent.i, align 4
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i, align 4
  %conv14.i = trunc i32 %57 to i16
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv14.i) #9
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %58, ptr %55, align 1
  %add.ptr15.i = getelementptr i8, ptr %55, i32 2
  %60 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 0, ptr %add.ptr15.i, align 1
  %61 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len.i, align 4
  %call17.i = tail call fastcc i32 @mwifiex_map_pci_memory(ptr noundef %adapter, ptr noundef nonnull %skb, i32 noundef %62, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.then11.i.return_crit_edge

if.then11.i.return_crit_edge:                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end20.i:                                       ; preds = %if.then11.i
  %63 = ptrtoint ptr %txbd_wrptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %txbd_wrptr.i, align 4
  %tx_mask.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %4, i32 0, i32 14
  %65 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_mask.i, align 4
  %and.i = and i32 %66, %64
  %67 = ptrtoint ptr %tx_start_ptr.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %tx_start_ptr.i, align 2
  %conv23.i = zext i16 %68 to i32
  %shr.i = lshr i32 %and.i, %conv23.i
  %cb1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %69 = ptrtoint ptr %cb1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %cb1.i.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i.i = lshr i64 %70, 32
  %arrayidx.i = getelementptr %struct.pcie_service_card, ptr %2, i32 0, i32 11, i32 %shr.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %skb, ptr %arrayidx.i, align 4
  %tx_hw_pending.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_hw_pending.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tx_hw_pending.i, i32 1, i32 3, i32 1) #9
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_hw_pending.i, ptr %tx_hw_pending.i, i32 1, ptr elementtype(i32) %tx_hw_pending.i) #9, !srcloc !448
  %pfu_enabled.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %4, i32 0, i32 26
  %73 = ptrtoint ptr %pfu_enabled.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pfu_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool25.not.i = icmp eq i8 %74, 0
  %arrayidx35.i = getelementptr %struct.pcie_service_card, ptr %2, i32 0, i32 10, i32 %shr.i
  %75 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx35.i, align 4
  br i1 %tobool25.not.i, label %if.else.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %paddr.i = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %paddr.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 %mapping.sroa.0.0.extract.shift.i.i, ptr %paddr.i, align 1
  %78 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i, align 4
  %conv30.i = trunc i32 %79 to i16
  %len31.i = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, ptr %76, i32 0, i32 3
  %80 = ptrtoint ptr %len31.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %conv30.i, ptr %len31.i, align 1
  %81 = load i32, ptr %len.i, align 4
  %conv33.i = trunc i32 %81 to i16
  %frag_len.i = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, ptr %76, i32 0, i32 2
  %82 = ptrtoint ptr %frag_len.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %conv33.i, ptr %frag_len.i, align 1
  %offset.i = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, ptr %76, i32 0, i32 1
  %83 = ptrtoint ptr %offset.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 0, ptr %offset.i, align 1
  br label %if.end42.i

if.else.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %76 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 8)
  store i64 %mapping.sroa.0.0.extract.shift.i.i, ptr %76, align 1
  %85 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len.i, align 4
  %conv39.i = trunc i32 %86 to i16
  %len40.i = getelementptr inbounds %struct.mwifiex_pcie_buf_desc, ptr %76, i32 0, i32 1
  %87 = ptrtoint ptr %len40.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 %conv39.i, ptr %len40.i, align 1
  %flags41.i = getelementptr inbounds %struct.mwifiex_pcie_buf_desc, ptr %76, i32 0, i32 2
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else.i, %if.then26.i
  %flags41.sink.i = phi ptr [ %flags41.i, %if.else.i ], [ %76, %if.then26.i ]
  %88 = ptrtoint ptr %flags41.sink.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 3, ptr %flags41.sink.i, align 1
  %89 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %2, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 8
  %91 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %device.i, align 2
  %93 = zext i16 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.205)
  switch i16 %92, label %if.end42.i.sw.epilog.i_crit_edge [
    i16 11056, label %if.end42.i.sw.epilog.sink.split.i_crit_edge
    i16 11064, label %if.end42.i.sw.bb45.i_crit_edge
    i16 11074, label %if.end42.i.sw.bb45.i_crit_edge36
  ]

if.end42.i.sw.bb45.i_crit_edge36:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb45.i

if.end42.i.sw.bb45.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb45.i

if.end42.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

if.end42.i.sw.epilog.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb45.i:                                        ; preds = %if.end42.i.sw.bb45.i_crit_edge, %if.end42.i.sw.bb45.i_crit_edge36
  %ring_tx_start_ptr.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %4, i32 0, i32 25
  %94 = ptrtoint ptr %ring_tx_start_ptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ring_tx_start_ptr.i, align 4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb45.i, %if.end42.i.sw.epilog.sink.split.i_crit_edge
  %.sink217.i = phi i32 [ %95, %sw.bb45.i ], [ 1, %if.end42.i.sw.epilog.sink.split.i_crit_edge ]
  %96 = ptrtoint ptr %txbd_wrptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %txbd_wrptr.i, align 4
  %add.i = add i32 %97, %.sink217.i
  store i32 %add.i, ptr %txbd_wrptr.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end42.i.sw.epilog.i_crit_edge
  %98 = ptrtoint ptr %txbd_wrptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %txbd_wrptr.i, align 4
  %100 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx_mask.i, align 4
  %and49.i = and i32 %101, %99
  call void @__sanitizer_cov_trace_cmp4(i32 %and49.i, i32 %shl.i)
  %cmp.i = icmp eq i32 %and49.i, %shl.i
  br i1 %cmp.i, label %if.then51.i, label %sw.epilog.i.if.end56.i_crit_edge

sw.epilog.i.if.end56.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

if.then51.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_rollover_ind.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %4, i32 0, i32 18
  %102 = ptrtoint ptr %tx_rollover_ind.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_rollover_ind.i, align 4
  %104 = xor i32 %99, -1
  %xor.i = and i32 %103, %104
  %105 = ptrtoint ptr %txbd_wrptr.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %xor.i, ptr %txbd_wrptr.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then51.i, %sw.epilog.i.if.end56.i_crit_edge
  %rxbd_rdptr.i = getelementptr inbounds %struct.pcie_service_card, ptr %2, i32 0, i32 13
  %106 = ptrtoint ptr %rxbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rxbd_rdptr.i, align 4
  %rx_wrap_mask.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %4, i32 0, i32 17
  %108 = ptrtoint ptr %rx_wrap_mask.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rx_wrap_mask.i, align 4
  %and57.i = and i32 %109, %107
  %tx_wrptr.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %4, i32 0, i32 7
  %110 = ptrtoint ptr %tx_wrptr.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %tx_wrptr.i, align 2
  %conv58.i = zext i16 %111 to i32
  %112 = ptrtoint ptr %txbd_wrptr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %txbd_wrptr.i, align 4
  %or.i = or i32 %113, %and57.i
  %114 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %card1.i, align 4
  %pci_mmap1.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %115, i32 0, i32 31
  %116 = ptrtoint ptr %pci_mmap1.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pci_mmap1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %117, i32 %conv58.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %118 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %118) #9, !srcloc !445
  %119 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %card1.i, align 4
  %pci_mmap1.i183.i = getelementptr inbounds %struct.pcie_service_card, ptr %120, i32 0, i32 31
  %121 = ptrtoint ptr %pci_mmap1.i183.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pci_mmap1.i183.i, align 4
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %124 = ptrtoint ptr %pcie.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pcie.i, align 4
  %126 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %2, align 4
  %device.i186.i = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 8
  %128 = ptrtoint ptr %device.i186.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %device.i186.i, align 2
  %130 = zext i16 %129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.206)
  switch i16 %129, label %if.end56.i.if.else71.i_crit_edge [
    i16 11056, label %sw.bb.i191.i
    i16 11064, label %if.end56.i.sw.bb12.i199.i_crit_edge
    i16 11074, label %if.end56.i.sw.bb12.i199.i_crit_edge37
  ]

if.end56.i.sw.bb12.i199.i_crit_edge37:            ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12.i199.i

if.end56.i.sw.bb12.i199.i_crit_edge:              ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12.i199.i

if.end56.i.if.else71.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else71.i

sw.bb.i191.i:                                     ; preds = %if.end56.i
  %131 = ptrtoint ptr %txbd_wrptr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %txbd_wrptr.i, align 4
  %tx_mask.i188.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %125, i32 0, i32 14
  %133 = ptrtoint ptr %tx_mask.i188.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tx_mask.i188.i, align 4
  %135 = ptrtoint ptr %txbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %txbd_rdptr.i, align 4
  %137 = xor i32 %136, %132
  %138 = and i32 %137, %134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp.not.i190.i = icmp eq i32 %138, 0
  br i1 %cmp.not.i190.i, label %lor.lhs.false.i194.i, label %sw.bb.i191.i.land.lhs.true67.i_crit_edge

sw.bb.i191.i.land.lhs.true67.i_crit_edge:         ; preds = %sw.bb.i191.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true67.i

lor.lhs.false.i194.i:                             ; preds = %sw.bb.i191.i
  %tx_rollover_ind.i192.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %125, i32 0, i32 18
  %139 = ptrtoint ptr %tx_rollover_ind.i192.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tx_rollover_ind.i192.i, align 4
  %141 = and i32 %140, %137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp10.not.i193.i = icmp eq i32 %141, 0
  br i1 %cmp10.not.i193.i, label %lor.lhs.false.i194.i.if.else71.i_crit_edge, label %lor.lhs.false.i194.i.land.lhs.true67.i_crit_edge

lor.lhs.false.i194.i.land.lhs.true67.i_crit_edge: ; preds = %lor.lhs.false.i194.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true67.i

lor.lhs.false.i194.i.if.else71.i_crit_edge:       ; preds = %lor.lhs.false.i194.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else71.i

sw.bb12.i199.i:                                   ; preds = %if.end56.i.sw.bb12.i199.i_crit_edge, %if.end56.i.sw.bb12.i199.i_crit_edge37
  %142 = ptrtoint ptr %txbd_wrptr.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %txbd_wrptr.i, align 4
  %tx_mask14.i196.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %125, i32 0, i32 14
  %144 = ptrtoint ptr %tx_mask14.i196.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tx_mask14.i196.i, align 4
  %146 = ptrtoint ptr %txbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %txbd_rdptr.i, align 4
  %148 = xor i32 %147, %143
  %149 = and i32 %148, %145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp19.not.i198.i = icmp eq i32 %149, 0
  br i1 %cmp19.not.i198.i, label %lor.lhs.false21.i202.i, label %sw.bb12.i199.i.land.lhs.true67.i_crit_edge

sw.bb12.i199.i.land.lhs.true67.i_crit_edge:       ; preds = %sw.bb12.i199.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true67.i

lor.lhs.false21.i202.i:                           ; preds = %sw.bb12.i199.i
  %tx_rollover_ind23.i200.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %125, i32 0, i32 18
  %150 = ptrtoint ptr %tx_rollover_ind23.i200.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %tx_rollover_ind23.i200.i, align 4
  %152 = and i32 %151, %148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp28.i201.i = icmp eq i32 %152, 0
  br i1 %cmp28.i201.i, label %lor.lhs.false21.i202.i.land.lhs.true67.i_crit_edge, label %lor.lhs.false21.i202.i.if.else71.i_crit_edge

lor.lhs.false21.i202.i.if.else71.i_crit_edge:     ; preds = %lor.lhs.false21.i202.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else71.i

lor.lhs.false21.i202.i.land.lhs.true67.i_crit_edge: ; preds = %lor.lhs.false21.i202.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true67.i

land.lhs.true67.i:                                ; preds = %lor.lhs.false21.i202.i.land.lhs.true67.i_crit_edge, %sw.bb12.i199.i.land.lhs.true67.i_crit_edge, %lor.lhs.false.i194.i.land.lhs.true67.i_crit_edge, %sw.bb.i191.i.land.lhs.true67.i_crit_edge
  %153 = ptrtoint ptr %tx_param to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tx_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool68.not.i = icmp eq i32 %154, 0
  br i1 %tobool68.not.i, label %land.lhs.true67.i.if.else71.i_crit_edge, label %if.then69.i

land.lhs.true67.i.if.else71.i_crit_edge:          ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else71.i

if.then69.i:                                      ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.152) #9
  %155 = ptrtoint ptr %data_sent.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %data_sent.i, align 4
  br label %if.end76.i

if.else71.i:                                      ; preds = %land.lhs.true67.i.if.else71.i_crit_edge, %lor.lhs.false21.i202.i.if.else71.i_crit_edge, %lor.lhs.false.i194.i.if.else71.i_crit_edge, %if.end56.i.if.else71.i_crit_edge
  %156 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %card1.i, align 4
  %pci_mmap1.i207.i = getelementptr inbounds %struct.pcie_service_card, ptr %157, i32 0, i32 31
  %158 = ptrtoint ptr %pci_mmap1.i207.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pci_mmap1.i207.i, align 4
  %add.ptr.i208.i = getelementptr i8, ptr %159, i32 3096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208.i, i32 16777216) #9, !srcloc !445
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.else71.i, %if.then69.i
  %160 = ptrtoint ptr %txbd_rdptr.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %txbd_rdptr.i, align 4
  %162 = ptrtoint ptr %txbd_wrptr.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %txbd_wrptr.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.154, i32 noundef %161, i32 noundef %163) #9
  br label %return

if.else79.i:                                      ; preds = %lor.lhs.false21.i.i.if.else79.i_crit_edge, %lor.lhs.false.i.i.if.else79.i_crit_edge, %if.end8.i.if.else79.i_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.155) #9
  %data_sent80.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %164 = ptrtoint ptr %data_sent80.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %data_sent80.i, align 4
  %165 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %card1.i, align 4
  %pci_mmap1.i210.i = getelementptr inbounds %struct.pcie_service_card, ptr %166, i32 0, i32 31
  %167 = ptrtoint ptr %pci_mmap1.i210.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pci_mmap1.i210.i, align 4
  %add.ptr.i211.i = getelementptr i8, ptr %168, i32 3096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211.i, i32 16777216) #9, !srcloc !445
  br label %return

if.then6:                                         ; preds = %if.end
  %card1.i15 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %169 = ptrtoint ptr %card1.i15 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %card1.i15, align 4
  %pcie.i16 = getelementptr inbounds %struct.pcie_service_card, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %pcie.i16 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pcie.i16, align 4
  %data.i17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %173 = ptrtoint ptr %data.i17 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %data.i17, align 4
  %tobool.not.i18 = icmp eq ptr %174, null
  br i1 %tobool.not.i18, label %if.then6.if.then.i21_crit_edge, label %land.lhs.true.i20

if.then6.if.then.i21_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i21

land.lhs.true.i20:                                ; preds = %if.then6
  %len.i19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %175 = ptrtoint ptr %len.i19 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %len.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool4.not.i = icmp eq i32 %176, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i20.if.then.i21_crit_edge, label %if.end.i22

land.lhs.true.i20.if.then.i21_crit_edge:          ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i21

if.then.i21:                                      ; preds = %land.lhs.true.i20.if.then.i21_crit_edge, %if.then6.if.then.i21_crit_edge
  %len6.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %177 = ptrtoint ptr %len6.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %len6.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.157, ptr noundef nonnull @__func__.mwifiex_pcie_send_cmd, ptr noundef %174, i32 noundef %178) #9
  br label %return

if.end.i22:                                       ; preds = %land.lhs.true.i20
  %cmdrsp_buf.i = getelementptr inbounds %struct.pcie_service_card, ptr %170, i32 0, i32 27
  %179 = ptrtoint ptr %cmdrsp_buf.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %cmdrsp_buf.i, align 4
  %tobool7.not.i = icmp eq ptr %180, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.158) #9
  br label %return

if.end9.i:                                        ; preds = %if.end.i22
  %sleep_cookie.i.i23 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %172, i32 0, i32 27
  %181 = ptrtoint ptr %sleep_cookie.i.i23 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %sleep_cookie.i.i23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool.not.i.i24 = icmp eq i8 %182, 0
  br i1 %tobool.not.i.i24, label %if.end9.i.if.end12.i_crit_edge, label %if.end.i.i27

if.end9.i.if.end12.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.end.i.i27:                                     ; preds = %if.end9.i
  %sleep_cookie_vbase.i.i25 = getelementptr inbounds %struct.pcie_service_card, ptr %170, i32 0, i32 28
  %183 = ptrtoint ptr %sleep_cookie_vbase.i.i25 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %sleep_cookie_vbase.i.i25, align 4
  %tobool3.not.i.i26 = icmp eq ptr %184, null
  br i1 %tobool3.not.i.i26, label %if.end.i.i27.if.then10.i_crit_edge, label %if.then4.i.i29

if.end.i.i27.if.then10.i_crit_edge:               ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

if.then4.i.i29:                                   ; preds = %if.end.i.i27
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_loadN_noabort(i32 %185, i32 4)
  %186 = load i32, ptr %184, align 1
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %187) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %186)
  %cmp.i.i28 = icmp eq i32 %186, 1437226410
  br i1 %cmp.i.i28, label %if.then4.i.i29.if.end12.i_crit_edge, label %if.then4.i.i29.if.then10.i_crit_edge

if.then4.i.i29.if.then10.i_crit_edge:             ; preds = %if.then4.i.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

if.then4.i.i29.if.end12.i_crit_edge:              ; preds = %if.then4.i.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.then4.i.i29.if.then10.i_crit_edge, %if.end.i.i27.if.then10.i_crit_edge
  %call11.i = tail call i32 @mwifiex_pm_wakeup_card(ptr noundef %adapter) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.then4.i.i29.if.end12.i_crit_edge, %if.end9.i.if.end12.i_crit_edge
  %cmd_sent.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 54
  %188 = ptrtoint ptr %cmd_sent.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 1, ptr %cmd_sent.i, align 1
  %189 = ptrtoint ptr %len.i19 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %len.i19, align 4
  %conv.i30 = trunc i32 %190 to i16
  %191 = tail call i16 @llvm.bswap.i16(i16 %conv.i30) #9
  %192 = ptrtoint ptr %174 to i32
  call void @__asan_storeN_noabort(i32 %192, i32 2)
  store i16 %191, ptr %174, align 1
  %arrayidx14.i = getelementptr i8, ptr %174, i32 2
  %193 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_storeN_noabort(i32 %193, i32 2)
  store i16 256, ptr %arrayidx14.i, align 1
  %194 = ptrtoint ptr %len.i19 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %len.i19, align 4
  %call16.i = tail call fastcc i32 @mwifiex_map_pci_memory(ptr noundef %adapter, ptr noundef nonnull %skb, i32 noundef %195, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end12.i.return_crit_edge

if.end12.i.return_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end19.i:                                       ; preds = %if.end12.i
  %cmd_buf.i = getelementptr inbounds %struct.pcie_service_card, ptr %170, i32 0, i32 26
  %196 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %skb, ptr %cmd_buf.i, align 4
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #9
  %197 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #9, !srcloc !449
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %197, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end19.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !447

if.end19.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end19.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %198 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %198)
  %.not.i.i.i.i.i = icmp sgt i32 %198, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !450

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end19.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end19.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  %199 = ptrtoint ptr %cmdrsp_buf.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cmdrsp_buf.i, align 4
  %tobool22.not.i = icmp eq ptr %200, null
  br i1 %tobool22.not.i, label %skb_get.exit.i.if.end38.i_crit_edge, label %if.then23.i

skb_get.exit.i.if.end38.i_crit_edge:              ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

if.then23.i:                                      ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %cb1.i.i.i31 = getelementptr inbounds %struct.sk_buff, ptr %200, i32 0, i32 3
  %201 = ptrtoint ptr %cb1.i.i.i31 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %cb1.i.i.i31, align 8
  %mapping.sroa.0.0.extract.shift.i.i32 = lshr i64 %202, 32
  %mapping.sroa.0.0.extract.trunc.i.i = trunc i64 %mapping.sroa.0.0.extract.shift.i.i32 to i32
  %cmdrsp_addr_lo.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %172, i32 0, i32 4
  %203 = ptrtoint ptr %cmdrsp_addr_lo.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %cmdrsp_addr_lo.i, align 4
  %conv26.i = zext i16 %204 to i32
  %205 = ptrtoint ptr %card1.i15 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %card1.i15, align 4
  %pci_mmap1.i.i33 = getelementptr inbounds %struct.pcie_service_card, ptr %206, i32 0, i32 31
  %207 = ptrtoint ptr %pci_mmap1.i.i33 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %pci_mmap1.i.i33, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %208, i32 %conv26.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %209 = tail call i32 @llvm.bswap.i32(i32 %mapping.sroa.0.0.extract.trunc.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i34, i32 %209) #9, !srcloc !445
  %cmdrsp_addr_hi.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %172, i32 0, i32 5
  %210 = ptrtoint ptr %cmdrsp_addr_hi.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %cmdrsp_addr_hi.i, align 2
  %conv31.i = zext i16 %211 to i32
  %212 = ptrtoint ptr %card1.i15 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %card1.i15, align 4
  %pci_mmap1.i118.i = getelementptr inbounds %struct.pcie_service_card, ptr %213, i32 0, i32 31
  %214 = ptrtoint ptr %pci_mmap1.i118.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %pci_mmap1.i118.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %215, i32 %conv31.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 0) #9, !srcloc !445
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then23.i, %skb_get.exit.i.if.end38.i_crit_edge
  %216 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cmd_buf.i, align 4
  %cb1.i.i120.i = getelementptr inbounds %struct.sk_buff, ptr %217, i32 0, i32 3
  %218 = ptrtoint ptr %cb1.i.i120.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %cb1.i.i120.i, align 8
  %mapping.sroa.0.0.extract.shift.i121.i = lshr i64 %219, 32
  %mapping.sroa.0.0.extract.trunc.i122.i = trunc i64 %mapping.sroa.0.0.extract.shift.i121.i to i32
  %220 = ptrtoint ptr %172 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %172, align 4
  %conv41.i = zext i16 %221 to i32
  %222 = ptrtoint ptr %card1.i15 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %card1.i15, align 4
  %pci_mmap1.i124.i = getelementptr inbounds %struct.pcie_service_card, ptr %223, i32 0, i32 31
  %224 = ptrtoint ptr %pci_mmap1.i124.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %pci_mmap1.i124.i, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %225, i32 %conv41.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %226 = tail call i32 @llvm.bswap.i32(i32 %mapping.sroa.0.0.extract.trunc.i122.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125.i, i32 %226) #9, !srcloc !445
  %cmd_addr_hi.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %172, i32 0, i32 1
  %227 = ptrtoint ptr %cmd_addr_hi.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %cmd_addr_hi.i, align 2
  %conv46.i = zext i16 %228 to i32
  %229 = ptrtoint ptr %card1.i15 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %card1.i15, align 4
  %pci_mmap1.i127.i = getelementptr inbounds %struct.pcie_service_card, ptr %230, i32 0, i32 31
  %231 = ptrtoint ptr %pci_mmap1.i127.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %pci_mmap1.i127.i, align 4
  %add.ptr.i128.i = getelementptr i8, ptr %232, i32 %conv46.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.i, i32 0) #9, !srcloc !445
  %cmd_size.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %172, i32 0, i32 3
  %233 = ptrtoint ptr %cmd_size.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %cmd_size.i, align 2
  %conv54.i = zext i16 %234 to i32
  %235 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %cmd_buf.i, align 4
  %len56.i = getelementptr inbounds %struct.sk_buff, ptr %236, i32 0, i32 6
  %237 = ptrtoint ptr %len56.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %len56.i, align 4
  %239 = ptrtoint ptr %card1.i15 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %card1.i15, align 4
  %pci_mmap1.i130.i = getelementptr inbounds %struct.pcie_service_card, ptr %240, i32 0, i32 31
  %241 = ptrtoint ptr %pci_mmap1.i130.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %pci_mmap1.i130.i, align 4
  %add.ptr.i131.i = getelementptr i8, ptr %242, i32 %conv54.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %243 = tail call i32 @llvm.bswap.i32(i32 %238) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131.i, i32 %243) #9, !srcloc !445
  %244 = ptrtoint ptr %card1.i15 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %card1.i15, align 4
  %pci_mmap1.i133.i = getelementptr inbounds %struct.pcie_service_card, ptr %245, i32 0, i32 31
  %246 = ptrtoint ptr %pci_mmap1.i133.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %pci_mmap1.i133.i, align 4
  %add.ptr.i134.i = getelementptr i8, ptr %247, i32 3096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134.i, i32 33554432) #9, !srcloc !445
  br label %return

return:                                           ; preds = %if.end38.i, %if.end12.i.return_crit_edge, %if.then8.i, %if.then.i21, %if.else79.i, %if.end76.i, %if.then11.i.return_crit_edge, %if.then.i, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end.return_crit_edge ], [ -16, %if.else79.i ], [ -1, %if.then.i ], [ -1, %if.then11.i.return_crit_edge ], [ -115, %if.end76.i ], [ 0, %if.end38.i ], [ -16, %if.then8.i ], [ -1, %if.then.i21 ], [ -1, %if.end12.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pm_wakeup_card(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 32, ptr noundef nonnull @.str.162) #9
  %sleep_cookie = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %sleep_cookie to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sleep_cookie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.while.cond.i_crit_edge

entry.while.cond.i_crit_edge:                     ; preds = %entry
  br label %while.cond.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry.while.cond.i_crit_edge
  %i.0.i = phi i32 [ %inc.i, %while.body.i.while.cond.i_crit_edge ], [ 0, %entry.while.cond.i_crit_edge ]
  %6 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card1, align 4
  %pcie.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pcie.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie.i.i, align 4
  %sleep_cookie.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %sleep_cookie.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sleep_cookie.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %while.cond.i.while.body.i_crit_edge, label %if.end.i.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.i:                                       ; preds = %while.cond.i
  %sleep_cookie_vbase.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %7, i32 0, i32 28
  %12 = ptrtoint ptr %sleep_cookie_vbase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sleep_cookie_vbase.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.then4.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4.i.i:                                     ; preds = %if.end.i.i
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %13, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 1437226410
  br i1 %cmp.i.i, label %if.then4.i.i.while.body.i_crit_edge, label %if.then4.i.i.if.end_crit_edge

if.then4.i.i.if.end_crit_edge:                    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4.i.i.while.body.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %if.then4.i.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0.i, 1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  %cmp.i = icmp eq i32 %inc.i, 5000
  br i1 %cmp.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %if.then4.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 7500000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 675) #9
  %fw_status = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %fw_status to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %fw_status, align 4
  %conv178 = zext i16 %18 to i32
  %19 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card1, align 4
  %pci_mmap1.i179 = getelementptr inbounds %struct.pcie_service_card, ptr %20, i32 0, i32 31
  %21 = ptrtoint ptr %pci_mmap1.i179 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_mmap1.i179, align 4
  %add.ptr.i180 = getelementptr i8, ptr %22, i32 %conv178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 12246270) #9, !srcloc !445
  %int_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 49
  %23 = ptrtoint ptr %int_status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %int_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp18.not181 = icmp eq i8 %24, 0
  br i1 %cmp18.not181, label %if.end.land.lhs.true_crit_edge, label %if.end.do.end38_crit_edge

if.end.do.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then33.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call23 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call23, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %if.then27, label %if.then33

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %fw_status to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %fw_status, align 4
  %conv29 = zext i16 %26 to i32
  %27 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card1, align 4
  %pci_mmap1.i144 = getelementptr inbounds %struct.pcie_service_card, ptr %28, i32 0, i32 31
  %29 = ptrtoint ptr %pci_mmap1.i144 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_mmap1.i144, align 4
  %add.ptr.i145 = getelementptr i8, ptr %30, i32 %conv29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 12246270) #9, !srcloc !445
  br label %do.end38

if.then33:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #9
  %31 = ptrtoint ptr %fw_status to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %fw_status, align 4
  %conv = zext i16 %32 to i32
  %33 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card1, align 4
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %34, i32 0, i32 31
  %35 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 12246270) #9, !srcloc !445
  %37 = ptrtoint ptr %int_status to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load volatile i8, ptr %int_status, align 4
  %cmp18.not = icmp eq i8 %38, 0
  br i1 %cmp18.not, label %if.then33.land.lhs.true_crit_edge, label %if.then33.do.end38_crit_edge

if.then33.do.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

if.then33.land.lhs.true_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

do.end38:                                         ; preds = %if.then33.do.end38_crit_edge, %if.then27, %if.end.do.end38_crit_edge
  %39 = ptrtoint ptr %int_status to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load volatile i8, ptr %int_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp42.not = icmp eq i8 %40, 0
  br i1 %cmp42.not, label %if.then45, label %do.end38.if.end108_crit_edge

do.end38.if.end108_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then45:                                        ; preds = %do.end38
  %call49 = tail call i64 @ktime_get() #9
  %add.i146 = add i64 %call49, 350000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 680) #9
  %41 = ptrtoint ptr %fw_status to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %fw_status, align 4
  %conv66182 = zext i16 %42 to i32
  %43 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card1, align 4
  %pci_mmap1.i148183 = getelementptr inbounds %struct.pcie_service_card, ptr %44, i32 0, i32 31
  %45 = ptrtoint ptr %pci_mmap1.i148183 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pci_mmap1.i148183, align 4
  %add.ptr.i149184 = getelementptr i8, ptr %46, i32 %conv66182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149184, i32 12246270) #9, !srcloc !445
  %47 = ptrtoint ptr %int_status to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load volatile i8, ptr %int_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp74.not185 = icmp eq i8 %48, 0
  br i1 %cmp74.not185, label %if.then45.land.lhs.true79_crit_edge, label %if.then45.do.end98_crit_edge

if.then45.do.end98_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end98

if.then45.land.lhs.true79_crit_edge:              ; preds = %if.then45
  br label %land.lhs.true79

land.lhs.true79:                                  ; preds = %if.then90.land.lhs.true79_crit_edge, %if.then45.land.lhs.true79_crit_edge
  %call80 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call80, i64 %add.i146)
  %cmp3.i151 = icmp sgt i64 %call80, %add.i146
  br i1 %cmp3.i151, label %if.then84, label %if.then90

if.then84:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %fw_status to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %fw_status, align 4
  %conv86 = zext i16 %50 to i32
  %51 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %card1, align 4
  %pci_mmap1.i155 = getelementptr inbounds %struct.pcie_service_card, ptr %52, i32 0, i32 31
  %53 = ptrtoint ptr %pci_mmap1.i155 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci_mmap1.i155, align 4
  %add.ptr.i156 = getelementptr i8, ptr %54, i32 %conv86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 12246270) #9, !srcloc !445
  br label %do.end98

if.then90:                                        ; preds = %land.lhs.true79
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #9
  %55 = ptrtoint ptr %fw_status to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %fw_status, align 4
  %conv66 = zext i16 %56 to i32
  %57 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %card1, align 4
  %pci_mmap1.i148 = getelementptr inbounds %struct.pcie_service_card, ptr %58, i32 0, i32 31
  %59 = ptrtoint ptr %pci_mmap1.i148 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pci_mmap1.i148, align 4
  %add.ptr.i149 = getelementptr i8, ptr %60, i32 %conv66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 12246270) #9, !srcloc !445
  %61 = ptrtoint ptr %int_status to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load volatile i8, ptr %int_status, align 4
  %cmp74.not = icmp eq i8 %62, 0
  br i1 %cmp74.not, label %if.then90.land.lhs.true79_crit_edge, label %if.then90.do.end98_crit_edge

if.then90.do.end98_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end98

if.then90.land.lhs.true79_crit_edge:              ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true79

do.end98:                                         ; preds = %if.then90.do.end98_crit_edge, %if.then84, %if.then45.do.end98_crit_edge
  %63 = ptrtoint ptr %int_status to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load volatile i8, ptr %int_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp102.not = icmp eq i8 %64, 0
  br i1 %cmp102.not, label %if.then106, label %do.end98.if.end108_crit_edge

do.end98.if.end108_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then106:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.163) #9
  br label %cleanup

if.end108:                                        ; preds = %do.end98.if.end108_crit_edge, %do.end38.if.end108_crit_edge
  %65 = ptrtoint ptr %sleep_cookie to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %sleep_cookie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool110.not = icmp eq i8 %66, 0
  br i1 %tobool110.not, label %if.end108.cleanup_crit_edge, label %if.end108.while.cond.i162_crit_edge

if.end108.while.cond.i162_crit_edge:              ; preds = %if.end108
  br label %while.cond.i162

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.i162:                                  ; preds = %while.body.i170.while.cond.i162_crit_edge, %if.end108.while.cond.i162_crit_edge
  %i.0.i158 = phi i32 [ %inc.i168, %while.body.i170.while.cond.i162_crit_edge ], [ 0, %if.end108.while.cond.i162_crit_edge ]
  %67 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %card1, align 4
  %pcie.i.i159 = getelementptr inbounds %struct.pcie_service_card, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %pcie.i.i159 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcie.i.i159, align 4
  %sleep_cookie.i.i160 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %70, i32 0, i32 27
  %71 = ptrtoint ptr %sleep_cookie.i.i160 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %sleep_cookie.i.i160, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i.i161 = icmp eq i8 %72, 0
  br i1 %tobool.not.i.i161, label %while.cond.i162.while.body.i170_crit_edge, label %if.end.i.i165

while.cond.i162.while.body.i170_crit_edge:        ; preds = %while.cond.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i170

if.end.i.i165:                                    ; preds = %while.cond.i162
  %sleep_cookie_vbase.i.i163 = getelementptr inbounds %struct.pcie_service_card, ptr %68, i32 0, i32 28
  %73 = ptrtoint ptr %sleep_cookie_vbase.i.i163 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sleep_cookie_vbase.i.i163, align 4
  %tobool3.not.i.i164 = icmp eq ptr %74, null
  br i1 %tobool3.not.i.i164, label %if.end.i.i165.mwifiex_pcie_dev_wakeup_delay.exit171_crit_edge, label %if.then4.i.i167

if.end.i.i165.mwifiex_pcie_dev_wakeup_delay.exit171_crit_edge: ; preds = %if.end.i.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_pcie_dev_wakeup_delay.exit171

if.then4.i.i167:                                  ; preds = %if.end.i.i165
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %74, align 1
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %76)
  %cmp.i.i166 = icmp eq i32 %76, 1437226410
  br i1 %cmp.i.i166, label %if.then4.i.i167.while.body.i170_crit_edge, label %if.then4.i.i167.mwifiex_pcie_dev_wakeup_delay.exit171_crit_edge

if.then4.i.i167.mwifiex_pcie_dev_wakeup_delay.exit171_crit_edge: ; preds = %if.then4.i.i167
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_pcie_dev_wakeup_delay.exit171

if.then4.i.i167.while.body.i170_crit_edge:        ; preds = %if.then4.i.i167
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i170

while.body.i170:                                  ; preds = %if.then4.i.i167.while.body.i170_crit_edge, %while.cond.i162.while.body.i170_crit_edge
  %inc.i168 = add nuw nsw i32 %i.0.i158, 1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  %cmp.i169 = icmp eq i32 %inc.i168, 5000
  br i1 %cmp.i169, label %while.body.i170.mwifiex_pcie_dev_wakeup_delay.exit171_crit_edge, label %while.body.i170.while.cond.i162_crit_edge

while.body.i170.while.cond.i162_crit_edge:        ; preds = %while.body.i170
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i162

while.body.i170.mwifiex_pcie_dev_wakeup_delay.exit171_crit_edge: ; preds = %while.body.i170
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_pcie_dev_wakeup_delay.exit171

mwifiex_pcie_dev_wakeup_delay.exit171:            ; preds = %while.body.i170.mwifiex_pcie_dev_wakeup_delay.exit171_crit_edge, %if.then4.i.i167.mwifiex_pcie_dev_wakeup_delay.exit171_crit_edge, %if.end.i.i165.mwifiex_pcie_dev_wakeup_delay.exit171_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.164) #9
  %ps_state = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 90
  %78 = ptrtoint ptr %ps_state to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %ps_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %mwifiex_pcie_dev_wakeup_delay.exit171, %if.end108.cleanup_crit_edge, %if.then106
  %retval.0 = phi i32 [ -5, %if.then106 ], [ 0, %mwifiex_pcie_dev_wakeup_delay.exit171 ], [ 0, %if.end108.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pm_wakeup_card_complete(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.165) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pcie_cmdrsp_complete(ptr noundef %adapter, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %cmdrsp_buf = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %cmdrsp_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb, ptr %cmdrsp_buf, align 4
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %3 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %intf_hdr_len, align 4
  %conv = zext i8 %4 to i32
  %call = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef %conv) #9
  %call3 = tail call fastcc i32 @mwifiex_map_pci_memory(ptr noundef %adapter, ptr noundef nonnull %skb, i32 noundef 2312, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pcie_event_complete(ptr noundef %adapter, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %evtbd_rdptr = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %evtbd_rdptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %evtbd_rdptr, align 4
  %and = and i32 %5, 15
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp = icmp ugt i32 %and, 7
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.166, i32 noundef %and) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %evt_wrptr = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %evt_wrptr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %evt_wrptr, align 2
  %conv = zext i16 %7 to i32
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !440
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not = icmp eq i32 %10, -1
  br i1 %cmp.i.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.167) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %arrayidx = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 25, i32 %and
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %14 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %intf_hdr_len, align 4
  %conv10 = zext i8 %15 to i32
  %call11 = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef %conv10) #9
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %sub = sub i32 2048, %17
  %call12 = tail call ptr @skb_put(ptr noundef nonnull %skb, i32 noundef %sub) #9
  %call13 = tail call fastcc i32 @mwifiex_map_pci_memory(ptr noundef %adapter, ptr noundef nonnull %skb, i32 noundef 2048, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %skb, ptr %arrayidx, align 4
  %arrayidx19 = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 24, i32 %and
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx19, align 4
  %cb1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %21 = ptrtoint ptr %cb1.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %cb1.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i = lshr i64 %22, 32
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %mapping.sroa.0.0.extract.shift.i, ptr %20, align 1
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %conv23 = trunc i32 %25 to i16
  %len24 = getelementptr inbounds %struct.mwifiex_evt_buf_desc, ptr %20, i32 0, i32 1
  %26 = ptrtoint ptr %len24 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %conv23, ptr %len24, align 1
  %flags = getelementptr inbounds %struct.mwifiex_evt_buf_desc, ptr %20, i32 0, i32 2
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 0, ptr %flags, align 1
  br label %if.end27

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.168, i32 noundef %and, ptr noundef nonnull %13, ptr noundef nonnull %skb) #9
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end16
  %28 = ptrtoint ptr %evtbd_rdptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %evtbd_rdptr, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %evtbd_rdptr, align 4
  %and29 = and i32 %inc, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and29)
  %cmp30 = icmp eq i32 %and29, 8
  br i1 %cmp30, label %if.then32, label %if.end27.if.end37_crit_edge

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %evt_rollover_ind = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 20
  %30 = ptrtoint ptr %evt_rollover_ind to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %evt_rollover_ind, align 4
  %32 = sub i32 -2, %29
  %xor = and i32 %31, %32
  %33 = ptrtoint ptr %evtbd_rdptr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %xor, ptr %evtbd_rdptr, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end27.if.end37_crit_edge
  %34 = ptrtoint ptr %evtbd_rdptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %evtbd_rdptr, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 32, ptr noundef nonnull @.str.169, i32 noundef %35, i32 noundef %11) #9
  %evt_rdptr = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 10
  %36 = ptrtoint ptr %evt_rdptr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %evt_rdptr, align 4
  %conv39 = zext i16 %37 to i32
  %38 = ptrtoint ptr %evtbd_rdptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %evtbd_rdptr, align 4
  %40 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card1, align 4
  %pci_mmap1.i92 = getelementptr inbounds %struct.pcie_service_card, ptr %41, i32 0, i32 31
  %42 = ptrtoint ptr %pci_mmap1.i92 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_mmap1.i92, align 4
  %add.ptr.i93 = getelementptr i8, ptr %43, i32 %conv39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %44) #9, !srcloc !445
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 32, ptr noundef nonnull @.str.171) #9
  %call45 = tail call fastcc i32 @mwifiex_pcie_process_event_ready(ptr noundef %adapter)
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then9.cleanup_crit_edge, %if.then6, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ -1, %if.then6 ], [ %call45, %if.end37 ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pcie_init_fw_port(ptr nocapture noundef readonly %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %txbd_wrptr = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %txbd_wrptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txbd_wrptr, align 4
  %tx_wrap_mask = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %tx_wrap_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_wrap_mask, align 4
  %and = and i32 %7, %5
  %rx_rdptr = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %rx_rdptr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_rdptr, align 4
  %conv = zext i16 %9 to i32
  %rxbd_rdptr = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %rxbd_rdptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxbd_rdptr, align 4
  %or = or i32 %11, %and
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 31
  %12 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #9, !srcloc !445
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_pcie_card_reset(ptr nocapture noundef readonly %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %work_flags = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 38
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %work_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %work = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pcie_reg_dump(ptr noundef %adapter, ptr noundef writeonly %drv_buf) #2 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %tobool.not = icmp eq ptr %drv_buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %1 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcie, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.172) #9
  %fw_status = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %fw_status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fw_status, align 4
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card1, align 4
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %8, i32 0, i32 31
  %9 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %conv
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.not = icmp eq i32 %11, -1
  br i1 %cmp.i.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.173) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.174) #9
  %12 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card1, align 4
  %pci_mmap1.i37 = getelementptr inbounds %struct.pcie_service_card, ptr %13, i32 0, i32 31
  %14 = ptrtoint ptr %pci_mmap1.i37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_mmap1.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %15, i32 3312
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #9, !srcloc !440
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.175, i32 noundef 3312, i32 noundef %17)
  %add.ptr = getelementptr i8, ptr %buf, i32 %call9
  %18 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card1, align 4
  %pci_mmap1.i37.1 = getelementptr inbounds %struct.pcie_service_card, ptr %19, i32 0, i32 31
  %20 = ptrtoint ptr %pci_mmap1.i37.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_mmap1.i37.1, align 4
  %add.ptr.i38.1 = getelementptr i8, ptr %21, i32 3320
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.1) #9, !srcloc !440
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %call9.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.175, i32 noundef 3320, i32 noundef %23)
  %add.ptr.1 = getelementptr i8, ptr %add.ptr, i32 %call9.1
  %24 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card1, align 4
  %pci_mmap1.i37.2 = getelementptr inbounds %struct.pcie_service_card, ptr %25, i32 0, i32 31
  %26 = ptrtoint ptr %pci_mmap1.i37.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_mmap1.i37.2, align 4
  %add.ptr.i38.2 = getelementptr i8, ptr %27, i32 3324
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.2) #9, !srcloc !440
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %call9.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.175, i32 noundef 3324, i32 noundef %29)
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.176, ptr noundef nonnull %buf) #9
  %call12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %drv_buf, ptr noundef nonnull @.str.176, ptr noundef nonnull %buf)
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.177) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %call12, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_pcie_device_dump(ptr nocapture noundef readonly %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %work_flags = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 38
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %work_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %work = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_clean_pcie_ring_buf(ptr nocapture noundef readonly %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %txbd_rdptr = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %txbd_rdptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txbd_rdptr, align 4
  %pcie.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pcie.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device.i, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.207)
  switch i16 %9, label %entry.if.then_crit_edge [
    i16 11056, label %sw.bb.i
    i16 11064, label %entry.sw.bb11.i_crit_edge
    i16 11074, label %entry.sw.bb11.i_crit_edge12
  ]

entry.sw.bb11.i_crit_edge12:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i

entry.sw.bb11.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb.i:                                          ; preds = %entry
  %txbd_wrptr.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %txbd_wrptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %txbd_wrptr.i, align 4
  %tx_mask.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %5, i32 0, i32 14
  %13 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_mask.i, align 4
  %15 = xor i32 %12, %3
  %16 = and i32 %15, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.i.if.then_crit_edge

sw.bb.i.if.then_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %tx_rollover_ind.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %5, i32 0, i32 18
  %17 = ptrtoint ptr %tx_rollover_ind.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_rollover_ind.i, align 4
  %19 = and i32 %18, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp9.not.i = icmp eq i32 %19, 0
  br i1 %cmp9.not.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb11.i:                                        ; preds = %entry.sw.bb11.i_crit_edge, %entry.sw.bb11.i_crit_edge12
  %txbd_wrptr12.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %txbd_wrptr12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %txbd_wrptr12.i, align 4
  %tx_mask13.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %5, i32 0, i32 14
  %22 = ptrtoint ptr %tx_mask13.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_mask13.i, align 4
  %24 = xor i32 %21, %3
  %25 = and i32 %24, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp17.i = icmp eq i32 %25, 0
  br i1 %cmp17.i, label %land.lhs.true19.i, label %sw.bb11.i.if.then_crit_edge

sw.bb11.i.if.then_crit_edge:                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true19.i:                                ; preds = %sw.bb11.i
  %tx_rollover_ind21.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %5, i32 0, i32 18
  %26 = ptrtoint ptr %tx_rollover_ind21.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_rollover_ind21.i, align 4
  %28 = and i32 %27, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp25.i = icmp eq i32 %28, 0
  br i1 %cmp25.i, label %land.lhs.true19.i.cleanup_crit_edge, label %land.lhs.true19.i.if.then_crit_edge

land.lhs.true19.i.if.then_crit_edge:              ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true19.i.cleanup_crit_edge:              ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true19.i.if.then_crit_edge, %sw.bb11.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %sw.bb.i.if.then_crit_edge, %entry.if.then_crit_edge
  %txbd_flush = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %txbd_flush to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %txbd_flush, align 4
  %30 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card1, align 4
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %31, i32 0, i32 31
  %32 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 3096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #9, !srcloc !445
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true19.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_pcie_down_dev(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %drv_rdy = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %drv_rdy to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %drv_rdy, align 4
  %conv = zext i16 %7 to i32
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !445
  tail call void @pci_clear_master(ptr noundef %5) #9
  %seq_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 58
  %10 = ptrtoint ptr %seq_num to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %seq_num, align 2
  tail call fastcc void @mwifiex_pcie_free_buffers(ptr noundef %adapter)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_pcie_up_dev(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tx_buf_size = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_buf_size, align 2
  %tx_buf_size2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 39
  %6 = ptrtoint ptr %tx_buf_size2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %tx_buf_size2, align 2
  %call = tail call fastcc i32 @mwifiex_pcie_alloc_buffers(ptr noundef %adapter)
  tail call void @pci_set_master(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_pcie_alloc_buffers(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %cmdrsp_buf = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %cmdrsp_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cmdrsp_buf, align 4
  %5 = load ptr, ptr %card1, align 4
  %pcie.i = getelementptr inbounds %struct.pcie_service_card, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pcie.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie.i, align 4
  %txbd_wrptr.i = getelementptr inbounds %struct.pcie_service_card, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %txbd_wrptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %txbd_wrptr.i, align 4
  %pfu_enabled.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %7, i32 0, i32 26
  %9 = ptrtoint ptr %pfu_enabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pfu_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %txbd_rdptr.i = getelementptr inbounds %struct.pcie_service_card, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %txbd_rdptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %txbd_rdptr.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_rollover_ind.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %7, i32 0, i32 18
  %12 = ptrtoint ptr %tx_rollover_ind.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_rollover_ind.i, align 4
  %txbd_rdptr3.i = getelementptr inbounds %struct.pcie_service_card, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %txbd_rdptr3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %txbd_rdptr3.i, align 4
  %or.i = or i32 %15, %13
  store i32 %or.i, ptr %txbd_rdptr3.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %16 = ptrtoint ptr %pfu_enabled.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pfu_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not.i = icmp eq i8 %17, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 384, i32 640
  %18 = getelementptr inbounds %struct.pcie_service_card, ptr %5, i32 0, i32 7
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select.i, ptr %18, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.49, i32 noundef %spec.select.i) #9
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %18, align 4
  %txbd_ring_pbase.i = getelementptr inbounds %struct.pcie_service_card, ptr %5, i32 0, i32 9
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev11.i, i32 noundef %23, ptr noundef %txbd_ring_pbase.i, i32 noundef 3264, i32 noundef 0) #9
  %txbd_ring_vbase.i = getelementptr inbounds %struct.pcie_service_card, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %txbd_ring_vbase.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i, ptr %txbd_ring_vbase.i, align 4
  %tobool14.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not.i, label %if.then, label %if.end17.i

if.end17.i:                                       ; preds = %if.end.i
  %25 = ptrtoint ptr %txbd_ring_pbase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %txbd_ring_pbase.i, align 4
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %18, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.51, ptr noundef nonnull %call.i.i, i32 noundef %26, i32 noundef 0, i32 noundef %28) #9
  %29 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card1, align 4
  %pcie.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %pcie.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcie.i.i, align 4
  %pfu_enabled.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %32, i32 0, i32 26
  %txbd_ring_vbase.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %30, i32 0, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end17.i
  %i.01.i.i = phi i32 [ 0, %if.end17.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.pcie_service_card, ptr %30, i32 0, i32 11, i32 %i.01.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx.i.i, align 4
  %34 = ptrtoint ptr %pfu_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pfu_enabled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i = icmp eq i8 %35, 0
  %36 = ptrtoint ptr %txbd_ring_vbase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %txbd_ring_vbase.i.i, align 4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i = mul nuw nsw i32 %i.01.i.i, 20
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %mul.i.i
  %arrayidx3.i.i = getelementptr %struct.pcie_service_card, ptr %30, i32 0, i32 10, i32 %i.01.i.i
  %38 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i.i, ptr %arrayidx3.i.i, align 4
  %39 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 20)
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul7.i.i = mul nuw nsw i32 %i.01.i.i, 12
  %add.ptr8.i.i = getelementptr i8, ptr %37, i32 %mul7.i.i
  %arrayidx10.i.i = getelementptr %struct.pcie_service_card, ptr %30, i32 0, i32 10, i32 %i.01.i.i
  %40 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr8.i.i, ptr %arrayidx10.i.i, align 4
  %41 = call ptr @memset(ptr %add.ptr8.i.i, i32 0, i32 12)
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %if.end, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %18, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.50, i32 noundef %43) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.44) #9
  br label %cleanup

if.end:                                           ; preds = %for.inc.i.i
  %44 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %card1, align 4
  %pcie.i50 = getelementptr inbounds %struct.pcie_service_card, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %pcie.i50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcie.i50, align 4
  %rxbd_wrptr.i = getelementptr inbounds %struct.pcie_service_card, ptr %45, i32 0, i32 12
  %48 = ptrtoint ptr %rxbd_wrptr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %rxbd_wrptr.i, align 4
  %rx_rollover_ind.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %47, i32 0, i32 19
  %49 = ptrtoint ptr %rx_rollover_ind.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_rollover_ind.i, align 4
  %rxbd_rdptr.i = getelementptr inbounds %struct.pcie_service_card, ptr %45, i32 0, i32 13
  %51 = ptrtoint ptr %rxbd_rdptr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %rxbd_rdptr.i, align 4
  %pfu_enabled.i51 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %47, i32 0, i32 26
  %52 = ptrtoint ptr %pfu_enabled.i51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pfu_enabled.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i52 = icmp eq i8 %53, 0
  %spec.select.i53 = select i1 %tobool.not.i52, i32 384, i32 640
  %54 = getelementptr inbounds %struct.pcie_service_card, ptr %45, i32 0, i32 14
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select.i53, ptr %54, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.52, i32 noundef %spec.select.i53) #9
  %56 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %45, align 4
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %54, align 4
  %rxbd_ring_pbase.i = getelementptr inbounds %struct.pcie_service_card, ptr %45, i32 0, i32 16
  %call.i.i54 = tail call ptr @dma_alloc_attrs(ptr noundef %dev5.i, i32 noundef %59, ptr noundef %rxbd_ring_pbase.i, i32 noundef 3264, i32 noundef 0) #9
  %rxbd_ring_vbase.i = getelementptr inbounds %struct.pcie_service_card, ptr %45, i32 0, i32 15
  %60 = ptrtoint ptr %rxbd_ring_vbase.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i.i54, ptr %rxbd_ring_vbase.i, align 4
  %tobool8.not.i = icmp eq ptr %call.i.i54, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %54, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.50, i32 noundef %62) #9
  br label %if.then5

if.end11.i:                                       ; preds = %if.end
  %63 = ptrtoint ptr %rxbd_ring_pbase.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rxbd_ring_pbase.i, align 4
  %65 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %54, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.53, ptr noundef nonnull %call.i.i54, i32 noundef %64, i32 noundef 0, i32 noundef %66) #9
  %67 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %card1, align 4
  %pcie.i.i55 = getelementptr inbounds %struct.pcie_service_card, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %pcie.i.i55 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcie.i.i55, align 4
  %pfu_enabled.i.i56 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %70, i32 0, i32 26
  %rxbd_ring_vbase11.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %68, i32 0, i32 15
  %ring_flag_eop.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %70, i32 0, i32 22
  %ring_flag_sop.i.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %70, i32 0, i32 21
  br label %for.body.i.i58

for.body.i.i58:                                   ; preds = %for.inc.i.i66.for.body.i.i58_crit_edge, %if.end11.i
  %i.084.i.i = phi i32 [ 0, %if.end11.i ], [ %inc.i.i64, %for.inc.i.i66.for.body.i.i58_crit_edge ]
  %call.i39.i = tail call ptr @mwifiex_alloc_dma_align_buf(i32 noundef 4096, i32 noundef 3264) #9
  %tobool.not.i.i57 = icmp eq ptr %call.i39.i, null
  br i1 %tobool.not.i.i57, label %if.then.i.i59, label %if.end.i.i

if.then.i.i59:                                    ; preds = %for.body.i.i58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.54) #9
  %71 = ptrtoint ptr %rxbd_ring_vbase11.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rxbd_ring_vbase11.i.i, align 4
  tail call void @kfree(ptr noundef %72) #9
  br label %if.then5

if.end.i.i:                                       ; preds = %for.body.i.i58
  %call3.i.i = tail call fastcc i32 @mwifiex_map_pci_memory(ptr noundef %adapter, ptr noundef nonnull %call.i39.i, i32 noundef 4096, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i.if.then5_crit_edge

if.end.i.i.if.then5_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.end6.i.i:                                      ; preds = %if.end.i.i
  %cb1.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i39.i, i32 0, i32 3
  %73 = ptrtoint ptr %cb1.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %cb1.i.i.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i.i.i = lshr i64 %74, 32
  %mapping.sroa.0.0.extract.trunc.i.i.i = trunc i64 %mapping.sroa.0.0.extract.shift.i.i.i to i32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i39.i, i32 0, i32 6
  %75 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i39.i, i32 0, i32 19
  %77 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.55, ptr noundef nonnull %call.i39.i, i32 noundef %76, ptr noundef %78, i32 noundef %mapping.sroa.0.0.extract.trunc.i.i.i, i32 noundef 0) #9
  %arrayidx.i.i60 = getelementptr %struct.pcie_service_card, ptr %68, i32 0, i32 18, i32 %i.084.i.i
  %79 = ptrtoint ptr %arrayidx.i.i60 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i39.i, ptr %arrayidx.i.i60, align 4
  %80 = ptrtoint ptr %pfu_enabled.i.i56 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %pfu_enabled.i.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool9.not.i.i = icmp eq i8 %81, 0
  %82 = ptrtoint ptr %rxbd_ring_vbase11.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rxbd_ring_vbase11.i.i, align 4
  br i1 %tobool9.not.i.i, label %if.else.i.i63, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i61 = mul nuw nsw i32 %i.084.i.i, 20
  %add.ptr.i.i62 = getelementptr i8, ptr %83, i32 %mul.i.i61
  %arrayidx12.i.i = getelementptr %struct.pcie_service_card, ptr %68, i32 0, i32 17, i32 %i.084.i.i
  %84 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr.i.i62, ptr %arrayidx12.i.i, align 4
  %paddr.i.i = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, ptr %add.ptr.i.i62, i32 0, i32 4
  %85 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 %mapping.sroa.0.0.extract.shift.i.i.i, ptr %paddr.i.i, align 1
  %86 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len.i.i, align 4
  %conv17.i.i = trunc i32 %87 to i16
  %len18.i.i = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, ptr %add.ptr.i.i62, i32 0, i32 3
  %88 = ptrtoint ptr %len18.i.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %conv17.i.i, ptr %len18.i.i, align 1
  %89 = load i32, ptr %len.i.i, align 4
  %conv20.i.i = trunc i32 %89 to i16
  %frag_len.i.i = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, ptr %add.ptr.i.i62, i32 0, i32 2
  %90 = ptrtoint ptr %frag_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 %conv20.i.i, ptr %frag_len.i.i, align 1
  %91 = ptrtoint ptr %ring_flag_eop.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ring_flag_eop.i.i, align 1
  %93 = ptrtoint ptr %ring_flag_sop.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %ring_flag_sop.i.i, align 4
  %or83.i.i = or i8 %94, %92
  %conv23.i.i = zext i8 %or83.i.i to i16
  %95 = ptrtoint ptr %add.ptr.i.i62 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 2)
  store i16 %conv23.i.i, ptr %add.ptr.i.i62, align 1
  %offset.i.i = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, ptr %add.ptr.i.i62, i32 0, i32 1
  br label %for.inc.i.i66

if.else.i.i63:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul25.i.i = mul nuw nsw i32 %i.084.i.i, 12
  %add.ptr26.i.i = getelementptr i8, ptr %83, i32 %mul25.i.i
  %arrayidx28.i.i = getelementptr %struct.pcie_service_card, ptr %68, i32 0, i32 17, i32 %i.084.i.i
  %96 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr26.i.i, ptr %arrayidx28.i.i, align 4
  %97 = ptrtoint ptr %add.ptr26.i.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 8)
  store i64 %mapping.sroa.0.0.extract.shift.i.i.i, ptr %add.ptr26.i.i, align 1
  %98 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len.i.i, align 4
  %conv34.i.i = trunc i32 %99 to i16
  %len35.i.i = getelementptr inbounds %struct.mwifiex_pcie_buf_desc, ptr %add.ptr26.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %len35.i.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 %conv34.i.i, ptr %len35.i.i, align 1
  %flags36.i.i = getelementptr inbounds %struct.mwifiex_pcie_buf_desc, ptr %add.ptr26.i.i, i32 0, i32 2
  br label %for.inc.i.i66

for.inc.i.i66:                                    ; preds = %if.else.i.i63, %if.then10.i.i
  %offset.sink.i.i = phi ptr [ %offset.i.i, %if.then10.i.i ], [ %flags36.i.i, %if.else.i.i63 ]
  %101 = ptrtoint ptr %offset.sink.i.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 0, ptr %offset.sink.i.i, align 1
  %inc.i.i64 = add nuw nsw i32 %i.084.i.i, 1
  %exitcond.not.i.i65 = icmp eq i32 %inc.i.i64, 32
  br i1 %exitcond.not.i.i65, label %if.end6, label %for.inc.i.i66.for.body.i.i58_crit_edge

for.inc.i.i66.for.body.i.i58_crit_edge:           ; preds = %for.inc.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i58

if.then5:                                         ; preds = %if.end.i.i.if.then5_crit_edge, %if.then.i.i59, %if.then9.i
  %retval.0.i67.ph = phi i32 [ -12, %if.then.i.i59 ], [ -12, %if.then9.i ], [ -1, %if.end.i.i.if.then5_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.45) #9
  br label %err_cre_rxbd

if.end6:                                          ; preds = %for.inc.i.i66
  %102 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %card1, align 4
  %pcie.i69 = getelementptr inbounds %struct.pcie_service_card, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %pcie.i69 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pcie.i69, align 4
  %evtbd_wrptr.i = getelementptr inbounds %struct.pcie_service_card, ptr %103, i32 0, i32 19
  %106 = ptrtoint ptr %evtbd_wrptr.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %evtbd_wrptr.i, align 4
  %evt_rollover_ind.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %105, i32 0, i32 20
  %107 = ptrtoint ptr %evt_rollover_ind.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %evt_rollover_ind.i, align 4
  %evtbd_rdptr.i = getelementptr inbounds %struct.pcie_service_card, ptr %103, i32 0, i32 20
  %109 = ptrtoint ptr %evtbd_rdptr.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %evtbd_rdptr.i, align 4
  %evtbd_ring_size.i = getelementptr inbounds %struct.pcie_service_card, ptr %103, i32 0, i32 21
  %110 = ptrtoint ptr %evtbd_ring_size.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 96, ptr %evtbd_ring_size.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.59, i32 noundef 96) #9
  %111 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %103, align 4
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  %113 = ptrtoint ptr %evtbd_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %evtbd_ring_size.i, align 4
  %evtbd_ring_pbase.i = getelementptr inbounds %struct.pcie_service_card, ptr %103, i32 0, i32 23
  %call.i.i70 = tail call ptr @dma_alloc_attrs(ptr noundef %dev4.i, i32 noundef %114, ptr noundef %evtbd_ring_pbase.i, i32 noundef 3264, i32 noundef 0) #9
  %evtbd_ring_vbase.i = getelementptr inbounds %struct.pcie_service_card, ptr %103, i32 0, i32 22
  %115 = ptrtoint ptr %evtbd_ring_vbase.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i.i70, ptr %evtbd_ring_vbase.i, align 4
  %tobool.not.i71 = icmp eq ptr %call.i.i70, null
  br i1 %tobool.not.i71, label %if.then.i72, label %if.end.i73

if.then.i72:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %evtbd_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %evtbd_ring_size.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.50, i32 noundef %117) #9
  br label %if.then9

if.end.i73:                                       ; preds = %if.end6
  %118 = ptrtoint ptr %evtbd_ring_pbase.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %evtbd_ring_pbase.i, align 4
  %120 = ptrtoint ptr %evtbd_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %evtbd_ring_size.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 32, ptr noundef nonnull @.str.60, ptr noundef nonnull %call.i.i70, i32 noundef %119, i32 noundef 0, i32 noundef %121) #9
  %122 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %card1, align 4
  %evtbd_ring_vbase10.i.i = getelementptr inbounds %struct.pcie_service_card, ptr %123, i32 0, i32 22
  br label %for.body.i.i75

for.body.i.i75:                                   ; preds = %if.end7.i.i.for.body.i.i75_crit_edge, %if.end.i73
  %i.049.i.i = phi i32 [ 0, %if.end.i73 ], [ %inc.i.i88, %if.end7.i.i.for.body.i.i75_crit_edge ]
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2048, i32 noundef 2592) #9
  %tobool.not.i.i74 = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i74, label %if.then.i.i76, label %if.end.i.i79

if.then.i.i76:                                    ; preds = %for.body.i.i75
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.61) #9
  br label %cleanup.sink.split.i.i

if.end.i.i79:                                     ; preds = %for.body.i.i75
  %call2.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 2048) #9
  %call3.i.i77 = tail call fastcc i32 @mwifiex_map_pci_memory(ptr noundef %adapter, ptr noundef nonnull %call.i.i.i.i, i32 noundef 2048, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i77)
  %tobool4.not.i.i78 = icmp eq i32 %call3.i.i77, 0
  br i1 %tobool4.not.i.i78, label %if.end7.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #9
  br label %cleanup.sink.split.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i79
  %cb1.i.i.i.i80 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %124 = ptrtoint ptr %cb1.i.i.i.i80 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %cb1.i.i.i.i80, align 8
  %mapping.sroa.0.0.extract.shift.i.i.i81 = lshr i64 %125, 32
  %mapping.sroa.0.0.extract.trunc.i.i.i82 = trunc i64 %mapping.sroa.0.0.extract.shift.i.i.i81 to i32
  %len.i.i83 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 6
  %126 = ptrtoint ptr %len.i.i83 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %len.i.i83, align 4
  %data.i.i84 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %128 = ptrtoint ptr %data.i.i84 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %data.i.i84, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 32, ptr noundef nonnull @.str.62, ptr noundef nonnull %call.i.i.i.i, i32 noundef %127, ptr noundef %129, i32 noundef %mapping.sroa.0.0.extract.trunc.i.i.i82, i32 noundef 0) #9
  %arrayidx.i.i85 = getelementptr %struct.pcie_service_card, ptr %123, i32 0, i32 25, i32 %i.049.i.i
  %130 = ptrtoint ptr %arrayidx.i.i85 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call.i.i.i.i, ptr %arrayidx.i.i85, align 4
  %131 = ptrtoint ptr %evtbd_ring_vbase10.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %evtbd_ring_vbase10.i.i, align 4
  %mul.i.i86 = mul nuw nsw i32 %i.049.i.i, 12
  %add.ptr.i.i87 = getelementptr i8, ptr %132, i32 %mul.i.i86
  %arrayidx11.i.i = getelementptr %struct.pcie_service_card, ptr %123, i32 0, i32 24, i32 %i.049.i.i
  %133 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %add.ptr.i.i87, ptr %arrayidx11.i.i, align 4
  %134 = ptrtoint ptr %add.ptr.i.i87 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 8)
  store i64 %mapping.sroa.0.0.extract.shift.i.i.i81, ptr %add.ptr.i.i87, align 1
  %135 = ptrtoint ptr %len.i.i83 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len.i.i83, align 4
  %conv16.i.i = trunc i32 %136 to i16
  %len17.i.i = getelementptr inbounds %struct.mwifiex_evt_buf_desc, ptr %add.ptr.i.i87, i32 0, i32 1
  %137 = ptrtoint ptr %len17.i.i to i32
  call void @__asan_storeN_noabort(i32 %137, i32 2)
  store i16 %conv16.i.i, ptr %len17.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.mwifiex_evt_buf_desc, ptr %add.ptr.i.i87, i32 0, i32 2
  %138 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 0, ptr %flags.i.i, align 1
  %inc.i.i88 = add nuw nsw i32 %i.049.i.i, 1
  %exitcond.not.i.i89 = icmp eq i32 %inc.i.i88, 8
  br i1 %exitcond.not.i.i89, label %if.end10, label %if.end7.i.i.for.body.i.i75_crit_edge

if.end7.i.i.for.body.i.i75_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i75

cleanup.sink.split.i.i:                           ; preds = %if.then5.i.i, %if.then.i.i76
  %retval.0.ph.i.i = phi i32 [ -12, %if.then.i.i76 ], [ -1, %if.then5.i.i ]
  %139 = ptrtoint ptr %evtbd_ring_vbase10.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %evtbd_ring_vbase10.i.i, align 4
  tail call void @kfree(ptr noundef %140) #9
  br label %if.then9

if.then9:                                         ; preds = %cleanup.sink.split.i.i, %if.then.i72
  %retval.0.i90.ph = phi i32 [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ], [ -12, %if.then.i72 ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.46) #9
  br label %err_cre_evtbd

if.end10:                                         ; preds = %if.end7.i.i
  %141 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %card1, align 4
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2312, i32 noundef 2592) #9
  %tobool.not.i92 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i92, label %if.then.i93, label %if.end.i94

if.then.i93:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.63) #9
  br label %if.then13

if.end.i94:                                       ; preds = %if.end10
  %call2.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2312) #9
  %call3.i = tail call fastcc i32 @mwifiex_map_pci_memory(ptr noundef %adapter, ptr noundef nonnull %call.i.i.i, i32 noundef 2312, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end14, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #9
  br label %if.then13

if.then13:                                        ; preds = %if.then5.i, %if.then.i93
  %retval.0.i95.ph = phi i32 [ -12, %if.then.i93 ], [ -1, %if.then5.i ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.47) #9
  br label %err_alloc_cmdbuf

if.end14:                                         ; preds = %if.end.i94
  %cmdrsp_buf.i = getelementptr inbounds %struct.pcie_service_card, ptr %142, i32 0, i32 27
  %143 = ptrtoint ptr %cmdrsp_buf.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call.i.i.i, ptr %cmdrsp_buf.i, align 4
  %sleep_cookie = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 27
  %144 = ptrtoint ptr %sleep_cookie to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %sleep_cookie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool15.not = icmp eq i8 %145, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  %call17 = tail call fastcc i32 @mwifiex_pcie_alloc_sleep_cookie_buf(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.cleanup_crit_edge, label %if.then19

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.48) #9
  tail call fastcc void @mwifiex_pcie_delete_cmdrsp_buf(ptr noundef %adapter)
  br label %err_alloc_cmdbuf

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %sleep_cookie_vbase = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 28
  %146 = ptrtoint ptr %sleep_cookie_vbase to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %sleep_cookie_vbase, align 4
  br label %cleanup

err_alloc_cmdbuf:                                 ; preds = %if.then19, %if.then13
  %ret.0 = phi i32 [ %retval.0.i95.ph, %if.then13 ], [ %call17, %if.then19 ]
  tail call fastcc void @mwifiex_pcie_delete_evtbd_ring(ptr noundef %adapter)
  br label %err_cre_evtbd

err_cre_evtbd:                                    ; preds = %err_alloc_cmdbuf, %if.then9
  %ret.1 = phi i32 [ %retval.0.i90.ph, %if.then9 ], [ %ret.0, %err_alloc_cmdbuf ]
  tail call fastcc void @mwifiex_pcie_delete_rxbd_ring(ptr noundef %adapter)
  br label %err_cre_rxbd

err_cre_rxbd:                                     ; preds = %err_cre_evtbd, %if.then5
  %ret.2 = phi i32 [ %retval.0.i67.ph, %if.then5 ], [ %ret.1, %err_cre_evtbd ]
  tail call fastcc void @mwifiex_pcie_delete_txbd_ring(ptr noundef %adapter)
  br label %cleanup

cleanup:                                          ; preds = %err_cre_rxbd, %if.else, %if.then16.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then16.cleanup_crit_edge ], [ 0, %if.else ], [ -12, %if.then ], [ %ret.2, %err_cre_rxbd ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_pcie_alloc_sleep_cookie_buf(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %sleep_cookie_pbase = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 29
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev2, i32 noundef 4, ptr noundef %sleep_cookie_pbase, i32 noundef 3264, i32 noundef 0) #9
  %sleep_cookie_vbase = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %sleep_cookie_vbase to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %sleep_cookie_vbase, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.64) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1437226411, ptr %call.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.65, i32 noundef -1437226411) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_pcie_delete_cmdrsp_buf(ptr noundef readonly %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %adapter, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %cmdrsp_buf = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %cmdrsp_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmdrsp_buf, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.land.lhs.true10_crit_edge, label %if.then4

land.lhs.true.land.lhs.true10_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true10

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %cb1.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cb1.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cb1.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i = lshr i64 %5, 32
  %mapping.sroa.0.0.extract.trunc.i = trunc i64 %mapping.sroa.0.0.extract.shift.i to i32
  %mapping.sroa.5.0.extract.trunc.i = trunc i64 %5 to i32
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i, i32 noundef %mapping.sroa.5.0.extract.trunc.i, i32 noundef 2, i32 noundef 0) #9
  %8 = ptrtoint ptr %cmdrsp_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmdrsp_buf, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %9, i32 noundef 1) #9
  %10 = ptrtoint ptr %cmdrsp_buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cmdrsp_buf, align 4
  br label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.then4, %land.lhs.true.land.lhs.true10_crit_edge
  %cmd_buf = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 26
  %11 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd_buf, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %land.lhs.true10.cleanup_crit_edge, label %if.then12

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card1, align 4
  %cb1.i.i3 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %cb1.i.i3 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cb1.i.i3, align 8
  %mapping.sroa.0.0.extract.shift.i4 = lshr i64 %16, 32
  %mapping.sroa.0.0.extract.trunc.i5 = trunc i64 %mapping.sroa.0.0.extract.shift.i4 to i32
  %mapping.sroa.5.0.extract.trunc.i6 = trunc i64 %16 to i32
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %dev2.i7 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i7, i32 noundef %mapping.sroa.0.0.extract.trunc.i5, i32 noundef %mapping.sroa.5.0.extract.trunc.i6, i32 noundef 1, i32 noundef 0) #9
  %19 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd_buf, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %20, i32 noundef 1) #9
  %21 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cmd_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %land.lhs.true10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_pcie_delete_evtbd_ring(ptr nocapture noundef readonly %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.017.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 24, i32 %i.017.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 25, i32 %i.017.i
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card1, align 4
  %cb1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %cb1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %cb1.i.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i.i = lshr i64 %11, 32
  %mapping.sroa.0.0.extract.trunc.i.i = trunc i64 %mapping.sroa.0.0.extract.shift.i.i to i32
  %mapping.sroa.5.0.extract.trunc.i.i = trunc i64 %11 to i32
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %dev2.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i.i, i32 noundef %mapping.sroa.5.0.extract.trunc.i.i, i32 noundef 2, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %7, i32 noundef 1) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx2.i, align 4
  %15 = call ptr @memset(ptr %5, i32 0, i32 12)
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %mwifiex_cleanup_evt_ring.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mwifiex_cleanup_evt_ring.exit:                    ; preds = %if.end.i
  %evtbd_ring_vbase = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 22
  %16 = ptrtoint ptr %evtbd_ring_vbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %evtbd_ring_vbase, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %mwifiex_cleanup_evt_ring.exit.if.end_crit_edge, label %if.then

mwifiex_cleanup_evt_ring.exit.if.end_crit_edge:   ; preds = %mwifiex_cleanup_evt_ring.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mwifiex_cleanup_evt_ring.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %evtbd_ring_size = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 21
  %20 = ptrtoint ptr %evtbd_ring_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %evtbd_ring_size, align 4
  %evtbd_ring_pbase = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 23
  %22 = ptrtoint ptr %evtbd_ring_pbase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %evtbd_ring_pbase, align 4
  tail call void @dma_free_attrs(ptr noundef %dev3, i32 noundef %21, ptr noundef nonnull %17, i32 noundef %23, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %mwifiex_cleanup_evt_ring.exit.if.end_crit_edge
  %evtbd_wrptr = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 19
  %24 = ptrtoint ptr %evtbd_wrptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %evtbd_wrptr, align 4
  %evt_rollover_ind = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 20
  %25 = ptrtoint ptr %evt_rollover_ind to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %evt_rollover_ind, align 4
  %evtbd_rdptr = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 20
  %27 = ptrtoint ptr %evtbd_rdptr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %evtbd_rdptr, align 4
  %evtbd_ring_size5 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 21
  %28 = ptrtoint ptr %evtbd_ring_size5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %evtbd_ring_size5, align 4
  %29 = ptrtoint ptr %evtbd_ring_vbase to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %evtbd_ring_vbase, align 4
  %evtbd_ring_pbase7 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 23
  %30 = ptrtoint ptr %evtbd_ring_pbase7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %evtbd_ring_pbase7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_pcie_delete_rxbd_ring(ptr nocapture noundef readonly %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %pfu_enabled.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %if.end17.i.for.body.i_crit_edge, %entry
  %i.047.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end17.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %pfu_enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pfu_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %arrayidx9.i = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 17, i32 %i.047.i
  %6 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 18, i32 %i.047.i
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx11.i, align 4
  %tobool12.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  br i1 %tobool12.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then5.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card1, align 4
  %cb1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %cb1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cb1.i.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i.i = lshr i64 %13, 32
  %mapping.sroa.0.0.extract.trunc.i.i = trunc i64 %mapping.sroa.0.0.extract.shift.i.i to i32
  %mapping.sroa.5.0.extract.trunc.i.i = trunc i64 %13 to i32
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %dev2.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i.i, i32 noundef %mapping.sroa.5.0.extract.trunc.i.i, i32 noundef 2, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %16 = call ptr @memset(ptr %7, i32 0, i32 20)
  br label %if.end17.i

if.else.i:                                        ; preds = %for.body.i
  br i1 %tobool12.not.i, label %if.else.i.if.end16.i_crit_edge, label %if.then13.i

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card1, align 4
  %cb1.i.i42.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3
  %19 = ptrtoint ptr %cb1.i.i42.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %cb1.i.i42.i, align 8
  %mapping.sroa.0.0.extract.shift.i43.i = lshr i64 %20, 32
  %mapping.sroa.0.0.extract.trunc.i44.i = trunc i64 %mapping.sroa.0.0.extract.shift.i43.i to i32
  %mapping.sroa.5.0.extract.trunc.i45.i = trunc i64 %20 to i32
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %dev2.i46.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i46.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i44.i, i32 noundef %mapping.sroa.5.0.extract.trunc.i45.i, i32 noundef 2, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.else.i.if.end16.i_crit_edge
  %23 = call ptr @memset(ptr %7, i32 0, i32 12)
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end16.i, %if.end.i
  %24 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx11.i, align 4
  %inc.i = add nuw nsw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %mwifiex_cleanup_rxq_ring.exit, label %if.end17.i.for.body.i_crit_edge

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mwifiex_cleanup_rxq_ring.exit:                    ; preds = %if.end17.i
  %rxbd_ring_vbase = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %rxbd_ring_vbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rxbd_ring_vbase, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %mwifiex_cleanup_rxq_ring.exit.if.end_crit_edge, label %if.then

mwifiex_cleanup_rxq_ring.exit.if.end_crit_edge:   ; preds = %mwifiex_cleanup_rxq_ring.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mwifiex_cleanup_rxq_ring.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %rxbd_ring_size = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 14
  %29 = ptrtoint ptr %rxbd_ring_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rxbd_ring_size, align 4
  %rxbd_ring_pbase = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 16
  %31 = ptrtoint ptr %rxbd_ring_pbase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rxbd_ring_pbase, align 4
  tail call void @dma_free_attrs(ptr noundef %dev3, i32 noundef %30, ptr noundef nonnull %26, i32 noundef %32, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %mwifiex_cleanup_rxq_ring.exit.if.end_crit_edge
  %rxbd_ring_size5 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 14
  %33 = ptrtoint ptr %rxbd_ring_size5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %rxbd_ring_size5, align 4
  %rxbd_wrptr = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 12
  %34 = ptrtoint ptr %rxbd_wrptr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %rxbd_wrptr, align 4
  %rx_rollover_ind = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 19
  %35 = ptrtoint ptr %rx_rollover_ind to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_rollover_ind, align 4
  %rxbd_rdptr = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 13
  %37 = ptrtoint ptr %rxbd_rdptr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rxbd_rdptr, align 4
  %38 = ptrtoint ptr %rxbd_ring_vbase to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rxbd_ring_vbase, align 4
  %rxbd_ring_pbase7 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 16
  %39 = ptrtoint ptr %rxbd_ring_pbase7 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %rxbd_ring_pbase7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_pcie_delete_txbd_ring(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %pfu_enabled.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %if.end17.i.for.body.i_crit_edge, %entry
  %i.048.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end17.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %pfu_enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pfu_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %arrayidx9.i = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 10, i32 %i.048.i
  %6 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 11, i32 %i.048.i
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx11.i, align 4
  %tobool12.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  br i1 %tobool12.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then5.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card1, align 4
  %cb1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %cb1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cb1.i.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i.i = lshr i64 %13, 32
  %mapping.sroa.0.0.extract.trunc.i.i = trunc i64 %mapping.sroa.0.0.extract.shift.i.i to i32
  %mapping.sroa.5.0.extract.trunc.i.i = trunc i64 %13 to i32
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %dev2.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i.i, i32 noundef %mapping.sroa.5.0.extract.trunc.i.i, i32 noundef 1, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %16 = call ptr @memset(ptr %7, i32 0, i32 20)
  br label %if.end17.i

if.else.i:                                        ; preds = %for.body.i
  br i1 %tobool12.not.i, label %if.else.i.if.end16.i_crit_edge, label %if.then13.i

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card1, align 4
  %cb1.i.i43.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3
  %19 = ptrtoint ptr %cb1.i.i43.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %cb1.i.i43.i, align 8
  %mapping.sroa.0.0.extract.shift.i44.i = lshr i64 %20, 32
  %mapping.sroa.0.0.extract.trunc.i45.i = trunc i64 %mapping.sroa.0.0.extract.shift.i44.i to i32
  %mapping.sroa.5.0.extract.trunc.i46.i = trunc i64 %20 to i32
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %dev2.i47.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i47.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i45.i, i32 noundef %mapping.sroa.5.0.extract.trunc.i46.i, i32 noundef 1, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.else.i.if.end16.i_crit_edge
  %23 = call ptr @memset(ptr %7, i32 0, i32 12)
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end16.i, %if.end.i
  %24 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx11.i, align 4
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %mwifiex_cleanup_txq_ring.exit, label %if.end17.i.for.body.i_crit_edge

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mwifiex_cleanup_txq_ring.exit:                    ; preds = %if.end17.i
  %tx_hw_pending.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_hw_pending.i, i32 noundef 4) #9
  %25 = ptrtoint ptr %tx_hw_pending.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %tx_hw_pending.i, align 4
  %txbd_ring_vbase = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %txbd_ring_vbase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %txbd_ring_vbase, align 4
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %mwifiex_cleanup_txq_ring.exit.if.end_crit_edge, label %if.then

mwifiex_cleanup_txq_ring.exit.if.end_crit_edge:   ; preds = %mwifiex_cleanup_txq_ring.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mwifiex_cleanup_txq_ring.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %txbd_ring_size = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %txbd_ring_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %txbd_ring_size, align 4
  %txbd_ring_pbase = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %txbd_ring_pbase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %txbd_ring_pbase, align 4
  tail call void @dma_free_attrs(ptr noundef %dev3, i32 noundef %31, ptr noundef nonnull %27, i32 noundef %33, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %mwifiex_cleanup_txq_ring.exit.if.end_crit_edge
  %txbd_ring_size5 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %txbd_ring_size5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %txbd_ring_size5, align 4
  %txbd_wrptr = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %txbd_wrptr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %txbd_wrptr, align 4
  %tx_rollover_ind = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 18
  %36 = ptrtoint ptr %tx_rollover_ind to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_rollover_ind, align 4
  %txbd_rdptr = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %txbd_rdptr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %txbd_rdptr, align 4
  %39 = ptrtoint ptr %txbd_ring_vbase to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %txbd_ring_vbase, align 4
  %txbd_ring_pbase7 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 9
  %40 = ptrtoint ptr %txbd_ring_pbase7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %txbd_ring_pbase7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_alloc_dma_align_buf(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_map_pci_memory(ptr noundef %adapter, ptr nocapture noundef %skb, i32 noundef %size, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %5) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !450

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev2) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.58, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev2, ptr noundef %5, i32 noundef %size) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %5 to i32
  %sub.i = add i32 %11, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %10, i32 %shr.i
  %and.i = and i32 %11, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev2, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %size, i32 noundef %flags, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev4, i32 noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.56) #9
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %mapping.sroa.5.0.insert.ext = zext i32 %size to i64
  %mapping.sroa.0.0.insert.ext = zext i32 %retval.0.i to i64
  %mapping.sroa.0.0.insert.shift = shl nuw i64 %mapping.sroa.0.0.insert.ext, 32
  %mapping.sroa.0.0.insert.insert = or i64 %mapping.sroa.0.0.insert.shift, %mapping.sroa.5.0.insert.ext
  %14 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %mapping.sroa.0.0.insert.insert, ptr %cb1.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_pcie_free_buffers(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %sleep_cookie = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %sleep_cookie to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sleep_cookie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %tobool.not.i = icmp eq ptr %adapter, null
  %or.cond = or i1 %tobool.not.i, %tobool.not
  %tobool2.not.i = icmp eq ptr %1, null
  %or.cond12 = select i1 %or.cond, i1 true, i1 %tobool2.not.i
  br i1 %or.cond12, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %sleep_cookie_vbase.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %sleep_cookie_vbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sleep_cookie_vbase.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then4.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %sleep_cookie_pbase.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %sleep_cookie_pbase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sleep_cookie_pbase.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5.i, i32 noundef 4, ptr noundef nonnull %7, i32 noundef %11, i32 noundef 0) #9
  %12 = ptrtoint ptr %sleep_cookie_vbase.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %sleep_cookie_vbase.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4.i, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @mwifiex_pcie_delete_cmdrsp_buf(ptr noundef %adapter)
  tail call fastcc void @mwifiex_pcie_delete_evtbd_ring(ptr noundef %adapter)
  tail call fastcc void @mwifiex_pcie_delete_rxbd_ring(ptr noundef %adapter)
  tail call fastcc void @mwifiex_pcie_delete_txbd_ring(ptr noundef %adapter)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_pcie_disable_host_int(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1.i, align 4
  %pcie.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie.i, align 4
  %sleep_cookie.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %sleep_cookie.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sleep_cookie.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %sleep_cookie_vbase.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %sleep_cookie_vbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sleep_cookie_vbase.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %if.end.i.if.end3_crit_edge, label %if.then4.i

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then4.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %9)
  %cmp.i = icmp eq i32 %9, 1437226410
  br i1 %cmp.i, label %if.then4.i.if.then_crit_edge, label %if.then4.i.if.end3_crit_edge

if.then4.i.if.end3_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then4.i.if.then_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %if.then4.i.if.then_crit_edge, %entry.if.then_crit_edge
  %11 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card1.i, align 4
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %12, i32 0, i32 31
  %13 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 3124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !445
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.then4.i.if.end3_crit_edge, %if.end.i.if.end3_crit_edge
  %tx_hw_pending = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_hw_pending, i32 noundef 4) #9
  %15 = ptrtoint ptr %tx_hw_pending to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %tx_hw_pending, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mwifiex_pcie_ok_to_access_hw(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %sleep_cookie = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %sleep_cookie to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sleep_cookie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sleep_cookie_vbase = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %sleep_cookie_vbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sleep_cookie_vbase, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %9)
  %cmp = icmp eq i32 %9, 1437226410
  br i1 %cmp, label %if.then4.cleanup_crit_edge, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %if.end.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end8 ], [ true, %entry.cleanup_crit_edge ], [ true, %if.then4.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pcie_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %adapter1 = getelementptr inbounds %struct.pcie_service_card, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, ptr noundef %3, ptr noundef null) #12
  br label %exit

if.end:                                           ; preds = %entry
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %work_flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool7.not = icmp eq i32 %and1.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end9:                                          ; preds = %if.end
  %msix_enable = getelementptr inbounds %struct.pcie_service_card, ptr %3, i32 0, i32 33
  %8 = ptrtoint ptr %msix_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msix_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %msg_id = getelementptr inbounds %struct.mwifiex_msix_context, ptr %context, i32 0, i32 1
  %10 = ptrtoint ptr %msg_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %msg_id, align 4
  %conv = zext i16 %11 to i32
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %.sink = phi i32 [ %conv, %if.then11 ], [ -1, %if.end9.if.end12_crit_edge ]
  tail call fastcc void @mwifiex_interrupt_status(ptr noundef nonnull %5, i32 noundef %.sink)
  tail call void @mwifiex_queue_main_work(ptr noundef nonnull %5) #9
  br label %exit

exit:                                             ; preds = %if.end12, %if.end.exit_crit_edge, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_interrupt_status(ptr noundef %adapter, i32 noundef %msg_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %msi_enable = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %msi_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msi_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %int_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 48
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock) #9
  %int_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 49
  %4 = ptrtoint ptr %int_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %int_status, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcie.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %pcie.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcie.i, align 4
  %sleep_cookie.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %sleep_cookie.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sleep_cookie.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.if.end9_crit_edge, label %if.end.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end.i:                                         ; preds = %if.end
  %sleep_cookie_vbase.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 28
  %9 = ptrtoint ptr %sleep_cookie_vbase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sleep_cookie_vbase.i, align 4
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.then4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %10, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %12)
  %cmp.i = icmp eq i32 %12, 1437226410
  br i1 %cmp.i, label %if.then4.i.if.end9_crit_edge, label %if.then4.i.cleanup_crit_edge

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.i.if.end9_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9:                                          ; preds = %if.then4.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %msix_enable = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %msix_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msix_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %msg_id)
  %cmp11 = icmp sgt i32 %msg_id, -1
  %or.cond = and i1 %cmp11, %tobool10.not
  br i1 %or.cond, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw i32 1, %msg_id
  br label %if.end28

if.else:                                          ; preds = %if.end9
  %16 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card1, align 4
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %17, i32 0, i32 31
  %18 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 3120
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !440
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i83.not = icmp eq i32 %20, -1
  br i1 %cmp.i83.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.111) #9
  br label %cleanup

if.end17:                                         ; preds = %if.else
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %21, label %if.end22 [
    i32 -1, label %if.end17.cleanup_crit_edge
    i32 0, label %if.end17.cleanup_crit_edge91
  ]

if.end17.cleanup_crit_edge91:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mwifiex_pcie_disable_host_int(ptr noundef %adapter)
  %neg = xor i32 %21, -1
  %23 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card1, align 4
  %pci_mmap1.i85 = getelementptr inbounds %struct.pcie_service_card, ptr %24, i32 0, i32 31
  %25 = ptrtoint ptr %pci_mmap1.i85 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_mmap1.i85, align 4
  %add.ptr.i86 = getelementptr i8, ptr %26, i32 3120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %neg) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %27) #9, !srcloc !445
  br label %if.end28

if.end28:                                         ; preds = %if.end22, %if.then13
  %pcie_ireg.0 = phi i32 [ %shl, %if.then13 ], [ %21, %if.end22 ]
  %pps_uapsd_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 104
  %28 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pps_uapsd_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool29.not = icmp eq i16 %29, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %if.end28.do.body41_crit_edge

if.end28.do.body41_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body41

land.lhs.true30:                                  ; preds = %if.end28
  %ps_state = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 90
  %30 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ps_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp31 = icmp eq i32 %31, 3
  br i1 %cmp31, label %land.lhs.true33, label %land.lhs.true30.do.body41_crit_edge

land.lhs.true30.do.body41_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body41

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %call34 = tail call fastcc zeroext i1 @mwifiex_pcie_ok_to_access_hw(ptr noundef %adapter)
  br i1 %call34, label %if.then36, label %land.lhs.true33.do.body41_crit_edge

land.lhs.true33.do.body41_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body41

if.then36:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %ps_state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %ps_state, align 4
  %pm_wakeup_fw_try = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 105
  %33 = ptrtoint ptr %pm_wakeup_fw_try to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %pm_wakeup_fw_try, align 4
  %wakeup_timer = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 106
  %call38 = tail call i32 @del_timer(ptr noundef %wakeup_timer) #9
  br label %do.body41

do.body41:                                        ; preds = %if.then36, %land.lhs.true33.do.body41_crit_edge, %land.lhs.true30.do.body41_crit_edge, %if.end28.do.body41_crit_edge
  %int_lock47 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 48
  %call49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock47) #9
  %int_status54 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 49
  %34 = ptrtoint ptr %int_status54 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %int_status54, align 4
  %36 = trunc i32 %pcie_ireg.0 to i8
  %conv56 = or i8 %35, %36
  store i8 %conv56, ptr %int_status54, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock47, i32 noundef %call49) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 64, ptr noundef nonnull @.str.112, i32 noundef %pcie_ireg.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body41, %if.end17.cleanup_crit_edge, %if.end17.cleanup_crit_edge91, %if.then16, %if.then4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.body2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_queue_main_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_pcie_process_event_ready(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %pcie = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %evtbd_rdptr = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %evtbd_rdptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %evtbd_rdptr, align 4
  %and = and i32 %5, 15
  %sleep_cookie.i = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %sleep_cookie.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sleep_cookie.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %sleep_cookie_vbase.i = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %sleep_cookie_vbase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sleep_cookie_vbase.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %if.end.i.if.then_crit_edge, label %if.then4.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then4.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %9, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.92, i32 noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %11)
  %cmp.i = icmp eq i32 %11, 1437226410
  br i1 %cmp.i, label %if.then4.i.if.end_crit_edge, label %if.then4.i.if.then_crit_edge

if.then4.i.if.then_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then4.i.if.end_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %if.then4.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %call3 = tail call i32 @mwifiex_pm_wakeup_card(ptr noundef %adapter)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then4.i.if.end_crit_edge, %entry.if.end_crit_edge
  %event_received = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 56
  %13 = ptrtoint ptr %event_received to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %event_received, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 32, ptr noundef nonnull @.str.136) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp = icmp ugt i32 %and, 7
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.137) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %evt_wrptr = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %evt_wrptr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %evt_wrptr, align 2
  %conv = zext i16 %16 to i32
  %17 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card1, align 4
  %pci_mmap1.i = getelementptr inbounds %struct.pcie_service_card, ptr %18, i32 0, i32 31
  %19 = ptrtoint ptr %pci_mmap1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_mmap1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %conv
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i100.not = icmp eq i32 %21, -1
  br i1 %cmp.i100.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.138) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %23 = ptrtoint ptr %evtbd_rdptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %evtbd_rdptr, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 32, ptr noundef nonnull @.str.139, i32 noundef %24, i32 noundef %22) #9
  %25 = ptrtoint ptr %evtbd_rdptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %evtbd_rdptr, align 4
  %27 = xor i32 %26, %22
  %28 = and i32 %27, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp16.not = icmp eq i32 %28, 0
  br i1 %cmp16.not, label %lor.lhs.false, label %if.end11.if.then24_crit_edge

if.end11.if.then24_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end11
  %evt_rollover_ind = getelementptr inbounds %struct.mwifiex_pcie_card_reg, ptr %3, i32 0, i32 20
  %29 = ptrtoint ptr %evt_rollover_ind to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %evt_rollover_ind, align 4
  %31 = and i32 %30, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp22 = icmp eq i32 %31, 0
  br i1 %cmp22, label %lor.lhs.false.if.then24_crit_edge, label %if.else

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %if.end11.if.then24_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.140, i32 noundef %and) #9
  %arrayidx = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 25, i32 %and
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %34 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card1, align 4
  %cb1.i.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %cb1.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %cb1.i.i, align 8
  %mapping.sroa.0.0.extract.shift.i = lshr i64 %37, 32
  %mapping.sroa.0.0.extract.trunc.i = trunc i64 %mapping.sroa.0.0.extract.shift.i to i32
  %mapping.sroa.5.0.extract.trunc.i = trunc i64 %37 to i32
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i, i32 noundef %mapping.sroa.0.0.extract.trunc.i, i32 noundef %mapping.sroa.5.0.extract.trunc.i, i32 noundef 2, i32 noundef 0) #9
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx27 = getelementptr %struct.pcie_service_card, ptr %1, i32 0, i32 24, i32 %and
  %41 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx27, align 4
  %43 = call ptr @memset(ptr %42, i32 0, i32 12)
  %data = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 19
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %46 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %intf_hdr_len, align 4
  %idxprom = zext i8 %47 to i32
  %arrayidx28 = getelementptr i8, ptr %45, i32 %idxprom
  %48 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %arrayidx28, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  %event_cause = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 50
  %51 = ptrtoint ptr %event_cause to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %event_cause, align 4
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %data_len.0.copyload = load i16, ptr %53, align 1
  %55 = tail call i16 @llvm.bswap.i16(i16 %data_len.0.copyload)
  %conv31 = zext i16 %55 to i32
  tail call void @skb_trim(ptr noundef %33, i32 noundef %conv31) #9
  %56 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %intf_hdr_len, align 4
  %conv33 = zext i8 %57 to i32
  %call34 = tail call ptr @skb_pull(ptr noundef %33, i32 noundef %conv33) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 32, ptr noundef nonnull @.str.141, i32 noundef %conv31) #9
  %58 = add i16 %55, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2043, i16 %58)
  %59 = icmp ult i16 %58, 2043
  br i1 %59, label %if.then42, label %if.then24.if.end45_crit_edge

if.then24.if.end45_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then42:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %event_body = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 112
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %61, i32 4
  %sub = add nsw i32 %conv31, -4
  %62 = call ptr @memcpy(ptr %event_body, ptr %add.ptr, i32 %sub)
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.then24.if.end45_crit_edge
  %63 = ptrtoint ptr %event_received to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %event_received, align 1
  %event_skb = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 51
  %64 = ptrtoint ptr %event_skb to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %33, ptr %event_skb, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %card1, align 4
  %pci_mmap1.i103 = getelementptr inbounds %struct.pcie_service_card, ptr %66, i32 0, i32 31
  %67 = ptrtoint ptr %pci_mmap1.i103 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pci_mmap1.i103, align 4
  %add.ptr.i104 = getelementptr i8, ptr %68, i32 3096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 536870912) #9, !srcloc !445
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end45, %if.then10, %if.then6, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ -1, %if.then6 ], [ -1, %if.then10 ], [ 0, %if.else ], [ 0, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_write_data_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_handle_rx_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_process_sleep_confirm_resp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_deauthenticate_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_disable_auto_ds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_init_shutdown_fw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_remove_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_pcie_reset_prepare(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter1 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.180) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  %conv = zext i16 %5 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %conv2 = zext i16 %7 to i32
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision, align 4
  %conv3 = zext i8 %9 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 1073741824, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.180, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3) #9
  %call4 = tail call i32 @mwifiex_shutdown_sw(ptr noundef nonnull %3) #9
  %work_flags = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 38
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %work_flags) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %work_flags) #9
  %quirks = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 40
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirks, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 @mwifiex_pcie_reset_d3cold_quirk(ptr noundef %pdev) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 1073741824, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.180) #9
  %pci_reset_ongoing = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 39
  %12 = ptrtoint ptr %pci_reset_ongoing to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %pci_reset_ongoing, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_pcie_reset_done(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter1 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.183) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  %conv = zext i16 %5 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %conv2 = zext i16 %7 to i32
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision, align 4
  %conv3 = zext i8 %9 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 1073741824, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.183, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3) #9
  %call4 = tail call i32 @mwifiex_reinit_sw(ptr noundef nonnull %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.186, i32 noundef %call4) #12
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 1073741824, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.183) #9
  br label %if.end11

if.end11:                                         ; preds = %if.else, %do.end9
  %pci_reset_ongoing = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 39
  %10 = ptrtoint ptr %pci_reset_ongoing to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pci_reset_ongoing, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_shutdown_sw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_pcie_reset_d3cold_quirk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_reinit_sw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pcie_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw_done = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %fw_done) #9
  %adapter1 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.188) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_wakeup.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 164
  %4 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp sgt i32 %5, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.mwifiex_enable_wake.exit_crit_edge

if.end.mwifiex_enable_wake.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_enable_wake.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %wake_by_wifi.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 165
  %6 = ptrtoint ptr %wake_by_wifi.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %wake_by_wifi.i, align 4
  tail call void @enable_irq(i32 noundef %5) #9
  %7 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_wakeup.i, align 4
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #9
  br label %mwifiex_enable_wake.exit

mwifiex_enable_wake.exit:                         ; preds = %if.then.i, %if.end.mwifiex_enable_wake.exit_crit_edge
  %call2 = tail call i32 @mwifiex_enable_hs(ptr noundef nonnull %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %mwifiex_enable_wake.exit
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull @.str.190) #9
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %work_flags) #9
  %9 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i20 = icmp sgt i32 %10, -1
  br i1 %cmp.i20, label %if.then.i23, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i23:                                      ; preds = %if.then4
  %call.i.i21 = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 0) #9
  %11 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_wakeup.i, align 4
  tail call void @disable_irq(i32 noundef %12) #9
  %wake_by_wifi.i22 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 165
  %13 = ptrtoint ptr %wake_by_wifi.i22 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wake_by_wifi.i22, align 4, !range !439
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then.i23.cleanup_crit_edge, label %if.then3.i

if.then.i23.cleanup_crit_edge:                    ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq_wakeup.i, align 4
  tail call void @enable_irq(i32 noundef %16) #9
  br label %cleanup

if.end5:                                          ; preds = %mwifiex_enable_wake.exit
  call void @__sanitizer_cov_trace_pc() #11
  %workqueue = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 24
  %17 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %18) #9
  %work_flags6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %work_flags6) #9
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %work_flags6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3.i, %if.then.i23.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 0, %do.end ], [ -14, %if.then4.cleanup_crit_edge ], [ -14, %if.then.i23.cleanup_crit_edge ], [ -14, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pcie_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %adapter1 = getelementptr inbounds %struct.pcie_service_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.191) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %work_flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 536870912, ptr noundef nonnull @.str.193) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %work_flags) #9
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp29.not.i = icmp eq i8 %8, 0
  br i1 %cmp29.not.i, label %if.end6.mwifiex_get_priv.exit_crit_edge, label %if.end6.for.body.i_crit_edge

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

if.end6.mwifiex_get_priv.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end6.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %3, i32 0, i32 4, i32 %i.030.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %if.then.i.mwifiex_get_priv.exit_crit_edge, %if.end6.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %if.end6.mwifiex_get_priv.exit_crit_edge ], [ %10, %if.then.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %call9 = tail call i32 @mwifiex_cancel_hs(ptr noundef %cond.i, i32 noundef 0) #9
  %irq_wakeup.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 164
  %14 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i = icmp sgt i32 %15, -1
  br i1 %cmp.i, label %if.then.i18, label %mwifiex_get_priv.exit.cleanup_crit_edge

mwifiex_get_priv.exit.cleanup_crit_edge:          ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i18:                                      ; preds = %mwifiex_get_priv.exit
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %15, i32 noundef 0) #9
  %16 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_wakeup.i, align 4
  tail call void @disable_irq(i32 noundef %17) #9
  %wake_by_wifi.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 165
  %18 = ptrtoint ptr %wake_by_wifi.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wake_by_wifi.i, align 4, !range !439
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i17 = icmp eq i8 %19, 0
  br i1 %tobool.not.i17, label %if.then.i18.cleanup_crit_edge, label %if.then3.i

if.then.i18.cleanup_crit_edge:                    ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_wakeup.i, align 4
  tail call void @enable_irq(i32 noundef %21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.then.i18.cleanup_crit_edge, %mwifiex_get_priv.exit.cleanup_crit_edge, %if.then5, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_enable_hs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cancel_hs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 192)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 192)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !82, !83, !85, !87, !89, !90, !91, !92, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !245, !246, !247, !249, !250, !251, !252, !254, !256, !258, !260, !262, !264, !266, !268, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !330, !332, !333, !335, !337, !339, !341, !343, !345, !347, !349, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !397, !398, !399, !401, !403, !405, !406, !407, !409, !411, !412, !413, !415, !417, !418, !419, !420, !422, !424, !425, !426, !427}
!llvm.module.flags = !{!429, !430, !431, !432, !433, !434, !435, !436}
!llvm.ident = !{!437}

!0 = !{ptr @__initcall__kmod_mwifiex_pcie__493_3449_mwifiex_pcie_init6, !1, !"__initcall__kmod_mwifiex_pcie__493_3449_mwifiex_pcie_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3449, i32 1}
!2 = !{ptr @__exitcall_mwifiex_pcie_exit, !1, !"__exitcall_mwifiex_pcie_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author494, !4, !"__UNIQUE_ID_author494", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3451, i32 1}
!5 = !{ptr @__UNIQUE_ID_description495, !6, !"__UNIQUE_ID_description495", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3452, i32 1}
!7 = !{ptr @__UNIQUE_ID_version496, !8, !"__UNIQUE_ID_version496", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3453, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file497, !14, !"__UNIQUE_ID_file497", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3454, i32 1}
!15 = !{ptr @__UNIQUE_ID_license498, !14, !"__UNIQUE_ID_license498", i1 false, i1 false}
!16 = !{ptr @mwifiex_pcie, !17, !"mwifiex_pcie", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 586, i32 26}
!18 = !{ptr @mwifiex_ids, !19, !"mwifiex_ids", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 485, i32 35}
!20 = !{ptr @mwifiex_pcie8766, !21, !"mwifiex_pcie8766", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 159, i32 41}
!22 = !{ptr @mwifiex_reg_8766, !23, !"mwifiex_reg_8766", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 38, i32 43}
!24 = !{ptr @mwifiex_pcie8897, !25, !"mwifiex_pcie8897", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 167, i32 41}
!26 = !{ptr @mwifiex_reg_8897, !27, !"mwifiex_reg_8897", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 70, i32 43}
!28 = !{ptr @mem_type_mapping_tbl_w8897, !29, !"mem_type_mapping_tbl_w8897", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 144, i32 35}
!30 = !{ptr @mwifiex_pcie8997, !31, !"mwifiex_pcie8997", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 177, i32 41}
!32 = !{ptr @mwifiex_reg_8997, !33, !"mwifiex_reg_8997", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 107, i32 43}
!34 = !{ptr @mem_type_mapping_tbl_w8997, !35, !"mem_type_mapping_tbl_w8997", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 155, i32 35}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 385, i32 2}
!38 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mwifiex_pcie_probe.__UNIQUE_ID_ddebug488, !37, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!41 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mwifiex_pcie_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 405, i32 3}
!44 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 420, i32 3}
!47 = !{ptr @mwifiex_pcie_probe._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mwifiex_pcie_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @init_completion.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../include/linux/completion.h", i32 87, i32 2}
!51 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2981, i32 3}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2874, i32 2}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2911, i32 4}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2915, i32 5}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2921, i32 3}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2926, i32 4}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2934, i32 3}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2950, i32 5}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2968, i32 4}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2974, i32 2}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2831, i32 4}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2844, i32 2}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 196, i32 3}
!78 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mwifiex_pcie_probe_of._entry, !77, !"_entry", i1 false, i1 false}
!82 = !{ptr @mwifiex_pcie_probe_of._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @mwifiex_pcie_of_match_table, !84, !"mwifiex_pcie_of_match_table", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 187, i32 34}
!85 = !{ptr @pcie_ops, !86, !"pcie_ops", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3420, i32 30}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3121, i32 3}
!89 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mwifiex_init_pcie._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @mwifiex_init_pcie._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3125, i32 36}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3127, i32 3}
!96 = !{ptr @mwifiex_init_pcie._entry.29, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @mwifiex_init_pcie._entry_ptr.31, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3132, i32 3}
!100 = !{ptr @mwifiex_init_pcie._entry.32, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @mwifiex_init_pcie._entry_ptr.34, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3138, i32 3}
!104 = !{ptr @mwifiex_init_pcie._entry.35, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @mwifiex_init_pcie._entry_ptr.37, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3143, i32 3}
!108 = !{ptr @mwifiex_init_pcie._entry.38, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @mwifiex_init_pcie._entry_ptr.40, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3148, i32 2}
!112 = !{ptr @mwifiex_init_pcie._entry.41, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @mwifiex_init_pcie._entry_ptr.43, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3042, i32 3}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3048, i32 3}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3054, i32 3}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3060, i32 3}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3067, i32 4}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1025, i32 2}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1033, i32 3}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1039, i32 2}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1091, i32 2}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1105, i32 2}
!134 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 805, i32 4}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 818, i32 3}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 214, i32 3}
!140 = distinct !{null, !141, !"__already_done", i1 false, i1 false}
!141 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!142 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1156, i32 2}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1170, i32 2}
!148 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 862, i32 4}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 878, i32 3}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1213, i32 3}
!154 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1270, i32 3}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1278, i32 2}
!158 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3191, i32 3}
!160 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3193, i32 3}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3195, i32 3}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3201, i32 3}
!166 = distinct !{null, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3204, i32 4}
!168 = distinct !{null, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2479, i32 3}
!170 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2484, i32 2}
!172 = distinct !{null, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2488, i32 3}
!174 = !{ptr @.str.74, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2501, i32 3}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2531, i32 3}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2534, i32 3}
!180 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2310, i32 3}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2315, i32 2}
!184 = distinct !{null, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2320, i32 3}
!186 = !{ptr @__func__.mwifiex_prog_fw_w_helper, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2333, i32 3}
!189 = !{ptr @.str.81, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2341, i32 4}
!191 = !{ptr @.str.82, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2345, i32 3}
!193 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2361, i32 5}
!195 = !{ptr @.str.84, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2373, i32 4}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2385, i32 5}
!199 = !{ptr @.str.86, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2391, i32 4}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2417, i32 4}
!203 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2427, i32 5}
!205 = !{ptr @.str.89, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2441, i32 4}
!207 = !{ptr @.str.90, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2454, i32 2}
!209 = distinct !{null, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 721, i32 4}
!211 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 282, i32 3}
!213 = !{ptr @.str.93, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2210, i32 4}
!215 = !{ptr @.str.94, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2226, i32 5}
!217 = !{ptr @.str.95, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2233, i32 5}
!219 = !{ptr @.str.96, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2239, i32 5}
!221 = !{ptr @.str.97, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2278, i32 4}
!223 = !{ptr @.str.98, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1716, i32 3}
!225 = !{ptr @__func__.mwifiex_pcie_send_boot_cmd, !224, !"<string literal>", i1 false, i1 false}
!226 = distinct !{null, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1731, i32 3}
!228 = distinct !{null, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1752, i32 3}
!230 = distinct !{null, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1762, i32 3}
!232 = !{ptr @.str.102, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3236, i32 9}
!234 = !{ptr @.str.103, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3243, i32 5}
!236 = !{ptr @.str.104, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3250, i32 5}
!238 = !{ptr @.str.105, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3262, i32 2}
!240 = !{ptr @.str.106, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3267, i32 6}
!242 = !{ptr @.str.107, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3269, i32 3}
!244 = !{ptr @.str.108, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @mwifiex_pcie_request_irq._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @mwifiex_pcie_request_irq._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.109, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2619, i32 3}
!249 = !{ptr @.str.110, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @mwifiex_pcie_interrupt._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @mwifiex_pcie_interrupt._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.111, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2566, i32 4}
!254 = !{ptr @.str.112, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2600, i32 2}
!256 = !{ptr @.str.113, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3289, i32 28}
!258 = !{ptr @.str.114, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3297, i32 29}
!260 = !{ptr @.str.115, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3300, i32 29}
!262 = !{ptr @.str.116, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3318, i32 29}
!264 = !{ptr @.str.117, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3320, i32 29}
!266 = !{ptr @.str.118, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 3374, i32 3}
!268 = !{ptr @__func__.mwifiex_unregister_dev, !267, !"<string literal>", i1 false, i1 false}
!269 = distinct !{null, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 748, i32 4}
!271 = !{ptr @.str.120, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2695, i32 3}
!273 = !{ptr @.str.121, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2701, i32 3}
!275 = !{ptr @.str.122, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2707, i32 3}
!277 = !{ptr @.str.123, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2714, i32 4}
!279 = !{ptr @.str.124, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2724, i32 2}
!281 = !{ptr @.str.125, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1345, i32 3}
!283 = !{ptr @.str.126, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1350, i32 2}
!285 = !{ptr @.str.127, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1366, i32 4}
!287 = !{ptr @.str.128, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1584, i32 3}
!289 = !{ptr @.str.129, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1616, i32 4}
!291 = !{ptr @.str.130, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1622, i32 4}
!293 = !{ptr @.str.131, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1638, i32 4}
!295 = !{ptr @.str.132, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1650, i32 3}
!297 = !{ptr @.str.133, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1675, i32 3}
!299 = distinct !{null, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1683, i32 4}
!301 = !{ptr @.str.135, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1696, i32 3}
!303 = !{ptr @.str.136, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2037, i32 3}
!305 = !{ptr @.str.137, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2044, i32 3}
!307 = !{ptr @.str.138, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2051, i32 3}
!309 = !{ptr @.str.139, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2056, i32 2}
!311 = !{ptr @.str.140, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2067, i32 3}
!313 = !{ptr @.str.141, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2087, i32 3}
!315 = !{ptr @.str.142, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1919, i32 2}
!317 = !{ptr @.str.143, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1966, i32 4}
!319 = distinct !{null, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1987, i32 4}
!321 = distinct !{null, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1994, i32 4}
!323 = !{ptr @.str.146, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 635, i32 4}
!325 = !{ptr @.str.147, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 647, i32 3}
!327 = !{ptr @.str.148, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2749, i32 3}
!329 = !{ptr @__func__.mwifiex_pcie_host_to_card, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @.str.149, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1441, i32 3}
!332 = !{ptr @__func__.mwifiex_pcie_send_data, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @.str.150, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1451, i32 2}
!335 = distinct !{null, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1506, i32 4}
!337 = !{ptr @.str.152, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1522, i32 4}
!339 = distinct !{null, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1529, i32 5}
!341 = !{ptr @.str.154, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1535, i32 3}
!343 = !{ptr @.str.155, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1540, i32 3}
!345 = distinct !{null, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1546, i32 4}
!347 = !{ptr @.str.157, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1802, i32 3}
!349 = !{ptr @__func__.mwifiex_pcie_send_cmd, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.158, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1810, i32 3}
!352 = distinct !{null, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1849, i32 4}
!354 = distinct !{null, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1886, i32 3}
!356 = distinct !{null, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1895, i32 3}
!358 = !{ptr @.str.162, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 661, i32 2}
!360 = !{ptr @.str.163, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 681, i32 4}
!362 = !{ptr @.str.164, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 689, i32 3}
!364 = !{ptr @.str.165, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 704, i32 2}
!366 = !{ptr @.str.166, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2132, i32 3}
!368 = !{ptr @.str.167, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2140, i32 3}
!370 = !{ptr @.str.168, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2159, i32 3}
!372 = !{ptr @.str.169, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2170, i32 2}
!374 = distinct !{null, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2177, i32 3}
!376 = !{ptr @.str.171, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2182, i32 2}
!378 = !{ptr @.str.172, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2780, i32 2}
!380 = !{ptr @.str.173, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2783, i32 3}
!382 = !{ptr @.str.174, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2788, i32 2}
!384 = !{ptr @.str.175, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2791, i32 23}
!386 = !{ptr @.str.176, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2795, i32 2}
!388 = !{ptr @.str.177, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 2798, i32 2}
!390 = distinct !{null, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 1320, i32 4}
!392 = !{ptr @mwifiex_pcie_err_handler, !393, !"mwifiex_pcie_err_handler", i1 false, i1 false}
!393 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 574, i32 40}
!394 = !{ptr @.str.179, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 520, i32 3}
!396 = !{ptr @.str.180, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @mwifiex_pcie_reset_prepare._entry, !395, !"_entry", i1 false, i1 false}
!398 = !{ptr @mwifiex_pcie_reset_prepare._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.181, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 525, i32 2}
!401 = !{ptr @.str.182, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 539, i32 2}
!403 = !{ptr @.str.183, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 556, i32 3}
!405 = !{ptr @mwifiex_pcie_reset_done._entry, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @mwifiex_pcie_reset_done._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.184, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 561, i32 2}
!409 = !{ptr @.str.186, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 567, i32 3}
!411 = !{ptr @mwifiex_pcie_reset_done._entry.185, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @mwifiex_pcie_reset_done._entry_ptr.187, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @mwifiex_pcie_pm_ops, !414, !"mwifiex_pcie_pm_ops", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 581, i32 8}
!415 = !{ptr @.str.188, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 312, i32 3}
!417 = !{ptr @.str.189, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @mwifiex_pcie_suspend._entry, !416, !"_entry", i1 false, i1 false}
!419 = !{ptr @mwifiex_pcie_suspend._entry_ptr, !416, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.190, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 320, i32 3}
!422 = !{ptr @.str.191, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 351, i32 3}
!424 = !{ptr @.str.192, !423, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @mwifiex_pcie_resume._entry, !423, !"_entry", i1 false, i1 false}
!426 = !{ptr @mwifiex_pcie_resume._entry_ptr, !423, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.193, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/wireless/marvell/mwifiex/pcie.c", i32 358, i32 3}
!429 = !{i32 1, !"wchar_size", i32 2}
!430 = !{i32 1, !"min_enum_size", i32 4}
!431 = !{i32 8, !"branch-target-enforcement", i32 0}
!432 = !{i32 8, !"sign-return-address", i32 0}
!433 = !{i32 8, !"sign-return-address-all", i32 0}
!434 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!435 = !{i32 7, !"uwtable", i32 1}
!436 = !{i32 7, !"frame-pointer", i32 2}
!437 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!438 = !{i64 2148791933, i64 2148791938, i64 2148791951, i64 2148791995, i64 2148792029, i64 2148792050}
!439 = !{i8 0, i8 2}
!440 = !{i64 3076741}
!441 = !{i64 2150617090}
!442 = !{i64 3076521}
!443 = !{i64 2150615866}
!444 = !{i64 2150618445}
!445 = !{i64 3076323}
!446 = !{i64 2148312583, i64 2148312609, i64 2148312638, i64 2148312672, i64 2148312703, i64 2148312726}
!447 = !{!"branch_weights", i32 1, i32 2000}
!448 = !{i64 2148310118, i64 2148310144, i64 2148310173, i64 2148310207, i64 2148310238, i64 2148310261}
!449 = !{i64 2148311648, i64 2148311680, i64 2148311709, i64 2148311743, i64 2148311774, i64 2148311797}
!450 = !{!"branch_weights", i32 2000, i32 1}
