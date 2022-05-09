; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mwifiex_sdio_device = type { ptr, ptr, i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.mwifiex_sdio_card_reg = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [13 x i8] }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.memory_type_mapping = type { [8 x i8], ptr, i32, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.sdio_mmc_card = type { ptr, ptr, %struct.completion, ptr, ptr, i8, i8, i16, i32, i32, i32, i32, i16, i32, i8, i8, ptr, i8, i8, i8, i8, i8, i8, %struct.mwifiex_sdio_mpa_tx, %struct.mwifiex_sdio_mpa_rx, %struct.work_struct, i32 }
%struct.mwifiex_sdio_mpa_tx = type { ptr, i32, i32, i32, i16, i8, i32, i32 }
%struct.mwifiex_sdio_mpa_rx = type { ptr, i32, i32, i32, i16, ptr, ptr, i8, i32, i32 }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.mwifiex_fw_image = type { ptr, i32, ptr, i32 }
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
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
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

@__initcall__kmod_mwifiex_sdio__495_3146_mwifiex_sdio_init6 = internal global ptr @mwifiex_sdio_init, section ".initcall6.init", align 4
@mwifiex_sdio = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str.1, ptr @mwifiex_ids, ptr @mwifiex_sdio_probe, ptr @mwifiex_sdio_remove, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_sdio_pm_ops, ptr @mwifiex_sdio_coredump, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mwifiex_sdio_exit = internal global ptr @mwifiex_sdio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author496 = internal constant [47 x i8] c"mwifiex_sdio.author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description497 = internal constant [65 x i8] c"mwifiex_sdio.description=Marvell WiFi-Ex SDIO Driver version 1.0\00", section ".modinfo", align 1
@__UNIQUE_ID_version498 = internal constant [25 x i8] c"mwifiex_sdio.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mwifiex_sdio\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file499 = internal constant [68 x i8] c"mwifiex_sdio.file=drivers/net/wireless/marvell/mwifiex/mwifiex_sdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license500 = internal constant [28 x i8] c"mwifiex_sdio.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware501 = internal constant [45 x i8] c"mwifiex_sdio.firmware=mrvl/sd8786_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware502 = internal constant [45 x i8] c"mwifiex_sdio.firmware=mrvl/sd8787_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware503 = internal constant [45 x i8] c"mwifiex_sdio.firmware=mrvl/sd8797_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware504 = internal constant [45 x i8] c"mwifiex_sdio.firmware=mrvl/sd8897_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware505 = internal constant [45 x i8] c"mwifiex_sdio.firmware=mrvl/sd8887_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware506 = internal constant [49 x i8] c"mwifiex_sdio.firmware=mrvl/sdsd8977_combo_v2.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware507 = internal constant [45 x i8] c"mwifiex_sdio.firmware=mrvl/sd8987_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware508 = internal constant [49 x i8] c"mwifiex_sdio.firmware=mrvl/sdsd8997_combo_v4.bin\00", section ".modinfo", align 1
@mwifiex_ids = internal constant { [10 x %struct.sdio_device_id], [40 x i8] } { [10 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 735, i16 -28394, i32 ptrtoint (ptr @mwifiex_sdio_sd8786 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28391, i32 ptrtoint (ptr @mwifiex_sdio_sd8787 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28375, i32 ptrtoint (ptr @mwifiex_sdio_sd8797 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28371, i32 ptrtoint (ptr @mwifiex_sdio_sd8897 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28363, i32 ptrtoint (ptr @mwifiex_sdio_sd8887 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28359, i32 ptrtoint (ptr @mwifiex_sdio_sd8801 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28347, i32 ptrtoint (ptr @mwifiex_sdio_sd8977 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28343, i32 ptrtoint (ptr @mwifiex_sdio_sd8987 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28351, i32 ptrtoint (ptr @mwifiex_sdio_sd8997 to i32) }, %struct.sdio_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@mwifiex_sdio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mwifiex_sdio_suspend, ptr @mwifiex_sdio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mwifiex_sdio_sd8786 = internal constant { %struct.mwifiex_sdio_device, [36 x i8] } { %struct.mwifiex_sdio_device { ptr @.str.3, ptr @mwifiex_reg_sd87xx, i8 16, i8 8, i16 2048, i32 16384, i32 16384, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@mwifiex_sdio_sd8787 = internal constant { %struct.mwifiex_sdio_device, [36 x i8] } { %struct.mwifiex_sdio_device { ptr @.str.5, ptr @mwifiex_reg_sd87xx, i8 16, i8 8, i16 2048, i32 16384, i32 16384, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1 }, [36 x i8] zeroinitializer }, align 32
@mwifiex_sdio_sd8797 = internal constant { %struct.mwifiex_sdio_device, [36 x i8] } { %struct.mwifiex_sdio_device { ptr @.str.6, ptr @mwifiex_reg_sd87xx, i8 16, i8 8, i16 2048, i32 16384, i32 16384, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1 }, [36 x i8] zeroinitializer }, align 32
@mwifiex_sdio_sd8897 = internal constant { %struct.mwifiex_sdio_device, [36 x i8] } { %struct.mwifiex_sdio_device { ptr @.str.7, ptr @mwifiex_reg_sd8897, i8 32, i8 16, i16 4096, i32 65280, i32 65280, i8 1, i8 0, i8 1, i8 0, i8 0, i8 1 }, [36 x i8] zeroinitializer }, align 32
@mwifiex_sdio_sd8887 = internal constant { %struct.mwifiex_sdio_device, [36 x i8] } { %struct.mwifiex_sdio_device { ptr @.str.8, ptr @mwifiex_reg_sd8887, i8 32, i8 16, i16 2048, i32 32768, i32 32768, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1 }, [36 x i8] zeroinitializer }, align 32
@mwifiex_sdio_sd8801 = internal constant { %struct.mwifiex_sdio_device, [36 x i8] } { %struct.mwifiex_sdio_device { ptr @.str.9, ptr @mwifiex_reg_sd87xx, i8 16, i8 8, i16 2048, i32 16384, i32 16384, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1 }, [36 x i8] zeroinitializer }, align 32
@mwifiex_sdio_sd8977 = internal constant { %struct.mwifiex_sdio_device, [36 x i8] } { %struct.mwifiex_sdio_device { ptr @.str.10, ptr @mwifiex_reg_sd8977, i8 32, i8 16, i16 4096, i32 65280, i32 65280, i8 1, i8 0, i8 1, i8 1, i8 0, i8 1 }, [36 x i8] zeroinitializer }, align 32
@mwifiex_sdio_sd8987 = internal constant { %struct.mwifiex_sdio_device, [36 x i8] } { %struct.mwifiex_sdio_device { ptr @.str.11, ptr @mwifiex_reg_sd8987, i8 32, i8 16, i16 2048, i32 65280, i32 65280, i8 1, i8 0, i8 1, i8 1, i8 1, i8 1 }, [36 x i8] zeroinitializer }, align 32
@mwifiex_sdio_sd8997 = internal constant { %struct.mwifiex_sdio_device, [36 x i8] } { %struct.mwifiex_sdio_device { ptr @.str.12, ptr @mwifiex_reg_sd8997, i8 32, i8 16, i16 4096, i32 65280, i32 65280, i8 1, i8 0, i8 1, i8 1, i8 0, i8 1 }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mrvl/sd8786_uapsta.bin\00", [41 x i8] zeroinitializer }, align 32
@mwifiex_reg_sd87xx = internal constant { { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, <{ i8, i8, i8, i8, i8, [8 x i8] }> }, [32 x i8] } { { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, <{ i8, i8, i8, i8, i8, [8 x i8] }> } { i8 1, i8 1, i8 64, i8 65, i8 48, i8 3, i8 1, i8 3, i8 2, i8 96, i8 97, i8 63, i32 65534, i8 120, i8 121, i8 122, i8 64, i8 4, i8 5, i8 0, i8 0, i8 6, i8 7, i8 0, i8 0, i8 8, i8 9, i8 108, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 96, i8 5, <{ i8, i8, i8, i8, i8, [8 x i8] }> <{ i8 40, i8 48, i8 52, i8 56, i8 60, [8 x i8] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mrvl/sd8787_uapsta.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mrvl/sd8797_uapsta.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mrvl/sd8897_uapsta.bin\00", [41 x i8] zeroinitializer }, align 32
@mwifiex_reg_sd8897 = internal constant { %struct.mwifiex_sdio_card_reg, [32 x i8] } { %struct.mwifiex_sdio_card_reg { i8 0, i8 0, i8 96, i8 97, i8 80, i8 -61, i8 1, i8 3, i8 2, i8 -64, i8 -63, i8 -1, i32 -1, i8 -40, i8 -39, i8 -38, i8 -72, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 -52, i8 -51, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -18, i8 -30, i8 -29, i8 -22, i8 0, i8 11, i8 -64, i8 8, [13 x i8] c"LPTUXY\\]\00\00\00\00\00" }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mrvl/sd8887_uapsta.bin\00", [41 x i8] zeroinitializer }, align 32
@mwifiex_reg_sd8887 = internal constant { %struct.mwifiex_sdio_card_reg, [32 x i8] } { %struct.mwifiex_sdio_card_reg { i8 0, i8 0, i8 108, i8 109, i8 92, i8 -61, i8 4, i8 12, i8 8, i8 -112, i8 -111, i8 -1, i32 -1, i8 -28, i8 -27, i8 -26, i8 -60, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -40, i8 -39, i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 0, i8 0, i8 0, i8 0, i8 16, i8 23, i8 -112, i8 13, [13 x i8] c"\08X\\]`abdefhij" }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mrvl/sd8801_uapsta.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mrvl/sdsd8977_combo_v2.bin\00", [37 x i8] zeroinitializer }, align 32
@mwifiex_reg_sd8977 = internal constant { %struct.mwifiex_sdio_card_reg, [32 x i8] } { %struct.mwifiex_sdio_card_reg { i8 0, i8 0, i8 -8, i8 -7, i8 92, i8 -61, i8 4, i8 12, i8 8, i8 -24, i8 -23, i8 -1, i32 -1, i8 -28, i8 -27, i8 -26, i8 -60, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -40, i8 -39, i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -52, i8 -16, i8 -15, i8 -8, i8 16, i8 23, i8 -24, i8 13, [13 x i8] c"\08X\\]`abdefhij" }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mrvl/sd8987_uapsta.bin\00", [41 x i8] zeroinitializer }, align 32
@mwifiex_reg_sd8987 = internal constant { %struct.mwifiex_sdio_card_reg, [32 x i8] } { %struct.mwifiex_sdio_card_reg { i8 0, i8 0, i8 -8, i8 -7, i8 92, i8 -61, i8 4, i8 12, i8 8, i8 -24, i8 -23, i8 -1, i32 -1, i8 -28, i8 -27, i8 -26, i8 -60, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -40, i8 -39, i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -52, i8 -7, i8 -15, i8 -8, i8 16, i8 23, i8 -24, i8 13, [13 x i8] c"\08X\\]`abdefhij" }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mrvl/sdsd8997_combo_v4.bin\00", [37 x i8] zeroinitializer }, align 32
@mwifiex_reg_sd8997 = internal constant { %struct.mwifiex_sdio_card_reg, [32 x i8] } { %struct.mwifiex_sdio_card_reg { i8 0, i8 0, i8 -8, i8 -7, i8 92, i8 -61, i8 4, i8 12, i8 8, i8 -24, i8 -23, i8 -1, i32 -1, i8 -28, i8 -27, i8 -26, i8 -60, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -40, i8 -39, i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -52, i8 -16, i8 -15, i8 -8, i8 16, i8 23, i8 -24, i8 13, [13 x i8] c"\08X\\]`abdefhij" }, [32 x i8] zeroinitializer }, align 32
@mwifiex_sdio_probe.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.14, ptr @.str.15, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mwifiex_sdio_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/marvell/mwifiex/sdio.c\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"info: vendor=0x%4.04X device=0x%4.04X class=%d function=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"mwifiex_sdio: info: vendor=0x%4.04X device=0x%4.04X class=%d function=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@mwifiex_sdio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&card->work)\00", [33 x i8] zeroinitializer }, align 32
@mwifiex_sdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.14, i32 559, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable function\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mwifiex_sdio_probe._entry_ptr = internal global ptr @mwifiex_sdio_probe._entry, section ".printk_index", align 4
@sdio_ops = internal global { %struct.mwifiex_if_ops, [40 x i8] } { %struct.mwifiex_if_ops { ptr @mwifiex_init_sdio, ptr @mwifiex_cleanup_sdio, ptr @mwifiex_check_fw_status, ptr @mwifiex_check_winner_status, ptr @mwifiex_prog_fw_w_helper, ptr @mwifiex_register_dev, ptr @mwifiex_unregister_dev, ptr @mwifiex_sdio_enable_host_int, ptr @mwifiex_sdio_disable_host_int, ptr @mwifiex_process_int_status, ptr @mwifiex_sdio_host_to_card, ptr @mwifiex_pm_wakeup_card, ptr @mwifiex_pm_wakeup_card_complete, ptr @mwifiex_update_mp_end_port, ptr @mwifiex_cleanup_mpa_buf, ptr @mwifiex_sdio_cmdrsp_complete, ptr @mwifiex_sdio_event_complete, ptr null, ptr @mwifiex_sdio_dnld_fw, ptr @mwifiex_sdio_card_reset, ptr @mwifiex_sdio_reg_dump, ptr @mwifiex_sdio_device_dump, ptr null, ptr null, ptr null, ptr @mwifiex_deaggr_sdio_pkt, ptr null, ptr null, ptr null, ptr @mwifiex_sdio_up_dev }, [40 x i8] zeroinitializer }, align 32
@mwifiex_sdio_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.14, i32 573, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"add card failed\0A\00", [47 x i8] zeroinitializer }, align 32
@mwifiex_sdio_probe._entry_ptr.23 = internal global ptr @mwifiex_sdio_probe._entry.21, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vzalloc devdump data failure!\0A\00", [33 x i8] zeroinitializer }, align 32
@generic_mem_type_map = internal global { [1 x %struct.memory_type_mapping], [44 x i8] } { [1 x %struct.memory_type_mapping] [%struct.memory_type_mapping { [8 x i8] c"DUMP\00\00\00\00", ptr null, i32 0, i8 -35 }], [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"== mwifiex firmware dump start ==\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDIO read err\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Start %s output, please wait...\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dump %s done size=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"== mwifiex firmware dump end ==\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware dump failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"event: wakeup device...\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SDIO Write ERR\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"The ctrl reg was changed, re-try again\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SDIO write err\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Fail to pull ctrl_data\0A\00", [40 x i8] zeroinitializer }, align 32
@mem_type_mapping_tbl = internal global { [15 x %struct.memory_type_mapping], [84 x i8] } { [15 x %struct.memory_type_mapping] [%struct.memory_type_mapping { [8 x i8] c"ITCM\00\00\00\00", ptr null, i32 0, i8 -16 }, %struct.memory_type_mapping { [8 x i8] c"DTCM\00\00\00\00", ptr null, i32 0, i8 -15 }, %struct.memory_type_mapping { [8 x i8] c"SQRAM\00\00\00", ptr null, i32 0, i8 -14 }, %struct.memory_type_mapping { [8 x i8] c"APU\00\00\00\00\00", ptr null, i32 0, i8 -13 }, %struct.memory_type_mapping { [8 x i8] c"CIU\00\00\00\00\00", ptr null, i32 0, i8 -12 }, %struct.memory_type_mapping { [8 x i8] c"ICU\00\00\00\00\00", ptr null, i32 0, i8 -11 }, %struct.memory_type_mapping { [8 x i8] c"MAC\00\00\00\00\00", ptr null, i32 0, i8 -10 }, %struct.memory_type_mapping { [8 x i8] c"EXT7\00\00\00\00", ptr null, i32 0, i8 -9 }, %struct.memory_type_mapping { [8 x i8] c"EXT8\00\00\00\00", ptr null, i32 0, i8 -8 }, %struct.memory_type_mapping { [8 x i8] c"EXT9\00\00\00\00", ptr null, i32 0, i8 -7 }, %struct.memory_type_mapping { [8 x i8] c"EXT10\00\00\00", ptr null, i32 0, i8 -6 }, %struct.memory_type_mapping { [8 x i8] c"EXT11\00\00\00", ptr null, i32 0, i8 -5 }, %struct.memory_type_mapping { [8 x i8] c"EXT12\00\00\00", ptr null, i32 0, i8 -4 }, %struct.memory_type_mapping { [8 x i8] c"EXT13\00\00\00", ptr null, i32 0, i8 -3 }, %struct.memory_type_mapping { [8 x i8] c"EXTLAST\00", ptr null, i32 0, i8 -2 }], [84 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SDIO read memory length err\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware dump Finished!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s_SIZE=0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Vmalloc %s failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Allocated buf not enough\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s done: size=0x%tx\0A\00", [43 x i8] zeroinitializer }, align 32
@mwifiex_sdio_card_reset_work.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.14, ptr @.str.45, i8 2, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mwifiex_sdio_card_reset_work\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SDIO HW reset asynchronous\0A\00", [36 x i8] zeroinitializer }, align 32
@mwifiex_sdio_card_reset_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.14, i32 2653, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reinit failed: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mwifiex_sdio_card_reset_work._entry_ptr = internal global ptr @mwifiex_sdio_card_reset_work._entry, section ".printk_index", align 4
@mwifiex_sdio_card_reset_work._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.44, ptr @.str.14, i32 2656, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SDIO HW reset failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mwifiex_sdio_card_reset_work._entry_ptr.49 = internal global ptr @mwifiex_sdio_card_reset_work._entry.47, section ".printk_index", align 4
@mwifiex_sdio_of_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,sd8897\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,sd8997\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mwifiex_sdio_probe_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.14, i32 501, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"required compatible string missing\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mwifiex_sdio_probe_of\00", [42 x i8] zeroinitializer }, align 32
@mwifiex_sdio_probe_of._entry_ptr = internal global ptr @mwifiex_sdio_probe_of._entry, section ".printk_index", align 4
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"info: SDIO FUNC1 IO port: %#x\0A\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"firmware image not found! Terminating download\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"info: downloading FW image (%d bytes)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"FW download with helper:\09poll status timeout @ %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"dev BASE0 register read failed:\09base0=%#04X(%d). Terminating dnld\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"dev BASE1 register read failed:\09base1=%#04X(%d). Terminating dnld\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"FW dnld failed @ %d, invalid length %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"FW dnld failed @ %d, over max retry\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"CRC indicated by the helper:\09len = 0x%04X, txlen = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"FW download, write iomem (%d) failed @ %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"write CFG reg failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"info: FW download over, size %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"poll card status failed, tries = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: not allowed while suspended\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.mwifiex_write_data_sync = private unnamed_addr constant [24 x i8] c"mwifiex_write_data_sync\00", align 1
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot set SDIO block size\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"claim irq failed: ret=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enable host interrupt failed\0A\00", [34 x i8] zeroinitializer }, align 32
@mwifiex_sdio_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.14, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013mwifiex_sdio: int: func=%p card=%p adapter=%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mwifiex_sdio_interrupt\00", [41 x i8] zeroinitializer }, align 32
@mwifiex_sdio_interrupt._entry_ptr = internal global ptr @mwifiex_sdio_interrupt._entry, section ".printk_index", align 4
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read mp_regs failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"int: sdio_ireg = %#x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"info: rx_len = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: failed to card_to_host\00", [37 x i8] zeroinitializer }, align 32
@__func__.mwifiex_process_int_status = private unnamed_addr constant [27 x i8] c"mwifiex_process_int_status\00", align 1
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:Received wrong packet on cmd port\00", [59 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"int: DNLD: wr_bitmap=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"info:  <--- Tx DONE Interrupt --->\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"info: cmd_sent=%d data_sent=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"int: UPLD: rd_bitmap=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"info: no more rd_port available\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"info: RX: port=%d rx_len=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid rx_len=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"card_to_host_mpa failed: int status=%#x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read CFG reg failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"info: CFG reg val = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"info: write success\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"info: CFG reg val =%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: buffer is NULL\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.mwifiex_sdio_card_to_host = private unnamed_addr constant [26 x i8] c"mwifiex_sdio_card_to_host\00", align 1
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: read iomem failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: invalid packet, nb=%d npayload=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"info: --- Rx: Aggr Data packet ---\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"info: --- Rx: Data packet ---\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"info: --- Rx: Cmd Response ---\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"info: --- Rx: Event ---\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unknown upload type %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data: mp_rd_bitmap=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"data: port=%d mp_rd_bitmap=0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"data: port=%d mp_rd_bitmap=0x%08x -> 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"info: %s: no aggregation for cmd\09response\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.mwifiex_sdio_card_to_host_mp_aggr = private unnamed_addr constant [34 x i8] c"mwifiex_sdio_card_to_host_mp_aggr\00", align 1
@.str.100 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"info: %s: rx aggregation disabled\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"info: %s: not last packet\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"info: %s: last packet\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"info: current packet aggregation\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"info: %s: aggregated packet\09limit reached\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"info: do_rx_aggr: num of packets: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"skb allocation failure\09drop pkt len=%d type=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"drop wrong aggr pkt:\09sdio_single_port_rx_aggr=%d\09type=%d len=%d max_len=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"info: RX: port: %d, rx_len: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"single skb allocated fail,\09drop pkt port=%d len=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drop wrong pkt type %d\09current SDIO RX Aggr not enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: no wr_port available\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.mwifiex_sdio_host_to_card = private unnamed_addr constant [26 x i8] c"mwifiex_sdio_host_to_card\00", align 1
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: payload=%p, nb=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data: mp_wr_bitmap=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"invalid data port=%d cur port=%d mp_wr_bitmap=0x%08x -> 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"data: port=%d mp_wr_bitmap=0x%08x -> 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"info: %s: tx aggregation disabled\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.mwifiex_host_to_card_mp_aggr = private unnamed_addr constant [29 x i8] c"mwifiex_host_to_card_mp_aggr\00", align 1
@.str.117 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"info: %s: more packets in queue.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"info: %s: Last packet in Tx Queue.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"data: %s: precopy current buffer\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"data: %s: send aggr buffer: %d %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"data: %s: send current buffer %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"data: %s: postcopy current buffer\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"host_to_card, write iomem\09(%d) failed: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmd: wakeup device completed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cmd: mp_end_port %d, data port mask 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.126 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SDIO register dump start\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SDIO Func%d (%#x-%#x): \00", [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SDIO Func%d: \00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(%#x) \00", [25 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SDIO register dump end\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: error in blk_size,\09blk_num=%d, blk_size=%d, total_pkt_len=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.mwifiex_deaggr_sdio_pkt = private unnamed_addr constant [24 x i8] c"mwifiex_deaggr_sdio_pkt\00", align 1
@.str.135 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: error in pkt_len,\09pkt_len=%d, blk_size=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"info: SDIO func num=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@mwifiex_sdio_suspend.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.137, ptr @.str.14, ptr @.str.138, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mwifiex_sdio_suspend\00", [43 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cmd: %s: suspend: PM flag = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"mwifiex_sdio: cmd: %s: suspend: PM flag = 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@mwifiex_sdio_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.137, ptr @.str.14, i32 855, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: cannot remain alive while host is suspended\0A\00", [47 x i8] zeroinitializer }, align 32
@mwifiex_sdio_suspend._entry_ptr = internal global ptr @mwifiex_sdio_suspend._entry, section ".printk_index", align 4
@mwifiex_sdio_suspend._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.137, ptr @.str.14, i32 861, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"suspend: invalid card\0A\00", [41 x i8] zeroinitializer }, align 32
@mwifiex_sdio_suspend._entry_ptr.143 = internal global ptr @mwifiex_sdio_suspend._entry.141, section ".printk_index", align 4
@mwifiex_sdio_suspend._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.137, ptr @.str.14, i32 870, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adapter is not valid\0A\00", [42 x i8] zeroinitializer }, align 32
@mwifiex_sdio_suspend._entry_ptr.146 = internal global ptr @mwifiex_sdio_suspend._entry.144, section ".printk_index", align 4
@.str.147 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cmd: failed to suspend\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cmd: suspend with MMC_PM_KEEP_POWER\0A\00", [59 x i8] zeroinitializer }, align 32
@mwifiex_sdio_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.14, i32 605, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"resume: invalid card or adapter\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mwifiex_sdio_resume\00", [44 x i8] zeroinitializer }, align 32
@mwifiex_sdio_resume._entry_ptr = internal global ptr @mwifiex_sdio_resume._entry, section ".printk_index", align 4
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device already resumed\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 10]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 7, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.156 = private unnamed_addr constant [13 x i8] c"mwifiex_sdio\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 940, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 3150, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"mwifiex_ids\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 911, i32 36 }
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c"mwifiex_sdio_pm_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 935, i32 32 }
@___asan_gen_.174 = private unnamed_addr constant [20 x i8] c"mwifiex_sdio_sd8786\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 327, i32 41 }
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c"mwifiex_sdio_sd8787\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 342, i32 41 }
@___asan_gen_.180 = private unnamed_addr constant [20 x i8] c"mwifiex_sdio_sd8797\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 357, i32 41 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c"mwifiex_sdio_sd8897\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 372, i32 41 }
@___asan_gen_.186 = private unnamed_addr constant [20 x i8] c"mwifiex_sdio_sd8887\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 419, i32 41 }
@___asan_gen_.189 = private unnamed_addr constant [20 x i8] c"mwifiex_sdio_sd8801\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 450, i32 41 }
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c"mwifiex_sdio_sd8977\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 387, i32 41 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c"mwifiex_sdio_sd8987\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 434, i32 41 }
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c"mwifiex_sdio_sd8997\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 403, i32 41 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 328, i32 14 }
@___asan_gen_.204 = private unnamed_addr constant [19 x i8] c"mwifiex_reg_sd87xx\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 38, i32 43 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 343, i32 14 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 358, i32 14 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 373, i32 14 }
@___asan_gen_.216 = private unnamed_addr constant [19 x i8] c"mwifiex_reg_sd8897\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 70, i32 43 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 420, i32 14 }
@___asan_gen_.222 = private unnamed_addr constant [19 x i8] c"mwifiex_reg_sd8887\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 227, i32 43 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 451, i32 14 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 388, i32 14 }
@___asan_gen_.231 = private unnamed_addr constant [19 x i8] c"mwifiex_reg_sd8977\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 121, i32 43 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 435, i32 14 }
@___asan_gen_.237 = private unnamed_addr constant [19 x i8] c"mwifiex_reg_sd8987\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 275, i32 43 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 404, i32 14 }
@___asan_gen_.243 = private unnamed_addr constant [19 x i8] c"mwifiex_reg_sd8997\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 174, i32 43 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 522, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 551, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 559, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant [9 x i8] c"sdio_ops\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 3118, i32 30 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 573, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 87, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2952, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [21 x i8] c"generic_mem_type_map\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 465, i32 35 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2854, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2866, i32 5 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2892, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2926, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2932, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2936, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 960, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2673, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2688, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2693, i32 5 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2700, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [21 x i8] c"mem_type_mapping_tbl\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 469, i32 35 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2744, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2769, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2780, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2785, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2814, i32 6 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2821, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2647, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2653, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2656, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant [28 x i8] c"mwifiex_sdio_of_match_table\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 487, i32 34 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 501, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1065, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1411, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1416, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1434, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1448, i32 5 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1457, i32 5 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1474, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1486, i32 5 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1492, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1517, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1521, i32 5 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1531, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1231, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 691, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2453, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1331, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1340, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1301, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1266, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1279, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1976, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1987, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1995, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2013, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2018, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2036, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2048, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2055, i32 5 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2063, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2073, i32 5 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2085, i32 5 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2098, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2100, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2107, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2113, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1361, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1369, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1377, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1617, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1632, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1644, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1667, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1683, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1128, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1143, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1159, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1716, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1725, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1738, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1756, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1772, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1779, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1789, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1833, i32 5 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1855, i32 5 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1870, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1875, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1893, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2321, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2332, i32 4 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1179, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1198, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1205, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2149, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2159, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2191, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2210, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2222, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2266, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2274, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1098, i32 4 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 973, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 2624, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 3014, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 3054, i32 24 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 3057, i32 24 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 3066, i32 25 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 3068, i32 25 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 3080, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 3086, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1565, i32 4 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 1574, i32 4 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 817, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 851, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 854, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 861, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 870, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 881, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 888, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 605, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.679 = private constant [47 x i8] c"../drivers/net/wireless/marvell/mwifiex/sdio.c\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 612, i32 3 }
@llvm.compiler.used = appending global [202 x ptr] [ptr @__UNIQUE_ID_author496, ptr @__UNIQUE_ID_description497, ptr @__UNIQUE_ID_file499, ptr @__UNIQUE_ID_firmware501, ptr @__UNIQUE_ID_firmware502, ptr @__UNIQUE_ID_firmware503, ptr @__UNIQUE_ID_firmware504, ptr @__UNIQUE_ID_firmware505, ptr @__UNIQUE_ID_firmware506, ptr @__UNIQUE_ID_firmware507, ptr @__UNIQUE_ID_firmware508, ptr @__UNIQUE_ID_license500, ptr @__UNIQUE_ID_version498, ptr @__exitcall_mwifiex_sdio_exit, ptr @__initcall__kmod_mwifiex_sdio__495_3146_mwifiex_sdio_init6, ptr @__modver_attr, ptr @mwifiex_sdio_card_reset_work._entry, ptr @mwifiex_sdio_card_reset_work._entry.47, ptr @mwifiex_sdio_card_reset_work._entry_ptr, ptr @mwifiex_sdio_card_reset_work._entry_ptr.49, ptr @mwifiex_sdio_exit, ptr @mwifiex_sdio_interrupt._entry, ptr @mwifiex_sdio_interrupt._entry_ptr, ptr @mwifiex_sdio_probe._entry, ptr @mwifiex_sdio_probe._entry.21, ptr @mwifiex_sdio_probe._entry_ptr, ptr @mwifiex_sdio_probe._entry_ptr.23, ptr @mwifiex_sdio_probe_of._entry, ptr @mwifiex_sdio_probe_of._entry_ptr, ptr @mwifiex_sdio_resume._entry, ptr @mwifiex_sdio_resume._entry_ptr, ptr @mwifiex_sdio_suspend._entry, ptr @mwifiex_sdio_suspend._entry.141, ptr @mwifiex_sdio_suspend._entry.144, ptr @mwifiex_sdio_suspend._entry_ptr, ptr @mwifiex_sdio_suspend._entry_ptr.143, ptr @mwifiex_sdio_suspend._entry_ptr.146, ptr @mwifiex_sdio, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mwifiex_ids, ptr @mwifiex_sdio_pm_ops, ptr @mwifiex_sdio_sd8786, ptr @mwifiex_sdio_sd8787, ptr @mwifiex_sdio_sd8797, ptr @mwifiex_sdio_sd8897, ptr @mwifiex_sdio_sd8887, ptr @mwifiex_sdio_sd8801, ptr @mwifiex_sdio_sd8977, ptr @mwifiex_sdio_sd8987, ptr @mwifiex_sdio_sd8997, ptr @.str.3, ptr @mwifiex_reg_sd87xx, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mwifiex_reg_sd8897, ptr @.str.8, ptr @mwifiex_reg_sd8887, ptr @.str.9, ptr @.str.10, ptr @mwifiex_reg_sd8977, ptr @.str.11, ptr @mwifiex_reg_sd8987, ptr @.str.12, ptr @mwifiex_reg_sd8997, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @mwifiex_sdio_probe.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @sdio_ops, ptr @.str.22, ptr @init_completion.__key, ptr @.str.24, ptr @.str.25, ptr @generic_mem_type_map, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @mem_type_mapping_tbl, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @mwifiex_sdio_of_match_table, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151], section "llvm.metadata"
@0 = internal global [175 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_ids to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_sd8786 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_sd8787 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_sd8797 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_sd8897 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_sd8887 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_sd8801 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_sd8977 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_sd8987 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_sd8997 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_reg_sd87xx to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_reg_sd8897 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_reg_sd8887 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_reg_sd8977 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_reg_sd8987 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_reg_sd8997 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_mem_type_map to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_type_mapping_tbl to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_card_reset_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_card_reset_work._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_of_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_probe_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_suspend._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_suspend._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_sdio_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @mwifiex_sdio) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_sdio_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sdio_unregister_driver(ptr noundef nonnull @mwifiex_sdio) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_probe(ptr noundef %func, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_sdio_probe.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_sdio_probe, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !386

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vendor = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 5
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 2
  %conv = zext i16 %1 to i32
  %device = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 6
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 4
  %conv3 = zext i16 %3 to i32
  %class = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 4
  %4 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %class, align 8
  %conv4 = zext i8 %5 to i32
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_sdio_probe.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %7) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 232, i32 noundef 3520) #13
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %fw_done = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %fw_done to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fw_done, align 4
  %wait.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #13
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %func, ptr %call.i, align 4
  %10 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %func, align 8
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks, align 8
  %or = or i32 %13, 2
  store i32 %or, ptr %quirks, align 8
  %driver_data = getelementptr inbounds %struct.sdio_device_id, ptr %id, i32 0, i32 3
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %if.end8.if.end49_crit_edge, label %if.then12

if.end8.if.end49_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %16 = inttoptr i32 %15 to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %firmware14 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %firmware14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %firmware14, align 4
  %reg = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg, align 4
  %reg15 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %reg15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %reg15, align 4
  %max_ports = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %max_ports to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %max_ports, align 4
  %max_ports16 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %max_ports16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %max_ports16, align 4
  %mp_agg_pkt_limit = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %16, i32 0, i32 3
  %26 = ptrtoint ptr %mp_agg_pkt_limit to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mp_agg_pkt_limit, align 1
  %mp_agg_pkt_limit17 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %mp_agg_pkt_limit17 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %mp_agg_pkt_limit17, align 1
  %supports_sdio_new_mode = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %16, i32 0, i32 7
  %29 = ptrtoint ptr %supports_sdio_new_mode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %supports_sdio_new_mode, align 4, !range !387
  %supports_sdio_new_mode19 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 17
  %31 = ptrtoint ptr %supports_sdio_new_mode19 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %supports_sdio_new_mode19, align 4
  %has_control_mask = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %16, i32 0, i32 8
  %32 = ptrtoint ptr %has_control_mask to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_control_mask, align 1, !range !387
  %has_control_mask22 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 18
  %34 = ptrtoint ptr %has_control_mask22 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %has_control_mask22, align 1
  %tx_buf_size = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %16, i32 0, i32 4
  %35 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tx_buf_size, align 2
  %tx_buf_size24 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 7
  %37 = ptrtoint ptr %tx_buf_size24 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %tx_buf_size24, align 2
  %mp_tx_agg_buf_size = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %16, i32 0, i32 5
  %38 = ptrtoint ptr %mp_tx_agg_buf_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mp_tx_agg_buf_size, align 4
  %mp_tx_agg_buf_size25 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 8
  %40 = ptrtoint ptr %mp_tx_agg_buf_size25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %mp_tx_agg_buf_size25, align 4
  %mp_rx_agg_buf_size = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %16, i32 0, i32 6
  %41 = ptrtoint ptr %mp_rx_agg_buf_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mp_rx_agg_buf_size, align 4
  %mp_rx_agg_buf_size26 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 9
  %43 = ptrtoint ptr %mp_rx_agg_buf_size26 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %mp_rx_agg_buf_size26, align 4
  %can_dump_fw = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %16, i32 0, i32 9
  %44 = ptrtoint ptr %can_dump_fw to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %can_dump_fw, align 2, !range !387
  %can_dump_fw28 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 19
  %46 = ptrtoint ptr %can_dump_fw28 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %can_dump_fw28, align 2
  %fw_dump_enh = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %16, i32 0, i32 10
  %47 = ptrtoint ptr %fw_dump_enh to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %fw_dump_enh, align 1, !range !387
  %fw_dump_enh31 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 20
  %49 = ptrtoint ptr %fw_dump_enh31 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %fw_dump_enh31, align 1
  %can_auto_tdls = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %16, i32 0, i32 11
  %50 = ptrtoint ptr %can_auto_tdls to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %can_auto_tdls, align 4, !range !387
  %can_auto_tdls34 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 21
  %52 = ptrtoint ptr %can_auto_tdls34 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %can_auto_tdls34, align 4
  %can_ext_scan = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %16, i32 0, i32 12
  %53 = ptrtoint ptr %can_ext_scan to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %can_ext_scan, align 1, !range !387
  %can_ext_scan37 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 22
  %55 = ptrtoint ptr %can_ext_scan37 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %can_ext_scan37, align 1
  %work = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 25
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #13
  %56 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 25, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @mwifiex_sdio_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry44 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 25, i32 1
  %57 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 25, i32 1, i32 1
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %entry44, ptr %prev.i, align 4
  %func46 = getelementptr inbounds %struct.sdio_mmc_card, ptr %call.i, i32 0, i32 25, i32 2
  %59 = ptrtoint ptr %func46 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @mwifiex_sdio_work, ptr %func46, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then12, %if.end8.if.end49_crit_edge
  tail call void @sdio_claim_host(ptr noundef %func) #13
  %call50 = tail call i32 @sdio_enable_func(ptr noundef %func) #13
  tail call void @sdio_release_host(ptr noundef %func) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end57, label %do.end55

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #16
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  %of_node = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 27
  %60 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %of_node, align 8
  %tobool59.not = icmp eq ptr %61, null
  br i1 %tobool59.not, label %if.end57.if.end66_crit_edge, label %if.then60

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then60:                                        ; preds = %if.end57
  %62 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %of_node, align 8
  %call.i135 = tail call ptr @of_match_node(ptr noundef nonnull @mwifiex_sdio_of_match_table, ptr noundef %63) #13
  %tobool.not.i = icmp eq ptr %call.i135, null
  br i1 %tobool.not.i, label %if.then60.err_disable_crit_edge, label %if.then60.if.end66_crit_edge

if.then60.if.end66_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then60.err_disable_crit_edge:                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_disable

if.end66:                                         ; preds = %if.then60.if.end66_crit_edge, %if.end57.if.end66_crit_edge
  %call69 = tail call i32 @mwifiex_add_card(ptr noundef nonnull %call.i, ptr noundef %fw_done, ptr noundef nonnull @sdio_ops, i8 noundef zeroext 0, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end66.cleanup_crit_edge, label %if.end66.err_disable_crit_edge

if.end66.err_disable_crit_edge:                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_disable

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_disable:                                      ; preds = %if.end66.err_disable_crit_edge, %if.then60.err_disable_crit_edge
  %.str.50.sink = phi ptr [ @.str.50, %if.then60.err_disable_crit_edge ], [ @.str.22, %if.end66.err_disable_crit_edge ]
  %ret.0 = phi i32 [ -22, %if.then60.err_disable_crit_edge ], [ %call69, %if.end66.err_disable_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.50.sink) #16
  tail call void @sdio_claim_host(ptr noundef %func) #13
  %call77 = tail call i32 @sdio_disable_func(ptr noundef %func) #13
  tail call void @sdio_release_host(ptr noundef %func) #13
  br label %cleanup

cleanup:                                          ; preds = %err_disable, %if.end66.cleanup_crit_edge, %do.end55, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %do.end55 ], [ %ret.0, %err_disable ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_sdio_remove(ptr nocapture noundef readonly %func) #2 align 64 {
entry:
  %firmware_stat = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %firmware_stat) #13
  %0 = ptrtoint ptr %firmware_stat to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %firmware_stat, align 2, !annotation !388
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_done = getelementptr inbounds %struct.sdio_mmc_card, ptr %2, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %fw_done) #13
  %adapter1 = getelementptr inbounds %struct.sdio_mmc_card, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter1, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %7 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %4, i32 noundef 1073741824, ptr noundef nonnull @.str.136, i32 noundef %8) #13
  %call6 = call fastcc i32 @mwifiex_sdio_read_fw_status(ptr noundef nonnull %4, ptr noundef nonnull %firmware_stat)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end5
  %9 = ptrtoint ptr %firmware_stat to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %firmware_stat, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -292, i16 %10)
  %cmp = icmp eq i16 %10, -292
  br i1 %cmp, label %land.lhs.true9, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true9:                                   ; preds = %land.lhs.true
  %mfg_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 147
  %11 = ptrtoint ptr %mfg_mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mfg_mode, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true9.if.end15_crit_edge

land.lhs.true9.if.end15_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then11:                                        ; preds = %land.lhs.true9
  tail call void @mwifiex_deauthenticate_all(ptr noundef nonnull %4) #13
  %13 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %priv_num, align 4
  %conv.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp29.not.i = icmp eq i8 %14, 0
  br i1 %cmp29.not.i, label %if.then11.mwifiex_get_priv.exit_crit_edge, label %if.then11.for.body.i_crit_edge

if.then11.for.body.i_crit_edge:                   ; preds = %if.then11
  br label %for.body.i

if.then11.mwifiex_get_priv.exit_crit_edge:        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then11.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then11.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %4, i32 0, i32 4, i32 %i.030.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.mwifiex_get_priv.exit_crit_edge

for.body.i.mwifiex_get_priv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %for.body.i.mwifiex_get_priv.exit_crit_edge, %if.then11.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %if.then11.mwifiex_get_priv.exit_crit_edge ], [ %16, %for.body.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %call13 = tail call i32 @mwifiex_disable_auto_ds(ptr noundef %cond.i) #13
  %call14 = tail call i32 @mwifiex_init_shutdown_fw(ptr noundef %cond.i, i32 noundef 2) #13
  br label %if.end15

if.end15:                                         ; preds = %mwifiex_get_priv.exit, %land.lhs.true9.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %call16 = tail call i32 @mwifiex_remove_card(ptr noundef nonnull %4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %firmware_stat) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_sdio_coredump(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %work_flags = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 26
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %work_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %work = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work) #13
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
define internal void @mwifiex_sdio_work(ptr noundef %work) #2 align 64 {
entry:
  %ret.i.i.i.i = alloca i32, align 4
  %ret.i.i.i.i14.i = alloca i32, align 4
  %ret.i15.i = alloca i32, align 4
  %ret.i.i.i.i.i = alloca i32, align 4
  %ret.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %work_flags = getelementptr i8, ptr %work, i32 44
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %work_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %adapter = getelementptr i8, ptr %work, i32 -180
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %card1.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1.i, align 4
  %call.i = tail call noalias ptr @vzalloc(i32 noundef 2097152) #17
  %devdump_data.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 167
  %4 = ptrtoint ptr %devdump_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %devdump_data.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.25) #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  tail call void @mwifiex_drv_info_dump(ptr noundef %1) #13
  %fw_dump_enh.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 20
  %5 = ptrtoint ptr %fw_dump_enh.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fw_dump_enh.i, align 1, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not.i = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card1.i, align 4
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #13
  %9 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ret.i.i, align 4
  %fw_dump_enh.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 20
  %10 = ptrtoint ptr %fw_dump_enh.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fw_dump_enh.i.i, align 1, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %if.then4.i.mwifiex_sdio_generic_fw_dump.exit.i_crit_edge, label %if.end.i.i

if.then4.i.mwifiex_sdio_generic_fw_dump.exit.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_sdio_generic_fw_dump.exit.i

if.end.i.i:                                       ; preds = %if.then4.i
  %12 = load ptr, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  %tobool3.not.i.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @vfree(ptr noundef nonnull %12) #13
  store ptr null, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  store i32 0, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.33) #13
  %13 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card1.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void @sdio_claim_host(ptr noundef %16) #13
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i.i.i.i) #13
  %19 = ptrtoint ptr %ret.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %ret.i.i.i.i.i, align 4
  call void @sdio_writeb(ptr noundef %18, i8 noundef zeroext 2, i32 noundef 0, ptr noundef nonnull %ret.i.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i.i.i.i) #13
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %14, align 4
  call void @sdio_release_host(ptr noundef %21) #13
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %8, align 4
  call void @sdio_claim_host(ptr noundef %23) #13
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.26) #13
  %call8.i.i = call fastcc i32 @mwifiex_sdio_rdwr_firmware(ptr noundef %1, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i.i)
  %cmp.i.i = icmp eq i32 %call8.i.i, 1
  br i1 %cmp.i.i, label %if.end7.i.i.done.i.i_crit_edge, label %if.end10.i.i

if.end7.i.i.done.i.i_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  %reg11.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 4
  %24 = ptrtoint ptr %reg11.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg11.i.i, align 4
  %fw_dump_start.i.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %25, i32 0, i32 39
  %26 = ptrtoint ptr %fw_dump_start.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fw_dump_start.i.i, align 2
  %conv.i.i = zext i8 %27 to i32
  %fw_dump_end.i.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %25, i32 0, i32 40
  %28 = ptrtoint ptr %fw_dump_end.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fw_dump_end.i.i, align 1
  %conv13.i.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp14.not196.i.i = icmp ugt i8 %27, %29
  br i1 %cmp14.not196.i.i, label %if.end10.i.i.for.end36.i.i_crit_edge, label %if.end10.i.i.for.cond16.preheader.i.i_crit_edge

if.end10.i.i.for.cond16.preheader.i.i_crit_edge:  ; preds = %if.end10.i.i
  br label %for.cond16.preheader.i.i

if.end10.i.i.for.end36.i.i_crit_edge:             ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end36.i.i

for.cond16.preheader.i.i:                         ; preds = %for.end.i.i.for.cond16.preheader.i.i_crit_edge, %if.end10.i.i.for.cond16.preheader.i.i_crit_edge
  %reg.0197.i.i = phi i32 [ %inc35.i.i, %for.end.i.i.for.cond16.preheader.i.i_crit_edge ], [ %conv.i.i, %if.end10.i.i.for.cond16.preheader.i.i_crit_edge ]
  br label %for.body19.i.i

for.body19.i.i:                                   ; preds = %if.end24.i.i.for.body19.i.i_crit_edge, %for.cond16.preheader.i.i
  %tries.0195.i.i = phi i32 [ 0, %for.cond16.preheader.i.i ], [ %inc.i.i, %if.end24.i.i.for.body19.i.i_crit_edge ]
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %8, align 4
  %call21.i.i = call zeroext i8 @sdio_readb(ptr noundef %31, i32 noundef %reg.0197.i.i, ptr noundef nonnull %ret.i.i) #13
  %32 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ret.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool22.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool22.not.i.i, label %if.end24.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.27) #13
  br label %done.i.i

if.end24.i.i:                                     ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call21.i.i)
  %cmp26.i.i = icmp ne i8 %call21.i.i, 0
  %inc.i.i = add nuw nsw i32 %tries.0195.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %tries.0195.i.i)
  %cmp17.i.i = icmp ult i32 %tries.0195.i.i, 99
  %or.cond.i.i = select i1 %cmp26.i.i, i1 %cmp17.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end24.i.i.for.body19.i.i_crit_edge, label %for.end.i.i

if.end24.i.i.for.body19.i.i_crit_edge:            ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body19.i.i

for.end.i.i:                                      ; preds = %if.end24.i.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #13
  %inc35.i.i = add nuw nsw i32 %reg.0197.i.i, 1
  %exitcond.i.i = icmp eq i32 %reg.0197.i.i, %conv13.i.i
  br i1 %exitcond.i.i, label %for.end.i.i.for.end36.i.i_crit_edge, label %for.end.i.i.for.cond16.preheader.i.i_crit_edge

for.end.i.i.for.cond16.preheader.i.i_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond16.preheader.i.i

for.end.i.i.for.end36.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end36.i.i

for.end36.i.i:                                    ; preds = %for.end.i.i.for.end36.i.i_crit_edge, %if.end10.i.i.for.end36.i.i_crit_edge
  %call37.i.i = call noalias ptr @vmalloc(i32 noundef 983041) #17
  store ptr %call37.i.i, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  %tobool40.not.i.i = icmp eq ptr %call37.i.i, null
  br i1 %tobool40.not.i.i, label %done.thread.i.i, label %if.end42.i.i

done.thread.i.i:                                  ; preds = %for.end36.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %ret.i.i, align 4
  br label %if.then96.i.i

if.end42.i.i:                                     ; preds = %for.end36.i.i
  store i32 983040, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %call37.i.i, i32 983040
  %35 = load i8, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 3), align 4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef -2147483648, ptr noundef nonnull @.str.29, ptr noundef nonnull @generic_mem_type_map) #13
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %for.end85.i.i.while.cond.i.i_crit_edge, %if.end42.i.i
  %dbg_ptr.0.i.i = phi ptr [ %call37.i.i, %if.end42.i.i ], [ %dbg_ptr.1.lcssa.i.i, %for.end85.i.i.while.cond.i.i_crit_edge ]
  %end_ptr.0.i.i = phi ptr [ %add.ptr.i.i, %if.end42.i.i ], [ %end_ptr.1.lcssa.i.i, %for.end85.i.i.while.cond.i.i_crit_edge ]
  %call47.i.i = call fastcc i32 @mwifiex_sdio_rdwr_firmware(ptr noundef %1, i8 noundef zeroext %35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47.i.i)
  %cmp48.i.i = icmp eq i32 %call47.i.i, 1
  br i1 %cmp48.i.i, label %while.cond.i.i.done.i.i_crit_edge, label %for.cond52.preheader.i.i

while.cond.i.i.done.i.i_crit_edge:                ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.i

for.cond52.preheader.i.i:                         ; preds = %while.cond.i.i
  br i1 %cmp14.not196.i.i, label %for.cond52.preheader.i.i.for.end85.i.i_crit_edge, label %for.cond52.preheader.i.i.for.body55.i.i_crit_edge

for.cond52.preheader.i.i.for.body55.i.i_crit_edge: ; preds = %for.cond52.preheader.i.i
  br label %for.body55.i.i

for.cond52.preheader.i.i.for.end85.i.i_crit_edge: ; preds = %for.cond52.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end85.i.i

for.body55.i.i:                                   ; preds = %for.inc83.i.i.for.body55.i.i_crit_edge, %for.cond52.preheader.i.i.for.body55.i.i_crit_edge
  %end_ptr.1202.i.i = phi ptr [ %end_ptr.3.i.i, %for.inc83.i.i.for.body55.i.i_crit_edge ], [ %end_ptr.0.i.i, %for.cond52.preheader.i.i.for.body55.i.i_crit_edge ]
  %dbg_ptr.1201.i.i = phi ptr [ %dbg_ptr.3.i.i, %for.inc83.i.i.for.body55.i.i_crit_edge ], [ %dbg_ptr.0.i.i, %for.cond52.preheader.i.i.for.body55.i.i_crit_edge ]
  %reg.1200.i.i = phi i32 [ %inc84.i.i, %for.inc83.i.i.for.body55.i.i_crit_edge ], [ %conv.i.i, %for.cond52.preheader.i.i.for.body55.i.i_crit_edge ]
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %8, align 4
  %call57.i.i = call zeroext i8 @sdio_readb(ptr noundef %37, i32 noundef %reg.1200.i.i, ptr noundef nonnull %ret.i.i) #13
  %38 = ptrtoint ptr %dbg_ptr.1201.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call57.i.i, ptr %dbg_ptr.1201.i.i, align 1
  %39 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ret.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool58.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool58.not.i.i, label %if.end60.i.i, label %if.then59.i.i

if.then59.i.i:                                    ; preds = %for.body55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.27) #13
  br label %done.i.i

if.end60.i.i:                                     ; preds = %for.body55.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %dbg_ptr.1201.i.i, i32 1
  %cmp61.not.i.i = icmp ult ptr %incdec.ptr.i.i, %end_ptr.1202.i.i
  br i1 %cmp61.not.i.i, label %if.end60.i.i.for.inc83.i.i_crit_edge, label %if.then63.i.i

if.end60.i.i.for.inc83.i.i_crit_edge:             ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc83.i.i

if.then63.i.i:                                    ; preds = %if.end60.i.i
  %41 = load i32, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  %add65.i.i = add i32 %41, 16385
  %call66.i.i = call noalias ptr @vmalloc(i32 noundef %add65.i.i) #17
  %tobool67.not.i.i = icmp eq ptr %call66.i.i, null
  br i1 %tobool67.not.i.i, label %if.then63.i.i.done.i.i_crit_edge, label %cleanup.thread.i.i

if.then63.i.i.done.i.i_crit_edge:                 ; preds = %if.then63.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.i

cleanup.thread.i.i:                               ; preds = %if.then63.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = load ptr, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  %43 = load i32, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  %44 = call ptr @memcpy(ptr %call66.i.i, ptr %42, i32 %43)
  call void @vfree(ptr noundef %42) #13
  store ptr %call66.i.i, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  %45 = load i32, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  %add.ptr76.i.i = getelementptr i8, ptr %call66.i.i, i32 %45
  %add78.i.i = add i32 %45, 16384
  store i32 %add78.i.i, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  %add.ptr81.i.i = getelementptr i8, ptr %call66.i.i, i32 %add78.i.i
  br label %for.inc83.i.i

for.inc83.i.i:                                    ; preds = %cleanup.thread.i.i, %if.end60.i.i.for.inc83.i.i_crit_edge
  %dbg_ptr.3.i.i = phi ptr [ %incdec.ptr.i.i, %if.end60.i.i.for.inc83.i.i_crit_edge ], [ %add.ptr76.i.i, %cleanup.thread.i.i ]
  %end_ptr.3.i.i = phi ptr [ %end_ptr.1202.i.i, %if.end60.i.i.for.inc83.i.i_crit_edge ], [ %add.ptr81.i.i, %cleanup.thread.i.i ]
  %inc84.i.i = add nuw nsw i32 %reg.1200.i.i, 1
  %exitcond205.i.i = icmp eq i32 %reg.1200.i.i, %conv13.i.i
  br i1 %exitcond205.i.i, label %for.inc83.i.i.for.end85.i.i_crit_edge, label %for.inc83.i.i.for.body55.i.i_crit_edge

for.inc83.i.i.for.body55.i.i_crit_edge:           ; preds = %for.inc83.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body55.i.i

for.inc83.i.i.for.end85.i.i_crit_edge:            ; preds = %for.inc83.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end85.i.i

for.end85.i.i:                                    ; preds = %for.inc83.i.i.for.end85.i.i_crit_edge, %for.cond52.preheader.i.i.for.end85.i.i_crit_edge
  %dbg_ptr.1.lcssa.i.i = phi ptr [ %dbg_ptr.0.i.i, %for.cond52.preheader.i.i.for.end85.i.i_crit_edge ], [ %dbg_ptr.3.i.i, %for.inc83.i.i.for.end85.i.i_crit_edge ]
  %end_ptr.1.lcssa.i.i = phi ptr [ %end_ptr.0.i.i, %for.cond52.preheader.i.i.for.end85.i.i_crit_edge ], [ %end_ptr.3.i.i, %for.inc83.i.i.for.end85.i.i_crit_edge ]
  %cmp86.i.i = icmp eq i32 %call47.i.i, 2
  br i1 %cmp86.i.i, label %if.then88.i.i, label %for.end85.i.i.while.cond.i.i_crit_edge

for.end85.i.i.while.cond.i.i_crit_edge:           ; preds = %for.end85.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i

if.then88.i.i:                                    ; preds = %for.end85.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %46 = load ptr, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %dbg_ptr.1.lcssa.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  store i32 %sub.ptr.sub.i.i, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef -2147483648, ptr noundef nonnull @.str.30, ptr noundef nonnull @generic_mem_type_map, i32 noundef %sub.ptr.sub.i.i) #13
  %47 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %ret.i.i, align 4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.31) #13
  br label %done.i.i

done.i.i:                                         ; preds = %if.then88.i.i, %if.then63.i.i.done.i.i_crit_edge, %if.then59.i.i, %while.cond.i.i.done.i.i_crit_edge, %if.then23.i.i, %if.end7.i.i.done.i.i_crit_edge
  %48 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr.i.i = load i32, ptr %ret.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool95.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool95.not.i.i, label %done.i.i.if.end104.i.i_crit_edge, label %done.i.i.if.then96.i.i_crit_edge

done.i.i.if.then96.i.i_crit_edge:                 ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then96.i.i

done.i.i.if.end104.i.i_crit_edge:                 ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104.i.i

if.then96.i.i:                                    ; preds = %done.i.i.if.then96.i.i_crit_edge, %done.thread.i.i
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.32) #13
  %49 = load ptr, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  %tobool98.not.i.i = icmp eq ptr %49, null
  br i1 %tobool98.not.i.i, label %if.then96.i.i.if.end102.i.i_crit_edge, label %if.then99.i.i

if.then96.i.i.if.end102.i.i_crit_edge:            ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102.i.i

if.then99.i.i:                                    ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @vfree(ptr noundef nonnull %49) #13
  store ptr null, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %if.then99.i.i, %if.then96.i.i.if.end102.i.i_crit_edge
  store i32 0, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %if.end102.i.i, %done.i.i.if.end104.i.i_crit_edge
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %8, align 4
  call void @sdio_release_host(ptr noundef %51) #13
  br label %mwifiex_sdio_generic_fw_dump.exit.i

mwifiex_sdio_generic_fw_dump.exit.i:              ; preds = %if.end104.i.i, %if.then4.i.mwifiex_sdio_generic_fw_dump.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #13
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i15.i) #13
  %52 = ptrtoint ptr %ret.i15.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %ret.i15.i, align 4
  %can_dump_fw.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 19
  %53 = ptrtoint ptr %can_dump_fw.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %can_dump_fw.i.i, align 2, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i17.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i17.i, label %if.else.i.mwifiex_sdio_fw_dump.exit.i_crit_edge, label %if.else.i.for.body.i.i_crit_edge

if.else.i.for.body.i.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body.i.i

if.else.i.mwifiex_sdio_fw_dump.exit.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_sdio_fw_dump.exit.i

for.body.i.i:                                     ; preds = %if.end8.i.i.for.body.i.i_crit_edge, %if.else.i.for.body.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %if.end8.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.i.for.body.i.i_crit_edge ]
  %mem_ptr.i.i = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv.i.i, i32 1
  %55 = ptrtoint ptr %mem_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mem_ptr.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %56, null
  br i1 %tobool4.not.i.i, label %for.body.i.i.if.end8.i.i_crit_edge, label %if.then5.i.i

for.body.i.i.if.end8.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.then5.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @vfree(ptr noundef nonnull %56) #13
  %57 = ptrtoint ptr %mem_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %mem_ptr.i.i, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then5.i.i, %for.body.i.i.if.end8.i.i_crit_edge
  %mem_size.i.i = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv.i.i, i32 2
  %58 = ptrtoint ptr %mem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %mem_size.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 15
  br i1 %exitcond.not.i.i, label %for.end.i18.i, label %if.end8.i.i.for.body.i.i_crit_edge

if.end8.i.i.for.body.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i18.i:                                    ; preds = %if.end8.i.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.33) #13
  %59 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card1.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  tail call void @sdio_claim_host(ptr noundef %62) #13
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i.i.i14.i) #13
  %65 = ptrtoint ptr %ret.i.i.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %ret.i.i.i.i14.i, align 4
  call void @sdio_writeb(ptr noundef %64, i8 noundef zeroext 2, i32 noundef 0, ptr noundef nonnull %ret.i.i.i.i14.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i.i.i14.i) #13
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %60, align 4
  call void @sdio_release_host(ptr noundef %67) #13
  %68 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %8, align 4
  call void @sdio_claim_host(ptr noundef %69) #13
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.26) #13
  %call9.i.i = call fastcc i32 @mwifiex_sdio_rdwr_firmware(ptr noundef %1, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i.i)
  %cmp10.i.i = icmp eq i32 %call9.i.i, 1
  br i1 %cmp10.i.i, label %for.end.i18.i.done.i28.i_crit_edge, label %if.end13.i.i

for.end.i18.i.done.i28.i_crit_edge:               ; preds = %for.end.i18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i28.i

if.end13.i.i:                                     ; preds = %for.end.i18.i
  %reg14.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 4
  %70 = ptrtoint ptr %reg14.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg14.i.i, align 4
  %fw_dump_start.i19.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %71, i32 0, i32 39
  %72 = ptrtoint ptr %fw_dump_start.i19.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %fw_dump_start.i19.i, align 2
  %conv15.i.i = zext i8 %73 to i32
  %74 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %8, align 4
  %call17.i.i = call zeroext i8 @sdio_readb(ptr noundef %75, i32 noundef %conv15.i.i, ptr noundef nonnull %ret.i15.i) #13
  %76 = ptrtoint ptr %ret.i15.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ret.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool18.not.i.i = icmp eq i32 %77, 0
  br i1 %tobool18.not.i.i, label %for.cond21.preheader.i.i, label %if.then19.i.i

for.cond21.preheader.i.i:                         ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call17.i.i)
  %cmp24220.not.i.i = icmp eq i8 %call17.i.i, 0
  br i1 %cmp24220.not.i.i, label %for.cond21.preheader.i.i.for.end111.i.i_crit_edge, label %for.body26.preheader.i.i

for.cond21.preheader.i.i.for.end111.i.i_crit_edge: ; preds = %for.cond21.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end111.i.i

for.body26.preheader.i.i:                         ; preds = %for.cond21.preheader.i.i
  %wide.trip.count.i.i = zext i8 %call17.i.i to i32
  br label %for.body26.i.i

if.then19.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.38) #13
  br label %done.i28.i

for.body26.i.i:                                   ; preds = %for.inc109.i.i.for.body26.i.i_crit_edge, %for.body26.preheader.i.i
  %indvars.iv234.i.i = phi i32 [ 0, %for.body26.preheader.i.i ], [ %indvars.iv.next235.i.i, %for.inc109.i.i.for.body26.i.i_crit_edge ]
  %doneflag.0222.i.i = phi i8 [ 0, %for.body26.preheader.i.i ], [ %117, %for.inc109.i.i.for.body26.i.i_crit_edge ]
  %arrayidx29.i.i = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv234.i.i
  %call30.i.i = call fastcc i32 @mwifiex_sdio_rdwr_firmware(ptr noundef %1, i8 noundef zeroext %doneflag.0222.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30.i.i)
  %cmp31.i.i = icmp eq i32 %call30.i.i, 1
  br i1 %cmp31.i.i, label %for.body26.i.i.done.i28.i_crit_edge, label %if.end34.i.i

for.body26.i.i.done.i28.i_crit_edge:              ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i28.i

if.end34.i.i:                                     ; preds = %for.body26.i.i
  %78 = ptrtoint ptr %reg14.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg14.i.i, align 4
  %fw_dump_start36.i.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %79, i32 0, i32 39
  %80 = ptrtoint ptr %fw_dump_start36.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %fw_dump_start36.i.i, align 2
  %conv37.i.i = zext i8 %81 to i32
  %82 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %8, align 4
  %call44.i.i = call zeroext i8 @sdio_readb(ptr noundef %83, i32 noundef %conv37.i.i, ptr noundef nonnull %ret.i15.i) #13
  %84 = ptrtoint ptr %ret.i15.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ret.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool45.not.i.i = icmp eq i32 %85, 0
  br i1 %tobool45.not.i.i, label %if.end47.i.i, label %if.end34.i.i.if.then46.i.i_crit_edge

if.end34.i.i.if.then46.i.i_crit_edge:             ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46.i.i

if.then46.i.i:                                    ; preds = %if.end47.2.i.i.if.then46.i.i_crit_edge, %if.end47.1.i.i.if.then46.i.i_crit_edge, %if.end47.i.i.if.then46.i.i_crit_edge, %if.end34.i.i.if.then46.i.i_crit_edge
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.27) #13
  br label %done.i28.i

if.end47.i.i:                                     ; preds = %if.end34.i.i
  %inc50.i.i = add nuw nsw i32 %conv37.i.i, 1
  %86 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %8, align 4
  %call44.1.i.i = call zeroext i8 @sdio_readb(ptr noundef %87, i32 noundef %inc50.i.i, ptr noundef nonnull %ret.i15.i) #13
  %88 = ptrtoint ptr %ret.i15.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ret.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool45.not.1.i.i = icmp eq i32 %89, 0
  br i1 %tobool45.not.1.i.i, label %if.end47.1.i.i, label %if.end47.i.i.if.then46.i.i_crit_edge

if.end47.i.i.if.then46.i.i_crit_edge:             ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46.i.i

if.end47.1.i.i:                                   ; preds = %if.end47.i.i
  %inc50.1.i.i = add nuw nsw i32 %conv37.i.i, 2
  %90 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %8, align 4
  %call44.2.i.i = call zeroext i8 @sdio_readb(ptr noundef %91, i32 noundef %inc50.1.i.i, ptr noundef nonnull %ret.i15.i) #13
  %92 = ptrtoint ptr %ret.i15.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ret.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool45.not.2.i.i = icmp eq i32 %93, 0
  br i1 %tobool45.not.2.i.i, label %if.end47.2.i.i, label %if.end47.1.i.i.if.then46.i.i_crit_edge

if.end47.1.i.i.if.then46.i.i_crit_edge:           ; preds = %if.end47.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46.i.i

if.end47.2.i.i:                                   ; preds = %if.end47.1.i.i
  %inc50.2.i.i = add nuw nsw i32 %conv37.i.i, 3
  %94 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %8, align 4
  %call44.3.i.i = call zeroext i8 @sdio_readb(ptr noundef %95, i32 noundef %inc50.2.i.i, ptr noundef nonnull %ret.i15.i) #13
  %96 = ptrtoint ptr %ret.i15.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ret.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool45.not.3.i.i = icmp eq i32 %97, 0
  br i1 %tobool45.not.3.i.i, label %if.end47.3.i.i, label %if.end47.2.i.i.if.then46.i.i_crit_edge

if.end47.2.i.i.if.then46.i.i_crit_edge:           ; preds = %if.end47.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46.i.i

if.end47.3.i.i:                                   ; preds = %if.end47.2.i.i
  %conv48.2.i.i = zext i8 %call44.2.i.i to i32
  %shl.2.i.i = shl nuw nsw i32 %conv48.2.i.i, 16
  %conv48.1.i.i = zext i8 %call44.1.i.i to i32
  %shl.1.i.i = shl nuw nsw i32 %conv48.1.i.i, 8
  %conv48.i.i = zext i8 %call44.i.i to i32
  %or.1.i.i = or i32 %shl.1.i.i, %conv48.i.i
  %or.2.i.i = or i32 %shl.2.i.i, %or.1.i.i
  %conv48.3.i.i = zext i8 %call44.3.i.i to i32
  %shl.3.i.i = shl nuw i32 %conv48.3.i.i, 24
  %or.3.i.i = or i32 %shl.3.i.i, %or.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.3.i.i)
  %cmp54.i.i = icmp eq i32 %or.3.i.i, 0
  br i1 %cmp54.i.i, label %if.then56.i.i, label %if.end63.i.i

if.then56.i.i:                                    ; preds = %if.end47.3.i.i
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef -2147483648, ptr noundef nonnull @.str.39) #13
  %98 = ptrtoint ptr %reg14.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg14.i.i, align 4
  %fw_dump_ctrl.i.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %99, i32 0, i32 38
  %100 = ptrtoint ptr %fw_dump_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %fw_dump_ctrl.i.i, align 1
  %conv58.i.i = zext i8 %101 to i32
  %102 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %card1.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  call void @sdio_claim_host(ptr noundef %105) #13
  %106 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %103, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i.i.i) #13
  %108 = ptrtoint ptr %ret.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -1, ptr %ret.i.i.i.i, align 4
  call void @sdio_writeb(ptr noundef %107, i8 noundef zeroext -2, i32 noundef %conv58.i.i, ptr noundef nonnull %ret.i.i.i.i) #13
  %109 = ptrtoint ptr %ret.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ret.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i.i.i) #13
  %111 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %103, align 4
  call void @sdio_release_host(ptr noundef %112) #13
  %113 = ptrtoint ptr %ret.i15.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %110, ptr %ret.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool60.not.i.i = icmp eq i32 %110, 0
  br i1 %tobool60.not.i.i, label %if.then56.i.i.for.end111.i.i_crit_edge, label %cleanup.thread197.i.i

if.then56.i.i.for.end111.i.i_crit_edge:           ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end111.i.i

cleanup.thread197.i.i:                            ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.36) #13
  br label %mwifiex_sdio_fw_dump.exit.i

if.end63.i.i:                                     ; preds = %if.end47.3.i.i
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef -2147483648, ptr noundef nonnull @.str.40, ptr noundef %arrayidx29.i.i, i32 noundef %or.3.i.i) #13
  %add.i.i = add i32 %or.3.i.i, 1
  %call64.i.i = call noalias ptr @vmalloc(i32 noundef %add.i.i) #17
  %mem_ptr65.i.i = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv234.i.i, i32 1
  %114 = ptrtoint ptr %mem_ptr65.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call64.i.i, ptr %mem_ptr65.i.i, align 4
  %mem_size66.i.i = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv234.i.i, i32 2
  %115 = ptrtoint ptr %mem_size66.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or.3.i.i, ptr %mem_size66.i.i, align 4
  %tobool68.not.i.i = icmp eq ptr %call64.i.i, null
  br i1 %tobool68.not.i.i, label %if.then69.i.i, label %if.end72.i.i

if.then69.i.i:                                    ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.41, ptr noundef %arrayidx29.i.i) #13
  br label %done.i28.i

if.end72.i.i:                                     ; preds = %if.end63.i.i
  %add.ptr.i20.i = getelementptr i8, ptr %call64.i.i, i32 %or.3.i.i
  %done_flag.i.i = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %indvars.iv234.i.i, i32 3
  %116 = ptrtoint ptr %done_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %done_flag.i.i, align 4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef -2147483648, ptr noundef nonnull @.str.29, ptr noundef %arrayidx29.i.i) #13
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.end101.i.i.do.body.i.i_crit_edge, %if.end72.i.i
  %dbg_ptr.0.i21.i = phi ptr [ %call64.i.i, %if.end72.i.i ], [ %dbg_ptr.1.lcssa.i24.i, %for.end101.i.i.do.body.i.i_crit_edge ]
  %call76.i.i = call fastcc i32 @mwifiex_sdio_rdwr_firmware(ptr noundef %1, i8 noundef zeroext %117) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call76.i.i)
  %cmp77.i.i = icmp eq i32 %call76.i.i, 1
  br i1 %cmp77.i.i, label %do.body.i.i.done.i28.i_crit_edge, label %if.end80.i.i

do.body.i.i.done.i28.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i28.i

if.end80.i.i:                                     ; preds = %do.body.i.i
  %118 = ptrtoint ptr %reg14.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg14.i.i, align 4
  %fw_dump_start82.i.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %119, i32 0, i32 39
  %120 = ptrtoint ptr %fw_dump_start82.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %fw_dump_start82.i.i, align 2
  %fw_dump_end.i22.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %119, i32 0, i32 40
  %122 = ptrtoint ptr %fw_dump_end.i22.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %fw_dump_end.i22.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %121, i8 %123)
  %cmp87.not217.i.i = icmp ugt i8 %121, %123
  br i1 %cmp87.not217.i.i, label %if.end80.i.i.for.end101.i.i_crit_edge, label %for.body89.preheader.i.i

if.end80.i.i.for.end101.i.i_crit_edge:            ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end101.i.i

for.body89.preheader.i.i:                         ; preds = %if.end80.i.i
  %conv85.i.i = zext i8 %123 to i32
  %conv83.i.i = zext i8 %121 to i32
  br label %for.body89.i.i

for.body89.i.i:                                   ; preds = %for.inc99.i.i.for.body89.i.i_crit_edge, %for.body89.preheader.i.i
  %dbg_ptr.1219.i.i = phi ptr [ %dbg_ptr.2.i.i, %for.inc99.i.i.for.body89.i.i_crit_edge ], [ %dbg_ptr.0.i21.i, %for.body89.preheader.i.i ]
  %reg.1218.i.i = phi i32 [ %inc100.i.i, %for.inc99.i.i.for.body89.i.i_crit_edge ], [ %conv83.i.i, %for.body89.preheader.i.i ]
  %124 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %8, align 4
  %call91.i.i = call zeroext i8 @sdio_readb(ptr noundef %125, i32 noundef %reg.1218.i.i, ptr noundef nonnull %ret.i15.i) #13
  %126 = ptrtoint ptr %dbg_ptr.1219.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %call91.i.i, ptr %dbg_ptr.1219.i.i, align 1
  %127 = ptrtoint ptr %ret.i15.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ret.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool92.not.i.i = icmp eq i32 %128, 0
  br i1 %tobool92.not.i.i, label %if.end94.i.i, label %if.then93.i.i

if.then93.i.i:                                    ; preds = %for.body89.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.27) #13
  br label %done.i28.i

if.end94.i.i:                                     ; preds = %for.body89.i.i
  %cmp95.i.i = icmp ult ptr %dbg_ptr.1219.i.i, %add.ptr.i20.i
  br i1 %cmp95.i.i, label %if.then97.i.i, label %if.else.i.i

if.then97.i.i:                                    ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i23.i = getelementptr i8, ptr %dbg_ptr.1219.i.i, i32 1
  br label %for.inc99.i.i

if.else.i.i:                                      ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.42) #13
  br label %for.inc99.i.i

for.inc99.i.i:                                    ; preds = %if.else.i.i, %if.then97.i.i
  %dbg_ptr.2.i.i = phi ptr [ %incdec.ptr.i23.i, %if.then97.i.i ], [ %dbg_ptr.1219.i.i, %if.else.i.i ]
  %inc100.i.i = add nuw nsw i32 %reg.1218.i.i, 1
  %exitcond233.i.i = icmp eq i32 %reg.1218.i.i, %conv85.i.i
  br i1 %exitcond233.i.i, label %for.inc99.i.i.for.end101.i.i_crit_edge, label %for.inc99.i.i.for.body89.i.i_crit_edge

for.inc99.i.i.for.body89.i.i_crit_edge:           ; preds = %for.inc99.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body89.i.i

for.inc99.i.i.for.end101.i.i_crit_edge:           ; preds = %for.inc99.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end101.i.i

for.end101.i.i:                                   ; preds = %for.inc99.i.i.for.end101.i.i_crit_edge, %if.end80.i.i.for.end101.i.i_crit_edge
  %dbg_ptr.1.lcssa.i24.i = phi ptr [ %dbg_ptr.0.i21.i, %if.end80.i.i.for.end101.i.i_crit_edge ], [ %dbg_ptr.2.i.i, %for.inc99.i.i.for.end101.i.i_crit_edge ]
  %cmp102.not.i.i = icmp eq i32 %call76.i.i, 2
  br i1 %cmp102.not.i.i, label %for.inc109.i.i, label %for.end101.i.i.do.body.i.i_crit_edge

for.end101.i.i.do.body.i.i_crit_edge:             ; preds = %for.end101.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

for.inc109.i.i:                                   ; preds = %for.end101.i.i
  %129 = ptrtoint ptr %mem_ptr65.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mem_ptr65.i.i, align 4
  %sub.ptr.lhs.cast.i25.i = ptrtoint ptr %dbg_ptr.1.lcssa.i24.i to i32
  %sub.ptr.rhs.cast.i26.i = ptrtoint ptr %130 to i32
  %sub.ptr.sub.i27.i = sub i32 %sub.ptr.lhs.cast.i25.i, %sub.ptr.rhs.cast.i26.i
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef -2147483648, ptr noundef nonnull @.str.43, ptr noundef %arrayidx29.i.i, i32 noundef %sub.ptr.sub.i27.i) #13
  %indvars.iv.next235.i.i = add nuw nsw i32 %indvars.iv234.i.i, 1
  %exitcond236.not.i.i = icmp eq i32 %indvars.iv.next235.i.i, %wide.trip.count.i.i
  br i1 %exitcond236.not.i.i, label %for.inc109.i.i.for.end111.i.i_crit_edge, label %for.inc109.i.i.for.body26.i.i_crit_edge

for.inc109.i.i.for.body26.i.i_crit_edge:          ; preds = %for.inc109.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body26.i.i

for.inc109.i.i.for.end111.i.i_crit_edge:          ; preds = %for.inc109.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end111.i.i

for.end111.i.i:                                   ; preds = %for.inc109.i.i.for.end111.i.i_crit_edge, %if.then56.i.i.for.end111.i.i_crit_edge, %for.cond21.preheader.i.i.for.end111.i.i_crit_edge
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.31) #13
  br label %done.i28.i

done.i28.i:                                       ; preds = %for.end111.i.i, %if.then93.i.i, %do.body.i.i.done.i28.i_crit_edge, %if.then69.i.i, %if.then46.i.i, %for.body26.i.i.done.i28.i_crit_edge, %if.then19.i.i, %for.end.i18.i.done.i28.i_crit_edge
  %131 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %8, align 4
  call void @sdio_release_host(ptr noundef %132) #13
  br label %mwifiex_sdio_fw_dump.exit.i

mwifiex_sdio_fw_dump.exit.i:                      ; preds = %done.i28.i, %cleanup.thread197.i.i, %if.else.i.mwifiex_sdio_fw_dump.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i15.i) #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %mwifiex_sdio_fw_dump.exit.i, %mwifiex_sdio_generic_fw_dump.exit.i
  call void @mwifiex_prepare_fw_dump_info(ptr noundef %1) #13
  call void @mwifiex_upload_device_dump(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.end5.i, %if.then.i, %entry.if.end_crit_edge
  %call2 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %work_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %adapter5 = getelementptr i8, ptr %work, i32 -180
  %133 = ptrtoint ptr %adapter5 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %adapter5, align 4
  call fastcc void @mwifiex_sdio_card_reset_work(ptr noundef %134)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_add_card(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_sdio_card_reset_work(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @mwifiex_shutdown_sw(ptr noundef %adapter) #13
  %work_flags = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 26
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %work_flags) #13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %work_flags) #13
  tail call void @sdio_claim_host(ptr noundef %3) #13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call5 = tail call i32 @mmc_hw_reset(ptr noundef %7) #13
  tail call void @sdio_release_host(ptr noundef %3) #13
  %8 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5, label %do.end20 [
    i32 1, label %do.body
    i32 0, label %sw.bb9
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_sdio_card_reset_work.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_sdio_card_reset_work, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !386

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mwifiex_sdio_card_reset_work.__UNIQUE_ID_ddebug494, ptr noundef %dev, ptr noundef nonnull @.str.45) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %fw_done = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 135
  %9 = ptrtoint ptr %fw_done to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw_done, align 4
  tail call void @complete_all(ptr noundef %10) #13
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %call10 = tail call i32 @mwifiex_reinit_sw(ptr noundef %adapter) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %sw.bb9.sw.epilog_crit_edge, label %do.end15

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end15:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #15
  %dev16 = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.46, i32 noundef %call10) #16
  br label %sw.epilog

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev21 = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.48, i32 noundef %call5) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end20, %do.end15, %sw.bb9.sw.epilog_crit_edge, %do.end
  ret void
}

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
define internal i32 @mwifiex_pm_wakeup_card(ptr noundef %adapter) #2 align 64 {
entry:
  %ret.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 32, ptr noundef nonnull @.str.33) #13
  %card1.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #13
  %6 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ret.i.i, align 4
  call void @sdio_writeb(ptr noundef %5, i8 noundef zeroext 2, i32 noundef 0, ptr noundef nonnull %ret.i.i) #13
  %7 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ret.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %10) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_sdio_rdwr_firmware(ptr noundef %adapter, i8 noundef zeroext %doneflag) unnamed_addr #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #13
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ret, align 4, !annotation !388
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %reg = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg, align 4
  %fw_dump_host_ready = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %6, i32 0, i32 37
  %7 = ptrtoint ptr %fw_dump_host_ready to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_dump_host_ready, align 4
  %fw_dump_ctrl = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %6, i32 0, i32 38
  %9 = ptrtoint ptr %fw_dump_ctrl to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_dump_ctrl, align 1
  %conv = zext i8 %10 to i32
  call void @sdio_writeb(ptr noundef %4, i8 noundef zeroext %8, i32 noundef %conv, ptr noundef nonnull %ret) #13
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %doneflag)
  %tobool17.not = icmp ne i8 %doneflag, 0
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %for.cond.preheader
  %tries.071 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end40.for.body_crit_edge ]
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg, align 4
  %fw_dump_ctrl6 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %16, i32 0, i32 38
  %17 = ptrtoint ptr %fw_dump_ctrl6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fw_dump_ctrl6, align 1
  %conv7 = zext i8 %18 to i32
  %call = call zeroext i8 @sdio_readb(ptr noundef %14, i32 noundef %conv7, ptr noundef nonnull %ret) #13
  %19 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not = icmp eq i32 %20, 0
  br i1 %tobool8.not, label %if.end10, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call)
  %cmp12 = icmp eq i8 %call, -1
  br i1 %cmp12, label %if.end10.for.end_crit_edge, label %if.end15

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_cmp1(i8 %call, i8 %doneflag)
  %cmp20 = icmp eq i8 %call, %doneflag
  %or.cond = select i1 %tobool17.not, i1 %cmp20, i1 false
  br i1 %or.cond, label %if.end15.cleanup_crit_edge, label %if.end23

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg, align 4
  %fw_dump_host_ready26 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %22, i32 0, i32 37
  %23 = ptrtoint ptr %fw_dump_host_ready26 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fw_dump_host_ready26, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %call, i8 %24)
  %cmp28.not = icmp eq i8 %call, %24
  br i1 %cmp28.not, label %if.end23.if.end40_crit_edge, label %if.then30

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then30:                                        ; preds = %if.end23
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 536870912, ptr noundef nonnull @.str.35) #13
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg, align 4
  %fw_dump_host_ready33 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %28, i32 0, i32 37
  %29 = ptrtoint ptr %fw_dump_host_ready33 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fw_dump_host_ready33, align 4
  %fw_dump_ctrl35 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %28, i32 0, i32 38
  %31 = ptrtoint ptr %fw_dump_ctrl35 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fw_dump_ctrl35, align 1
  %conv36 = zext i8 %32 to i32
  call void @sdio_writeb(ptr noundef %26, i8 noundef zeroext %30, i32 noundef %conv36, ptr noundef nonnull %ret) #13
  %33 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool37.not = icmp eq i32 %34, 0
  br i1 %tobool37.not, label %if.then30.if.end40_crit_edge, label %if.then30.cleanup.sink.split_crit_edge

if.then30.cleanup.sink.split_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then30.if.end40_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.end40:                                         ; preds = %if.then30.if.end40_crit_edge, %if.end23.if.end40_crit_edge
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #13
  %inc = add nuw nsw i32 %tries.071, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end40.for.end_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end40.for.end_crit_edge, %if.end10.for.end_crit_edge
  %35 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg, align 4
  %fw_dump_host_ready43 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %36, i32 0, i32 37
  %37 = ptrtoint ptr %fw_dump_host_ready43 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fw_dump_host_ready43, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %call, i8 %38)
  %cmp45 = icmp eq i8 %call, %38
  br i1 %cmp45, label %for.end.cleanup.sink.split_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %if.then30.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.37.sink = phi ptr [ @.str.34, %entry.cleanup.sink.split_crit_edge ], [ @.str.37, %for.end.cleanup.sink.split_crit_edge ], [ @.str.27, %for.body.cleanup.sink.split_crit_edge ], [ @.str.36, %if.then30.cleanup.sink.split_crit_edge ]
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull %.str.37.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ 1, %cleanup.sink.split ], [ 2, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_write_reg(ptr nocapture noundef readonly %adapter, i32 noundef %reg, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #13
  %6 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ret.i, align 4
  call void @sdio_writeb(ptr noundef %5, i8 noundef zeroext %data, i32 noundef %reg, ptr noundef nonnull %ret.i) #13
  %7 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %10) #13
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_shutdown_sw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_hw_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_reinit_sw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_init_sdio(ptr noundef %adapter) #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %reg2 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %5, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %driver_data.i, align 4
  %7 = load ptr, ptr %reg2, align 4
  %host_int_status_reg = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %host_int_status_reg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %host_int_status_reg, align 1
  %conv = zext i8 %9 to i32
  %10 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #13
  %11 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %ret.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 4
  tail call void @sdio_claim_host(ptr noundef %13) #13
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %15, i32 noundef %conv, ptr noundef nonnull %ret.i) #13
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %10, align 4
  call void @sdio_release_host(ptr noundef %17) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #13
  call fastcc void @mwifiex_init_sdio_ioport(ptr noundef %adapter)
  %mp_rd_bitmap = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %mp_rd_bitmap to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %mp_rd_bitmap, align 4
  %mp_wr_bitmap = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %mp_wr_bitmap to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %mp_wr_bitmap, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 4
  %curr_rd_port = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 14
  %22 = ptrtoint ptr %curr_rd_port to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %curr_rd_port, align 4
  %start_wr_port = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %start_wr_port to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %start_wr_port, align 1
  %curr_wr_port = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %curr_wr_port to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %curr_wr_port, align 1
  %data_port_mask = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 12
  %26 = ptrtoint ptr %data_port_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_port_mask, align 4
  %mp_data_port_mask = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 13
  %28 = ptrtoint ptr %mp_data_port_mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %mp_data_port_mask, align 4
  %buf_len = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 1
  %29 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %buf_len, align 4
  %pkt_cnt = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 2
  %30 = ptrtoint ptr %pkt_cnt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %pkt_cnt, align 4
  %start_port = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 4
  %31 = ptrtoint ptr %start_port to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %start_port, align 4
  %enabled = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 5
  %32 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %enabled, align 2
  %mp_agg_pkt_limit = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %mp_agg_pkt_limit to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mp_agg_pkt_limit, align 1
  %conv8 = zext i8 %34 to i32
  %pkt_aggr_limit = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 7
  %35 = ptrtoint ptr %pkt_aggr_limit to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv8, ptr %pkt_aggr_limit, align 4
  %buf_len10 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 24, i32 1
  %36 = ptrtoint ptr %buf_len10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %buf_len10, align 4
  %pkt_cnt12 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 24, i32 2
  %37 = ptrtoint ptr %pkt_cnt12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %pkt_cnt12, align 4
  %start_port14 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 24, i32 4
  %38 = ptrtoint ptr %start_port14 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %start_port14, align 4
  %enabled16 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 24, i32 7
  %39 = ptrtoint ptr %enabled16 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %enabled16, align 4
  %pkt_aggr_limit20 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 24, i32 9
  %40 = ptrtoint ptr %pkt_aggr_limit20 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv8, ptr %pkt_aggr_limit20, align 4
  %max_mp_regs = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 16
  %41 = ptrtoint ptr %max_mp_regs to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %max_mp_regs, align 1
  %conv21 = zext i8 %42 to i32
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv21, i32 noundef 3520) #17
  %mp_regs = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 16
  %43 = ptrtoint ptr %mp_regs to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9.i.i, ptr %mp_regs, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end7.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %44 = ptrtoint ptr %mp_agg_pkt_limit to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mp_agg_pkt_limit, align 1
  %conv25 = zext i8 %45 to i32
  %46 = shl nuw nsw i32 %conv25, 2
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #17
  %skb_arr = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 24, i32 5
  %47 = ptrtoint ptr %skb_arr to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i.i, ptr %skb_arr, align 4
  %tobool30.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool30.not, label %if.then31, label %if.end7.i.i151

if.then31:                                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %mp_regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mp_regs, align 4
  call void @kfree(ptr noundef %49) #13
  br label %cleanup

if.end7.i.i151:                                   ; preds = %if.end7.i.i
  %50 = ptrtoint ptr %mp_agg_pkt_limit to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mp_agg_pkt_limit, align 1
  %conv35 = zext i8 %51 to i32
  %52 = shl nuw nsw i32 %conv35, 2
  %call8.i.i150 = call noalias align 128 ptr @__kmalloc(i32 noundef %52, i32 noundef 3520) #17
  %len_arr = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 24, i32 6
  %53 = ptrtoint ptr %len_arr to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call8.i.i150, ptr %len_arr, align 4
  %tobool40.not = icmp eq ptr %call8.i.i150, null
  br i1 %tobool40.not, label %if.then41, label %if.end45

if.then41:                                        ; preds = %if.end7.i.i151
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %mp_regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mp_regs, align 4
  call void @kfree(ptr noundef %55) #13
  %56 = ptrtoint ptr %skb_arr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb_arr, align 4
  call void @kfree(ptr noundef %57) #13
  br label %cleanup

if.end45:                                         ; preds = %if.end7.i.i151
  %mp_tx_agg_buf_size = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 8
  %58 = ptrtoint ptr %mp_tx_agg_buf_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mp_tx_agg_buf_size, align 4
  %mp_rx_agg_buf_size = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 9
  %60 = ptrtoint ptr %mp_rx_agg_buf_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mp_rx_agg_buf_size, align 4
  %62 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card1, align 4
  %call9.i.i.i180 = call noalias align 128 ptr @__kmalloc(i32 noundef %59, i32 noundef 3520) #17
  %mpa_tx.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %63, i32 0, i32 23
  %64 = ptrtoint ptr %mpa_tx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call9.i.i.i180, ptr %mpa_tx.i, align 4
  %tobool.not.i = icmp eq ptr %call9.i.i.i180, null
  br i1 %tobool.not.i, label %if.end45.land.lhs.true_crit_edge, label %if.end.i

if.end45.land.lhs.true_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end.i:                                         ; preds = %if.end45
  %buf_size.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %63, i32 0, i32 23, i32 6
  %65 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %59, ptr %buf_size.i, align 4
  %66 = call i32 @llvm.umax.i32(i32 %61, i32 65280) #13
  %call9.i.i50.i = call noalias align 128 ptr @__kmalloc(i32 noundef %66, i32 noundef 3520) #17
  %mpa_rx.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %63, i32 0, i32 24
  %67 = ptrtoint ptr %mpa_rx.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call9.i.i50.i, ptr %mpa_rx.i, align 4
  %tobool9.not.i = icmp eq ptr %call9.i.i50.i, null
  br i1 %tobool9.not.i, label %if.end.i.land.lhs.true_crit_edge, label %mwifiex_alloc_sdio_mpa_buffers.exit.thread

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

mwifiex_alloc_sdio_mpa_buffers.exit.thread:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %buf_size13.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %63, i32 0, i32 24, i32 8
  %68 = ptrtoint ptr %buf_size13.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %66, ptr %buf_size13.i, align 4
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end.i.land.lhs.true_crit_edge, %if.end45.land.lhs.true_crit_edge
  %69 = ptrtoint ptr %mpa_tx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mpa_tx.i, align 4
  call void @kfree(ptr noundef %70) #13
  %mpa_rx18.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %63, i32 0, i32 24
  %71 = ptrtoint ptr %mpa_rx18.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mpa_rx18.i, align 4
  call void @kfree(ptr noundef %72) #13
  %buf_size21.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %63, i32 0, i32 23, i32 6
  %73 = ptrtoint ptr %buf_size21.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %buf_size21.i, align 4
  %buf_size23.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %63, i32 0, i32 24, i32 8
  %74 = ptrtoint ptr %buf_size23.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %buf_size23.i, align 4
  %75 = ptrtoint ptr %mpa_tx.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %mpa_tx.i, align 4
  %76 = ptrtoint ptr %mpa_rx18.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %mpa_rx18.i, align 4
  %77 = ptrtoint ptr %mp_tx_agg_buf_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mp_tx_agg_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %78)
  %cmp = icmp eq i32 %78, 65280
  br i1 %cmp, label %land.lhs.true.if.then53_crit_edge, label %lor.lhs.false

land.lhs.true.if.then53_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then53

lor.lhs.false:                                    ; preds = %land.lhs.true
  %79 = ptrtoint ptr %mp_rx_agg_buf_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mp_rx_agg_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %80)
  %cmp51 = icmp eq i32 %80, 65280
  br i1 %cmp51, label %lor.lhs.false.if.then53_crit_edge, label %lor.lhs.false.if.end62_crit_edge

lor.lhs.false.if.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

lor.lhs.false.if.then53_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then53

if.then53:                                        ; preds = %lor.lhs.false.if.then53_crit_edge, %land.lhs.true.if.then53_crit_edge
  %host_disable_sdio_rx_aggr = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 41
  %81 = ptrtoint ptr %host_disable_sdio_rx_aggr to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %host_disable_sdio_rx_aggr, align 2
  %82 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %card1, align 4
  %call1.i.i.i.i184 = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3520, i32 noundef 3) #17
  %mpa_tx.i187 = getelementptr inbounds %struct.sdio_mmc_card, ptr %83, i32 0, i32 23
  %84 = ptrtoint ptr %mpa_tx.i187 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call1.i.i.i.i184, ptr %mpa_tx.i187, align 4
  %tobool.not.i188 = icmp eq ptr %call1.i.i.i.i184, null
  br i1 %tobool.not.i188, label %if.then53.if.then56_crit_edge, label %if.end.i192

if.then53.if.then56_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then56

if.end.i192:                                      ; preds = %if.then53
  %buf_size.i191 = getelementptr inbounds %struct.sdio_mmc_card, ptr %83, i32 0, i32 23, i32 6
  %85 = ptrtoint ptr %buf_size.i191 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 32768, ptr %buf_size.i191, align 4
  %call1.i.i.i48.i193 = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65280, i32 noundef 3520, i32 noundef 4) #17
  %mpa_rx.i196 = getelementptr inbounds %struct.sdio_mmc_card, ptr %83, i32 0, i32 24
  %86 = ptrtoint ptr %mpa_rx.i196 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call1.i.i.i48.i193, ptr %mpa_rx.i196, align 4
  %tobool9.not.i197 = icmp eq ptr %call1.i.i.i48.i193, null
  br i1 %tobool9.not.i197, label %if.end.i192.if.then56_crit_edge, label %mwifiex_alloc_sdio_mpa_buffers.exit207.thread

if.end.i192.if.then56_crit_edge:                  ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then56

mwifiex_alloc_sdio_mpa_buffers.exit207.thread:    ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #15
  %buf_size13.i199 = getelementptr inbounds %struct.sdio_mmc_card, ptr %83, i32 0, i32 24, i32 8
  %87 = ptrtoint ptr %buf_size13.i199 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 65280, ptr %buf_size13.i199, align 4
  br label %if.end62

if.then56:                                        ; preds = %if.end.i192.if.then56_crit_edge, %if.then53.if.then56_crit_edge
  %88 = ptrtoint ptr %mpa_tx.i187 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mpa_tx.i187, align 4
  call void @kfree(ptr noundef %89) #13
  %mpa_rx18.i202 = getelementptr inbounds %struct.sdio_mmc_card, ptr %83, i32 0, i32 24
  %90 = ptrtoint ptr %mpa_rx18.i202 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mpa_rx18.i202, align 4
  call void @kfree(ptr noundef %91) #13
  %buf_size21.i203 = getelementptr inbounds %struct.sdio_mmc_card, ptr %83, i32 0, i32 23, i32 6
  %92 = ptrtoint ptr %buf_size21.i203 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %buf_size21.i203, align 4
  %buf_size23.i204 = getelementptr inbounds %struct.sdio_mmc_card, ptr %83, i32 0, i32 24, i32 8
  %93 = ptrtoint ptr %buf_size23.i204 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %buf_size23.i204, align 4
  %94 = ptrtoint ptr %mpa_tx.i187 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %mpa_tx.i187, align 4
  %95 = ptrtoint ptr %mpa_rx18.i202 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %mpa_rx18.i202, align 4
  %96 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %enabled, align 2
  %97 = ptrtoint ptr %enabled16 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %enabled16, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %mwifiex_alloc_sdio_mpa_buffers.exit207.thread, %lor.lhs.false.if.end62_crit_edge, %mwifiex_alloc_sdio_mpa_buffers.exit.thread
  %can_auto_tdls = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 21
  %98 = ptrtoint ptr %can_auto_tdls to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %can_auto_tdls, align 4, !range !387
  %auto_tdls = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 151
  %100 = ptrtoint ptr %auto_tdls to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %auto_tdls, align 4
  %can_ext_scan = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 22
  %101 = ptrtoint ptr %can_ext_scan to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %can_ext_scan, align 1, !range !387
  %ext_scan = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 137
  %103 = ptrtoint ptr %ext_scan to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %ext_scan, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then41, %if.then31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -12, %if.then41 ], [ -12, %if.then31 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_cleanup_sdio(ptr nocapture noundef readonly %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %work = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 25
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #13
  %mp_regs = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %mp_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mp_regs, align 4
  tail call void @kfree(ptr noundef %3) #13
  %mpa_rx = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 24
  %skb_arr = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 24, i32 5
  %4 = ptrtoint ptr %skb_arr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb_arr, align 4
  tail call void @kfree(ptr noundef %5) #13
  %len_arr = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 24, i32 6
  %6 = ptrtoint ptr %len_arr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %len_arr, align 4
  tail call void @kfree(ptr noundef %7) #13
  %mpa_tx = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %mpa_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mpa_tx, align 4
  tail call void @kfree(ptr noundef %9) #13
  %10 = ptrtoint ptr %mpa_rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mpa_rx, align 4
  tail call void @kfree(ptr noundef %11) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_check_fw_status(ptr nocapture noundef readonly %adapter, i32 noundef %poll_num) #2 align 64 {
entry:
  %firmware_stat = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %firmware_stat) #13
  %0 = ptrtoint ptr %firmware_stat to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %firmware_stat, align 2, !annotation !388
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %poll_num)
  %cmp7.not = icmp eq i32 %poll_num, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tries.08 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = call fastcc i32 @mwifiex_sdio_read_fw_status(ptr noundef %adapter, ptr noundef nonnull %firmware_stat)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %1 = ptrtoint ptr %firmware_stat to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %firmware_stat, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -292, i16 %2)
  %cmp1 = icmp eq i16 %2, -292
  br i1 %cmp1, label %if.end.for.end_crit_edge, label %if.end4

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msleep(i32 noundef 100) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %tries.08, 1
  %exitcond.not = icmp eq i32 %inc, %poll_num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ], [ -1, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %firmware_stat) #13
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_check_winner_status(ptr nocapture noundef %adapter) #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %reg = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %status_reg_0 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %status_reg_0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status_reg_0, align 1
  %conv = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #13
  %6 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ret.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %8) #13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %10, i32 noundef %conv, ptr noundef nonnull %ret.i) #13
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %12) #13
  %13 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool2.not = icmp eq i8 %call.i, 0
  %winner5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 8
  %. = zext i1 %tobool2.not to i32
  %15 = ptrtoint ptr %winner5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %., ptr %winner5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_prog_fw_w_helper(ptr noundef %adapter, ptr nocapture noundef readonly %fw) #2 align 64 {
entry:
  %ret.i144 = alloca i32, align 4
  %ret.i = alloca i32, align 4
  %ret.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %reg2 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg2, align 4
  %fw_buf = getelementptr inbounds %struct.mwifiex_fw_image, ptr %fw, i32 0, i32 2
  %4 = ptrtoint ptr %fw_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw_buf, align 4
  %fw_len = getelementptr inbounds %struct.mwifiex_fw_image, ptr %fw, i32 0, i32 3
  %6 = ptrtoint ptr %fw_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.53) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.54, i32 noundef %7) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 2312) #18
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %10) #13
  %base_0_reg = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 2
  %base_1_reg = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 3
  %ioport = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 44
  %work_flags.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 12
  br label %do.body

do.body:                                          ; preds = %mwifiex_write_data_sync.exit.do.body_crit_edge, %if.end5
  %offset.0 = phi i32 [ 0, %if.end5 ], [ %add72, %mwifiex_write_data_sync.exit.do.body_crit_edge ]
  %tx_blocks.0 = phi i32 [ 0, %if.end5 ], [ %tx_blocks.1, %mwifiex_write_data_sync.exit.do.body_crit_edge ]
  %i.0 = phi i32 [ 0, %if.end5 ], [ %i.1, %mwifiex_write_data_sync.exit.do.body_crit_edge ]
  %11 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card1, align 4
  %reg.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %12, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %do.body
  %tries.02.i = phi i32 [ 0, %do.body ], [ %inc.i, %if.end8.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %poll_reg.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %poll_reg.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %poll_reg.i, align 4
  %conv.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #13
  %19 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %ret.i.i, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %18, align 4
  call void @sdio_claim_host(ptr noundef %21) #13
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %18, align 4
  %call.i.i = call zeroext i8 @sdio_readb(ptr noundef %23, i32 noundef %conv.i, ptr noundef nonnull %ret.i.i) #13
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %18, align 4
  call void @sdio_release_host(ptr noundef %25) #13
  %26 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ret.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.body.i.if.then8_crit_edge

for.body.i.if.then8_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.else.i:                                        ; preds = %for.body.i
  %28 = and i8 %call.i.i, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %28)
  %cmp5.i = icmp eq i8 %28, 9
  br i1 %cmp5.i, label %if.end9, label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #13
  %inc.i = add nuw nsw i32 %tries.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end8.i.if.then8_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end8.i.if.then8_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.then8:                                         ; preds = %if.end8.i.if.then8_crit_edge, %for.body.i.if.then8_crit_edge
  %tries.0.lcssa.i = phi i32 [ %tries.02.i, %for.body.i.if.then8_crit_edge ], [ 100, %if.end8.i.if.then8_crit_edge ]
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.64, i32 noundef %tries.0.lcssa.i) #13
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.55, i32 noundef %offset.0) #13
  br label %done

if.end9:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %offset.0)
  %cmp.not = icmp ugt i32 %7, %offset.0
  br i1 %cmp.not, label %if.end9.for.body_crit_edge, label %if.end9.do.end_crit_edge

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %if.end9.for.body_crit_edge
  %tries.0181 = phi i32 [ %inc, %if.end32.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %29 = ptrtoint ptr %base_0_reg to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %base_0_reg, align 2
  %conv = zext i8 %30 to i32
  %31 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #13
  %33 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %ret.i, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %32, align 4
  call void @sdio_claim_host(ptr noundef %35) #13
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %32, align 4
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %37, i32 noundef %conv, ptr noundef nonnull %ret.i) #13
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %32, align 4
  call void @sdio_release_host(ptr noundef %39) #13
  %40 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool14.not = icmp eq i32 %41, 0
  br i1 %tobool14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %conv16 = zext i8 %call.i to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.56, i32 noundef %conv16, i32 noundef %conv16) #13
  br label %done

if.end18:                                         ; preds = %for.body
  %42 = ptrtoint ptr %base_1_reg to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %base_1_reg, align 1
  %conv19 = zext i8 %43 to i32
  %44 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i144) #13
  %46 = ptrtoint ptr %ret.i144 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %ret.i144, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %45, align 4
  call void @sdio_claim_host(ptr noundef %48) #13
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %45, align 4
  %call.i146 = call zeroext i8 @sdio_readb(ptr noundef %50, i32 noundef %conv19, ptr noundef nonnull %ret.i144) #13
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %45, align 4
  call void @sdio_release_host(ptr noundef %52) #13
  %53 = ptrtoint ptr %ret.i144 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ret.i144, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i144) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool21.not = icmp eq i32 %54, 0
  br i1 %tobool21.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %conv23 = zext i8 %call.i146 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.57, i32 noundef %conv23, i32 noundef %conv23) #13
  br label %done

if.end25:                                         ; preds = %if.end18
  %conv26 = zext i8 %call.i146 to i16
  %shl = shl nuw i16 %conv26, 8
  %conv27 = zext i8 %call.i to i16
  %or = or i16 %shl, %conv27
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or)
  %tobool30.not = icmp eq i16 %or, 0
  br i1 %tobool30.not, label %if.end32, label %if.else

if.end32:                                         ; preds = %if.end25
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #13
  %inc = add nuw nsw i32 %tries.0181, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end32.do.end_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end32.do.end_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.else:                                          ; preds = %if.end25
  %conv35 = zext i16 %or to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2312, i16 %or)
  %cmp36 = icmp ugt i16 %or, 2312
  br i1 %cmp36, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.58, i32 noundef %offset.0, i32 noundef %conv35) #13
  br label %done

if.end41:                                         ; preds = %if.else
  %and44 = and i32 %conv35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else56, label %if.then46

if.then46:                                        ; preds = %if.end41
  %inc47 = add i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc47)
  %cmp48 = icmp ugt i32 %inc47, 2
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.59, i32 noundef %offset.0) #13
  br label %done

if.end51:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.60, i32 noundef %conv35, i32 noundef %conv35) #13
  br label %if.end63

if.else56:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %7, %offset.0
  %55 = call i32 @llvm.umin.i32(i32 %sub, i32 %conv35)
  %sub62 = add nuw nsw i32 %55, 255
  %div142 = lshr i32 %sub62, 8
  %arrayidx = getelementptr i8, ptr %5, i32 %offset.0
  %56 = call ptr @memmove(ptr %call7.i.i, ptr %arrayidx, i32 %55)
  br label %if.end63

if.end63:                                         ; preds = %if.else56, %if.end51
  %txlen.1 = phi i32 [ 0, %if.end51 ], [ %55, %if.else56 ]
  %tx_blocks.1 = phi i32 [ %tx_blocks.0, %if.end51 ], [ %div142, %if.else56 ]
  %i.1 = phi i32 [ %inc47, %if.end51 ], [ 0, %if.else56 ]
  %57 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ioport, align 4
  %59 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card1, align 4
  %61 = ptrtoint ptr %work_flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %work_flags.i, align 4
  %63 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool10.not.i = icmp eq i32 %63, 0
  br i1 %tobool10.not.i, label %mwifiex_write_data_sync.exit, label %mwifiex_write_data_sync.exit.thread

mwifiex_write_data_sync.exit.thread:              ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.mwifiex_write_data_sync) #13
  br label %if.then66

mwifiex_write_data_sync.exit:                     ; preds = %if.end63
  %mul = shl i32 %tx_blocks.1, 8
  %and9.i = and i32 %58, 1048575
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %60, align 4
  call void @sdio_claim_host(ptr noundef %65) #13
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %60, align 4
  %call12.i = call i32 @sdio_writesb(ptr noundef %67, i32 noundef %and9.i, ptr noundef nonnull %call7.i.i, i32 noundef %mul) #13
  %68 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %60, align 4
  call void @sdio_release_host(ptr noundef %69) #13
  %tobool65.not = icmp eq i32 %call12.i, 0
  %add72 = add i32 %txlen.1, %offset.0
  br i1 %tobool65.not, label %mwifiex_write_data_sync.exit.do.body_crit_edge, label %mwifiex_write_data_sync.exit.if.then66_crit_edge

mwifiex_write_data_sync.exit.if.then66_crit_edge: ; preds = %mwifiex_write_data_sync.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66

mwifiex_write_data_sync.exit.do.body_crit_edge:   ; preds = %mwifiex_write_data_sync.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then66:                                        ; preds = %mwifiex_write_data_sync.exit.if.then66_crit_edge, %mwifiex_write_data_sync.exit.thread
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.61, i32 noundef %i.1, i32 noundef %offset.0) #13
  %call67 = call fastcc i32 @mwifiex_write_reg(ptr noundef %adapter, i32 noundef 0, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then66.done_crit_edge, label %if.then69

if.then66.done_crit_edge:                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then69:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.62) #13
  br label %done

do.end:                                           ; preds = %if.end32.do.end_crit_edge, %if.end9.do.end_crit_edge
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.63, i32 noundef %offset.0) #13
  br label %done

done:                                             ; preds = %do.end, %if.then69, %if.then66.done_crit_edge, %if.then50, %if.then38, %if.then22, %if.then15, %if.then8
  %ret.0 = phi i32 [ -1, %if.then8 ], [ 0, %do.end ], [ %41, %if.then15 ], [ %54, %if.then22 ], [ -1, %if.then38 ], [ -1, %if.then50 ], [ -1, %if.then69 ], [ -1, %if.then66.done_crit_edge ]
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %71) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %ret.0, %done ], [ -1, %if.then ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_register_dev(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %adapter3 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %adapter3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %adapter, ptr %adapter3, align 4
  %tx_buf_size = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tx_buf_size, align 2
  %tx_buf_size4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 39
  %7 = ptrtoint ptr %tx_buf_size4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %tx_buf_size4, align 2
  tail call void @sdio_claim_host(ptr noundef %3) #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call = tail call i32 @sdio_set_block_size(ptr noundef %9, i32 noundef 256) #13
  tail call void @sdio_release_host(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.66) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_name = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 7
  %firmware = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %firmware, align 4
  %call6 = tail call ptr @strcpy(ptr noundef %fw_name, ptr noundef %11) #19
  %fw_dump_enh = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %fw_dump_enh to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_dump_enh, align 1, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  %mem_type_mapping_tbl9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 143
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %mem_type_mapping_tbl9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @generic_mem_type_map, ptr %mem_type_mapping_tbl9, align 4
  %num_mem_types = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 144
  %15 = ptrtoint ptr %num_mem_types to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %num_mem_types, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %mem_type_mapping_tbl9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mem_type_mapping_tbl, ptr %mem_type_mapping_tbl9, align 4
  %num_mem_types10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 144
  %17 = ptrtoint ptr %num_mem_types10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 15, ptr %num_mem_types10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %if.then
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_unregister_dev(ptr nocapture noundef readonly %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %adapter3 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %adapter3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %adapter3, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %4) #13
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call = tail call i32 @sdio_disable_func(ptr noundef %6) #13
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @sdio_release_host(ptr noundef %8) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_enable_host_int(ptr noundef %adapter) #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #13
  %call = tail call i32 @sdio_claim_irq(ptr noundef %3, ptr noundef nonnull @mwifiex_sdio_interrupt) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.67, i32 noundef %call) #13
  br label %out

if.end:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %host_int_mask_reg = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %host_int_mask_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %host_int_mask_reg, align 4
  %conv = zext i8 %7 to i32
  %host_int_enable = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %host_int_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %host_int_enable, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #13
  %10 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %ret.i, align 4
  call void @sdio_writeb(ptr noundef %3, i8 noundef zeroext %9, i32 noundef %conv, ptr noundef nonnull %ret.i) #13
  %11 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %if.end.out_crit_edge, label %if.then6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.68) #13
  %call7 = call i32 @sdio_release_irq(ptr noundef %3) #13
  br label %out

out:                                              ; preds = %if.then6, %if.end.out_crit_edge, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %12, %if.then6 ], [ 0, %if.end.out_crit_edge ]
  call void @sdio_release_host(ptr noundef %3) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_sdio_disable_host_int(ptr nocapture noundef readonly %adapter) #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #13
  %reg = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %host_int_mask_reg = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %host_int_mask_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %host_int_mask_reg, align 4
  %conv = zext i8 %7 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #13
  %8 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ret.i, align 4
  call void @sdio_writeb(ptr noundef %3, i8 noundef zeroext 0, i32 noundef %conv, ptr noundef nonnull %ret.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #13
  %call3 = call i32 @sdio_release_irq(ptr noundef %3) #13
  call void @sdio_release_host(ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_process_int_status(ptr noundef %adapter) #2 align 64 {
entry:
  %ret.i377 = alloca i32, align 4
  %ret.i.i = alloca i32, align 4
  %ret.i = alloca i32, align 4
  %pkt_type.i = alloca i32, align 4
  %pkt_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %reg2 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg2, align 4
  %int_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 48
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock) #13
  %int_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 49
  %4 = ptrtoint ptr %int_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %int_status, align 4
  store i8 0, ptr %int_status, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock, i32 noundef %call4) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup234_crit_edge, label %if.end

entry.cleanup234_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup234

if.end:                                           ; preds = %entry
  %conv9 = zext i8 %5 to i32
  %and = and i32 %conv9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %cmd_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 54
  %6 = ptrtoint ptr %cmd_sent to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd_sent, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end15_crit_edge, label %if.then13

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %cmd_sent to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %cmd_sent, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %and17 = and i32 %conv9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end61_crit_edge, label %if.then19

if.end15.if.end61_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then19:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pkt_type) #13
  %9 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %pkt_type, align 4, !annotation !388
  %mp_regs = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %mp_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mp_regs, align 4
  %cmd_rd_len_1 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 30
  %12 = ptrtoint ptr %cmd_rd_len_1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cmd_rd_len_1, align 1
  %idxprom = zext i8 %13 to i32
  %arrayidx = getelementptr i8, ptr %11, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv20 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv20, 8
  %cmd_rd_len_0 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 29
  %16 = ptrtoint ptr %cmd_rd_len_0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmd_rd_len_0, align 4
  %idxprom23 = zext i8 %17 to i32
  %arrayidx24 = getelementptr i8, ptr %11, i32 %idxprom23
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx24, align 1
  %conv26 = zext i8 %19 to i32
  %or = or i32 %shl, %conv26
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %20 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %intf_hdr_len, align 4
  %conv31 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv31)
  %cmp32.not = icmp ugt i32 %or, %conv31
  br i1 %cmp32.not, label %lor.lhs.false, label %if.then19.cleanup.thread_crit_edge

if.then19.cleanup.thread_crit_edge:               ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %if.then19
  %sub = add nuw nsw i32 %or, 255
  %div360 = and i32 %sub, 130816
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %div360)
  %cmp34 = icmp ugt i32 %div360, 4096
  br i1 %cmp34, label %lor.lhs.false.cleanup.thread_crit_edge, label %if.end37

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end37:                                         ; preds = %lor.lhs.false
  %conv40 = and i32 %sub, 65280
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.73, i32 noundef %conv40) #13
  %call42 = tail call ptr @mwifiex_alloc_dma_align_buf(i32 noundef %conv40, i32 noundef 3264) #13
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end37.cleanup.thread_crit_edge, label %if.end45

if.end37.cleanup.thread_crit_edge:                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end45:                                         ; preds = %if.end37
  %call47 = tail call ptr @skb_put(ptr noundef nonnull %call42, i32 noundef %conv40) #13
  %data = getelementptr inbounds %struct.sk_buff, ptr %call42, i32 0, i32 19
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call42, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %ioport = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 44
  %26 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ioport, align 4
  %or48 = or i32 %27, 32768
  %call49 = call fastcc i32 @mwifiex_sdio_card_to_host(ptr noundef %adapter, ptr noundef nonnull %pkt_type, ptr noundef %23, i32 noundef %25, i32 noundef %or48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %cleanup

if.end52:                                         ; preds = %if.end45
  %28 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pkt_type, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %29, label %if.then58 [
    i32 1, label %if.end52.cleanup.thread385_crit_edge
    i32 3, label %if.end52.cleanup.thread385_crit_edge401
  ]

if.end52.cleanup.thread385_crit_edge401:          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread385

if.end52.cleanup.thread385_crit_edge:             ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread385

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.mwifiex_process_int_status) #13
  br label %cleanup.thread385

cleanup.thread385:                                ; preds = %if.then58, %if.end52.cleanup.thread385_crit_edge, %if.end52.cleanup.thread385_crit_edge401
  tail call fastcc void @mwifiex_decode_rx_packet(ptr noundef %adapter, ptr noundef nonnull %call42, i32 noundef %29)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pkt_type) #13
  br label %if.end61

cleanup.thread:                                   ; preds = %if.end37.cleanup.thread_crit_edge, %lor.lhs.false.cleanup.thread_crit_edge, %if.then19.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pkt_type) #13
  br label %cleanup234

cleanup:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.mwifiex_process_int_status) #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call42, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pkt_type) #13
  br label %term_cmd

if.end61:                                         ; preds = %cleanup.thread385, %if.end15.if.end61_crit_edge
  %and63 = and i32 %conv9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end61.if.end101_crit_edge, label %if.then65

if.end61.if.end101_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then65:                                        ; preds = %if.end61
  %mp_regs66 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 16
  %31 = ptrtoint ptr %mp_regs66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mp_regs66, align 4
  %wr_bitmap_l = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 21
  %33 = ptrtoint ptr %wr_bitmap_l to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %wr_bitmap_l, align 4
  %idxprom67 = zext i8 %34 to i32
  %arrayidx68 = getelementptr i8, ptr %32, i32 %idxprom67
  %35 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %36 to i32
  %wr_bitmap_u = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 22
  %37 = ptrtoint ptr %wr_bitmap_u to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %wr_bitmap_u, align 1
  %idxprom71 = zext i8 %38 to i32
  %arrayidx72 = getelementptr i8, ptr %32, i32 %idxprom71
  %39 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %40 to i32
  %shl74 = shl nuw nsw i32 %conv73, 8
  %or75 = or i32 %shl74, %conv69
  %supports_sdio_new_mode = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 17
  %41 = ptrtoint ptr %supports_sdio_new_mode to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %supports_sdio_new_mode, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool76.not = icmp eq i8 %42, 0
  br i1 %tobool76.not, label %if.then65.if.end90_crit_edge, label %if.then77

if.then65.if.end90_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then77:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  %wr_bitmap_1l = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 23
  %43 = ptrtoint ptr %wr_bitmap_1l to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %wr_bitmap_1l, align 2
  %idxprom79 = zext i8 %44 to i32
  %arrayidx80 = getelementptr i8, ptr %32, i32 %idxprom79
  %45 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %46 to i32
  %shl82 = shl nuw nsw i32 %conv81, 16
  %or83 = or i32 %shl82, %or75
  %wr_bitmap_1u = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 24
  %47 = ptrtoint ptr %wr_bitmap_1u to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %wr_bitmap_1u, align 1
  %idxprom85 = zext i8 %48 to i32
  %arrayidx86 = getelementptr i8, ptr %32, i32 %idxprom85
  %49 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %50 to i32
  %shl88 = shl nuw i32 %conv87, 24
  %or89 = or i32 %or83, %shl88
  br label %if.end90

if.end90:                                         ; preds = %if.then77, %if.then65.if.end90_crit_edge
  %bitmap.0 = phi i32 [ %or89, %if.then77 ], [ %or75, %if.then65.if.end90_crit_edge ]
  %mp_wr_bitmap = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 11
  %51 = ptrtoint ptr %mp_wr_bitmap to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %bitmap.0, ptr %mp_wr_bitmap, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 64, ptr noundef nonnull @.str.76, i32 noundef %bitmap.0) #13
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %52 = ptrtoint ptr %data_sent to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %data_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool93.not = icmp eq i8 %53, 0
  br i1 %tobool93.not, label %if.end90.if.end101_crit_edge, label %land.lhs.true94

if.end90.if.end101_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

land.lhs.true94:                                  ; preds = %if.end90
  %54 = ptrtoint ptr %mp_wr_bitmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mp_wr_bitmap, align 4
  %mp_data_port_mask = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 13
  %56 = ptrtoint ptr %mp_data_port_mask to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mp_data_port_mask, align 4
  %and96 = and i32 %57, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %land.lhs.true94.if.end101_crit_edge, label %if.then98

land.lhs.true94.if.end101_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then98:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 64, ptr noundef nonnull @.str.77) #13
  %58 = ptrtoint ptr %data_sent to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %data_sent, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %land.lhs.true94.if.end101_crit_edge, %if.end90.if.end101_crit_edge, %if.end61.if.end101_crit_edge
  %has_control_mask = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 18
  %59 = ptrtoint ptr %has_control_mask to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %has_control_mask, align 1, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool102.not = icmp eq i8 %60, 0
  br i1 %tobool102.not, label %if.end101.if.end123_crit_edge, label %land.lhs.true104

if.end101.if.end123_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

land.lhs.true104:                                 ; preds = %if.end101
  %cmd_sent105 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 54
  %61 = ptrtoint ptr %cmd_sent105 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %cmd_sent105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool107.not = icmp eq i8 %62, 0
  br i1 %tobool107.not, label %land.lhs.true104.if.end123_crit_edge, label %if.then108

land.lhs.true104.if.end123_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

if.then108:                                       ; preds = %land.lhs.true104
  %mp_regs109 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 16
  %63 = ptrtoint ptr %mp_regs109 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mp_regs109, align 4
  %wr_bitmap_l110 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 21
  %65 = ptrtoint ptr %wr_bitmap_l110 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %wr_bitmap_l110, align 4
  %idxprom111 = zext i8 %66 to i32
  %arrayidx112 = getelementptr i8, ptr %64, i32 %idxprom111
  %67 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx112, align 1
  %69 = and i8 %68, 1
  %and114 = zext i8 %69 to i32
  %mp_wr_bitmap115 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 11
  %70 = ptrtoint ptr %mp_wr_bitmap115 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mp_wr_bitmap115, align 4
  %or116 = or i32 %71, %and114
  store i32 %or116, ptr %mp_wr_bitmap115, align 4
  %and118 = and i32 %or116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.then108.if.end123_crit_edge, label %if.then120

if.then108.if.end123_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

if.then120:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %cmd_sent105 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %cmd_sent105, align 1
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %if.then108.if.end123_crit_edge, %land.lhs.true104.if.end123_crit_edge, %if.end101.if.end123_crit_edge
  %cmd_sent124 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 54
  %73 = ptrtoint ptr %cmd_sent124 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %cmd_sent124, align 1
  %conv125 = zext i8 %74 to i32
  %data_sent126 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %75 = ptrtoint ptr %data_sent126 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %data_sent126, align 4
  %conv127 = zext i8 %76 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 64, ptr noundef nonnull @.str.78, i32 noundef %conv125, i32 noundef %conv127) #13
  %and129 = and i32 %conv9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end123.cleanup234_crit_edge, label %if.then131

if.end123.cleanup234_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup234

if.then131:                                       ; preds = %if.end123
  %mp_regs132 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 16
  %77 = ptrtoint ptr %mp_regs132 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mp_regs132, align 4
  %rd_bitmap_l = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 17
  %79 = ptrtoint ptr %rd_bitmap_l to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %rd_bitmap_l, align 4
  %idxprom133 = zext i8 %80 to i32
  %arrayidx134 = getelementptr i8, ptr %78, i32 %idxprom133
  %81 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx134, align 1
  %conv135 = zext i8 %82 to i32
  %rd_bitmap_u = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 18
  %83 = ptrtoint ptr %rd_bitmap_u to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %rd_bitmap_u, align 1
  %idxprom137 = zext i8 %84 to i32
  %arrayidx138 = getelementptr i8, ptr %78, i32 %idxprom137
  %85 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx138, align 1
  %conv139 = zext i8 %86 to i32
  %shl140 = shl nuw nsw i32 %conv139, 8
  %or141 = or i32 %shl140, %conv135
  %supports_sdio_new_mode142 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 17
  %87 = ptrtoint ptr %supports_sdio_new_mode142 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %supports_sdio_new_mode142, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool143.not = icmp eq i8 %88, 0
  br i1 %tobool143.not, label %if.then131.if.end157_crit_edge, label %if.then144

if.then131.if.end157_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end157

if.then144:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #15
  %rd_bitmap_1l = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 19
  %89 = ptrtoint ptr %rd_bitmap_1l to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %rd_bitmap_1l, align 2
  %idxprom146 = zext i8 %90 to i32
  %arrayidx147 = getelementptr i8, ptr %78, i32 %idxprom146
  %91 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %92 to i32
  %shl149 = shl nuw nsw i32 %conv148, 16
  %or150 = or i32 %shl149, %or141
  %rd_bitmap_1u = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 20
  %93 = ptrtoint ptr %rd_bitmap_1u to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %rd_bitmap_1u, align 1
  %idxprom152 = zext i8 %94 to i32
  %arrayidx153 = getelementptr i8, ptr %78, i32 %idxprom152
  %95 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %96 to i32
  %shl155 = shl nuw i32 %conv154, 24
  %or156 = or i32 %or150, %shl155
  br label %if.end157

if.end157:                                        ; preds = %if.then144, %if.then131.if.end157_crit_edge
  %bitmap.1 = phi i32 [ %or156, %if.then144 ], [ %or141, %if.then131.if.end157_crit_edge ]
  %mp_rd_bitmap = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 10
  %97 = ptrtoint ptr %mp_rd_bitmap to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %bitmap.1, ptr %mp_rd_bitmap, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 64, ptr noundef nonnull @.str.79, i32 noundef %bitmap.1) #13
  %rd_len_p0_l = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 25
  %rd_len_p0_u = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 26
  %intf_hdr_len191 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %enabled = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 24, i32 7
  %buf_size = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 24, i32 8
  %ioport.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 44
  %sdio_rx_aggr_enable.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 42
  br label %while.cond

while.cond:                                       ; preds = %mwifiex_sdio_card_to_host_mp_aggr.exit, %if.end157
  %98 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %card1, align 4
  %reg2.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg2.i, align 4
  %mp_rd_bitmap.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %99, i32 0, i32 10
  %102 = ptrtoint ptr %mp_rd_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mp_rd_bitmap.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.96, i32 noundef %103) #13
  %supports_sdio_new_mode.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %99, i32 0, i32 17
  %104 = ptrtoint ptr %supports_sdio_new_mode.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %supports_sdio_new_mode.i, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i = icmp eq i8 %105, 0
  %data_port_mask5.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %101, i32 0, i32 12
  %106 = ptrtoint ptr %data_port_mask5.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %data_port_mask5.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.cond
  %and.i = and i32 %107, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.then161_crit_edge, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then.i.if.then161_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then161

if.else.i:                                        ; preds = %while.cond
  %or.i = or i32 %107, 1
  %and6.i = and i32 %or.i, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i.if.then161_crit_edge, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.else.i.if.then161_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then161

if.end10.i:                                       ; preds = %if.else.i.if.end10.i_crit_edge, %if.then.i.if.end10.i_crit_edge
  %has_control_mask.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %99, i32 0, i32 18
  %108 = ptrtoint ptr %has_control_mask.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %has_control_mask.i, align 1, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool11.not.i = icmp eq i8 %109, 0
  br i1 %tobool11.not.i, label %if.end10.i.if.end19.i_crit_edge, label %land.lhs.true.i

if.end10.i.if.end19.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %if.end10.i
  %110 = ptrtoint ptr %mp_rd_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mp_rd_bitmap.i, align 4
  %and13.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i.if.end19.i_crit_edge, label %if.then15.i

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %and17.i = and i32 %111, -2
  %112 = ptrtoint ptr %mp_rd_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %and17.i, ptr %mp_rd_bitmap.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.97, i32 noundef 0, i32 noundef %and17.i) #13
  br label %if.end162

if.end19.i:                                       ; preds = %land.lhs.true.i.if.end19.i_crit_edge, %if.end10.i.if.end19.i_crit_edge
  %113 = ptrtoint ptr %mp_rd_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mp_rd_bitmap.i, align 4
  %curr_rd_port.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %99, i32 0, i32 14
  %115 = ptrtoint ptr %curr_rd_port.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %curr_rd_port.i, align 4
  %conv21.i = zext i8 %116 to i32
  %shl.i = shl nuw i32 1, %conv21.i
  %and22.i = and i32 %shl.i, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end19.i.if.then161_crit_edge, label %if.end25.i

if.end19.i.if.then161_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then161

if.end25.i:                                       ; preds = %if.end19.i
  %neg.i = xor i32 %shl.i, -1
  %and30.i = and i32 %114, %neg.i
  %117 = ptrtoint ptr %mp_rd_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %and30.i, ptr %mp_rd_bitmap.i, align 4
  %inc.i = add i8 %116, 1
  %118 = ptrtoint ptr %curr_rd_port.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %inc.i, ptr %curr_rd_port.i, align 4
  %max_ports.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %99, i32 0, i32 5
  %119 = ptrtoint ptr %max_ports.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %max_ports.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i, i8 %120)
  %cmp.i = icmp eq i8 %inc.i, %120
  br i1 %cmp.i, label %if.then36.i, label %if.end25.i.if.end38.i_crit_edge

if.end25.i.if.end38.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

if.then36.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  %121 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %101, align 4
  %123 = ptrtoint ptr %curr_rd_port.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %curr_rd_port.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then36.i, %if.end25.i.if.end38.i_crit_edge
  %124 = ptrtoint ptr %mp_rd_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mp_rd_bitmap.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.98, i32 noundef %conv21.i, i32 noundef %103, i32 noundef %125) #13
  br label %if.end162

if.then161:                                       ; preds = %if.end19.i.if.then161_crit_edge, %if.else.i.if.then161_crit_edge, %if.then.i.if.then161_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.80) #13
  br label %cleanup234

if.end162:                                        ; preds = %if.end38.i, %if.then15.i
  %port.1 = phi i8 [ %116, %if.end38.i ], [ 0, %if.then15.i ]
  %126 = ptrtoint ptr %rd_len_p0_l to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %rd_len_p0_l, align 4
  %conv163 = zext i8 %127 to i32
  %conv164 = zext i8 %port.1 to i32
  %shl165 = shl nuw nsw i32 %conv164, 1
  %add166 = add nuw nsw i32 %shl165, %conv163
  %128 = ptrtoint ptr %rd_len_p0_u to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %rd_len_p0_u, align 1
  %conv167 = zext i8 %129 to i32
  %add170 = add nuw nsw i32 %shl165, %conv167
  %130 = ptrtoint ptr %mp_regs132 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mp_regs132, align 4
  %arrayidx172 = getelementptr i8, ptr %131, i32 %add170
  %132 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx172, align 1
  %conv174 = zext i8 %133 to i32
  %shl175 = shl nuw nsw i32 %conv174, 8
  %arrayidx178 = getelementptr i8, ptr %131, i32 %add166
  %134 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx178, align 1
  %conv180 = zext i8 %135 to i32
  %or182 = or i32 %shl175, %conv180
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.81, i32 noundef %conv164, i32 noundef %or182) #13
  %sub188 = add nuw nsw i32 %or182, 255
  %div189359 = and i32 %sub188, 130816
  %136 = ptrtoint ptr %intf_hdr_len191 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %intf_hdr_len191, align 4
  %conv192 = zext i8 %137 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or182, i32 %conv192)
  %cmp193.not = icmp ugt i32 %or182, %conv192
  br i1 %cmp193.not, label %lor.lhs.false195, label %if.end162.if.then203_crit_edge

if.end162.if.then203_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then203

lor.lhs.false195:                                 ; preds = %if.end162
  %138 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool197.not = icmp eq i8 %139, 0
  br i1 %tobool197.not, label %lor.lhs.false195.if.end205_crit_edge, label %land.lhs.true198

lor.lhs.false195.if.end205_crit_edge:             ; preds = %lor.lhs.false195
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end205

land.lhs.true198:                                 ; preds = %lor.lhs.false195
  %140 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div189359, i32 %141)
  %cmp201 = icmp ugt i32 %div189359, %141
  br i1 %cmp201, label %land.lhs.true198.if.then203_crit_edge, label %land.lhs.true198.if.end205_crit_edge

land.lhs.true198.if.end205_crit_edge:             ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end205

land.lhs.true198.if.then203_crit_edge:            ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then203

if.then203:                                       ; preds = %land.lhs.true198.if.then203_crit_edge, %if.end162.if.then203_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.82, i32 noundef %or182) #13
  br label %cleanup234

if.end205:                                        ; preds = %land.lhs.true198.if.end205_crit_edge, %lor.lhs.false195.if.end205_crit_edge
  %conv207 = and i32 %sub188, 65280
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.73, i32 noundef %conv207) #13
  %142 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pkt_type.i) #13
  %144 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %pkt_type.i, align 4, !annotation !388
  %has_control_mask.i362 = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 18
  %145 = ptrtoint ptr %has_control_mask.i362 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %has_control_mask.i362, align 1, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.i363 = icmp ne i8 %146, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %port.1)
  %cmp.i364 = icmp eq i8 %port.1, 0
  %or.cond.i = and i1 %cmp.i364, %tobool.not.i363
  br i1 %or.cond.i, label %if.then.i365, label %if.end.i

if.then.i365:                                     ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.99, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host_mp_aggr) #13
  br label %if.then171.i

if.end.i:                                         ; preds = %if.end205
  %mpa_rx.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24
  %enabled.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 7
  %147 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool3.not.i366 = icmp eq i8 %148, 0
  br i1 %tobool3.not.i366, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 536870912, ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host_mp_aggr) #13
  br label %if.then171.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool7.not.i367 = icmp eq i8 %146, 0
  %mp_rd_bitmap.i368 = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 10
  %149 = ptrtoint ptr %mp_rd_bitmap.i368 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %mp_rd_bitmap.i368, align 4
  br i1 %tobool7.not.i367, label %land.lhs.true8.i, label %land.lhs.true13.i

land.lhs.true8.i:                                 ; preds = %if.end5.i
  %reg.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 4
  %151 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %reg.i, align 4
  %data_port_mask.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %152, i32 0, i32 12
  %153 = ptrtoint ptr %data_port_mask.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %data_port_mask.i, align 4
  %and.i369 = and i32 %154, %150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i369)
  %tobool9.not.i = icmp eq i32 %and.i369, 0
  br i1 %tobool9.not.i, label %land.lhs.true8.i.if.else31.i_crit_edge, label %land.lhs.true8.i.if.then17.i_crit_edge

land.lhs.true8.i.if.then17.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17.i

land.lhs.true8.i.if.else31.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else31.i

land.lhs.true13.i:                                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %150)
  %tobool16.not.i = icmp ult i32 %150, 2
  br i1 %tobool16.not.i, label %land.lhs.true13.i.if.else31.i_crit_edge, label %land.lhs.true13.i.if.then17.i_crit_edge

land.lhs.true13.i.if.then17.i_crit_edge:          ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17.i

land.lhs.true13.i.if.else31.i_crit_edge:          ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else31.i

if.then17.i:                                      ; preds = %land.lhs.true13.i.if.then17.i_crit_edge, %land.lhs.true8.i.if.then17.i_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.101, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host_mp_aggr) #13
  %pkt_cnt.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 2
  %155 = ptrtoint ptr %pkt_cnt.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pkt_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp19.not.i = icmp eq i32 %156, 0
  br i1 %cmp19.not.i, label %if.then17.i.if.then52.i_crit_edge, label %if.then21.i

if.then17.i.if.then52.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52.i

if.then21.i:                                      ; preds = %if.then17.i
  %buf_len.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 1
  %157 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %buf_len.i, align 4
  %add.i = add i32 %158, %conv207
  %buf_size.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 8
  %159 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %buf_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %160)
  %cmp25.not.i = icmp ugt i32 %add.i, %160
  br i1 %cmp25.not.i, label %if.then21.i.if.then64.i_crit_edge, label %if.then21.i.if.then52.i_crit_edge

if.then21.i.if.then52.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52.i

if.then21.i.if.then64.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then64.i

if.else31.i:                                      ; preds = %land.lhs.true13.i.if.else31.i_crit_edge, %land.lhs.true8.i.if.else31.i_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host_mp_aggr) #13
  %pkt_cnt33.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 2
  %161 = ptrtoint ptr %pkt_cnt33.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pkt_cnt33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp34.not.i = icmp eq i32 %162, 0
  br i1 %cmp34.not.i, label %if.else31.i.if.then171.i_crit_edge, label %if.end50.i

if.else31.i.if.then171.i_crit_edge:               ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then171.i

if.end50.i:                                       ; preds = %if.else31.i
  %buf_len38.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 1
  %163 = ptrtoint ptr %buf_len38.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %buf_len38.i, align 4
  %add40.i = add i32 %164, %conv207
  %buf_size42.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 8
  %165 = ptrtoint ptr %buf_size42.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %buf_size42.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add40.i, i32 %166)
  %cmp43.not.i = icmp ugt i32 %add40.i, %166
  br i1 %cmp43.not.i, label %if.end50.i.if.then64.i_crit_edge, label %if.end50.i.if.then52.i_crit_edge

if.end50.i.if.then52.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52.i

if.end50.i.if.then64.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then64.i

if.then52.i:                                      ; preds = %if.end50.i.if.then52.i_crit_edge, %if.then21.i.if.then52.i_crit_edge, %if.then17.i.if.then52.i_crit_edge
  %tobool63.not.i = phi i1 [ true, %if.then21.i.if.then52.i_crit_edge ], [ false, %if.end50.i.if.then52.i_crit_edge ], [ true, %if.then17.i.if.then52.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.103) #13
  %buf_len.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 1
  %167 = ptrtoint ptr %buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %buf_len.i.i, align 4
  %add.i.i = add i32 %168, %conv207
  store i32 %add.i.i, ptr %buf_len.i.i, align 4
  %pkt_cnt.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 2
  %169 = ptrtoint ptr %pkt_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %pkt_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i.i = icmp eq i32 %170, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then52.i.if.end.i.i_crit_edge

if.then52.i.if.end.i.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv2.i.i = zext i8 %port.1 to i16
  %start_port.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 4
  %171 = ptrtoint ptr %start_port.i.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %conv2.i.i, ptr %start_port.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then52.i.if.end.i.i_crit_edge
  %supports_sdio_new_mode.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 17
  %172 = ptrtoint ptr %supports_sdio_new_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %supports_sdio_new_mode.i.i, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool4.not.i.i = icmp eq i8 %173, 0
  br i1 %tobool4.not.i.i, label %if.else.i.i, label %if.end.i.i.mp_rx_aggr_setup.exit.i_crit_edge

if.end.i.i.mp_rx_aggr_setup.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mp_rx_aggr_setup.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %start_port9.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 4
  %174 = ptrtoint ptr %start_port9.i.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %start_port9.i.i, align 4
  %176 = zext i8 %port.1 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %175, i16 %176)
  %cmp.not.i.i = icmp ugt i16 %175, %176
  %add23.i.i = zext i1 %cmp.not.i.i to i32
  %spec.select.i.i = add i32 %170, %add23.i.i
  br label %mp_rx_aggr_setup.exit.i

mp_rx_aggr_setup.exit.i:                          ; preds = %if.else.i.i, %if.end.i.i.mp_rx_aggr_setup.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %spec.select.i.i, %if.else.i.i ], [ %conv164, %if.end.i.i.mp_rx_aggr_setup.exit.i_crit_edge ]
  %shl16.i.i = shl nuw i32 1, %.sink.i.i
  %ports18.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 3
  %177 = ptrtoint ptr %ports18.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ports18.i.i, align 4
  %or19.i.i = or i32 %178, %shl16.i.i
  store i32 %or19.i.i, ptr %ports18.i.i, align 4
  %skb_arr.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 5
  %179 = ptrtoint ptr %skb_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %skb_arr.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %180, i32 %170
  %181 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %arrayidx.i.i, align 4
  %len_arr.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 6
  %182 = ptrtoint ptr %len_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %len_arr.i.i, align 4
  %184 = ptrtoint ptr %pkt_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %pkt_cnt.i.i, align 4
  %arrayidx37.i.i = getelementptr i32, ptr %183, i32 %185
  %186 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %conv207, ptr %arrayidx37.i.i, align 4
  %187 = load i32, ptr %pkt_cnt.i.i, align 4
  %inc.i.i = add i32 %187, 1
  store i32 %inc.i.i, ptr %pkt_cnt.i.i, align 4
  %pkt_aggr_limit.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 9
  %188 = ptrtoint ptr %pkt_aggr_limit.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %pkt_aggr_limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %189)
  %cmp56.i = icmp eq i32 %inc.i.i, %189
  br i1 %cmp56.i, label %mp_rx_aggr_setup.exit.i.if.then60.i_crit_edge, label %lor.lhs.false58.i

mp_rx_aggr_setup.exit.i.if.then60.i_crit_edge:    ; preds = %mp_rx_aggr_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60.i

lor.lhs.false58.i:                                ; preds = %mp_rx_aggr_setup.exit.i
  %curr_rd_port.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 14
  %190 = ptrtoint ptr %curr_rd_port.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %curr_rd_port.i.i, align 4
  %start_port.i370.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 4
  %192 = ptrtoint ptr %start_port.i370.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %start_port.i370.i, align 4
  %194 = zext i8 %191 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %193, i16 %194)
  %cmp.i.i = icmp ugt i16 %193, %194
  br i1 %cmp.i.i, label %if.then.i373.i, label %lor.lhs.false58.i.if.end17.i.i_crit_edge

lor.lhs.false58.i.if.end17.i.i_crit_edge:         ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i.i

if.then.i373.i:                                   ; preds = %lor.lhs.false58.i
  %195 = ptrtoint ptr %supports_sdio_new_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %supports_sdio_new_mode.i.i, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool.not.i372.i = icmp eq i8 %196, 0
  br i1 %tobool.not.i372.i, label %if.else.i374.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.then.i373.i
  call void @__sanitizer_cov_trace_pc() #15
  %mp_end_port.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 12
  %197 = ptrtoint ptr %mp_end_port.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %mp_end_port.i.i, align 4
  %199 = lshr i16 %198, 1
  %conv5.i.i = trunc i16 %199 to i8
  br label %if.end.i377.i

if.else.i374.i:                                   ; preds = %if.then.i373.i
  call void @__sanitizer_cov_trace_pc() #15
  %mp_agg_pkt_limit.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 6
  %200 = ptrtoint ptr %mp_agg_pkt_limit.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %mp_agg_pkt_limit.i.i, align 1
  br label %if.end.i377.i

if.end.i377.i:                                    ; preds = %if.else.i374.i, %if.then3.i.i
  %tmp.0.i.i = phi i8 [ %conv5.i.i, %if.then3.i.i ], [ %201, %if.else.i374.i ]
  %max_ports.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 5
  %202 = ptrtoint ptr %max_ports.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %max_ports.i.i, align 4
  %conv6.i375.i = zext i8 %203 to i32
  %conv9.i.i = zext i16 %193 to i32
  %conv11.i.i = zext i8 %191 to i32
  %sub.i.i = sub nsw i32 %conv11.i.i, %conv9.i.i
  %add.i376.i = add nsw i32 %sub.i.i, %conv6.i375.i
  %conv12.i.i = zext i8 %tmp.0.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i376.i, i32 %conv12.i.i)
  %cmp13.not.i.i = icmp slt i32 %add.i376.i, %conv12.i.i
  br i1 %cmp13.not.i.i, label %if.end.i377.i.if.end17.i.i_crit_edge, label %if.end.i377.i.if.then60.i_crit_edge

if.end.i377.i.if.then60.i_crit_edge:              ; preds = %if.end.i377.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60.i

if.end.i377.i.if.end17.i.i_crit_edge:             ; preds = %if.end.i377.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.end.i377.i.if.end17.i.i_crit_edge, %lor.lhs.false58.i.if.end17.i.i_crit_edge
  %204 = ptrtoint ptr %supports_sdio_new_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %supports_sdio_new_mode.i.i, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool19.not.i.i = icmp eq i8 %205, 0
  br i1 %tobool19.not.i.i, label %if.end17.i.i.if.end62.i_crit_edge, label %mp_rx_aggr_port_limit_reached.exit.i

if.end17.i.i.if.end62.i_crit_edge:                ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.i

mp_rx_aggr_port_limit_reached.exit.i:             ; preds = %if.end17.i.i
  %conv23.i.i = zext i8 %191 to i32
  %conv26.i.i = zext i16 %193 to i32
  %sub27.i.i = sub nsw i32 %conv23.i.i, %conv26.i.i
  %mp_end_port28.i.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 12
  %206 = ptrtoint ptr %mp_end_port28.i.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %mp_end_port28.i.i, align 4
  %208 = lshr i16 %207, 1
  %209 = zext i16 %208 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub27.i.i, i32 %209)
  %cmp31.not.i.not.i = icmp slt i32 %sub27.i.i, %209
  br i1 %cmp31.not.i.not.i, label %mp_rx_aggr_port_limit_reached.exit.i.if.end62.i_crit_edge, label %mp_rx_aggr_port_limit_reached.exit.i.if.then60.i_crit_edge

mp_rx_aggr_port_limit_reached.exit.i.if.then60.i_crit_edge: ; preds = %mp_rx_aggr_port_limit_reached.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60.i

mp_rx_aggr_port_limit_reached.exit.i.if.end62.i_crit_edge: ; preds = %mp_rx_aggr_port_limit_reached.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.i

if.then60.i:                                      ; preds = %mp_rx_aggr_port_limit_reached.exit.i.if.then60.i_crit_edge, %if.end.i377.i.if.then60.i_crit_edge, %mp_rx_aggr_setup.exit.i.if.then60.i_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host_mp_aggr) #13
  br label %if.then64.i

if.end62.i:                                       ; preds = %mp_rx_aggr_port_limit_reached.exit.i.if.end62.i_crit_edge, %if.end17.i.i.if.end62.i_crit_edge
  br i1 %tobool63.not.i, label %if.end62.i.mwifiex_sdio_card_to_host_mp_aggr.exit_crit_edge, label %if.end62.i.if.then64.i_crit_edge

if.end62.i.if.then64.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then64.i

if.end62.i.mwifiex_sdio_card_to_host_mp_aggr.exit_crit_edge: ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_sdio_card_to_host_mp_aggr.exit

if.then64.i:                                      ; preds = %if.end62.i.if.then64.i_crit_edge, %if.then60.i, %if.end50.i.if.then64.i_crit_edge, %if.then21.i.if.then64.i_crit_edge
  %tobool170.not.i = phi i1 [ true, %if.then21.i.if.then64.i_crit_edge ], [ false, %if.end50.i.if.then64.i_crit_edge ], [ true, %if.then60.i ], [ true, %if.end62.i.if.then64.i_crit_edge ]
  %f_do_rx_cur.0411429.i = phi i32 [ 0, %if.then21.i.if.then64.i_crit_edge ], [ 1, %if.end50.i.if.then64.i_crit_edge ], [ 0, %if.then60.i ], [ 0, %if.end62.i.if.then64.i_crit_edge ]
  %f_post_aggr_cur.0412428.i = phi i32 [ 1, %if.then21.i.if.then64.i_crit_edge ], [ 0, %if.end50.i.if.then64.i_crit_edge ], [ 0, %if.then60.i ], [ 0, %if.end62.i.if.then64.i_crit_edge ]
  %pkt_cnt66.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 2
  %210 = ptrtoint ptr %pkt_cnt66.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %pkt_cnt66.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.105, i32 noundef %211) #13
  %supports_sdio_new_mode.i371 = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 17
  %212 = ptrtoint ptr %supports_sdio_new_mode.i371 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %supports_sdio_new_mode.i371, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool67.not.i = icmp eq i8 %213, 0
  br i1 %tobool67.not.i, label %if.else83.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then64.i
  %max_ports.i372 = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 5
  %214 = ptrtoint ptr %max_ports.i372 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %max_ports.i372, align 4
  %conv69.i = zext i8 %215 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %cmp70441.not.i = icmp eq i8 %215, 0
  br i1 %cmp70441.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %ports.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 3
  %216 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %ports.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %port_count.0443.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %i.0442.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc77.i, %for.body.i.for.body.i_crit_edge ]
  %218 = lshr i32 %217, %i.0442.i
  %219 = and i32 %218, 1
  %spec.select.i = add i32 %219, %port_count.0443.i
  %inc77.i = add nuw nsw i32 %i.0442.i, 1
  %exitcond.not.i = icmp eq i32 %inc77.i, %conv69.i
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo.i = shl i32 %spec.select.i, 8
  %phi.bo449.i = add i32 %phi.bo.i, -256
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %for.cond.preheader.i.for.end.i_crit_edge
  %port_count.0.lcssa.i = phi i32 [ -256, %for.cond.preheader.i.for.end.i_crit_edge ], [ %phi.bo449.i, %for.end.loopexit.i ]
  %220 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %ioport.i, align 4
  %or.i373 = or i32 %221, %port_count.0.lcssa.i
  br label %if.end94.i

if.else83.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #15
  %222 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %ioport.i, align 4
  %ports87.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 3
  %224 = ptrtoint ptr %ports87.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %ports87.i, align 4
  %shl88.i = shl i32 %225, 4
  %or85.i = or i32 %shl88.i, %223
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.else83.i, %for.end.i
  %or85.sink.i = phi i32 [ %or85.i, %if.else83.i ], [ %or.i373, %for.end.i ]
  %or89.i = or i32 %or85.sink.i, 4096
  %start_port91.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 4
  %226 = ptrtoint ptr %start_port91.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %start_port91.i, align 4
  %conv92.i = zext i16 %227 to i32
  %228 = ptrtoint ptr %pkt_cnt66.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %pkt_cnt66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %229)
  %cmp97.i = icmp eq i32 %229, 1
  br i1 %cmp97.i, label %if.then99.i, label %if.end94.i.if.end105.i_crit_edge

if.end94.i.if.end105.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105.i

if.then99.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #15
  %230 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %ioport.i, align 4
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then99.i, %if.end94.i.if.end105.i_crit_edge
  %.pn = phi i32 [ %231, %if.then99.i ], [ %or89.i, %if.end94.i.if.end105.i_crit_edge ]
  %mport.1.i = add i32 %.pn, %conv92.i
  %232 = ptrtoint ptr %mpa_rx.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mpa_rx.i, align 4
  %buf_len108.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 1
  %234 = ptrtoint ptr %buf_len108.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %buf_len108.i, align 4
  %236 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %card1, align 4
  %div22.i.i = and i32 %235, -256
  %and9.i.i = and i32 %mport.1.i, 1048575
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %237, align 4
  tail call void @sdio_claim_host(ptr noundef %239) #13
  %240 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mport.1.i)
  %cmp.i378440.i = icmp slt i32 %mport.1.i, 0
  %mul.i.i = select i1 %cmp.i378440.i, i32 %235, i32 %div22.i.i
  %call.i.i = tail call i32 @sdio_readsb(ptr noundef %241, ptr noundef %233, i32 noundef %and9.i.i, i32 noundef %mul.i.i) #13
  %242 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %237, align 4
  tail call void @sdio_release_host(ptr noundef %243) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool110.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool110.not.i, label %if.end112.i, label %if.end105.i.error.i_crit_edge

if.end105.i.error.i_crit_edge:                    ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.i

if.end112.i:                                      ; preds = %if.end105.i
  %244 = ptrtoint ptr %pkt_cnt66.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %pkt_cnt66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %cmp118445.not.i = icmp eq i32 %245, 0
  br i1 %cmp118445.not.i, label %if.end112.i.rx_curr_single.i_crit_edge, label %for.body120.lr.ph.i

if.end112.i.rx_curr_single.i_crit_edge:           ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rx_curr_single.i

for.body120.lr.ph.i:                              ; preds = %if.end112.i
  %246 = ptrtoint ptr %mpa_rx.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %mpa_rx.i, align 4
  %len_arr122.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 6
  br label %for.body120.i

for.body120.i:                                    ; preds = %cleanup.i.for.body120.i_crit_edge, %for.body120.lr.ph.i
  %curr_ptr.0447.i = phi ptr [ %247, %for.body120.lr.ph.i ], [ %curr_ptr.1.i, %cleanup.i.for.body120.i_crit_edge ]
  %pind.0446.i = phi i32 [ 0, %for.body120.lr.ph.i ], [ %inc159.i, %cleanup.i.for.body120.i_crit_edge ]
  %248 = ptrtoint ptr %len_arr122.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %len_arr122.i, align 4
  %250 = ptrtoint ptr %curr_ptr.0447.i to i32
  call void @__asan_loadN_noabort(i32 %250, i32 2)
  %251 = load i16, ptr %curr_ptr.0447.i, align 1
  %252 = tail call i16 @llvm.bswap.i16(i16 %251) #13
  %conv124.i = zext i16 %252 to i32
  %arrayidx125.i = getelementptr i8, ptr %curr_ptr.0447.i, i32 2
  %253 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_loadN_noabort(i32 %253, i32 2)
  %254 = load i16, ptr %arrayidx125.i, align 1
  %255 = tail call i16 @llvm.bswap.i16(i16 %254) #13
  %conv127.i = zext i16 %255 to i32
  %arrayidx128.i = getelementptr i32, ptr %249, i32 %pind.0446.i
  %256 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx128.i, align 4
  %call129.i = tail call ptr @mwifiex_alloc_dma_align_buf(i32 noundef %257, i32 noundef 3264) #13
  %tobool130.not.i = icmp eq ptr %call129.i, null
  br i1 %tobool130.not.i, label %if.then131.i, label %if.end133.i

if.then131.i:                                     ; preds = %for.body120.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.106, i32 noundef %conv124.i, i32 noundef %conv127.i) #13
  br label %cleanup.i

if.end133.i:                                      ; preds = %for.body120.i
  %258 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx128.i, align 4
  %call135.i = tail call ptr @skb_put(ptr noundef nonnull %call129.i, i32 noundef %259) #13
  %260 = zext i16 %255 to i64
  call void @__sanitizer_cov_trace_switch(i64 %260, ptr @__sancov_gen_cov_switch_values.153)
  switch i16 %255, label %if.end133.i.if.else150.i_crit_edge [
    i16 0, label %if.end133.i.land.lhs.true144.i_crit_edge
    i16 10, label %land.lhs.true141.i
  ]

if.end133.i.land.lhs.true144.i_crit_edge:         ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true144.i

if.end133.i.if.else150.i_crit_edge:               ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else150.i

land.lhs.true141.i:                               ; preds = %if.end133.i
  %261 = ptrtoint ptr %sdio_rx_aggr_enable.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %sdio_rx_aggr_enable.i, align 1, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool142.not.i = icmp eq i8 %262, 0
  br i1 %tobool142.not.i, label %land.lhs.true141.i.if.else150.i_crit_edge, label %land.lhs.true141.i.land.lhs.true144.i_crit_edge

land.lhs.true141.i.land.lhs.true144.i_crit_edge:  ; preds = %land.lhs.true141.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true144.i

land.lhs.true141.i.if.else150.i_crit_edge:        ; preds = %land.lhs.true141.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else150.i

land.lhs.true144.i:                               ; preds = %land.lhs.true141.i.land.lhs.true144.i_crit_edge, %if.end133.i.land.lhs.true144.i_crit_edge
  %263 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx128.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %conv124.i)
  %cmp146.not.i = icmp ult i32 %264, %conv124.i
  br i1 %cmp146.not.i, label %land.lhs.true144.i.if.else150.i_crit_edge, label %if.then148.i

land.lhs.true144.i.if.else150.i_crit_edge:        ; preds = %land.lhs.true144.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else150.i

if.then148.i:                                     ; preds = %land.lhs.true144.i
  call void @__sanitizer_cov_trace_pc() #15
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call129.i, i32 0, i32 19
  %265 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %data.i, align 4
  %267 = call ptr @memcpy(ptr %266, ptr %curr_ptr.0447.i, i32 %conv124.i)
  tail call void @skb_trim(ptr noundef nonnull %call129.i, i32 noundef %conv124.i) #13
  tail call fastcc void @mwifiex_decode_rx_packet(ptr noundef %adapter, ptr noundef nonnull %call129.i, i32 noundef %conv127.i) #13
  br label %cleanup.i

if.else150.i:                                     ; preds = %land.lhs.true144.i.if.else150.i_crit_edge, %land.lhs.true141.i.if.else150.i_crit_edge, %if.end133.i.if.else150.i_crit_edge
  %268 = ptrtoint ptr %sdio_rx_aggr_enable.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %sdio_rx_aggr_enable.i, align 1, !range !387
  %270 = zext i8 %269 to i32
  %271 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx128.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.107, i32 noundef %270, i32 noundef %conv127.i, i32 noundef %conv124.i, i32 noundef %272) #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call129.i, i32 noundef 1) #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else150.i, %if.then148.i, %if.then131.i
  %273 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %.pn.i = load i32, ptr %arrayidx128.i, align 4
  %curr_ptr.1.i = getelementptr i8, ptr %curr_ptr.0447.i, i32 %.pn.i
  %inc159.i = add nuw i32 %pind.0446.i, 1
  %274 = ptrtoint ptr %pkt_cnt66.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %pkt_cnt66.i, align 4
  %cmp118.i = icmp ult i32 %inc159.i, %275
  br i1 %cmp118.i, label %cleanup.i.for.body120.i_crit_edge, label %cleanup.i.rx_curr_single.i_crit_edge

cleanup.i.rx_curr_single.i_crit_edge:             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rx_curr_single.i

cleanup.i.for.body120.i_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body120.i

rx_curr_single.i:                                 ; preds = %cleanup.i.rx_curr_single.i_crit_edge, %if.end112.i.rx_curr_single.i_crit_edge
  %conv127444.lcssa.i = phi i32 [ -1, %if.end112.i.rx_curr_single.i_crit_edge ], [ %conv127.i, %cleanup.i.rx_curr_single.i_crit_edge ]
  %276 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %conv127444.lcssa.i, ptr %pkt_type.i, align 4
  %277 = call ptr @memset(ptr %buf_len108.i, i32 0, i32 14)
  br i1 %tobool170.not.i, label %rx_curr_single.i.if.end209.i_crit_edge, label %rx_curr_single.i.if.then171.i_crit_edge

rx_curr_single.i.if.then171.i_crit_edge:          ; preds = %rx_curr_single.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then171.i

rx_curr_single.i.if.end209.i_crit_edge:           ; preds = %rx_curr_single.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end209.i

if.then171.i:                                     ; preds = %rx_curr_single.i.if.then171.i_crit_edge, %if.else31.i.if.then171.i_crit_edge, %if.then4.i, %if.then.i365
  %f_post_aggr_cur.1438.i = phi i32 [ %f_post_aggr_cur.0412428.i, %rx_curr_single.i.if.then171.i_crit_edge ], [ 0, %if.then.i365 ], [ 0, %if.then4.i ], [ 0, %if.else31.i.if.then171.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.108, i32 noundef %conv164, i32 noundef %conv207) #13
  %call175.i = tail call ptr @mwifiex_alloc_dma_align_buf(i32 noundef %conv207, i32 noundef 3264) #13
  %tobool176.not.i = icmp eq ptr %call175.i, null
  br i1 %tobool176.not.i, label %if.then177.i, label %if.end190.i

if.then177.i:                                     ; preds = %if.then171.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.109, i32 noundef %conv164, i32 noundef %conv207) #13
  %mpa_rx180.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24
  %278 = ptrtoint ptr %mpa_rx180.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %mpa_rx180.i, align 4
  %280 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %ioport.i, align 4
  %add185.i = add i32 %281, %conv164
  %call186.i = call fastcc i32 @mwifiex_sdio_card_to_host(ptr noundef %adapter, ptr noundef nonnull %pkt_type.i, ptr noundef %279, i32 noundef %conv207, i32 noundef %add185.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186.i)
  %tobool187.not.i = icmp eq i32 %call186.i, 0
  br i1 %tobool187.not.i, label %if.then177.i.mwifiex_sdio_card_to_host_mp_aggr.exit_crit_edge, label %if.then177.i.error.i_crit_edge

if.then177.i.error.i_crit_edge:                   ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.i

if.then177.i.mwifiex_sdio_card_to_host_mp_aggr.exit_crit_edge: ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_sdio_card_to_host_mp_aggr.exit

if.end190.i:                                      ; preds = %if.then171.i
  %call192.i = tail call ptr @skb_put(ptr noundef nonnull %call175.i, i32 noundef %conv207) #13
  %data193.i = getelementptr inbounds %struct.sk_buff, ptr %call175.i, i32 0, i32 19
  %282 = ptrtoint ptr %data193.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %data193.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call175.i, i32 0, i32 6
  %284 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %len.i, align 4
  %286 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %ioport.i, align 4
  %add196.i = add i32 %287, %conv164
  %call197.i = call fastcc i32 @mwifiex_sdio_card_to_host(ptr noundef %adapter, ptr noundef nonnull %pkt_type.i, ptr noundef %283, i32 noundef %285, i32 noundef %add196.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197.i)
  %tobool198.not.i = icmp eq i32 %call197.i, 0
  br i1 %tobool198.not.i, label %if.end200.i, label %if.end190.i.error.i_crit_edge

if.end190.i.error.i_crit_edge:                    ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.i

if.end200.i:                                      ; preds = %if.end190.i
  %288 = ptrtoint ptr %sdio_rx_aggr_enable.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %sdio_rx_aggr_enable.i, align 1, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %tobool202.not.i = icmp eq i8 %289, 0
  br i1 %tobool202.not.i, label %land.lhs.true203.i, label %if.end200.i.if.end207.i_crit_edge

if.end200.i.if.end207.i_crit_edge:                ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207.i

land.lhs.true203.i:                               ; preds = %if.end200.i
  %290 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %pkt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %291)
  %cmp204.i = icmp eq i32 %291, 10
  br i1 %cmp204.i, label %if.then206.i, label %land.lhs.true203.i.if.end207.i_crit_edge

land.lhs.true203.i.if.end207.i_crit_edge:         ; preds = %land.lhs.true203.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207.i

if.then206.i:                                     ; preds = %land.lhs.true203.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.110, i32 noundef 10) #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call175.i, i32 noundef 1) #13
  br label %mwifiex_sdio_card_to_host_mp_aggr.exit

if.end207.i:                                      ; preds = %land.lhs.true203.i.if.end207.i_crit_edge, %if.end200.i.if.end207.i_crit_edge
  %292 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %pkt_type.i, align 4
  tail call fastcc void @mwifiex_decode_rx_packet(ptr noundef %adapter, ptr noundef nonnull %call175.i, i32 noundef %293) #13
  br label %if.end209.i

if.end209.i:                                      ; preds = %if.end207.i, %rx_curr_single.i.if.end209.i_crit_edge
  %f_post_aggr_cur.1439.i = phi i32 [ %f_post_aggr_cur.1438.i, %if.end207.i ], [ %f_post_aggr_cur.0412428.i, %rx_curr_single.i.if.end209.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f_post_aggr_cur.1439.i)
  %tobool210.not.i = icmp eq i32 %f_post_aggr_cur.1439.i, 0
  br i1 %tobool210.not.i, label %if.end209.i.mwifiex_sdio_card_to_host_mp_aggr.exit_crit_edge, label %if.then211.i

if.end209.i.mwifiex_sdio_card_to_host_mp_aggr.exit_crit_edge: ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_sdio_card_to_host_mp_aggr.exit

if.then211.i:                                     ; preds = %if.end209.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.103) #13
  %buf_len.i380.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 1
  %294 = ptrtoint ptr %buf_len.i380.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %buf_len.i380.i, align 4
  %add.i381.i = add i32 %295, %conv207
  store i32 %add.i381.i, ptr %buf_len.i380.i, align 4
  %pkt_cnt.i382.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 2
  %296 = ptrtoint ptr %pkt_cnt.i382.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %pkt_cnt.i382.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool.not.i383.i = icmp eq i32 %297, 0
  br i1 %tobool.not.i383.i, label %if.then.i386.i, label %if.then211.i.if.end.i389.i_crit_edge

if.then211.i.if.end.i389.i_crit_edge:             ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i389.i

if.then.i386.i:                                   ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv2.i384.i = zext i8 %port.1 to i16
  %start_port.i385.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 4
  %298 = ptrtoint ptr %start_port.i385.i to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %conv2.i384.i, ptr %start_port.i385.i, align 4
  br label %if.end.i389.i

if.end.i389.i:                                    ; preds = %if.then.i386.i, %if.then211.i.if.end.i389.i_crit_edge
  %supports_sdio_new_mode.i387.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 17
  %299 = ptrtoint ptr %supports_sdio_new_mode.i387.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %supports_sdio_new_mode.i387.i, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %300)
  %tobool4.not.i388.i = icmp eq i8 %300, 0
  br i1 %tobool4.not.i388.i, label %if.else.i396.i, label %if.end.i389.i.mp_rx_aggr_setup.exit406.i_crit_edge

if.end.i389.i.mp_rx_aggr_setup.exit406.i_crit_edge: ; preds = %if.end.i389.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mp_rx_aggr_setup.exit406.i

if.else.i396.i:                                   ; preds = %if.end.i389.i
  call void @__sanitizer_cov_trace_pc() #15
  %start_port9.i392.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 4
  %301 = ptrtoint ptr %start_port9.i392.i to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %start_port9.i392.i, align 4
  %303 = zext i8 %port.1 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %302, i16 %303)
  %cmp.not.i393.i = icmp ugt i16 %302, %303
  %add23.i394.i = zext i1 %cmp.not.i393.i to i32
  %spec.select.i395.i = add i32 %297, %add23.i394.i
  br label %mp_rx_aggr_setup.exit406.i

mp_rx_aggr_setup.exit406.i:                       ; preds = %if.else.i396.i, %if.end.i389.i.mp_rx_aggr_setup.exit406.i_crit_edge
  %.sink.i397.i = phi i32 [ %spec.select.i395.i, %if.else.i396.i ], [ %conv164, %if.end.i389.i.mp_rx_aggr_setup.exit406.i_crit_edge ]
  %shl16.i398.i = shl nuw i32 1, %.sink.i397.i
  %ports18.i399.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 3
  %304 = ptrtoint ptr %ports18.i399.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %ports18.i399.i, align 4
  %or19.i400.i = or i32 %305, %shl16.i398.i
  store i32 %or19.i400.i, ptr %ports18.i399.i, align 4
  %skb_arr.i401.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 5
  %306 = ptrtoint ptr %skb_arr.i401.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %skb_arr.i401.i, align 4
  %arrayidx.i402.i = getelementptr ptr, ptr %307, i32 %297
  %308 = ptrtoint ptr %arrayidx.i402.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr null, ptr %arrayidx.i402.i, align 4
  %len_arr.i403.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 6
  %309 = ptrtoint ptr %len_arr.i403.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %len_arr.i403.i, align 4
  %311 = ptrtoint ptr %pkt_cnt.i382.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %pkt_cnt.i382.i, align 4
  %arrayidx37.i404.i = getelementptr i32, ptr %310, i32 %312
  %313 = ptrtoint ptr %arrayidx37.i404.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %conv207, ptr %arrayidx37.i404.i, align 4
  %314 = load i32, ptr %pkt_cnt.i382.i, align 4
  %inc.i405.i = add i32 %314, 1
  store i32 %inc.i405.i, ptr %pkt_cnt.i382.i, align 4
  br label %mwifiex_sdio_card_to_host_mp_aggr.exit

error.i:                                          ; preds = %if.end190.i.error.i_crit_edge, %if.then177.i.error.i_crit_edge, %if.end105.i.error.i_crit_edge
  %f_do_rx_cur.2.i = phi i32 [ 1, %if.end190.i.error.i_crit_edge ], [ 1, %if.then177.i.error.i_crit_edge ], [ %f_do_rx_cur.0411429.i, %if.end105.i.error.i_crit_edge ]
  %skb.0.i = phi ptr [ %call175.i, %if.end190.i.error.i_crit_edge ], [ null, %if.then177.i.error.i_crit_edge ], [ null, %if.end105.i.error.i_crit_edge ]
  %pkt_cnt214.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 2
  %315 = ptrtoint ptr %pkt_cnt214.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %pkt_cnt214.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %cmp215.not.i = icmp eq i32 %316, 0
  br i1 %cmp215.not.i, label %error.i.if.end229.i_crit_edge, label %do.body218.i

error.i.if.end229.i_crit_edge:                    ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end229.i

do.body218.i:                                     ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #15
  %buf_len222.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %143, i32 0, i32 24, i32 1
  %317 = call ptr @memset(ptr %buf_len222.i, i32 0, i32 14)
  br label %if.end229.i

if.end229.i:                                      ; preds = %do.body218.i, %error.i.if.end229.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f_do_rx_cur.2.i)
  %tobool230.not.i = icmp eq i32 %f_do_rx_cur.2.i, 0
  %tobool232.not.i = icmp eq ptr %skb.0.i, null
  %or.cond369.i = select i1 %tobool230.not.i, i1 true, i1 %tobool232.not.i
  br i1 %or.cond369.i, label %if.end229.i.if.then211_crit_edge, label %if.then233.i

if.end229.i.if.then211_crit_edge:                 ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then211

if.then233.i:                                     ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb.0.i, i32 noundef 1) #13
  br label %if.then211

mwifiex_sdio_card_to_host_mp_aggr.exit:           ; preds = %mp_rx_aggr_setup.exit406.i, %if.end209.i.mwifiex_sdio_card_to_host_mp_aggr.exit_crit_edge, %if.then206.i, %if.then177.i.mwifiex_sdio_card_to_host_mp_aggr.exit_crit_edge, %if.end62.i.mwifiex_sdio_card_to_host_mp_aggr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pkt_type.i) #13
  br label %while.cond

if.then211:                                       ; preds = %if.then233.i, %if.end229.i.if.then211_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pkt_type.i) #13
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.83, i32 noundef %conv9) #13
  br label %term_cmd

term_cmd:                                         ; preds = %if.then211, %cleanup
  %318 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #13
  %320 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 -1, ptr %ret.i, align 4
  %321 = ptrtoint ptr %319 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %319, align 4
  tail call void @sdio_claim_host(ptr noundef %322) #13
  %323 = ptrtoint ptr %319 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %319, align 4
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %324, i32 noundef 0, ptr noundef nonnull %ret.i) #13
  %325 = ptrtoint ptr %319 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %319, align 4
  call void @sdio_release_host(ptr noundef %326) #13
  %327 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %tobool216.not = icmp eq i32 %328, 0
  br i1 %tobool216.not, label %if.else, label %if.then217

if.then217:                                       ; preds = %term_cmd
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.84) #13
  br label %if.end219

if.else:                                          ; preds = %term_cmd
  call void @__sanitizer_cov_trace_pc() #15
  %conv218 = zext i8 %call.i to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.85, i32 noundef %conv218) #13
  br label %if.end219

if.end219:                                        ; preds = %if.else, %if.then217
  %329 = or i8 %call.i, 4
  %330 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %card1, align 4
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %331, align 4
  call void @sdio_claim_host(ptr noundef %333) #13
  %334 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %331, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #13
  %336 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 -1, ptr %ret.i.i, align 4
  call void @sdio_writeb(ptr noundef %335, i8 noundef zeroext %329, i32 noundef 0, ptr noundef nonnull %ret.i.i) #13
  %337 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %ret.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #13
  %339 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %331, align 4
  call void @sdio_release_host(ptr noundef %340) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %tobool224.not = icmp eq i32 %338, 0
  br i1 %tobool224.not, label %if.else226, label %if.then225

if.then225:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.62) #13
  br label %if.end227

if.else226:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.86) #13
  br label %if.end227

if.end227:                                        ; preds = %if.else226, %if.then225
  %341 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i377) #13
  %343 = ptrtoint ptr %ret.i377 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 -1, ptr %ret.i377, align 4
  %344 = ptrtoint ptr %342 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %342, align 4
  call void @sdio_claim_host(ptr noundef %345) #13
  %346 = ptrtoint ptr %342 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %342, align 4
  %call.i379 = call zeroext i8 @sdio_readb(ptr noundef %347, i32 noundef 0, ptr noundef nonnull %ret.i377) #13
  %348 = ptrtoint ptr %342 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %342, align 4
  call void @sdio_release_host(ptr noundef %349) #13
  %350 = ptrtoint ptr %ret.i377 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %ret.i377, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i377) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %tobool229.not = icmp eq i32 %351, 0
  br i1 %tobool229.not, label %if.else231, label %if.then230

if.then230:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.84) #13
  br label %cleanup234

if.else231:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  %conv232 = zext i8 %call.i379 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.87, i32 noundef %conv232) #13
  br label %cleanup234

cleanup234:                                       ; preds = %if.else231, %if.then230, %if.then203, %if.then161, %if.end123.cleanup234_crit_edge, %cleanup.thread, %entry.cleanup234_crit_edge
  %retval.1 = phi i32 [ -1, %if.then203 ], [ 0, %entry.cleanup234_crit_edge ], [ 0, %if.then161 ], [ 0, %if.end123.cleanup234_crit_edge ], [ -1, %if.else231 ], [ -1, %if.then230 ], [ -1, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_host_to_card(ptr noundef %adapter, i8 noundef zeroext %type, ptr nocapture noundef readonly %skb, ptr noundef readonly %tx_param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %sub = add i32 %5, 255
  %div101 = and i32 %sub, -256
  %conv = trunc i32 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv) #13
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %3, align 1
  %conv3 = zext i8 %type to i16
  %add.ptr4 = getelementptr i8, ptr %3, i32 2
  %8 = shl nuw i16 %conv3, 8
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %add.ptr4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp = icmp eq i8 %type, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card1, align 4
  %reg2.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg2.i, align 4
  %mp_wr_bitmap.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %11, i32 0, i32 11
  %14 = ptrtoint ptr %mp_wr_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mp_wr_bitmap.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.113, i32 noundef %15) #13
  %mp_data_port_mask.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %11, i32 0, i32 13
  %16 = ptrtoint ptr %mp_data_port_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mp_data_port_mask.i, align 4
  %and.i = and i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %data_sent.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %18 = ptrtoint ptr %data_sent.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %data_sent.i, align 4
  br label %if.then7

if.end.i:                                         ; preds = %if.then
  %19 = ptrtoint ptr %mp_wr_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mp_wr_bitmap.i, align 4
  %curr_wr_port.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %11, i32 0, i32 15
  %21 = ptrtoint ptr %curr_wr_port.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %curr_wr_port.i, align 1
  %conv.i = zext i8 %22 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and4.i = and i32 %shl.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %neg.i = xor i32 %shl.i, -1
  %and11.i = and i32 %20, %neg.i
  %23 = ptrtoint ptr %mp_wr_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and11.i, ptr %mp_wr_bitmap.i, align 4
  %inc.i = add i8 %22, 1
  %24 = ptrtoint ptr %curr_wr_port.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %inc.i, ptr %curr_wr_port.i, align 1
  %mp_end_port.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %11, i32 0, i32 12
  %25 = ptrtoint ptr %mp_end_port.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mp_end_port.i, align 4
  %27 = zext i8 %inc.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %27)
  %cmp.i = icmp eq i16 %26, %27
  br i1 %cmp.i, label %if.then18.i, label %if.then6.i.if.end22.i_crit_edge

if.then6.i.if.end22.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  %start_wr_port.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %13, i32 0, i32 1
  %28 = ptrtoint ptr %start_wr_port.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %start_wr_port.i, align 1
  %30 = ptrtoint ptr %curr_wr_port.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %curr_wr_port.i, align 1
  br label %if.end22.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %data_sent21.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %31 = ptrtoint ptr %data_sent21.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %data_sent21.i, align 4
  br label %if.then7

if.end22.i:                                       ; preds = %if.then18.i, %if.then6.i.if.end22.i_crit_edge
  %has_control_mask.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %11, i32 0, i32 18
  %32 = ptrtoint ptr %has_control_mask.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_control_mask.i, align 1, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool23.not.i = icmp ne i8 %33, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp25.i = icmp eq i8 %22, 0
  %or.cond110 = select i1 %tobool23.not.i, i1 %cmp25.i, i1 false
  br i1 %or.cond110, label %if.then27.i, label %mwifiex_get_wr_port_data.exit

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %curr_wr_port.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %curr_wr_port.i, align 1
  %conv29.i = zext i8 %35 to i32
  %36 = ptrtoint ptr %mp_wr_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mp_wr_bitmap.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.114, i32 noundef 0, i32 noundef %conv29.i, i32 noundef %15, i32 noundef %37) #13
  br label %if.then7

mwifiex_get_wr_port_data.exit:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %mp_wr_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mp_wr_bitmap.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.115, i32 noundef %conv.i, i32 noundef %15, i32 noundef %39) #13
  br label %if.end18

if.then7:                                         ; preds = %if.then27.i, %if.else.i, %if.then.i
  %retval.0.i.ph = phi i32 [ -16, %if.then.i ], [ -16, %if.else.i ], [ -1, %if.then27.i ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.111, ptr noundef nonnull @__func__.mwifiex_sdio_host_to_card) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %cmd_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 54
  %40 = ptrtoint ptr %cmd_sent to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %cmd_sent, align 1
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %41 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %intf_hdr_len, align 4
  %conv8 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv8)
  %cmp9.not = icmp ule i32 %5, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2312, i32 %5)
  %cmp11 = icmp ugt i32 %5, 2312
  %or.cond = or i1 %cmp11, %cmp9.not
  br i1 %or.cond, label %if.then13, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.mwifiex_sdio_host_to_card, ptr noundef %3, i32 noundef %5) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.else.if.end14_crit_edge
  %supports_sdio_new_mode = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 17
  %43 = ptrtoint ptr %supports_sdio_new_mode to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %supports_sdio_new_mode, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool15.not = icmp eq i8 %44, 0
  %spec.select = select i1 %tobool15.not, i32 0, i32 32768
  br label %if.end18

if.end18:                                         ; preds = %if.end14, %mwifiex_get_wr_port_data.exit
  %port.1 = phi i32 [ %conv.i, %mwifiex_get_wr_port_data.exit ], [ %spec.select, %if.end14 ]
  %tobool19.not = icmp eq ptr %tx_param, null
  br i1 %tobool19.not, label %if.end18.if.end24_crit_edge, label %if.then20

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %tx_param to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_param, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end18.if.end24_crit_edge
  %.sink = phi i32 [ %46, %if.then20 ], [ 0, %if.end18.if.end24_crit_edge ]
  %call23 = tail call fastcc i32 @mwifiex_host_to_card_mp_aggr(ptr noundef %adapter, ptr noundef %3, i32 noundef %div101, i32 noundef %port.1, i32 noundef %.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.else41, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp28 = icmp eq i8 %type, 1
  br i1 %cmp28, label %if.then30, label %if.then26.if.end32_crit_edge

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  %cmd_sent31 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 54
  %47 = ptrtoint ptr %cmd_sent31 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %cmd_sent31, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then26.if.end32_crit_edge
  br i1 %cmp, label %if.then36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  %48 = ptrtoint ptr %data_sent to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %data_sent, align 4
  %conv37 = trunc i32 %port.1 to i8
  %curr_wr_port = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 15
  %49 = ptrtoint ptr %curr_wr_port to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv37, ptr %curr_wr_port, align 1
  %conv39 = and i32 %port.1, 255
  %shl = shl nuw i32 1, %conv39
  %mp_wr_bitmap = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 11
  %50 = ptrtoint ptr %mp_wr_bitmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mp_wr_bitmap, align 4
  %or = or i32 %51, %shl
  store i32 %or, ptr %mp_wr_bitmap, align 4
  br label %cleanup

if.else41:                                        ; preds = %if.end24
  br i1 %cmp, label %if.then45, label %if.else41.cleanup_crit_edge

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then45:                                        ; preds = %if.else41
  %mp_wr_bitmap46 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %mp_wr_bitmap46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mp_wr_bitmap46, align 4
  %curr_wr_port47 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 15
  %54 = ptrtoint ptr %curr_wr_port47 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %curr_wr_port47, align 1
  %conv48 = zext i8 %55 to i32
  %shl49 = shl nuw i32 1, %conv48
  %and = and i32 %shl49, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  %data_sent52 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  br i1 %tobool50.not, label %if.then51, label %if.else53

if.then51:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %data_sent52 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %data_sent52, align 4
  br label %cleanup

if.else53:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %data_sent52 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %data_sent52, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else53, %if.then51, %if.else41.cleanup_crit_edge, %if.then36, %if.end32.cleanup_crit_edge, %if.then7
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then7 ], [ 0, %if.else41.cleanup_crit_edge ], [ 0, %if.else53 ], [ 0, %if.then51 ], [ %call23, %if.end32.cleanup_crit_edge ], [ %call23, %if.then36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_pm_wakeup_card_complete(ptr noundef %adapter) #2 align 64 {
entry:
  %ret.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 32, ptr noundef nonnull @.str.124) #13
  %card1.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #13
  %6 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ret.i.i, align 4
  call void @sdio_writeb(ptr noundef %5, i8 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %ret.i.i) #13
  %7 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ret.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %10) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_update_mp_end_port(ptr noundef %adapter, i16 noundef zeroext %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %reg2 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg2, align 4
  %mp_end_port = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %mp_end_port to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %port, ptr %mp_end_port, align 4
  %data_port_mask = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %data_port_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_port_mask, align 4
  %mp_data_port_mask = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %mp_data_port_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %mp_data_port_mask, align 4
  %start_wr_port = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %start_wr_port to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %start_wr_port, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = zext i16 %port to i32
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %max_ports = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 5
  %conv4 = zext i16 %port to i32
  %10 = ptrtoint ptr %max_ports to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_ports, align 4
  %conv27 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv27, i32 %conv4)
  %cmp.not29.not = icmp ugt i32 %conv27, %conv4
  br i1 %cmp.not29.not, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %12 = ptrtoint ptr %mp_data_port_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %mp_data_port_mask.promoted = load i32, ptr %mp_data_port_mask, align 4
  %13 = ptrtoint ptr %max_ports to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %max_ports, align 4
  %conv = zext i8 %14 to i32
  %sub = sub nsw i32 %conv, %conv4
  %sub8.peel = add nsw i32 %conv27, -1
  %shl.peel = shl nuw i32 1, %sub8.peel
  %neg.peel = xor i32 %shl.peel, -1
  %and.peel = and i32 %mp_data_port_mask.promoted, %neg.peel
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp.not.not.peel = icmp sgt i32 %sub, 1
  br i1 %cmp.not.not.peel, label %for.body.lr.ph.for.body_crit_edge, label %for.body.lr.ph.for.cond.if.end.loopexit_crit_edge_crit_edge

for.body.lr.ph.for.cond.if.end.loopexit_crit_edge_crit_edge: ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.if.end.loopexit_crit_edge

for.body.lr.ph.for.body_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph.for.body_crit_edge
  %15 = phi i32 [ %and, %for.body.for.body_crit_edge ], [ %and.peel, %for.body.lr.ph.for.body_crit_edge ]
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 2, %for.body.lr.ph.for.body_crit_edge ]
  %sub8 = sub nsw i32 %conv, %i.030
  %shl = shl nuw i32 1, %sub8
  %neg = xor i32 %shl, -1
  %and = and i32 %15, %neg
  %inc = add nuw nsw i32 %i.030, 1
  %cmp.not.not = icmp slt i32 %i.030, %sub
  br i1 %cmp.not.not, label %for.body.for.body_crit_edge, label %for.body.for.cond.if.end.loopexit_crit_edge_crit_edge, !llvm.loop !389

for.body.for.cond.if.end.loopexit_crit_edge_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.if.end.loopexit_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.if.end.loopexit_crit_edge:               ; preds = %for.body.for.cond.if.end.loopexit_crit_edge_crit_edge, %for.body.lr.ph.for.cond.if.end.loopexit_crit_edge_crit_edge
  %and.lcssa = phi i32 [ %and.peel, %for.body.lr.ph.for.cond.if.end.loopexit_crit_edge_crit_edge ], [ %and, %for.body.for.cond.if.end.loopexit_crit_edge_crit_edge ]
  %16 = ptrtoint ptr %mp_data_port_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.lcssa, ptr %mp_data_port_mask, align 4
  br label %if.end

if.end:                                           ; preds = %for.cond.if.end.loopexit_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %conv11.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %conv4, %for.cond.preheader.if.end_crit_edge ], [ %conv4, %for.cond.if.end.loopexit_crit_edge ]
  %17 = ptrtoint ptr %start_wr_port to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %start_wr_port, align 1
  %curr_wr_port = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %curr_wr_port to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %curr_wr_port, align 1
  %20 = ptrtoint ptr %mp_data_port_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mp_data_port_mask, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.125, i32 noundef %conv11.pre-phi, i32 noundef %21) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mwifiex_cleanup_mpa_buf(ptr nocapture noundef readonly %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %buf_len = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 1
  %buf_len8 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 24, i32 1
  %2 = call ptr @memset(ptr %buf_len, i32 0, i32 14)
  %3 = call ptr @memset(ptr %buf_len8, i32 0, i32 14)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_cmdrsp_complete(ptr nocapture noundef readnone %adapter, ptr noundef %skb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_event_complete(ptr nocapture noundef readnone %adapter, ptr noundef %skb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_dnld_fw(ptr noundef %adapter, ptr noundef %fw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #13
  %call = tail call i32 @mwifiex_dnld_fw(ptr noundef %adapter, ptr noundef %fw) #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @sdio_release_host(ptr noundef %5) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_sdio_card_reset(ptr nocapture noundef readonly %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %work_flags = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 26
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %work_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %work = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_reg_dump(ptr noundef %adapter, ptr noundef %drv_buf) #2 align 64 {
entry:
  %ret.i.i.i = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #13
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ret, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #13
  %tobool.not = icmp eq ptr %drv_buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.126) #13
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 32, ptr noundef nonnull @.str.33) #13
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void @sdio_claim_host(ptr noundef %6) #13
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i.i) #13
  %9 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ret.i.i.i, align 4
  call void @sdio_writeb(ptr noundef %8, i8 noundef zeroext 2, i32 noundef 0, ptr noundef nonnull %ret.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i.i) #13
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 4
  call void @sdio_release_host(ptr noundef %11) #13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void @sdio_claim_host(ptr noundef %13) #13
  %reg21 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.end
  %index.0199 = phi i8 [ 0, %if.end ], [ %index.2185, %for.end.for.body_crit_edge ]
  %count.0195 = phi i8 [ 0, %if.end ], [ %inc91, %for.end.for.body_crit_edge ]
  %p.0194 = phi ptr [ %drv_buf, %if.end ], [ %add.ptr90, %for.end.for.body_crit_edge ]
  %14 = call ptr @memset(ptr %buf, i32 0, i32 256)
  %trunc = trunc i8 %count.0195 to i7
  %15 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.154)
  switch i7 %trunc, label %sw.epilog.thread179 [
    i7 0, label %for.body.if.then27_crit_edge
    i7 1, label %sw.bb5
    i7 2, label %if.else
    i7 4, label %for.body.while.body_crit_edge
  ]

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.if.then27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then27

sw.epilog.thread179:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %reg21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg21, align 4
  %func1_scratch_reg181 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %17, i32 0, i32 43
  %18 = ptrtoint ptr %func1_scratch_reg181 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %func1_scratch_reg181, align 2
  %add182 = add i8 %19, 10
  br label %if.then27

sw.bb5:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %reg21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg21, align 4
  %func1_dump_reg_start = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %21, i32 0, i32 41
  %22 = ptrtoint ptr %func1_dump_reg_start to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %func1_dump_reg_start, align 4
  %func1_dump_reg_end = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %21, i32 0, i32 42
  %24 = ptrtoint ptr %func1_dump_reg_end to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %func1_dump_reg_end, align 1
  br label %if.then27

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body.while.body_crit_edge
  %__ms.0186 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %for.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0186, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #13
  %tobool19.not = icmp eq i32 %dec, 0
  br i1 %tobool19.not, label %sw.epilog, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

sw.epilog:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %reg21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg21, align 4
  %func1_scratch_reg = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %28, i32 0, i32 43
  %29 = ptrtoint ptr %func1_scratch_reg to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %func1_scratch_reg, align 2
  %add = add i8 %30, 10
  br label %if.then27

if.then27:                                        ; preds = %sw.epilog, %sw.bb5, %sw.epilog.thread179, %for.body.if.then27_crit_edge
  %reg_end.0164 = phi i8 [ %add, %sw.epilog ], [ %add182, %sw.epilog.thread179 ], [ 9, %for.body.if.then27_crit_edge ], [ %25, %sw.bb5 ]
  %reg_start.0162 = phi i8 [ %30, %sw.epilog ], [ %19, %sw.epilog.thread179 ], [ 0, %for.body.if.then27_crit_edge ], [ %23, %sw.bb5 ]
  %func.0158 = phi i8 [ 1, %sw.epilog ], [ 1, %sw.epilog.thread179 ], [ 0, %for.body.if.then27_crit_edge ], [ 1, %sw.bb5 ]
  %conv28 = zext i8 %func.0158 to i32
  %conv29 = zext i8 %reg_start.0162 to i32
  %conv30 = zext i8 %reg_end.0164 to i32
  %call31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.127, i32 noundef %conv28, i32 noundef %conv29, i32 noundef %conv30)
  br label %if.end35

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %reg21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg21, align 4
  %func1_spec_reg_table = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %32, i32 0, i32 45
  %33 = ptrtoint ptr %func1_spec_reg_table to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %func1_spec_reg_table, align 1
  %func1_spec_reg_num = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %32, i32 0, i32 44
  %35 = ptrtoint ptr %func1_spec_reg_num to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %func1_spec_reg_num, align 1
  %conv13 = zext i8 %36 to i32
  %sub = add nsw i32 %conv13, -1
  %arrayidx14 = getelementptr %struct.mwifiex_sdio_card_reg, ptr %32, i32 0, i32 45, i32 %sub
  %37 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx14, align 1
  %call33 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.128, i32 noundef 1)
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then27
  %cmp25.not166 = phi i1 [ false, %if.then27 ], [ true, %if.else ]
  %reg_end.0165 = phi i8 [ %reg_end.0164, %if.then27 ], [ %38, %if.else ]
  %reg_start.0163 = phi i8 [ %reg_start.0162, %if.then27 ], [ %34, %if.else ]
  %index.1160 = phi i8 [ %index.0199, %if.then27 ], [ 1, %if.else ]
  %func.0159 = phi i8 [ %func.0158, %if.then27 ], [ 1, %if.else ]
  %call31.pn = phi i32 [ %call31, %if.then27 ], [ %call33, %if.else ]
  call void @__sanitizer_cov_trace_cmp1(i8 %reg_start.0163, i8 %reg_end.0165)
  %cmp39.not188 = icmp ugt i8 %reg_start.0163, %reg_end.0165
  br i1 %cmp39.not188, label %if.end35.for.end_crit_edge, label %for.body41.lr.ph

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body41.lr.ph:                                 ; preds = %if.end35
  %ptr.0 = getelementptr i8, ptr %buf, i32 %call31.pn
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %func.0159)
  %cmp43 = icmp eq i8 %func.0159, 0
  br label %for.body41

for.body41:                                       ; preds = %if.end86.for.body41_crit_edge, %for.body41.lr.ph
  %ptr.1191 = phi ptr [ %ptr.0, %for.body41.lr.ph ], [ %add.ptr66, %if.end86.for.body41_crit_edge ]
  %reg.0190 = phi i8 [ %reg_start.0163, %for.body41.lr.ph ], [ %reg.1, %if.end86.for.body41_crit_edge ]
  %index.2189 = phi i8 [ %index.1160, %for.body41.lr.ph ], [ %index.3, %if.end86.for.body41_crit_edge ]
  %conv37192 = zext i8 %reg.0190 to i32
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  br i1 %cmp43, label %if.then45, label %if.else49

if.then45:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #15
  %call48 = call zeroext i8 @sdio_f0_readb(ptr noundef %40, i32 noundef %conv37192, ptr noundef nonnull %ret) #13
  br label %if.end53

if.else49:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #15
  %call52 = call zeroext i8 @sdio_readb(ptr noundef %40, i32 noundef %conv37192, ptr noundef nonnull %ret) #13
  br label %if.end53

if.end53:                                         ; preds = %if.else49, %if.then45
  %data.0 = phi i8 [ %call48, %if.then45 ], [ %call52, %if.else49 ]
  br i1 %cmp25.not166, label %if.then57, label %if.end53.if.end61_crit_edge

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %call59 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %ptr.1191, ptr noundef nonnull @.str.129, i32 noundef %conv37192)
  %add.ptr60 = getelementptr i8, ptr %ptr.1191, i32 %call59
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.end53.if.end61_crit_edge
  %ptr.2 = phi ptr [ %add.ptr60, %if.then57 ], [ %ptr.1191, %if.end53.if.end61_crit_edge ]
  %41 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool62.not = icmp eq i32 %42, 0
  br i1 %tobool62.not, label %if.then63, label %if.else67

if.then63:                                        ; preds = %if.end61
  %conv64 = zext i8 %data.0 to i32
  %call65 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %ptr.2, ptr noundef nonnull @.str.130, i32 noundef %conv64)
  %add.ptr66 = getelementptr i8, ptr %ptr.2, i32 %call65
  call void @__sanitizer_cov_trace_cmp1(i8 %reg.0190, i8 %reg_end.0165)
  %cmp76 = icmp ult i8 %reg.0190, %reg_end.0165
  %or.cond = select i1 %cmp25.not166, i1 %cmp76, i1 false
  br i1 %or.cond, label %if.then78, label %if.else84

if.else67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %ptr.2 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 1163022848, ptr %ptr.2, align 1
  br label %for.end

if.then78:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %reg21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg21, align 4
  %inc81 = add i8 %index.2189, 1
  %idxprom82 = zext i8 %index.2189 to i32
  %arrayidx83 = getelementptr %struct.mwifiex_sdio_card_reg, ptr %45, i32 0, i32 45, i32 %idxprom82
  %46 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx83, align 1
  br label %if.end86

if.else84:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #15
  %inc85 = add i8 %reg.0190, 1
  br label %if.end86

if.end86:                                         ; preds = %if.else84, %if.then78
  %index.3 = phi i8 [ %inc81, %if.then78 ], [ %index.2189, %if.else84 ]
  %reg.1 = phi i8 [ %47, %if.then78 ], [ %inc85, %if.else84 ]
  %cmp39.not = icmp ugt i8 %reg.1, %reg_end.0165
  br i1 %cmp39.not, label %if.end86.for.end_crit_edge, label %if.end86.for.body41_crit_edge

if.end86.for.body41_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body41

if.end86.for.end_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end86.for.end_crit_edge, %if.else67, %if.end35.for.end_crit_edge
  %index.2185 = phi i8 [ %index.2189, %if.else67 ], [ %index.1160, %if.end35.for.end_crit_edge ], [ %index.3, %if.end86.for.end_crit_edge ]
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.132, ptr noundef nonnull %buf) #13
  %call89 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.0194, ptr noundef nonnull @.str.132, ptr noundef nonnull %buf)
  %add.ptr90 = getelementptr i8, ptr %p.0194, i32 %call89
  %inc91 = add nuw nsw i8 %count.0195, 1
  %cmp = icmp ult i8 %count.0195, 4
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end92

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end92:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %49) #13
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.133) #13
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr90 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %drv_buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %for.end92, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %for.end92 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_sdio_device_dump(ptr nocapture noundef readonly %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %work_flags = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 26
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %work_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %work = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_deaggr_sdio_pkt(ptr noundef %adapter, ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %2 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %intf_hdr_len, align 4
  %conv71 = zext i8 %3 to i32
  %add72 = add nuw nsw i32 %conv71, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add72)
  %cmp.not73 = icmp ult i32 %1, %add72
  br i1 %cmp.not73, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %sdio_rx_block_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 43
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.lr.ph
  %data.075 = phi ptr [ %5, %while.body.lr.ph ], [ %add.ptr37, %if.end28.while.body_crit_edge ]
  %total_pkt_len.074 = phi i32 [ %1, %while.body.lr.ph ], [ %sub, %if.end28.while.body_crit_edge ]
  %6 = ptrtoint ptr %sdio_rx_block_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sdio_rx_block_size, align 4
  %conv3 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %total_pkt_len.074, i32 %conv3)
  %cmp4 = icmp ult i32 %total_pkt_len.074, %conv3
  br i1 %cmp4, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %data.075, i32 15
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr, align 1
  %10 = zext i8 %9 to i16
  %conv9 = mul i16 %7, %10
  %conv10 = zext i16 %conv9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %total_pkt_len.074, i32 %conv10)
  %cmp11 = icmp ult i32 %total_pkt_len.074, %conv10
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv8 = zext i8 %9 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.134, ptr noundef nonnull @__func__.mwifiex_deaggr_sdio_pkt, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %total_pkt_len.074) #13
  br label %while.end

if.end16:                                         ; preds = %if.end
  %add.ptr17 = getelementptr i8, ptr %data.075, i32 28
  %11 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %add.ptr17, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #13
  %conv18 = zext i16 %13 to i32
  %add19 = add nuw nsw i32 %conv18, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %conv10)
  %cmp21 = icmp ugt i32 %add19, %conv10
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.135, ptr noundef nonnull @__func__.mwifiex_deaggr_sdio_pkt, i32 noundef %conv18, i32 noundef %conv10) #13
  br label %while.end

if.end25:                                         ; preds = %if.end16
  %call26 = tail call ptr @mwifiex_alloc_dma_align_buf(i32 noundef %conv18, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call26, null
  br i1 %tobool.not, label %if.end25.while.end_crit_edge, label %if.end28

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end28:                                         ; preds = %if.end25
  %call29 = tail call ptr @skb_put(ptr noundef nonnull %call26, i32 noundef %conv18) #13
  %data30 = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 19
  %14 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data30, align 4
  %16 = call ptr @memcpy(ptr %15, ptr %add.ptr17, i32 %conv18)
  %17 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %intf_hdr_len, align 4
  %conv33 = zext i8 %18 to i32
  %call34 = tail call ptr @skb_pull(ptr noundef nonnull %call26, i32 noundef %conv33) #13
  %call35 = tail call i32 @mwifiex_handle_rx_packet(ptr noundef %adapter, ptr noundef nonnull %call26) #13
  %add.ptr37 = getelementptr i8, ptr %data.075, i32 %conv10
  %sub = sub i32 %total_pkt_len.074, %conv10
  %19 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %intf_hdr_len, align 4
  %conv = zext i8 %20 to i32
  %add = add nuw nsw i32 %conv, 28
  %cmp.not = icmp ult i32 %sub, %add
  br i1 %cmp.not, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %if.end25.while.end_crit_edge, %if.then23, %if.then13, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_sdio_up_dev(ptr noundef %adapter) #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call = tail call i32 @sdio_enable_func(ptr noundef %5) #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call4 = tail call i32 @sdio_set_block_size(ptr noundef %7, i32 noundef 256) #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @sdio_release_host(ptr noundef %9) #13
  %tx_buf_size = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tx_buf_size, align 2
  %tx_buf_size6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 39
  %12 = ptrtoint ptr %tx_buf_size6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %tx_buf_size6, align 2
  %reg = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg, align 4
  %host_int_status_reg = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %host_int_status_reg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %host_int_status_reg, align 1
  %conv = zext i8 %16 to i32
  %17 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #13
  %19 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %ret.i, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %18, align 4
  tail call void @sdio_claim_host(ptr noundef %21) #13
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %18, align 4
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %23, i32 noundef %conv, ptr noundef nonnull %ret.i) #13
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %18, align 4
  call void @sdio_release_host(ptr noundef %25) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #13
  call fastcc void @mwifiex_init_sdio_ioport(ptr noundef %adapter)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_init_sdio_ioport(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  %ret.i.i17 = alloca i32, align 4
  %ret.i14 = alloca i32, align 4
  %ret.i.i12 = alloca i32, align 4
  %ret.i9 = alloca i32, align 4
  %ret.i6 = alloca i32, align 4
  %ret.i3 = alloca i32, align 4
  %ret.i = alloca i32, align 4
  %ret.i63.i = alloca i32, align 4
  %ret.i.i61.i = alloca i32, align 4
  %ret.i58.i = alloca i32, align 4
  %ret.i.i.i = alloca i32, align 4
  %ret.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %ioport = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 44
  %2 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ioport, align 4
  %supports_sdio_new_mode = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %supports_sdio_new_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %supports_sdio_new_mode, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65536, ptr %ioport, align 4
  %reg2.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg2.i, align 4
  %card_cfg_2_1_reg.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %7, i32 0, i32 28
  %8 = ptrtoint ptr %card_cfg_2_1_reg.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %card_cfg_2_1_reg.i, align 1
  %conv.i = zext i8 %9 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #13
  %10 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %ret.i.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %12) #13
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.i = call zeroext i8 @sdio_readb(ptr noundef %14, i32 noundef %conv.i, ptr noundef nonnull %ret.i.i) #13
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %16) #13
  %17 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ret.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %19 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg2.i, align 4
  %card_cfg_2_1_reg4.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %20, i32 0, i32 28
  %21 = ptrtoint ptr %card_cfg_2_1_reg4.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %card_cfg_2_1_reg4.i, align 1
  %conv5.i = zext i8 %22 to i32
  %23 = or i8 %call.i.i, 1
  %24 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card1, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  call void @sdio_claim_host(ptr noundef %27) #13
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i.i) #13
  %30 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %ret.i.i.i, align 4
  call void @sdio_writeb(ptr noundef %29, i8 noundef zeroext %23, i32 noundef %conv5.i, ptr noundef nonnull %ret.i.i.i) #13
  %31 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ret.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i.i) #13
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %25, align 4
  call void @sdio_release_host(ptr noundef %34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool9.not.i = icmp eq i32 %32, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  %35 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg2.i, align 4
  %cmd_cfg_0.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %36, i32 0, i32 33
  %37 = ptrtoint ptr %cmd_cfg_0.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cmd_cfg_0.i, align 4
  %conv13.i = zext i8 %38 to i32
  %39 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i58.i) #13
  %41 = ptrtoint ptr %ret.i58.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %ret.i58.i, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %40, align 4
  call void @sdio_claim_host(ptr noundef %43) #13
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %40, align 4
  %call.i60.i = call zeroext i8 @sdio_readb(ptr noundef %45, i32 noundef %conv13.i, ptr noundef nonnull %ret.i58.i) #13
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %40, align 4
  call void @sdio_release_host(ptr noundef %47) #13
  %48 = ptrtoint ptr %ret.i58.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ret.i58.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i58.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool15.not.i = icmp eq i32 %49, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17.i:                                       ; preds = %if.end11.i
  %50 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg2.i, align 4
  %cmd_cfg_019.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %51, i32 0, i32 33
  %52 = ptrtoint ptr %cmd_cfg_019.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cmd_cfg_019.i, align 4
  %conv20.i = zext i8 %53 to i32
  %54 = or i8 %call.i60.i, 4
  %55 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %card1, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  call void @sdio_claim_host(ptr noundef %58) #13
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i61.i) #13
  %61 = ptrtoint ptr %ret.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %ret.i.i61.i, align 4
  call void @sdio_writeb(ptr noundef %60, i8 noundef zeroext %54, i32 noundef %conv20.i, ptr noundef nonnull %ret.i.i61.i) #13
  %62 = ptrtoint ptr %ret.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ret.i.i61.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i61.i) #13
  %64 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %56, align 4
  call void @sdio_release_host(ptr noundef %65) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool25.not.i = icmp eq i32 %63, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27.i:                                       ; preds = %if.end17.i
  %66 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg2.i, align 4
  %cmd_cfg_1.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %67, i32 0, i32 34
  %68 = ptrtoint ptr %cmd_cfg_1.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %cmd_cfg_1.i, align 1
  %conv29.i = zext i8 %69 to i32
  %70 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i63.i) #13
  %72 = ptrtoint ptr %ret.i63.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %ret.i63.i, align 4
  %73 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %71, align 4
  call void @sdio_claim_host(ptr noundef %74) #13
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %71, align 4
  %call.i65.i = call zeroext i8 @sdio_readb(ptr noundef %76, i32 noundef %conv29.i, ptr noundef nonnull %ret.i63.i) #13
  %77 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %71, align 4
  call void @sdio_release_host(ptr noundef %78) #13
  %79 = ptrtoint ptr %ret.i63.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ret.i63.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i63.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool31.not.i = icmp eq i32 %80, 0
  br i1 %tobool31.not.i, label %mwifiex_init_sdio_new_mode.exit, label %if.end27.i.cleanup_crit_edge

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

mwifiex_init_sdio_new_mode.exit:                  ; preds = %if.end27.i
  %81 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg2.i, align 4
  %cmd_cfg_135.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %82, i32 0, i32 34
  %83 = ptrtoint ptr %cmd_cfg_135.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %cmd_cfg_135.i, align 1
  %conv36.i = zext i8 %84 to i32
  %85 = or i8 %call.i65.i, 1
  %call40.i = call fastcc i32 @mwifiex_write_reg(ptr noundef %adapter, i32 noundef %conv36.i, i8 noundef zeroext %85) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i.not = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i.not, label %mwifiex_init_sdio_new_mode.exit.cont_crit_edge, label %mwifiex_init_sdio_new_mode.exit.cleanup_crit_edge

mwifiex_init_sdio_new_mode.exit.cleanup_crit_edge: ; preds = %mwifiex_init_sdio_new_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

mwifiex_init_sdio_new_mode.exit.cont_crit_edge:   ; preds = %mwifiex_init_sdio_new_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cont

if.end4:                                          ; preds = %entry
  %reg5 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 4
  %86 = ptrtoint ptr %reg5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg5, align 4
  %io_port_0_reg = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %87, i32 0, i32 13
  %88 = ptrtoint ptr %io_port_0_reg to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %io_port_0_reg, align 4
  %conv = zext i8 %89 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #13
  %90 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %ret.i, align 4
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %92) #13
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %94, i32 noundef %conv, ptr noundef nonnull %ret.i) #13
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %96) #13
  %97 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool7.not = icmp eq i32 %98, 0
  br i1 %tobool7.not, label %if.then8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  %conv9 = zext i8 %call.i to i32
  %99 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ioport, align 4
  %or = or i32 %100, %conv9
  store i32 %or, ptr %ioport, align 4
  %101 = ptrtoint ptr %reg5 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg5, align 4
  %io_port_1_reg = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %102, i32 0, i32 14
  %103 = ptrtoint ptr %io_port_1_reg to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %io_port_1_reg, align 1
  %conv13 = zext i8 %104 to i32
  %105 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i3) #13
  %107 = ptrtoint ptr %ret.i3 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %ret.i3, align 4
  %108 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %106, align 4
  call void @sdio_claim_host(ptr noundef %109) #13
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %106, align 4
  %call.i5 = call zeroext i8 @sdio_readb(ptr noundef %111, i32 noundef %conv13, ptr noundef nonnull %ret.i3) #13
  %112 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %106, align 4
  call void @sdio_release_host(ptr noundef %113) #13
  %114 = ptrtoint ptr %ret.i3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ret.i3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool15.not = icmp eq i32 %115, 0
  br i1 %tobool15.not, label %if.then16, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16:                                        ; preds = %if.then8
  %conv17 = zext i8 %call.i5 to i32
  %shl = shl nuw nsw i32 %conv17, 8
  %116 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ioport, align 4
  %or20 = or i32 %117, %shl
  store i32 %or20, ptr %ioport, align 4
  %118 = ptrtoint ptr %reg5 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg5, align 4
  %io_port_2_reg = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %119, i32 0, i32 15
  %120 = ptrtoint ptr %io_port_2_reg to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %io_port_2_reg, align 2
  %conv24 = zext i8 %121 to i32
  %122 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i6) #13
  %124 = ptrtoint ptr %ret.i6 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1, ptr %ret.i6, align 4
  %125 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %123, align 4
  call void @sdio_claim_host(ptr noundef %126) #13
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %123, align 4
  %call.i8 = call zeroext i8 @sdio_readb(ptr noundef %128, i32 noundef %conv24, ptr noundef nonnull %ret.i6) #13
  %129 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %123, align 4
  call void @sdio_release_host(ptr noundef %130) #13
  %131 = ptrtoint ptr %ret.i6 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ret.i6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool26.not = icmp eq i32 %132, 0
  br i1 %tobool26.not, label %if.then27, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %conv28 = zext i8 %call.i8 to i32
  %shl30 = shl nuw nsw i32 %conv28, 16
  %133 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ioport, align 4
  %or32 = or i32 %134, %shl30
  store i32 %or32, ptr %ioport, align 4
  br label %cont

cont:                                             ; preds = %if.then27, %mwifiex_init_sdio_new_mode.exit.cont_crit_edge
  %135 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ioport, align 4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.52, i32 noundef %136) #13
  %reg36 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 4
  %137 = ptrtoint ptr %reg36 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %reg36, align 4
  %host_int_rsr_reg = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %138, i32 0, i32 6
  %139 = ptrtoint ptr %host_int_rsr_reg to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %host_int_rsr_reg, align 2
  %conv37 = zext i8 %140 to i32
  %141 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i9) #13
  %143 = ptrtoint ptr %ret.i9 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -1, ptr %ret.i9, align 4
  %144 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %142, align 4
  call void @sdio_claim_host(ptr noundef %145) #13
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %142, align 4
  %call.i11 = call zeroext i8 @sdio_readb(ptr noundef %147, i32 noundef %conv37, ptr noundef nonnull %ret.i9) #13
  %148 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %142, align 4
  call void @sdio_release_host(ptr noundef %149) #13
  %150 = ptrtoint ptr %ret.i9 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ret.i9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool39.not = icmp eq i32 %151, 0
  br i1 %tobool39.not, label %if.then40, label %cont.cleanup_crit_edge

cont.cleanup_crit_edge:                           ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then40:                                        ; preds = %cont
  %152 = ptrtoint ptr %reg36 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg36, align 4
  %host_int_rsr_reg42 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %153, i32 0, i32 6
  %154 = ptrtoint ptr %host_int_rsr_reg42 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %host_int_rsr_reg42, align 2
  %conv43 = zext i8 %155 to i32
  %sdio_int_mask = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %153, i32 0, i32 11
  %156 = ptrtoint ptr %sdio_int_mask to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %sdio_int_mask, align 1
  %or471 = or i8 %157, %call.i11
  %158 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %card1, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  call void @sdio_claim_host(ptr noundef %161) #13
  %162 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i12) #13
  %164 = ptrtoint ptr %ret.i.i12 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 -1, ptr %ret.i.i12, align 4
  call void @sdio_writeb(ptr noundef %163, i8 noundef zeroext %or471, i32 noundef %conv43, ptr noundef nonnull %ret.i.i12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i12) #13
  %165 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %159, align 4
  call void @sdio_release_host(ptr noundef %166) #13
  %167 = ptrtoint ptr %reg36 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %reg36, align 4
  %card_misc_cfg_reg = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %168, i32 0, i32 27
  %169 = ptrtoint ptr %card_misc_cfg_reg to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %card_misc_cfg_reg, align 2
  %conv53 = zext i8 %170 to i32
  %171 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i14) #13
  %173 = ptrtoint ptr %ret.i14 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 -1, ptr %ret.i14, align 4
  %174 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %172, align 4
  call void @sdio_claim_host(ptr noundef %175) #13
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %172, align 4
  %call.i16 = call zeroext i8 @sdio_readb(ptr noundef %177, i32 noundef %conv53, ptr noundef nonnull %ret.i14) #13
  %178 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %172, align 4
  call void @sdio_release_host(ptr noundef %179) #13
  %180 = ptrtoint ptr %ret.i14 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %ret.i14, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool55.not = icmp eq i32 %181, 0
  br i1 %tobool55.not, label %if.then56, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then56:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  %182 = ptrtoint ptr %reg36 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %reg36, align 4
  %card_misc_cfg_reg58 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %183, i32 0, i32 27
  %184 = ptrtoint ptr %card_misc_cfg_reg58 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %card_misc_cfg_reg58, align 2
  %conv59 = zext i8 %185 to i32
  %186 = or i8 %call.i16, 16
  %187 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %card1, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  call void @sdio_claim_host(ptr noundef %190) #13
  %191 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %188, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i17) #13
  %193 = ptrtoint ptr %ret.i.i17 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 -1, ptr %ret.i.i17, align 4
  call void @sdio_writeb(ptr noundef %192, i8 noundef zeroext %186, i32 noundef %conv59, ptr noundef nonnull %ret.i.i17) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i17) #13
  %194 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %188, align 4
  call void @sdio_release_host(ptr noundef %195) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.then40.cleanup_crit_edge, %cont.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %mwifiex_init_sdio_new_mode.exit.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_sdio_read_fw_status(ptr nocapture noundef readonly %adapter, ptr nocapture noundef writeonly %dat) unnamed_addr #2 align 64 {
entry:
  %ret.i17 = alloca i32, align 4
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %reg2 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg2, align 4
  %status_reg_0 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %status_reg_0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status_reg_0, align 1
  %conv = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #13
  %6 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ret.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %8) #13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %10, i32 noundef %conv, ptr noundef nonnull %ret.i) #13
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %12) #13
  %13 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %status_reg_1 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %status_reg_1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status_reg_1, align 2
  %conv3 = zext i8 %16 to i32
  %17 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i17) #13
  %19 = ptrtoint ptr %ret.i17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %ret.i17, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %18, align 4
  call void @sdio_claim_host(ptr noundef %21) #13
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %18, align 4
  %call.i19 = call zeroext i8 @sdio_readb(ptr noundef %23, i32 noundef %conv3, ptr noundef nonnull %ret.i17) #13
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %18, align 4
  call void @sdio_release_host(ptr noundef %25) #13
  %26 = ptrtoint ptr %ret.i17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ret.i17, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool5.not = icmp eq i32 %27, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv8 = zext i8 %call.i19 to i16
  %shl = shl nuw i16 %conv8, 8
  %conv9 = zext i8 %call.i to i16
  %or = or i16 %shl, %conv9
  %28 = ptrtoint ptr %dat to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %or, ptr %dat, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_writesb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mwifiex_sdio_interrupt(ptr noundef %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %lor.lhs.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

lor.lhs.false:                                    ; preds = %entry
  %adapter1 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cond.end_crit_edge, label %if.end

lor.lhs.false.cond.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.cond.end_crit_edge, %entry.cond.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %func, ptr noundef %1, ptr noundef null) #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pps_uapsd_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pps_uapsd_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool7.not = icmp eq i16 %5, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %ps_state = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 90
  %6 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ps_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then8, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %ps_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ps_state, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %card1.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card1.i, align 4
  %mp_regs.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %mp_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mp_regs.i, align 4
  %reg.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %max_mp_regs.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %max_mp_regs.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %max_mp_regs.i, align 1
  %conv.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %call24.i.i = tail call i32 @sdio_readsb(ptr noundef %18, ptr noundef %12, i32 noundef 0, i32 noundef %conv.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool.not.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull @.str.71) #13
  br label %mwifiex_interrupt_status.exit

if.end.i:                                         ; preds = %if.end10
  %19 = ptrtoint ptr %mp_regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mp_regs.i, align 4
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i, align 4
  %host_int_status_reg.i = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %host_int_status_reg.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %host_int_status_reg.i, align 1
  %idxprom.i = zext i8 %24 to i32
  %arrayidx.i = getelementptr i8, ptr %20, i32 %idxprom.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool4.not.i = icmp eq i8 %26, 0
  br i1 %tobool4.not.i, label %if.end.i.mwifiex_interrupt_status.exit_crit_edge, label %if.then5.i

if.end.i.mwifiex_interrupt_status.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_interrupt_status.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv6.i = zext i8 %26 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 64, ptr noundef nonnull @.str.72, i32 noundef %conv6.i) #13
  %int_lock.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 48
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock.i) #13
  %int_status.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 49
  %27 = ptrtoint ptr %int_status.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %int_status.i, align 4
  %or31.i = or i8 %28, %26
  store i8 %or31.i, ptr %int_status.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock.i, i32 noundef %call10.i) #13
  br label %mwifiex_interrupt_status.exit

mwifiex_interrupt_status.exit:                    ; preds = %if.then5.i, %if.end.i.mwifiex_interrupt_status.exit_crit_edge, %if.then.i
  %call11 = tail call i32 @mwifiex_main_process(ptr noundef nonnull %3) #13
  br label %cleanup

cleanup:                                          ; preds = %mwifiex_interrupt_status.exit, %cond.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_main_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_alloc_dma_align_buf(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_sdio_card_to_host(ptr noundef %adapter, ptr nocapture noundef writeonly %type, ptr noundef %buffer, i32 noundef %npayload, i32 noundef %ioport) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buffer, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %card1.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1.i, align 4
  %div22.i = and i32 %npayload, -256
  %and9.i = and i32 %ioport, 1048575
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ioport)
  %cmp.i22 = icmp slt i32 %ioport, 0
  %mul.i = select i1 %cmp.i22, i32 %npayload, i32 %div22.i
  %call.i = tail call i32 @sdio_readsb(ptr noundef %5, ptr noundef nonnull %buffer, i32 noundef %and9.i, i32 noundef %mul.i) #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @sdio_release_host(ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host, i32 noundef %call.i) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %buffer, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #13
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %npayload)
  %cmp = icmp ugt i32 %conv, %npayload
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.90, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host, i32 noundef %conv, i32 noundef %npayload) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %buffer, i32 2
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %add.ptr, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #13
  %conv9 = zext i16 %13 to i32
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv9, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then2 ], [ -1, %if.then6 ], [ 0, %if.end7 ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_decode_rx_packet(ptr noundef %adapter, ptr noundef %skb, i32 noundef %upld_typ) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %upld_typ)
  %cond = icmp eq i32 %upld_typ, 10
  br i1 %cond, label %sw.bb, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #13
  %conv = zext i16 %4 to i32
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %conv) #13
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %5 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %intf_hdr_len, align 4
  %conv1 = zext i8 %6 to i32
  %call2 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv1) #13
  %7 = zext i32 %upld_typ to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %upld_typ, label %sw.default [
    i32 3, label %sw.bb31
    i32 0, label %sw.bb6
    i32 1, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.91) #13
  %buf_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %8 = ptrtoint ptr %buf_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %buf_type, align 1
  %rx_work_enabled = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 30
  %9 = ptrtoint ptr %rx_work_enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rx_work_enabled, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %rx_data_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 146
  tail call void @skb_queue_tail(ptr noundef %rx_data_q, ptr noundef %skb) #13
  %rx_pending = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_pending, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx_pending, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_pending, ptr %rx_pending, i32 1, ptr elementtype(i32) %rx_pending) #13, !srcloc !391
  %data_received = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 57
  %12 = ptrtoint ptr %data_received to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %data_received, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mwifiex_deaggr_sdio_pkt(ptr noundef %adapter, ptr noundef %skb)
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.92) #13
  %rx_work_enabled7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 30
  %13 = ptrtoint ptr %rx_work_enabled7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rx_work_enabled7, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %if.else13, label %if.then9

if.then9:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  %rx_data_q10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 146
  tail call void @skb_queue_tail(ptr noundef %rx_data_q10, ptr noundef %skb) #13
  %data_received11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 57
  %15 = ptrtoint ptr %data_received11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %data_received11, align 4
  %rx_pending12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 20
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_pending12, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx_pending12, i32 1, i32 3, i32 1) #13
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_pending12, ptr %rx_pending12, i32 1, ptr elementtype(i32) %rx_pending12) #13, !srcloc !391
  br label %sw.epilog

if.else13:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = tail call i32 @mwifiex_handle_rx_packet(ptr noundef %adapter, ptr noundef %skb) #13
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.93) #13
  %curr_cmd = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 60
  %17 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %curr_cmd, align 4
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %if.then18, label %if.else28

if.then18:                                        ; preds = %sw.bb16
  %upld_buf = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 52
  %ps_state = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 90
  %19 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ps_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp19 = icmp eq i32 %20, 2
  br i1 %cmp19, label %if.then21, label %if.then18.if.end23_crit_edge

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  tail call void @mwifiex_process_sleep_confirm_resp(ptr noundef %adapter, ptr noundef %22, i32 noundef %24) #13
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18.if.end23_crit_edge
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %len25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len25, align 4
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 2048)
  %30 = call ptr @memcpy(ptr %upld_buf, ptr %26, i32 %29)
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %sw.epilog

if.else28:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  %cmd_resp_received = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 55
  %31 = ptrtoint ptr %cmd_resp_received to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %cmd_resp_received, align 2
  %resp_skb = getelementptr inbounds %struct.cmd_ctrl_node, ptr %18, i32 0, i32 5
  %32 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %skb, ptr %resp_skb, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.then
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 32, ptr noundef nonnull @.str.94) #13
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %34, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #13
  %event_cause = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 50
  %38 = ptrtoint ptr %event_cause to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %event_cause, align 4
  %len34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %39 = ptrtoint ptr %len34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len34, align 4
  %41 = add i32 %40, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %41)
  %42 = icmp ult i32 %41, 2047
  br i1 %42, label %if.then40, label %sw.bb31.if.end44_crit_edge

sw.bb31.if.end44_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then40:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #15
  %event_body = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 112
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %44, i32 4
  %45 = call ptr @memcpy(ptr %event_body, ptr %add.ptr, i32 %40)
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %sw.bb31.if.end44_crit_edge
  %event_received = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 56
  %46 = ptrtoint ptr %event_received to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %event_received, align 1
  %event_skb = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 51
  %47 = ptrtoint ptr %event_skb to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %skb, ptr %event_skb, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.95, i32 noundef %upld_typ) #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end44, %if.else28, %if.end23, %if.else13, %if.then9, %if.else, %if.then4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_handle_rx_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_process_sleep_confirm_resp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_host_to_card_mp_aggr(ptr noundef %adapter, ptr noundef %payload, i32 noundef %pkt_len, i32 noundef %port, i32 noundef %next_pkt_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %mpa_tx = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23
  %enabled = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 5
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.tx_curr_single.thread_crit_edge, label %lor.lhs.false

entry.tx_curr_single.thread_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %tx_curr_single.thread

lor.lhs.false:                                    ; preds = %entry
  %has_control_mask = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %has_control_mask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_control_mask, align 1, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp = icmp eq i32 %port, 0
  %or.cond = and i1 %cmp, %tobool2.not
  br i1 %or.cond, label %lor.lhs.false.tx_curr_single.thread_crit_edge, label %lor.lhs.false3

lor.lhs.false.tx_curr_single.thread_crit_edge:    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %tx_curr_single.thread

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %supports_sdio_new_mode = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %supports_sdio_new_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %supports_sdio_new_mode, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp ne i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %port)
  %cmp6 = icmp eq i32 %port, 32768
  %or.cond384 = and i1 %cmp6, %tobool4.not
  br i1 %or.cond384, label %lor.lhs.false3.tx_curr_single.thread_crit_edge, label %if.end

lor.lhs.false3.tx_curr_single.thread_crit_edge:   ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %tx_curr_single.thread

tx_curr_single.thread:                            ; preds = %lor.lhs.false3.tx_curr_single.thread_crit_edge, %lor.lhs.false.tx_curr_single.thread_crit_edge, %entry.tx_curr_single.thread_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 536870912, ptr noundef nonnull @.str.116, ptr noundef nonnull @__func__.mwifiex_host_to_card_mp_aggr) #13
  br label %if.then214

if.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %next_pkt_len)
  %tobool7.not = icmp eq i32 %next_pkt_len, 0
  br i1 %tobool7.not, label %if.else57, label %if.then8

if.then8:                                         ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.mwifiex_host_to_card_mp_aggr) #13
  %pkt_cnt = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 2
  %8 = ptrtoint ptr %pkt_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pkt_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10.not = icmp eq i32 %9, 0
  %buf_len40 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 1
  %10 = ptrtoint ptr %buf_len40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_len40, align 4
  %add41 = add i32 %11, %pkt_len
  %buf_size43 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 6
  %12 = ptrtoint ptr %buf_size43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_size43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add41, i32 %13)
  %cmp44.not = icmp ugt i32 %add41, %13
  br i1 %cmp10.not, label %if.else38, label %if.then11

if.then11:                                        ; preds = %if.then8
  %mp_wr_bitmap28 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %mp_wr_bitmap28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mp_wr_bitmap28, align 4
  %curr_wr_port29 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %curr_wr_port29 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %curr_wr_port29, align 1
  %conv30 = zext i8 %17 to i32
  %shl31 = shl nuw i32 1, %conv30
  %and32 = and i32 %shl31, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %cmp44.not, label %if.end124.thread427, label %if.then15

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %add21 = add i32 %add41, %next_pkt_len
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %13)
  %cmp24.not = icmp ugt i32 %add21, %13
  %or.cond385 = select i1 %tobool33.not, i1 true, i1 %cmp24.not
  %spec.select389 = zext i1 %or.cond385 to i32
  br label %if.then77

if.end124.thread427:                              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %. = zext i1 %tobool33.not to i32
  %not.tobool33.not = xor i1 %tobool33.not, true
  %.386 = zext i1 %not.tobool33.not to i32
  br label %if.then126

if.else38:                                        ; preds = %if.then8
  br i1 %cmp44.not, label %if.else38.if.then214_crit_edge, label %land.lhs.true46

if.else38.if.then214_crit_edge:                   ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then214

land.lhs.true46:                                  ; preds = %if.else38
  %mp_wr_bitmap47 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %mp_wr_bitmap47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mp_wr_bitmap47, align 4
  %curr_wr_port48 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %curr_wr_port48 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %curr_wr_port48, align 1
  %conv49 = zext i8 %21 to i32
  %shl50 = shl nuw i32 1, %conv49
  %and51 = and i32 %shl50, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %land.lhs.true46.if.then214_crit_edge, label %land.lhs.true46.if.then77_crit_edge

land.lhs.true46.if.then77_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77

land.lhs.true46.if.then214_crit_edge:             ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then214

if.else57:                                        ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.118, ptr noundef nonnull @__func__.mwifiex_host_to_card_mp_aggr) #13
  %pkt_cnt59 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 2
  %22 = ptrtoint ptr %pkt_cnt59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pkt_cnt59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp60.not = icmp eq i32 %23, 0
  br i1 %cmp60.not, label %if.else57.if.then214_crit_edge, label %if.end75

if.else57.if.then214_crit_edge:                   ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then214

if.end75:                                         ; preds = %if.else57
  %buf_len64 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 1
  %24 = ptrtoint ptr %buf_len64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_len64, align 4
  %add65 = add i32 %25, %pkt_len
  %buf_size67 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 6
  %26 = ptrtoint ptr %buf_size67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_size67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add65, i32 %27)
  %cmp68.not = icmp ugt i32 %add65, %27
  br i1 %cmp68.not, label %if.end75.if.then126_crit_edge, label %if.end75.if.then77_crit_edge

if.end75.if.then77_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77

if.end75.if.then126_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then126

if.then77:                                        ; preds = %if.end75.if.then77_crit_edge, %land.lhs.true46.if.then77_crit_edge, %if.then15
  %f_send_aggr_buf.0403 = phi i32 [ 1, %if.end75.if.then77_crit_edge ], [ %spec.select389, %if.then15 ], [ 0, %land.lhs.true46.if.then77_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.119, ptr noundef nonnull @__func__.mwifiex_host_to_card_mp_aggr) #13
  %28 = ptrtoint ptr %mpa_tx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mpa_tx, align 4
  %buf_len80 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 1
  %30 = ptrtoint ptr %buf_len80 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf_len80, align 4
  %arrayidx = getelementptr i8, ptr %29, i32 %31
  %32 = call ptr @memmove(ptr %arrayidx, ptr %payload, i32 %pkt_len)
  %33 = load i32, ptr %buf_len80, align 4
  %add83 = add i32 %33, %pkt_len
  store i32 %add83, ptr %buf_len80, align 4
  %pkt_cnt85 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 2
  %34 = ptrtoint ptr %pkt_cnt85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pkt_cnt85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool86.not = icmp eq i32 %35, 0
  br i1 %tobool86.not, label %if.then87, label %if.then77.if.end90_crit_edge

if.then77.if.end90_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then87:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  %conv88 = trunc i32 %port to i16
  %start_port = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 4
  %36 = ptrtoint ptr %start_port to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv88, ptr %start_port, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.then77.if.end90_crit_edge
  %start_port92 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 4
  %37 = ptrtoint ptr %start_port92 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %start_port92, align 4
  %conv93 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv93, i32 %port)
  %cmp94.not = icmp ugt i32 %conv93, %port
  %39 = ptrtoint ptr %pkt_cnt85 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pkt_cnt85, align 4
  br i1 %cmp94.not, label %if.else101, label %if.then96

if.then96:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  %shl99 = shl nuw i32 1, %40
  %ports = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 3
  %41 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ports, align 4
  br label %if.end112

if.else101:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  %max_ports = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %max_ports to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %max_ports, align 4
  %conv105 = zext i8 %44 to i32
  %mp_end_port = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 12
  %45 = ptrtoint ptr %mp_end_port to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %mp_end_port, align 4
  %conv106 = zext i16 %46 to i32
  %sub = add i32 %40, 1
  %add104 = add i32 %sub, %conv105
  %add107 = sub i32 %add104, %conv106
  %shl108 = shl nuw i32 1, %add107
  %ports110 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 3
  %47 = ptrtoint ptr %ports110 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ports110, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.else101, %if.then96
  %.sink = phi i32 [ %48, %if.else101 ], [ %shl99, %if.then96 ]
  %shl108.sink = phi i32 [ %shl108, %if.else101 ], [ %42, %if.then96 ]
  %ports110.sink = phi ptr [ %ports110, %if.else101 ], [ %ports, %if.then96 ]
  %or111 = or i32 %shl108.sink, %.sink
  %49 = ptrtoint ptr %ports110.sink to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or111, ptr %ports110.sink, align 4
  %50 = ptrtoint ptr %pkt_cnt85 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pkt_cnt85, align 4
  %inc = add i32 %51, 1
  store i32 %inc, ptr %pkt_cnt85, align 4
  %pkt_aggr_limit = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 7
  %52 = ptrtoint ptr %pkt_aggr_limit to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pkt_aggr_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %53)
  %cmp118 = icmp eq i32 %inc, %53
  br i1 %cmp118, label %if.end112.if.then126_crit_edge, label %lor.lhs.false120

if.end112.if.then126_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then126

lor.lhs.false120:                                 ; preds = %if.end112
  %curr_wr_port.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 15
  %54 = ptrtoint ptr %curr_wr_port.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %curr_wr_port.i, align 1
  %56 = ptrtoint ptr %start_port92 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %start_port92, align 4
  %58 = zext i8 %55 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %58)
  %cmp.i = icmp ugt i16 %57, %58
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false120.if.end18.i_crit_edge

lor.lhs.false120.if.end18.i_crit_edge:            ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then.i:                                        ; preds = %lor.lhs.false120
  %59 = ptrtoint ptr %supports_sdio_new_mode to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %supports_sdio_new_mode, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i = icmp eq i8 %60, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %mp_end_port.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 12
  %61 = ptrtoint ptr %mp_end_port.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %mp_end_port.i, align 4
  %63 = lshr i16 %62, 1
  %64 = zext i16 %63 to i32
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %mp_agg_pkt_limit.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 6
  %65 = ptrtoint ptr %mp_agg_pkt_limit.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %mp_agg_pkt_limit.i, align 1
  %conv6.i = zext i8 %66 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then3.i
  %tmp.0.i = phi i32 [ %64, %if.then3.i ], [ %conv6.i, %if.else.i ]
  %max_ports.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 5
  %67 = ptrtoint ptr %max_ports.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %max_ports.i, align 4
  %conv7.i = zext i8 %68 to i32
  %conv10.i = zext i16 %57 to i32
  %conv12.i = zext i8 %55 to i32
  %sub.i = sub nsw i32 %conv12.i, %conv10.i
  %add.i = add nsw i32 %sub.i, %conv7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %tmp.0.i)
  %cmp14.not.i = icmp slt i32 %add.i, %tmp.0.i
  br i1 %cmp14.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.end.i.if.then126_crit_edge

if.end.i.if.then126_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then126

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i.if.end18.i_crit_edge, %lor.lhs.false120.if.end18.i_crit_edge
  %69 = ptrtoint ptr %supports_sdio_new_mode to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %supports_sdio_new_mode, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool20.not.i = icmp eq i8 %70, 0
  br i1 %tobool20.not.i, label %if.end124, label %mp_tx_aggr_port_limit_reached.exit

mp_tx_aggr_port_limit_reached.exit:               ; preds = %if.end18.i
  %conv24.i = zext i8 %55 to i32
  %conv27.i = zext i16 %57 to i32
  %sub28.i = sub nsw i32 %conv24.i, %conv27.i
  %mp_end_port29.i = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 12
  %71 = ptrtoint ptr %mp_end_port29.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %mp_end_port29.i, align 4
  %73 = lshr i16 %72, 1
  %74 = zext i16 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub28.i, i32 %74)
  %cmp32.not.i = icmp slt i32 %sub28.i, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f_send_aggr_buf.0403)
  %tobool125.not = icmp eq i32 %f_send_aggr_buf.0403, 0
  %or.cond438 = select i1 %cmp32.not.i, i1 %tobool125.not, i1 false
  br i1 %or.cond438, label %mp_tx_aggr_port_limit_reached.exit.if.end270_crit_edge, label %mp_tx_aggr_port_limit_reached.exit.if.then126_crit_edge

mp_tx_aggr_port_limit_reached.exit.if.then126_crit_edge: ; preds = %mp_tx_aggr_port_limit_reached.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then126

mp_tx_aggr_port_limit_reached.exit.if.end270_crit_edge: ; preds = %mp_tx_aggr_port_limit_reached.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end270

if.end124:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f_send_aggr_buf.0403)
  %tobool125.not.old = icmp eq i32 %f_send_aggr_buf.0403, 0
  br i1 %tobool125.not.old, label %if.end124.if.end270_crit_edge, label %if.end124.if.then126_crit_edge

if.end124.if.then126_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then126

if.end124.if.end270_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end270

if.then126:                                       ; preds = %if.end124.if.then126_crit_edge, %mp_tx_aggr_port_limit_reached.exit.if.then126_crit_edge, %if.end.i.if.then126_crit_edge, %if.end112.if.then126_crit_edge, %if.end75.if.then126_crit_edge, %if.end124.thread427
  %f_send_cur_buf.0394414 = phi i32 [ 0, %if.end124.if.then126_crit_edge ], [ 1, %if.end75.if.then126_crit_edge ], [ 0, %if.end.i.if.then126_crit_edge ], [ 0, %mp_tx_aggr_port_limit_reached.exit.if.then126_crit_edge ], [ 0, %if.end112.if.then126_crit_edge ], [ %., %if.end124.thread427 ]
  %f_postcopy_cur_buf.0395413 = phi i32 [ 0, %if.end124.if.then126_crit_edge ], [ 0, %if.end75.if.then126_crit_edge ], [ 0, %if.end.i.if.then126_crit_edge ], [ 0, %mp_tx_aggr_port_limit_reached.exit.if.then126_crit_edge ], [ 0, %if.end112.if.then126_crit_edge ], [ %.386, %if.end124.thread427 ]
  %start_port128 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 4
  %75 = ptrtoint ptr %start_port128 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %start_port128, align 4
  %conv129 = zext i16 %76 to i32
  %ports131 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 3
  %77 = ptrtoint ptr %ports131 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ports131, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.mwifiex_host_to_card_mp_aggr, i32 noundef %conv129, i32 noundef %78) #13
  %79 = ptrtoint ptr %supports_sdio_new_mode to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %supports_sdio_new_mode, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool133.not = icmp eq i8 %80, 0
  br i1 %tobool133.not, label %if.else155, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then126
  %max_ports135 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 5
  %81 = ptrtoint ptr %max_ports135 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %max_ports135, align 4
  %conv136 = zext i8 %82 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp137439.not = icmp eq i8 %82, 0
  br i1 %cmp137439.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %83 = ptrtoint ptr %ports131 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ports131, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0441 = phi i32 [ 0, %for.body.lr.ph ], [ %inc147, %for.body.for.body_crit_edge ]
  %port_count.0440 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %85 = lshr i32 %84, %i.0441
  %86 = and i32 %85, 1
  %spec.select = add i32 %86, %port_count.0440
  %inc147 = add nuw nsw i32 %i.0441, 1
  %exitcond.not = icmp eq i32 %inc147, %conv136
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo = shl i32 %spec.select, 8
  %phi.bo442 = add i32 %phi.bo, -256
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %port_count.0.lcssa = phi i32 [ -256, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo442, %for.end.loopexit ]
  %ioport = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 44
  %87 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ioport, align 4
  %or148 = or i32 %port_count.0.lcssa, %88
  br label %if.end166

if.else155:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #15
  %ioport156 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 44
  %89 = ptrtoint ptr %ioport156 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ioport156, align 4
  %91 = ptrtoint ptr %ports131 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ports131, align 4
  %shl160 = shl i32 %92, 4
  %or157 = or i32 %90, %shl160
  br label %if.end166

if.end166:                                        ; preds = %if.else155, %for.end
  %or157.sink = phi i32 [ %or157, %if.else155 ], [ %or148, %for.end ]
  %or161 = or i32 %or157.sink, 4096
  %93 = ptrtoint ptr %start_port128 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %start_port128, align 4
  %conv164 = zext i16 %94 to i32
  %add165 = add i32 %or161, %conv164
  %pkt_cnt168 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 2
  %95 = ptrtoint ptr %pkt_cnt168 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pkt_cnt168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %cmp169 = icmp eq i32 %96, 1
  br i1 %cmp169, label %if.then171, label %if.end166.tx_curr_single_crit_edge

if.end166.tx_curr_single_crit_edge:               ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #15
  br label %tx_curr_single

if.then171:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #15
  %ioport172 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 44
  %97 = ptrtoint ptr %ioport172 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ioport172, align 4
  %99 = ptrtoint ptr %start_port128 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %start_port128, align 4
  %conv175 = zext i16 %100 to i32
  %add176 = add i32 %98, %conv175
  br label %tx_curr_single

tx_curr_single:                                   ; preds = %if.then171, %if.end166.tx_curr_single_crit_edge
  %mport.1 = phi i32 [ %add176, %if.then171 ], [ %add165, %if.end166.tx_curr_single_crit_edge ]
  %101 = ptrtoint ptr %mpa_tx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mpa_tx, align 4
  %buf_len181 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 1
  %103 = ptrtoint ptr %buf_len181 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %buf_len181, align 4
  %call182 = tail call fastcc i32 @mwifiex_write_data_to_card(ptr noundef %adapter, ptr noundef %102, i32 noundef %104, i32 noundef %mport.1)
  %last_sdio_mp_index = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 118, i32 23
  %105 = ptrtoint ptr %last_sdio_mp_index to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %last_sdio_mp_index, align 4
  %conv183 = zext i8 %106 to i16
  %add184 = add nuw nsw i16 %conv183, 1
  %rem437 = urem i16 %add184, 10
  %rem.zext = zext i16 %rem437 to i32
  %conv185 = trunc i16 %rem437 to i8
  store i8 %conv185, ptr %last_sdio_mp_index, align 4
  %arrayidx189 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 118, i32 20, i32 %rem.zext
  %107 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %mport.1, ptr %arrayidx189, align 4
  %mp_wr_bitmap190 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 11
  %108 = ptrtoint ptr %mp_wr_bitmap190 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mp_wr_bitmap190, align 4
  %arrayidx192 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 118, i32 19, i32 %rem.zext
  %110 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %arrayidx192, align 4
  %111 = ptrtoint ptr %buf_len181 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %buf_len181, align 4
  %arrayidx196 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 118, i32 21, i32 %rem.zext
  %113 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %arrayidx196, align 4
  %curr_wr_port197 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 15
  %114 = ptrtoint ptr %curr_wr_port197 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %curr_wr_port197, align 1
  %conv198 = zext i8 %115 to i32
  %arrayidx200 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 118, i32 22, i32 %rem.zext
  %116 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %conv198, ptr %arrayidx200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f_send_cur_buf.0394414)
  %tobool213.not = icmp eq i32 %f_send_cur_buf.0394414, 0
  %117 = call ptr @memset(ptr %buf_len181, i32 0, i32 14)
  br i1 %tobool213.not, label %tx_curr_single.if.end218_crit_edge, label %tx_curr_single.if.then214_crit_edge

tx_curr_single.if.then214_crit_edge:              ; preds = %tx_curr_single
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then214

tx_curr_single.if.end218_crit_edge:               ; preds = %tx_curr_single
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end218

if.then214:                                       ; preds = %tx_curr_single.if.then214_crit_edge, %if.else57.if.then214_crit_edge, %land.lhs.true46.if.then214_crit_edge, %if.else38.if.then214_crit_edge, %tx_curr_single.thread
  %f_postcopy_cur_buf.1419 = phi i32 [ 0, %tx_curr_single.thread ], [ %f_postcopy_cur_buf.0395413, %tx_curr_single.if.then214_crit_edge ], [ 0, %if.else38.if.then214_crit_edge ], [ 0, %land.lhs.true46.if.then214_crit_edge ], [ 0, %if.else57.if.then214_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.121, ptr noundef nonnull @__func__.mwifiex_host_to_card_mp_aggr, i32 noundef %port) #13
  %ioport215 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 44
  %118 = ptrtoint ptr %ioport215 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ioport215, align 4
  %add216 = add i32 %119, %port
  %call217 = tail call fastcc i32 @mwifiex_write_data_to_card(ptr noundef %adapter, ptr noundef %payload, i32 noundef %pkt_len, i32 noundef %add216)
  br label %if.end218

if.end218:                                        ; preds = %if.then214, %tx_curr_single.if.end218_crit_edge
  %f_postcopy_cur_buf.1420 = phi i32 [ %f_postcopy_cur_buf.1419, %if.then214 ], [ %f_postcopy_cur_buf.0395413, %tx_curr_single.if.end218_crit_edge ]
  %ret.1 = phi i32 [ %call217, %if.then214 ], [ %call182, %tx_curr_single.if.end218_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f_postcopy_cur_buf.1420)
  %tobool219.not = icmp eq i32 %f_postcopy_cur_buf.1420, 0
  br i1 %tobool219.not, label %if.end218.if.end270_crit_edge, label %if.then220

if.end218.if.end270_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end270

if.then220:                                       ; preds = %if.end218
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 8, ptr noundef nonnull @.str.122, ptr noundef nonnull @__func__.mwifiex_host_to_card_mp_aggr) #13
  %120 = ptrtoint ptr %mpa_tx to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mpa_tx, align 4
  %buf_len225 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 1
  %122 = ptrtoint ptr %buf_len225 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %buf_len225, align 4
  %arrayidx226 = getelementptr i8, ptr %121, i32 %123
  %124 = call ptr @memmove(ptr %arrayidx226, ptr %payload, i32 %pkt_len)
  %125 = load i32, ptr %buf_len225, align 4
  %add229 = add i32 %125, %pkt_len
  store i32 %add229, ptr %buf_len225, align 4
  %pkt_cnt231 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 2
  %126 = ptrtoint ptr %pkt_cnt231 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pkt_cnt231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool232.not = icmp eq i32 %127, 0
  br i1 %tobool232.not, label %if.then233, label %if.then220.if.end237_crit_edge

if.then220.if.end237_crit_edge:                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237

if.then233:                                       ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #15
  %conv234 = trunc i32 %port to i16
  %start_port236 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 4
  %128 = ptrtoint ptr %start_port236 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv234, ptr %start_port236, align 4
  br label %if.end237

if.end237:                                        ; preds = %if.then233, %if.then220.if.end237_crit_edge
  %start_port239 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 4
  %129 = ptrtoint ptr %start_port239 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %start_port239, align 4
  %conv240 = zext i16 %130 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv240, i32 %port)
  %cmp241.not = icmp ugt i32 %conv240, %port
  %131 = ptrtoint ptr %pkt_cnt231 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pkt_cnt231, align 4
  br i1 %cmp241.not, label %if.else250, label %if.then243

if.then243:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #15
  %shl246 = shl nuw i32 1, %132
  %ports248 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 3
  %133 = ptrtoint ptr %ports248 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ports248, align 4
  br label %if.end264

if.else250:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #15
  %max_ports254 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 5
  %135 = ptrtoint ptr %max_ports254 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %max_ports254, align 4
  %conv255 = zext i8 %136 to i32
  %mp_end_port256 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 12
  %137 = ptrtoint ptr %mp_end_port256 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %mp_end_port256, align 4
  %conv257 = zext i16 %138 to i32
  %sub258 = add i32 %132, 1
  %add253 = add i32 %sub258, %conv255
  %add259 = sub i32 %add253, %conv257
  %shl260 = shl nuw i32 1, %add259
  %ports262 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 23, i32 3
  %139 = ptrtoint ptr %ports262 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ports262, align 4
  br label %if.end264

if.end264:                                        ; preds = %if.else250, %if.then243
  %.sink453 = phi i32 [ %140, %if.else250 ], [ %shl246, %if.then243 ]
  %shl260.sink = phi i32 [ %shl260, %if.else250 ], [ %134, %if.then243 ]
  %ports262.sink = phi ptr [ %ports262, %if.else250 ], [ %ports248, %if.then243 ]
  %or263 = or i32 %shl260.sink, %.sink453
  %141 = ptrtoint ptr %ports262.sink to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or263, ptr %ports262.sink, align 4
  %142 = ptrtoint ptr %pkt_cnt231 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pkt_cnt231, align 4
  %inc267 = add i32 %143, 1
  store i32 %inc267, ptr %pkt_cnt231, align 4
  br label %if.end270

if.end270:                                        ; preds = %if.end264, %if.end218.if.end270_crit_edge, %if.end124.if.end270_crit_edge, %mp_tx_aggr_port_limit_reached.exit.if.end270_crit_edge
  %ret.1451 = phi i32 [ %ret.1, %if.end264 ], [ %ret.1, %if.end218.if.end270_crit_edge ], [ 0, %mp_tx_aggr_port_limit_reached.exit.if.end270_crit_edge ], [ 0, %if.end124.if.end270_crit_edge ]
  ret i32 %ret.1451
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_write_data_to_card(ptr noundef %adapter, ptr noundef %payload, i32 noundef %pkt_len, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  %ret.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %div26.i = and i32 %pkt_len, -256
  %and9.i = and i32 %port, 1048575
  %card1.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 17
  %work_flags.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp27.i = icmp slt i32 %port, 0
  %mul.i = select i1 %cmp27.i, i32 %pkt_len, i32 %div26.i
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1.i, align 4
  %2 = ptrtoint ptr %work_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %work_flags.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool10.not.i = icmp eq i32 %4, 0
  br i1 %tobool10.not.i, label %mwifiex_write_data_sync.exit, label %mwifiex_write_data_sync.exit.thread

mwifiex_write_data_sync.exit.thread:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.mwifiex_write_data_sync) #13
  br label %if.then

mwifiex_write_data_sync.exit:                     ; preds = %do.body
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  call void @sdio_claim_host(ptr noundef %6) #13
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call12.i = call i32 @sdio_writesb(ptr noundef %8, i32 noundef %and9.i, ptr noundef %payload, i32 noundef %mul.i) #13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not = icmp eq i32 %call12.i, 0
  br i1 %tobool.not, label %mwifiex_write_data_sync.exit.cleanup_crit_edge, label %mwifiex_write_data_sync.exit.if.then_crit_edge

mwifiex_write_data_sync.exit.if.then_crit_edge:   ; preds = %mwifiex_write_data_sync.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

mwifiex_write_data_sync.exit.cleanup_crit_edge:   ; preds = %mwifiex_write_data_sync.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %mwifiex_write_data_sync.exit.if.then_crit_edge, %mwifiex_write_data_sync.exit.thread
  %retval.0.i21 = phi i32 [ -1, %mwifiex_write_data_sync.exit.thread ], [ %call12.i, %mwifiex_write_data_sync.exit.if.then_crit_edge ]
  %inc = add nuw nsw i32 %i.0, 1
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.123, i32 noundef %inc, i32 noundef %retval.0.i21) #13
  %11 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card1.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  call void @sdio_claim_host(ptr noundef %14) #13
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #13
  %17 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %ret.i.i, align 4
  call void @sdio_writeb(ptr noundef %16, i8 noundef zeroext 4, i32 noundef 0, ptr noundef nonnull %ret.i.i) #13
  %18 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #13
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %12, align 4
  call void @sdio_release_host(ptr noundef %21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.not = icmp eq i32 %19, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.62) #13
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %exitcond = icmp eq i32 %inc, 3
  br i1 %exitcond, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %mwifiex_write_data_sync.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ 0, %mwifiex_write_data_sync.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_dnld_fw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_f0_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
define internal i32 @mwifiex_sdio_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %call = tail call i32 @sdio_get_host_pm_caps(ptr noundef %add.ptr) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_sdio_suspend.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_sdio_suspend, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !386

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i63 = phi ptr [ %3, %if.end.i ], [ %1, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mwifiex_sdio_suspend.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.139, ptr noundef %retval.0.i63, i32 noundef %call) #13
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %do.end
  %init_name.i64 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i64 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i64, align 8
  %tobool.not.i65 = icmp eq ptr %5, null
  br i1 %tobool.not.i65, label %if.end.i66, label %do.end11.dev_name.exit68_crit_edge

do.end11.dev_name.exit68_crit_edge:               ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit68

if.end.i66:                                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit68

dev_name.exit68:                                  ; preds = %if.end.i66, %do.end11.dev_name.exit68_crit_edge
  %retval.0.i67 = phi ptr [ %7, %if.end.i66 ], [ %5, %do.end11.dev_name.exit68_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.140, ptr noundef %retval.0.i67) #16
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %tobool17.not = icmp eq ptr %9, null
  br i1 %tobool17.not, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.142) #16
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %fw_done = getelementptr inbounds %struct.sdio_mmc_card, ptr %9, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %fw_done) #13
  %adapter23 = getelementptr inbounds %struct.sdio_mmc_card, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %adapter23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter23, align 4
  %tobool24.not = icmp eq ptr %11, null
  br i1 %tobool24.not, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.145) #16
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %is_up = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 136
  %12 = ptrtoint ptr %is_up to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_up, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool30.not = icmp eq i8 %13, 0
  br i1 %tobool30.not, label %if.end29.cleanup_crit_edge, label %if.end32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %irq_wakeup.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 164
  %14 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i = icmp sgt i32 %15, -1
  br i1 %cmp.i, label %if.then.i, label %if.end32.mwifiex_enable_wake.exit_crit_edge

if.end32.mwifiex_enable_wake.exit_crit_edge:      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_enable_wake.exit

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %wake_by_wifi.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 165
  %16 = ptrtoint ptr %wake_by_wifi.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %wake_by_wifi.i, align 4
  tail call void @enable_irq(i32 noundef %15) #13
  %17 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq_wakeup.i, align 4
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %18, i32 noundef 1) #13
  br label %mwifiex_enable_wake.exit

mwifiex_enable_wake.exit:                         ; preds = %if.then.i, %if.end32.mwifiex_enable_wake.exit_crit_edge
  %call33 = tail call i32 @mwifiex_enable_hs(ptr noundef nonnull %11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %if.end36

if.then35:                                        ; preds = %mwifiex_enable_wake.exit
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %11, i32 noundef 4, ptr noundef nonnull @.str.147) #13
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %work_flags) #13
  %19 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i71 = icmp sgt i32 %20, -1
  br i1 %cmp.i71, label %if.then.i75, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i75:                                      ; preds = %if.then35
  %call.i.i72 = tail call i32 @irq_set_irq_wake(i32 noundef %20, i32 noundef 0) #13
  %21 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq_wakeup.i, align 4
  tail call void @disable_irq(i32 noundef %22) #13
  %wake_by_wifi.i73 = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 165
  %23 = ptrtoint ptr %wake_by_wifi.i73 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %wake_by_wifi.i73, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i74 = icmp eq i8 %24, 0
  br i1 %tobool.not.i74, label %if.then.i75.cleanup_crit_edge, label %if.then3.i

if.then.i75.cleanup_crit_edge:                    ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3.i:                                       ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq_wakeup.i, align 4
  tail call void @enable_irq(i32 noundef %26) #13
  br label %cleanup

if.end36:                                         ; preds = %mwifiex_enable_wake.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %11, i32 noundef 1073741824, ptr noundef nonnull @.str.148) #13
  %call37 = tail call i32 @sdio_set_host_pm_flags(ptr noundef %add.ptr, i32 noundef 1) #13
  %work_flags38 = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %work_flags38) #13
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %work_flags38) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then3.i, %if.then.i75.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end28, %do.end21, %dev_name.exit68
  %retval.0 = phi i32 [ %call37, %if.end36 ], [ 0, %do.end28 ], [ 0, %do.end21 ], [ -38, %dev_name.exit68 ], [ -16, %if.end29.cleanup_crit_edge ], [ -14, %if.then35.cleanup_crit_edge ], [ -14, %if.then.i75.cleanup_crit_edge ], [ -14, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %adapter2 = getelementptr inbounds %struct.sdio_mmc_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.149) #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %work_flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %3, i32 noundef 536870912, ptr noundef nonnull @.str.151) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %work_flags) #13
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp29.not.i = icmp eq i8 %8, 0
  br i1 %cmp29.not.i, label %if.end8.mwifiex_get_priv.exit_crit_edge, label %if.end8.for.body.i_crit_edge

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

if.end8.mwifiex_get_priv.exit_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %3, i32 0, i32 4, i32 %i.030.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %if.then.i.mwifiex_get_priv.exit_crit_edge, %if.end8.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %if.end8.mwifiex_get_priv.exit_crit_edge ], [ %10, %if.then.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %call11 = tail call i32 @mwifiex_cancel_hs(ptr noundef %cond.i, i32 noundef 1) #13
  %irq_wakeup.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 164
  %14 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i = icmp sgt i32 %15, -1
  br i1 %cmp.i, label %if.then.i22, label %mwifiex_get_priv.exit.cleanup_crit_edge

mwifiex_get_priv.exit.cleanup_crit_edge:          ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i22:                                      ; preds = %mwifiex_get_priv.exit
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %15, i32 noundef 0) #13
  %16 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_wakeup.i, align 4
  tail call void @disable_irq(i32 noundef %17) #13
  %wake_by_wifi.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 165
  %18 = ptrtoint ptr %wake_by_wifi.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wake_by_wifi.i, align 4, !range !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i21 = icmp eq i8 %19, 0
  br i1 %tobool.not.i21, label %if.then.i22.cleanup_crit_edge, label %if.then3.i

if.then.i22.cleanup_crit_edge:                    ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3.i:                                       ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %irq_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_wakeup.i, align 4
  tail call void @enable_irq(i32 noundef %21) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.then.i22.cleanup_crit_edge, %mwifiex_get_priv.exit.cleanup_crit_edge, %if.then7, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_get_host_pm_caps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_enable_hs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !90, !92, !93, !95, !96, !97, !98, !99, !101, !102, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !198, !200, !202, !204, !206, !207, !208, !209, !211, !213, !215, !217, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !295, !297, !299, !301, !303, !305, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !343, !345, !347, !349, !351, !352, !353, !354, !356, !357, !358, !360, !361, !362, !364, !365, !366, !368, !370, !372, !373, !374, !375}
!llvm.module.flags = !{!377, !378, !379, !380, !381, !382, !383, !384}
!llvm.ident = !{!385}

!0 = !{ptr @__initcall__kmod_mwifiex_sdio__495_3146_mwifiex_sdio_init6, !1, !"__initcall__kmod_mwifiex_sdio__495_3146_mwifiex_sdio_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3146, i32 1}
!2 = !{ptr @__exitcall_mwifiex_sdio_exit, !1, !"__exitcall_mwifiex_sdio_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author496, !4, !"__UNIQUE_ID_author496", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3148, i32 1}
!5 = !{ptr @__UNIQUE_ID_description497, !6, !"__UNIQUE_ID_description497", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3149, i32 1}
!7 = !{ptr @__UNIQUE_ID_version498, !8, !"__UNIQUE_ID_version498", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3150, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file499, !14, !"__UNIQUE_ID_file499", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3151, i32 1}
!15 = !{ptr @__UNIQUE_ID_license500, !14, !"__UNIQUE_ID_license500", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_firmware501, !17, !"__UNIQUE_ID_firmware501", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3152, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware502, !19, !"__UNIQUE_ID_firmware502", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3153, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware503, !21, !"__UNIQUE_ID_firmware503", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3154, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware504, !23, !"__UNIQUE_ID_firmware504", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3155, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware505, !25, !"__UNIQUE_ID_firmware505", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3156, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware506, !27, !"__UNIQUE_ID_firmware506", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3157, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware507, !29, !"__UNIQUE_ID_firmware507", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3158, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware508, !31, !"__UNIQUE_ID_firmware508", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3159, i32 1}
!32 = !{ptr @mwifiex_sdio, !33, !"mwifiex_sdio", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 940, i32 27}
!34 = !{ptr @mwifiex_ids, !35, !"mwifiex_ids", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 911, i32 36}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 328, i32 14}
!38 = !{ptr @mwifiex_sdio_sd8786, !39, !"mwifiex_sdio_sd8786", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 327, i32 41}
!40 = !{ptr @mwifiex_reg_sd87xx, !41, !"mwifiex_reg_sd87xx", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 38, i32 43}
!42 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 343, i32 14}
!44 = !{ptr @mwifiex_sdio_sd8787, !45, !"mwifiex_sdio_sd8787", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 342, i32 41}
!46 = !{ptr @.str.6, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 358, i32 14}
!48 = !{ptr @mwifiex_sdio_sd8797, !49, !"mwifiex_sdio_sd8797", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 357, i32 41}
!50 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 373, i32 14}
!52 = !{ptr @mwifiex_sdio_sd8897, !53, !"mwifiex_sdio_sd8897", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 372, i32 41}
!54 = !{ptr @mwifiex_reg_sd8897, !55, !"mwifiex_reg_sd8897", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 70, i32 43}
!56 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 420, i32 14}
!58 = !{ptr @mwifiex_sdio_sd8887, !59, !"mwifiex_sdio_sd8887", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 419, i32 41}
!60 = !{ptr @mwifiex_reg_sd8887, !61, !"mwifiex_reg_sd8887", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 227, i32 43}
!62 = !{ptr @.str.9, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 451, i32 14}
!64 = !{ptr @mwifiex_sdio_sd8801, !65, !"mwifiex_sdio_sd8801", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 450, i32 41}
!66 = !{ptr @.str.10, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 388, i32 14}
!68 = !{ptr @mwifiex_sdio_sd8977, !69, !"mwifiex_sdio_sd8977", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 387, i32 41}
!70 = !{ptr @mwifiex_reg_sd8977, !71, !"mwifiex_reg_sd8977", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 121, i32 43}
!72 = !{ptr @.str.11, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 435, i32 14}
!74 = !{ptr @mwifiex_sdio_sd8987, !75, !"mwifiex_sdio_sd8987", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 434, i32 41}
!76 = !{ptr @mwifiex_reg_sd8987, !77, !"mwifiex_reg_sd8987", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 275, i32 43}
!78 = !{ptr @.str.12, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 404, i32 14}
!80 = !{ptr @mwifiex_sdio_sd8997, !81, !"mwifiex_sdio_sd8997", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 403, i32 41}
!82 = !{ptr @mwifiex_reg_sd8997, !83, !"mwifiex_reg_sd8997", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 174, i32 43}
!84 = !{ptr @.str.13, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 522, i32 2}
!86 = !{ptr @.str.14, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.15, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mwifiex_sdio_probe.__UNIQUE_ID_ddebug488, !85, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!89 = !{ptr @.str.16, !85, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mwifiex_sdio_probe.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 551, i32 3}
!92 = !{ptr @.str.17, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.18, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 559, i32 3}
!95 = !{ptr @.str.19, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.20, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mwifiex_sdio_probe._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @mwifiex_sdio_probe._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.22, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 573, i32 3}
!101 = !{ptr @mwifiex_sdio_probe._entry.21, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @mwifiex_sdio_probe._entry_ptr.23, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @init_completion.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../include/linux/completion.h", i32 87, i32 2}
!105 = !{ptr @.str.24, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.25, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2952, i32 3}
!108 = !{ptr @.str.26, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2854, i32 2}
!110 = !{ptr @.str.27, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2866, i32 5}
!112 = distinct !{null, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2873, i32 5}
!114 = !{ptr @.str.29, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2892, i32 2}
!116 = !{ptr @.str.30, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2926, i32 4}
!118 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2932, i32 2}
!120 = !{ptr @.str.32, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2936, i32 3}
!122 = !{ptr @generic_mem_type_map, !123, !"generic_mem_type_map", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 465, i32 35}
!124 = !{ptr @.str.33, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 960, i32 2}
!126 = !{ptr @.str.34, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2673, i32 3}
!128 = !{ptr @.str.35, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2688, i32 4}
!130 = !{ptr @.str.36, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2693, i32 5}
!132 = !{ptr @.str.37, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2700, i32 3}
!134 = !{ptr @.str.38, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2744, i32 3}
!136 = !{ptr @.str.39, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2769, i32 4}
!138 = !{ptr @.str.40, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2780, i32 3}
!140 = !{ptr @.str.41, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2785, i32 4}
!142 = !{ptr @.str.42, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2814, i32 6}
!144 = !{ptr @.str.43, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2821, i32 4}
!146 = !{ptr @mem_type_mapping_tbl, !147, !"mem_type_mapping_tbl", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 469, i32 35}
!148 = !{ptr @.str.44, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2647, i32 3}
!150 = !{ptr @.str.45, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @mwifiex_sdio_card_reset_work.__UNIQUE_ID_ddebug494, !149, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!152 = !{ptr @.str.46, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2653, i32 4}
!154 = !{ptr @mwifiex_sdio_card_reset_work._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @mwifiex_sdio_card_reset_work._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.48, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2656, i32 3}
!158 = !{ptr @mwifiex_sdio_card_reset_work._entry.47, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @mwifiex_sdio_card_reset_work._entry_ptr.49, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.50, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 501, i32 3}
!162 = !{ptr @.str.51, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @mwifiex_sdio_probe_of._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @mwifiex_sdio_probe_of._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @mwifiex_sdio_of_match_table, !166, !"mwifiex_sdio_of_match_table", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 487, i32 34}
!167 = !{ptr @sdio_ops, !168, !"sdio_ops", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3118, i32 30}
!169 = !{ptr @.str.52, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1065, i32 2}
!171 = !{ptr @.str.53, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1411, i32 3}
!173 = !{ptr @.str.54, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1416, i32 2}
!175 = !{ptr @.str.55, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1434, i32 4}
!177 = !{ptr @.str.56, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1448, i32 5}
!179 = !{ptr @.str.57, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1457, i32 5}
!181 = !{ptr @.str.58, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1474, i32 4}
!183 = !{ptr @.str.59, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1486, i32 5}
!185 = !{ptr @.str.60, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1492, i32 4}
!187 = !{ptr @.str.61, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1517, i32 4}
!189 = !{ptr @.str.62, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1521, i32 5}
!191 = !{ptr @.str.63, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1531, i32 2}
!193 = !{ptr @.str.64, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1231, i32 2}
!195 = !{ptr @.str.65, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 691, i32 3}
!197 = !{ptr @__func__.mwifiex_write_data_sync, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.66, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2453, i32 3}
!200 = !{ptr @.str.67, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1331, i32 3}
!202 = !{ptr @.str.68, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1340, i32 3}
!204 = !{ptr @.str.69, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1301, i32 3}
!206 = !{ptr @.str.70, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @mwifiex_sdio_interrupt._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @mwifiex_sdio_interrupt._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.71, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1266, i32 3}
!211 = !{ptr @.str.72, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1279, i32 3}
!213 = !{ptr @.str.73, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1976, i32 3}
!215 = !{ptr @.str.74, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1987, i32 4}
!217 = !{ptr @__func__.mwifiex_process_int_status, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.75, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1995, i32 4}
!220 = !{ptr @.str.76, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2013, i32 3}
!222 = !{ptr @.str.77, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2018, i32 4}
!224 = !{ptr @.str.78, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2036, i32 2}
!226 = !{ptr @.str.79, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2048, i32 3}
!228 = !{ptr @.str.80, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2055, i32 5}
!230 = !{ptr @.str.81, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2063, i32 4}
!232 = !{ptr @.str.82, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2073, i32 5}
!234 = !{ptr @.str.83, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2085, i32 5}
!236 = !{ptr @.str.84, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2098, i32 3}
!238 = !{ptr @.str.85, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2100, i32 3}
!240 = !{ptr @.str.86, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2107, i32 3}
!242 = !{ptr @.str.87, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2113, i32 3}
!244 = !{ptr @.str.88, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1361, i32 3}
!246 = !{ptr @__func__.mwifiex_sdio_card_to_host, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.89, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1369, i32 3}
!249 = !{ptr @.str.90, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1377, i32 3}
!251 = !{ptr @.str.91, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1617, i32 3}
!253 = !{ptr @.str.92, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1632, i32 3}
!255 = !{ptr @.str.93, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1644, i32 3}
!257 = !{ptr @.str.94, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1667, i32 3}
!259 = !{ptr @.str.95, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1683, i32 3}
!261 = !{ptr @.str.96, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1128, i32 2}
!263 = !{ptr @.str.97, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1143, i32 3}
!265 = !{ptr @.str.98, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1159, i32 2}
!267 = !{ptr @.str.99, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1716, i32 3}
!269 = !{ptr @__func__.mwifiex_sdio_card_to_host_mp_aggr, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.100, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1725, i32 3}
!272 = !{ptr @.str.101, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1738, i32 3}
!274 = !{ptr @.str.102, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1756, i32 3}
!276 = !{ptr @.str.103, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1772, i32 3}
!278 = !{ptr @.str.104, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1779, i32 4}
!280 = !{ptr @.str.105, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1789, i32 3}
!282 = !{ptr @.str.106, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1833, i32 5}
!284 = !{ptr @.str.107, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1855, i32 5}
!286 = !{ptr @.str.108, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1870, i32 3}
!288 = !{ptr @.str.109, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1875, i32 4}
!290 = !{ptr @.str.110, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1893, i32 4}
!292 = !{ptr @.str.111, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2321, i32 4}
!294 = !{ptr @__func__.mwifiex_sdio_host_to_card, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.112, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2332, i32 4}
!297 = !{ptr @.str.113, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1179, i32 2}
!299 = !{ptr @.str.114, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1198, i32 3}
!301 = !{ptr @.str.115, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1205, i32 2}
!303 = !{ptr @.str.116, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2149, i32 3}
!305 = !{ptr @__func__.mwifiex_host_to_card_mp_aggr, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.117, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2159, i32 3}
!308 = !{ptr @.str.118, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2191, i32 3}
!310 = !{ptr @.str.119, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2210, i32 3}
!312 = !{ptr @.str.120, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2222, i32 3}
!314 = !{ptr @.str.121, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2266, i32 3}
!316 = !{ptr @.str.122, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2274, i32 3}
!318 = !{ptr @.str.123, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1098, i32 4}
!320 = !{ptr @.str.124, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 973, i32 2}
!322 = !{ptr @.str.125, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 2624, i32 2}
!324 = !{ptr @.str.126, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3014, i32 2}
!326 = !{ptr @.str.127, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3054, i32 24}
!328 = !{ptr @.str.128, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3057, i32 24}
!330 = !{ptr @.str.129, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3066, i32 25}
!332 = !{ptr @.str.130, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3068, i32 25}
!334 = distinct !{null, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3070, i32 25}
!336 = !{ptr @.str.132, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3080, i32 3}
!338 = !{ptr @.str.133, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 3086, i32 2}
!340 = !{ptr @.str.134, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1565, i32 4}
!342 = !{ptr @__func__.mwifiex_deaggr_sdio_pkt, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.135, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 1574, i32 4}
!345 = !{ptr @.str.136, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 817, i32 2}
!347 = !{ptr @mwifiex_sdio_pm_ops, !348, !"mwifiex_sdio_pm_ops", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 935, i32 32}
!349 = !{ptr @.str.137, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 851, i32 2}
!351 = !{ptr @.str.138, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @mwifiex_sdio_suspend.__UNIQUE_ID_ddebug489, !350, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!353 = !{ptr @.str.139, !350, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.140, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 854, i32 3}
!356 = !{ptr @mwifiex_sdio_suspend._entry, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @mwifiex_sdio_suspend._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.142, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 861, i32 3}
!360 = !{ptr @mwifiex_sdio_suspend._entry.141, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @mwifiex_sdio_suspend._entry_ptr.143, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.145, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 870, i32 3}
!364 = !{ptr @mwifiex_sdio_suspend._entry.144, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @mwifiex_sdio_suspend._entry_ptr.146, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.147, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 881, i32 3}
!368 = !{ptr @.str.148, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 888, i32 2}
!370 = !{ptr @.str.149, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 605, i32 3}
!372 = !{ptr @.str.150, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @mwifiex_sdio_resume._entry, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @mwifiex_sdio_resume._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.151, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/marvell/mwifiex/sdio.c", i32 612, i32 3}
!377 = !{i32 1, !"wchar_size", i32 2}
!378 = !{i32 1, !"min_enum_size", i32 4}
!379 = !{i32 8, !"branch-target-enforcement", i32 0}
!380 = !{i32 8, !"sign-return-address", i32 0}
!381 = !{i32 8, !"sign-return-address-all", i32 0}
!382 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!383 = !{i32 7, !"uwtable", i32 1}
!384 = !{i32 7, !"frame-pointer", i32 2}
!385 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!386 = !{i64 2148261863, i64 2148261868, i64 2148261881, i64 2148261925, i64 2148261959, i64 2148261980}
!387 = !{i8 0, i8 2}
!388 = !{!"auto-init"}
!389 = distinct !{!389, !390}
!390 = !{!"llvm.loop.peeled.count", i32 1}
!391 = !{i64 2148641137, i64 2148641163, i64 2148641192, i64 2148641226, i64 2148641257, i64 2148641280}
