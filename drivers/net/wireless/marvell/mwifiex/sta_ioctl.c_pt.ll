; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/sta_ioctl.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mwifiex_cancel_hs\22, \22a\22\09"
module asm "\09.weak\09__crc_mwifiex_cancel_hs\09\09\09\09"
module asm "\09.long\09__crc_mwifiex_cancel_hs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_cancel_hs:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_cancel_hs\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_cancel_hs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mwifiex_enable_hs\22, \22a\22\09"
module asm "\09.weak\09__crc_mwifiex_enable_hs\09\09\09\09"
module asm "\09.long\09__crc_mwifiex_enable_hs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_enable_hs:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_enable_hs\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_enable_hs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mwifiex_disable_auto_ds\22, \22a\22\09"
module asm "\09.weak\09__crc_mwifiex_disable_auto_ds\09\09\09\09"
module asm "\09.long\09__crc_mwifiex_disable_auto_ds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_disable_auto_ds:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_disable_auto_ds\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_disable_auto_ds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.152 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mwifiex_multicast_list = type { i32, i32, [32 x [6 x i8]] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mwifiex_private = type <{ ptr, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i32, i8, [3 x i8], ptr, %struct.net_device_stats, i32, i32, i32, i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, [18 x i16], [2 x i8], i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i8], ptr, %struct.cfg80211_ssid, [6 x i8], i8, %struct.mwifiex_current_bss_params, i16, i8, i8, i16, i16, i8, i8, i8, i8, %struct.mwifiex_802_11_security, [4 x %struct.mwifiex_wep_key], i16, [256 x i8], i16, i8, %struct.host_cmd_ds_802_11_key_material, %struct.host_cmd_ds_802_11_key_material_v2, [256 x i8], i8, i16, ptr, i16, i8, i8, i8, [3 x i8], %struct.mwifiex_wmm_desc, [4 x %struct.atomic_t], %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, [8 x %struct.mwifiex_tx_aggr], %struct.mwifiex_add_ba_param, [8 x i16], [8 x i8], %struct.list_head, %struct.spinlock, [500 x i8], i32, [256 x i8], i8, i8, [8 x %struct.mwifiex_vendor_spec_cfg_ie], [256 x i8], i8, i8, ptr, i32, %struct.spinlock, %struct.wireless_dev, %struct.mwifiex_chan_freq_power, i32, [128 x i8], ptr, i16, [2 x i8], %struct.mutex, ptr, [6 x i8], %struct.wps, i8, i32, i32, i8, i8, %struct.mwifiex_ds_misc_subsc_evt, [16 x %struct.mwifiex_ie], i16, i16, i16, i16, i8, i8, i32, [4 x i8], %struct.mwifiex_roc_cfg, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.mwifiex_uap_bss_param, %struct.cfg80211_chan_def, ptr, %struct.sk_buff_head, i8, [3 x i8], %struct.timer_list, i8, [3 x i8], %struct.idr, %struct.spinlock, ptr, %struct.cfg80211_chan_def, ptr, %struct.delayed_work, %struct.timer_list, ptr, %struct.delayed_work, %struct.cfg80211_beacon_data, %struct.mwifiex_11h_intf_state, [2 x i8], %struct.mwifiex_ds_mem_rw, %struct.sk_buff_head, [50 x %struct.mwifiex_user_scan_chan], i8, i8, [2 x i8] }>
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
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfg80211_bss_ies = type { i64, %struct.callback_head, i32, i8, [0 x i8] }
%struct.mwifiex_ds_hs_cfg = type { i32, i32, i32, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.149, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.149 = type { i64, i64, i8 }
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.mwifiex_bss_info = type { i32, %struct.cfg80211_ssid, i32, [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8] }
%struct.mwifiex_ds_auto_ds = type { i16, i16 }
%struct.mwifiex_power_cfg = type { i32, i32, i32 }
%struct.host_cmd_ds_txpwr_cfg = type { i16, i16, i32 }
%struct.mwifiex_ds_encrypt_key = type { i32, i32, i32, [32 x i8], [6 x i8], i32, [16 x i8], i8, i8, i8, i8, i8 }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.mwifiex_ver_ext = type { i32, [128 x i8] }
%struct.host_cmd_ds_remain_on_chan = type <{ i16, i8, i8, i8, i8, i32 }>
%struct.mwifiex_ds_reg_rw = type { i32, i32, i32 }
%struct.mwifiex_ds_read_eeprom = type { i16, i16, [256 x i8] }
%struct.mwifiex_ds_misc_gen_ie = type { i32, i32, [256 x i8] }

@__param_str_disconnect_on_suspend = internal constant [30 x i8] c"mwifiex.disconnect_on_suspend\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@disconnect_on_suspend = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disconnect_on_suspend = internal constant %struct.kernel_param { ptr @__param_str_disconnect_on_suspend, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @disconnect_on_suspend } }, section "__param", align 4
@__UNIQUE_ID_disconnect_on_suspendtype488 = internal constant [43 x i8] c"mwifiex.parmtype=disconnect_on_suspend:int\00", section ".modinfo", align 1
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/marvell/mwifiex/sta_ioctl.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cmd_wait_q terminated: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"info: Enable Promiscuous mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"info: Enabling All Multicast!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"info: Set multicast list=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"info: old_pkt_filter=%#x, curr_pkt_filter=%#x\0A\00", [49 x i8] zeroinitializer }, align 32
@mwifiex_fill_new_bss_desc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c" failed to alloc beacon_ie\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"info: InterpretIE: AP WEP enabled\0A\00", [61 x i8] zeroinitializer }, align 32
@__const.mwifiex_dnld_txpwr_table.txpwr = private unnamed_addr constant [22 x i8] c"marvell,00_txpwrlimit\00", align 1
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Attempt to reconnect on csa closed chan(%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"info: SSID found in scan list ...\09associating...\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"info: network found in scan\09 list. Joining...\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"info: Network not found in\09the list, creating adhoc with ssid = %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"info: Host Sleep IOCTL\09is blocked in UAPSD/PPS mode\0A\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_mwifiex_cancel_hs = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_cancel_hs = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_cancel_hs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_cancel_hs to i32), ptr @__kstrtab_mwifiex_cancel_hs, ptr @__kstrtabns_mwifiex_cancel_hs }, section "___ksymtab_gpl+mwifiex_cancel_hs", align 4
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aborting bgscan!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cmd: HS Already activated\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IOCTL request HS enable failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hs_activate_wait_q terminated\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_mwifiex_enable_hs = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_enable_hs = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_enable_hs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_enable_hs to i32), ptr @__kstrtab_mwifiex_enable_hs, ptr @__kstrtabns_mwifiex_enable_hs }, section "___ksymtab_gpl+mwifiex_enable_hs", align 4
@__kstrtab_mwifiex_disable_auto_ds = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_disable_auto_ds = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_disable_auto_ds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_disable_auto_ds to i32), ptr @__kstrtab_mwifiex_disable_auto_ds, ptr @__kstrtabns_mwifiex_disable_auto_ds }, section "___ksymtab_gpl+mwifiex_disable_auto_ds", align 4
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"txpower value %d dBm\09is out of range (%d dBm-%d dBm)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%u.%u.%u.p%u\00", [19 x i8] zeroinitializer }, align 32
@driver_version = external dso_local constant [0 x i8], align 1
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"info: MWIFIEX VERSION: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to remain on channel\0A\00", [35 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"11D: skip setting domain info in FW\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"11D: country_ie_len overflow!, deauth AP\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"11D: setting domain info in FW fail\0A\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"key length too long\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"key not set, so cannot enable it\0A\00", [62 x i8] zeroinitializer }, align 32
@mwifiex_set_gen_ie_helper.wpa_oui = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\01", [28 x i8] zeroinitializer }, align 32
@mwifiex_set_gen_ie_helper.wps_oui = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\04", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WPS Session Enabled.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to copy WPA IE, too big\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd: Set Wpa_ie_len=%d IE=%#x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"info: failed to copy WAPI IE, too big\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cmd: Set wapi_ie_len=%d IE=%#x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"info: failed to copy WPS IE, too big\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd: Set wps_ie_len=%d IE=%#x\0A\00", [33 x i8] zeroinitializer }, align 32
@switch.table.mwifiex_reg_write = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 25, i16 26, i16 27, i16 173, i16 237], [22 x i8] zeroinitializer }, align 32
@switch.table.mwifiex_reg_read = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 25, i16 26, i16 27, i16 173, i16 237], [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 68, i64 221]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"disconnect_on_suspend\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 29, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 63, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 69, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 97, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 106, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 113, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 123, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 151, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 158, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 173, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 324, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 331, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 375, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 382, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 424, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 530, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 539, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 556, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 564, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 686, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1093, i32 18 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1097, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1184, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 695, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 723, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 228, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 236, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 259, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1009, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 932, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant [8 x i8] c"wpa_oui\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1328, i32 18 }
@___asan_gen_.143 = private unnamed_addr constant [8 x i8] c"wps_oui\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1329, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1380, i32 5 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 792, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 798, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 835, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 841, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 870, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private constant [52 x i8] c"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 881, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [31 x i8] c"switch.table.mwifiex_reg_write\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [30 x i8] c"switch.table.mwifiex_reg_read\00", align 1
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_disconnect_on_suspendtype488, ptr @__ksymtab_mwifiex_cancel_hs, ptr @__ksymtab_mwifiex_disable_auto_ds, ptr @__ksymtab_mwifiex_enable_hs, ptr @__param_disconnect_on_suspend, ptr @disconnect_on_suspend, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @mwifiex_set_gen_ie_helper.wpa_oui, ptr @mwifiex_set_gen_ie_helper.wps_oui, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @switch.table.mwifiex_reg_write, ptr @switch.table.mwifiex_reg_read], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disconnect_on_suspend to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_set_gen_ie_helper.wpa_oui to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_set_gen_ie_helper.wps_oui to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mwifiex_reg_write to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mwifiex_reg_read to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_copy_mcast_addr(ptr nocapture noundef writeonly %mlist, ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %0 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %0)
  %ha.013 = load ptr, ptr %mc, align 4
  %cmp.not14 = icmp eq ptr %ha.013, %mc
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ha.016 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.013, %entry.for.body_crit_edge ]
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %inc = add i32 %i.015, 1
  %arrayidx = getelementptr %struct.mwifiex_multicast_list, ptr %mlist, i32 0, i32 2, i32 %i.015
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.016, i32 0, i32 2
  %1 = call ptr @memcpy(ptr %arrayidx, ptr %addr, i32 6)
  %2 = ptrtoint ptr %ha.016 to i32
  call void @__asan_load4_noabort(i32 %2)
  %ha.0 = load ptr, ptr %ha.016, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  ret i32 %i.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_wait_queue_complete(ptr noundef %adapter, ptr nocapture noundef readonly %cmd_queued) local_unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 65) #12
  %condition = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_queued, i32 0, i32 9
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %condition, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then9, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %cmd_wait_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 121
  %call81 = call i32 @prepare_to_wait_event(ptr noundef %cmd_wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %5 = ptrtoint ptr %condition to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %condition, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not82.not = icmp eq i8 %8, 0
  br i1 %tobool13.not82.not, label %if.then9.if.end29_crit_edge, label %if.then9.for.end_crit_edge

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then9.if.end29_crit_edge:                      ; preds = %if.then9
  br label %if.end29

if.end29:                                         ; preds = %cleanup.if.end29_crit_edge, %if.then9.if.end29_crit_edge
  %__ret10.185 = phi i32 [ %__ret10.1, %cleanup.if.end29_crit_edge ], [ 1200, %if.then9.if.end29_crit_edge ]
  %call84 = phi i32 [ %call, %cleanup.if.end29_crit_edge ], [ %call81, %if.then9.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool30.not = icmp eq i32 %call84, 0
  br i1 %tobool30.not, label %cleanup, label %if.end29.if.end37_crit_edge

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

cleanup:                                          ; preds = %if.end29
  %call33 = call i32 @schedule_timeout(i32 noundef %__ret10.185) #12
  %call = call i32 @prepare_to_wait_event(ptr noundef %cmd_wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %9 = ptrtoint ptr %condition to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %condition, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool17.not = icmp eq i32 %call33, 0
  %spec.store.select49 = select i1 %tobool17.not, i32 1, i32 %call33
  %__ret10.1 = select i1 %tobool13.not, i32 %call33, i32 %spec.store.select49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool23.not = icmp eq i32 %__ret10.1, 0
  %not.tobool13.not = xor i1 %tobool13.not, true
  %13 = select i1 %not.tobool13.not, i1 true, i1 %tobool23.not
  br i1 %13, label %cleanup.for.end_crit_edge, label %cleanup.if.end29_crit_edge

cleanup.if.end29_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then9.for.end_crit_edge
  %__ret10.1.lcssa = phi i32 [ 1200, %if.then9.for.end_crit_edge ], [ %__ret10.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %cmd_wait_q, ptr noundef nonnull %__wq_entry) #12
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.end29.if.end37_crit_edge
  %__ret10.271 = phi i32 [ %__ret10.1.lcssa, %for.end ], [ %call84, %if.end29.if.end37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret10.271)
  %cmp = icmp slt i32 %__ret10.271, 1
  br i1 %cmp, label %if.then39, label %if.end37.if.end43_crit_edge

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.271)
  %cmp40 = icmp eq i32 %__ret10.271, 0
  %spec.store.select50 = select i1 %cmp40, i32 -110, i32 %__ret10.271
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %spec.store.select50) #12
  call void @mwifiex_cancel_all_pending_cmd(ptr noundef %adapter) #12
  br label %cleanup48

if.end43:                                         ; preds = %if.end37.if.end43_crit_edge, %entry.if.end43_crit_edge
  %status45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 121, i32 1
  %14 = ptrtoint ptr %status45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status45, align 4
  store i32 0, ptr %status45, align 4
  br label %cleanup48

cleanup48:                                        ; preds = %if.end43, %if.then39
  %retval.0 = phi i32 [ %spec.store.select50, %if.then39 ], [ %15, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_cancel_all_pending_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_request_set_multicast_list(ptr noundef %priv, ptr noundef %mcast_list) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_pkt_filter = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 17
  %0 = ptrtoint ptr %curr_pkt_filter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_pkt_filter, align 4
  %2 = ptrtoint ptr %mcast_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mcast_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 1073741824, ptr noundef nonnull @.str.2) #12
  %6 = ptrtoint ptr %curr_pkt_filter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curr_pkt_filter, align 4
  %or = and i32 %7, -385
  %and = or i32 %or, 128
  store i32 %and, ptr %curr_pkt_filter, align 4
  br label %if.end17

if.else:                                          ; preds = %entry
  %and5 = and i32 %1, -129
  %8 = ptrtoint ptr %curr_pkt_filter to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and5, ptr %curr_pkt_filter, align 4
  %9 = ptrtoint ptr %mcast_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mcast_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp7 = icmp eq i32 %10, 4
  br i1 %cmp7, label %if.then9, label %if.else13

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 1073741824, ptr noundef nonnull @.str.3) #12
  %13 = ptrtoint ptr %curr_pkt_filter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %curr_pkt_filter, align 4
  %or12 = or i32 %14, 256
  store i32 %or12, ptr %curr_pkt_filter, align 4
  br label %if.end17

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %and15 = and i32 %1, -385
  %15 = ptrtoint ptr %curr_pkt_filter to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and15, ptr %curr_pkt_filter, align 4
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %num_multicast_addr = getelementptr inbounds %struct.mwifiex_multicast_list, ptr %mcast_list, i32 0, i32 1
  %18 = ptrtoint ptr %num_multicast_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_multicast_addr, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 1073741824, ptr noundef nonnull @.str.4, i32 noundef %19) #12
  %call = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 16, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %mcast_list, i1 noundef zeroext false) #12
  br label %if.end17

if.end17:                                         ; preds = %if.else13, %if.then9, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ %call, %if.else13 ]
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %conv19 = and i32 %1, 65535
  %22 = ptrtoint ptr %curr_pkt_filter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %curr_pkt_filter, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 1073741824, ptr noundef nonnull @.str.5, i32 noundef %conv19, i32 noundef %23) #12
  %24 = ptrtoint ptr %curr_pkt_filter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %curr_pkt_filter, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19, i32 %25)
  %cmp23.not = icmp eq i32 %conv19, %25
  br i1 %cmp23.not, label %if.end17.if.end28_crit_edge, label %if.then25

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 40, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %curr_pkt_filter, i1 noundef zeroext false) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end17.if.end28_crit_edge
  %ret.1 = phi i32 [ %call27, %if.then25 ], [ %ret.0, %if.end17.if.end28_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_fill_new_bss_desc(ptr nocapture noundef readonly %priv, ptr noundef %bss, ptr noundef %bss_desc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.cfg80211_bss, ptr %bss, i32 0, i32 17
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ies2 = getelementptr inbounds %struct.cfg80211_bss, ptr %bss, i32 0, i32 2
  %4 = ptrtoint ptr %ies2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ies2, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b76 = load i1, ptr @mwifiex_fill_new_bss_desc.__warned, align 1
  br i1 %.b76, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mwifiex_fill_new_bss_desc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 151, ptr noundef nonnull @.str.6) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %data = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %5, i32 0, i32 4
  %len = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 8
  %call12 = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %7, i32 noundef 2592) #12
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %5, align 8
  %timestamp = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 16
  %12 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %timestamp, align 8
  %call.i77 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i77, label %do.end9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i80

do.end9.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i80:                                ; preds = %do.end9
  %call1.i78 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78)
  %tobool.not.i79 = icmp eq i32 %call1.i78, 0
  br i1 %tobool.not.i79, label %land.lhs.true.i80.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i82

land.lhs.true.i80.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i82:                               ; preds = %land.lhs.true.i80
  %.b4.i81 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i81, label %land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge, label %if.then.i83

land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i83:                                      ; preds = %land.lhs.true2.i82
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i83, %land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i80.rcu_read_unlock.exit_crit_edge, %do.end9.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !102) #12
  %and.i.i.i.i.i84 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i84 to ptr
  %preempt_count.i.i.i.i85 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i85, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i85, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %18, i32 noundef 4, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end16:                                         ; preds = %rcu_read_unlock.exit
  %bssid = getelementptr inbounds %struct.cfg80211_bss, ptr %bss, i32 0, i32 11
  %19 = call ptr @memcpy(ptr %bss_desc, ptr %bssid, i32 6)
  %signal = getelementptr inbounds %struct.cfg80211_bss, ptr %bss, i32 0, i32 8
  %20 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %signal, align 4
  %rssi = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 4
  %22 = ptrtoint ptr %rssi to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rssi, align 4
  %beacon_buf = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 55
  %23 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call12, ptr %beacon_buf, align 8
  %beacon_buf_size = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 56
  %24 = ptrtoint ptr %beacon_buf_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %9, ptr %beacon_buf_size, align 4
  %beacon_interval = getelementptr inbounds %struct.cfg80211_bss, ptr %bss, i32 0, i32 9
  %25 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %beacon_interval, align 4
  %beacon_period = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 7
  %27 = ptrtoint ptr %beacon_period to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %beacon_period, align 8
  %capability = getelementptr inbounds %struct.cfg80211_bss, ptr %bss, i32 0, i32 10
  %28 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %capability, align 2
  %cap_info_bitmap = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 20
  %30 = ptrtoint ptr %cap_info_bitmap to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %cap_info_bitmap, align 8
  %31 = ptrtoint ptr %priv1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %priv1, align 8
  %conv = zext i8 %32 to i16
  %bss_band = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 13
  %33 = ptrtoint ptr %bss_band to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv, ptr %bss_band, align 4
  %fw_tsf = getelementptr inbounds %struct.cfg80211_bss, ptr %bss, i32 1, i32 2
  %34 = ptrtoint ptr %fw_tsf to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %fw_tsf, align 8
  %fw_tsf19 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 15
  %36 = ptrtoint ptr %fw_tsf19 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %fw_tsf19, align 8
  %37 = and i16 %29, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool22.not = icmp eq i16 %37, 0
  br i1 %tobool22.not, label %if.end16.if.end26_crit_edge, label %if.then23

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %39, i32 noundef 1073741824, ptr noundef nonnull @.str.8) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end16.if.end26_crit_edge
  %.sink = phi i32 [ 1, %if.then23 ], [ 0, %if.end16.if.end26_crit_edge ]
  %40 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 3
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink, ptr %40, align 8
  %42 = ptrtoint ptr %cap_info_bitmap to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %cap_info_bitmap, align 8
  %44 = and i16 %43, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool30.not = icmp eq i16 %44, 0
  %spec.select = select i1 %tobool30.not, i32 2, i32 1
  %45 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 10
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select, ptr %45, align 4
  %disable_11ac = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 44
  %47 = ptrtoint ptr %disable_11ac to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %disable_11ac, align 2
  %48 = and i16 %43, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool38.not = icmp eq i16 %48, 0
  br i1 %tobool38.not, label %if.end26.if.end40_crit_edge, label %if.then39

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %sensed_11h = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 57
  %49 = ptrtoint ptr %sensed_11h to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %sensed_11h, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end26.if.end40_crit_edge
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 8
  %call42 = tail call i32 @mwifiex_update_bss_desc_with_ie(ptr noundef %51, ptr noundef %bss_desc) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then15
  %retval.0 = phi i32 [ %call42, %if.end40 ], [ -12, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_update_bss_desc_with_ie(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_dnld_txpwr_table(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  %txpwr = alloca [22 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dt_node = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %dt_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dt_node, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %txpwr) #12
  %4 = call ptr @memcpy(ptr %txpwr, ptr @__const.mwifiex_dnld_txpwr_table.txpwr, i32 22)
  %arrayidx = getelementptr inbounds [22 x i8], ptr %txpwr, i32 0, i32 8
  %country_code = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 124
  %5 = ptrtoint ptr %country_code to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %country_code, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %arrayidx, align 1
  %call = call i32 @mwifiex_dnld_dt_cfgdata(ptr noundef %priv, ptr noundef nonnull %3, ptr noundef nonnull %txpwr) #12
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %txpwr) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_dnld_dt_cfgdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_bss_start(ptr noundef %priv, ptr noundef %bss, ptr noundef %req_ssid) local_unnamed_addr #2 align 64 {
entry:
  %txpwr.i.i = alloca [22 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %scan_block = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 114
  %2 = ptrtoint ptr %scan_block to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %scan_block, align 1
  %tobool.not = icmp eq ptr %bss, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then:                                          ; preds = %entry
  %region_code = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 74
  %3 = ptrtoint ptr %region_code to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %region_code, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %domain_reg.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 75
  %5 = tail call i32 @llvm.read_register.i32(metadata !102) #12
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %land.lhs.true.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true.rcu_read_lock.exit.i_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.rcu_read_lock.exit.i_crit_edge
  %call.i64.i = tail call ptr @ieee80211_bss_get_elem(ptr noundef nonnull %bss, i8 noundef zeroext 7) #12
  %tobool.not.i = icmp eq ptr %call.i64.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %rcu_read_lock.exit.i
  %call.i65.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i65.i, label %if.then.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i68.i

if.then.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i68.i:                              ; preds = %if.then.i
  %call1.i66.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66.i)
  %tobool.not.i67.i = icmp eq i32 %call1.i66.i, 0
  br i1 %tobool.not.i67.i, label %land.lhs.true.i68.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i70.i

land.lhs.true.i68.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i70.i:                             ; preds = %land.lhs.true.i68.i
  %.b4.i69.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69.i, label %land.lhs.true2.i70.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i71.i

land.lhs.true2.i70.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i71.i:                                    ; preds = %land.lhs.true2.i70.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i71.i, %land.lhs.true2.i70.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i68.i.rcu_read_unlock.exit.i_crit_edge, %if.then.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %9 = tail call i32 @llvm.read_register.i32(metadata !102) #12
  %and.i.i.i.i.i72.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i72.i to ptr
  %preempt_count.i.i.i.i73.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i73.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i73.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %if.end

if.end.i:                                         ; preds = %rcu_read_lock.exit.i
  %arrayidx.i = getelementptr i8, ptr %call.i64.i, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %14)
  %cmp.i = icmp ult i8 %14, 6
  br i1 %cmp.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  %call.i74.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i74.i, label %if.then2.i.rcu_read_unlock.exit84.i_crit_edge, label %land.lhs.true.i77.i

if.then2.i.rcu_read_unlock.exit84.i_crit_edge:    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit84.i

land.lhs.true.i77.i:                              ; preds = %if.then2.i
  %call1.i75.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75.i)
  %tobool.not.i76.i = icmp eq i32 %call1.i75.i, 0
  br i1 %tobool.not.i76.i, label %land.lhs.true.i77.i.rcu_read_unlock.exit84.i_crit_edge, label %land.lhs.true2.i79.i

land.lhs.true.i77.i.rcu_read_unlock.exit84.i_crit_edge: ; preds = %land.lhs.true.i77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit84.i

land.lhs.true2.i79.i:                             ; preds = %land.lhs.true.i77.i
  %.b4.i78.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i78.i, label %land.lhs.true2.i79.i.rcu_read_unlock.exit84.i_crit_edge, label %if.then.i80.i

land.lhs.true2.i79.i.rcu_read_unlock.exit84.i_crit_edge: ; preds = %land.lhs.true2.i79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit84.i

if.then.i80.i:                                    ; preds = %land.lhs.true2.i79.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #12
  br label %rcu_read_unlock.exit84.i

rcu_read_unlock.exit84.i:                         ; preds = %if.then.i80.i, %land.lhs.true2.i79.i.rcu_read_unlock.exit84.i_crit_edge, %land.lhs.true.i77.i.rcu_read_unlock.exit84.i_crit_edge, %if.then2.i.rcu_read_unlock.exit84.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %15 = tail call i32 @llvm.read_register.i32(metadata !102) #12
  %and.i.i.i.i.i81.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i81.i to ptr
  %preempt_count.i.i.i.i82.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i82.i, align 4
  %sub.i.i.i83.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i83.i, ptr %preempt_count.i.i.i.i82.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %if.end

if.end3.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 8
  %country_code.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %20, i32 0, i32 124
  %arrayidx5.i = getelementptr i8, ptr %call.i64.i, i32 2
  %call6.i = tail call i32 @strncmp(ptr noundef %country_code.i, ptr noundef %arrayidx5.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.end3.i
  %call.i85.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i85.i, label %if.then8.i.rcu_read_unlock.exit95.i_crit_edge, label %land.lhs.true.i88.i

if.then8.i.rcu_read_unlock.exit95.i_crit_edge:    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit95.i

land.lhs.true.i88.i:                              ; preds = %if.then8.i
  %call1.i86.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86.i)
  %tobool.not.i87.i = icmp eq i32 %call1.i86.i, 0
  br i1 %tobool.not.i87.i, label %land.lhs.true.i88.i.rcu_read_unlock.exit95.i_crit_edge, label %land.lhs.true2.i90.i

land.lhs.true.i88.i.rcu_read_unlock.exit95.i_crit_edge: ; preds = %land.lhs.true.i88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit95.i

land.lhs.true2.i90.i:                             ; preds = %land.lhs.true.i88.i
  %.b4.i89.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i89.i, label %land.lhs.true2.i90.i.rcu_read_unlock.exit95.i_crit_edge, label %if.then.i91.i

land.lhs.true2.i90.i.rcu_read_unlock.exit95.i_crit_edge: ; preds = %land.lhs.true2.i90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit95.i

if.then.i91.i:                                    ; preds = %land.lhs.true2.i90.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #12
  br label %rcu_read_unlock.exit95.i

rcu_read_unlock.exit95.i:                         ; preds = %if.then.i91.i, %land.lhs.true2.i90.i.rcu_read_unlock.exit95.i_crit_edge, %land.lhs.true.i88.i.rcu_read_unlock.exit95.i_crit_edge, %if.then8.i.rcu_read_unlock.exit95.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %21 = tail call i32 @llvm.read_register.i32(metadata !102) #12
  %and.i.i.i.i.i92.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i92.i to ptr
  %preempt_count.i.i.i.i93.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i93.i, align 4
  %sub.i.i.i94.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i94.i, ptr %preempt_count.i.i.i.i93.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %26, i32 noundef 1073741824, ptr noundef nonnull @.str.25) #12
  br label %if.end

if.end10.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 86, i8 %14)
  %cmp12.i = icmp ugt i8 %14, 86
  br i1 %cmp12.i, label %if.then14.i, label %if.end16.i

if.then14.i:                                      ; preds = %if.end10.i
  %call.i96.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i96.i, label %if.then14.i.rcu_read_unlock.exit106.i_crit_edge, label %land.lhs.true.i99.i

if.then14.i.rcu_read_unlock.exit106.i_crit_edge:  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit106.i

land.lhs.true.i99.i:                              ; preds = %if.then14.i
  %call1.i97.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i97.i)
  %tobool.not.i98.i = icmp eq i32 %call1.i97.i, 0
  br i1 %tobool.not.i98.i, label %land.lhs.true.i99.i.rcu_read_unlock.exit106.i_crit_edge, label %land.lhs.true2.i101.i

land.lhs.true.i99.i.rcu_read_unlock.exit106.i_crit_edge: ; preds = %land.lhs.true.i99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit106.i

land.lhs.true2.i101.i:                            ; preds = %land.lhs.true.i99.i
  %.b4.i100.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i100.i, label %land.lhs.true2.i101.i.rcu_read_unlock.exit106.i_crit_edge, label %if.then.i102.i

land.lhs.true2.i101.i.rcu_read_unlock.exit106.i_crit_edge: ; preds = %land.lhs.true2.i101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit106.i

if.then.i102.i:                                   ; preds = %land.lhs.true2.i101.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #12
  br label %rcu_read_unlock.exit106.i

rcu_read_unlock.exit106.i:                        ; preds = %if.then.i102.i, %land.lhs.true2.i101.i.rcu_read_unlock.exit106.i_crit_edge, %land.lhs.true.i99.i.rcu_read_unlock.exit106.i_crit_edge, %if.then14.i.rcu_read_unlock.exit106.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %27 = tail call i32 @llvm.read_register.i32(metadata !102) #12
  %and.i.i.i.i.i103.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i103.i to ptr
  %preempt_count.i.i.i.i104.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i104.i, align 4
  %sub.i.i.i105.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i105.i, ptr %preempt_count.i.i.i.i104.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %32, i32 noundef 4, ptr noundef nonnull @.str.26) #12
  br label %cleanup122

if.end16.i:                                       ; preds = %if.end10.i
  %33 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %arrayidx5.i, align 1
  %35 = ptrtoint ptr %country_code.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %country_code.i, align 4
  %36 = load i8, ptr %arrayidx5.i, align 1
  %37 = ptrtoint ptr %domain_reg.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %domain_reg.i, align 1
  %arrayidx24.i = getelementptr i8, ptr %call.i64.i, i32 3
  %38 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx24.i, align 1
  %arrayidx26.i = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 75, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx26.i, align 1
  %arrayidx28.i = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 75, i32 0, i32 2
  %41 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 32, ptr %arrayidx28.i, align 1
  %sub.i = add nsw i8 %14, -3
  %conv31.i = zext i8 %sub.i to i32
  %div.i = udiv i8 %sub.i, 3
  %no_of_triplet.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 75, i32 1
  %42 = ptrtoint ptr %no_of_triplet.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %div.i, ptr %no_of_triplet.i, align 1
  %triplet.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 75, i32 2
  %add.ptr.i = getelementptr i8, ptr %call.i64.i, i32 5
  %43 = call ptr @memcpy(ptr %triplet.i, ptr %add.ptr.i, i32 %conv31.i)
  %call.i107.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i107.i, label %if.end16.i.rcu_read_unlock.exit117.i_crit_edge, label %land.lhs.true.i110.i

if.end16.i.rcu_read_unlock.exit117.i_crit_edge:   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit117.i

land.lhs.true.i110.i:                             ; preds = %if.end16.i
  %call1.i108.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108.i)
  %tobool.not.i109.i = icmp eq i32 %call1.i108.i, 0
  br i1 %tobool.not.i109.i, label %land.lhs.true.i110.i.rcu_read_unlock.exit117.i_crit_edge, label %land.lhs.true2.i112.i

land.lhs.true.i110.i.rcu_read_unlock.exit117.i_crit_edge: ; preds = %land.lhs.true.i110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit117.i

land.lhs.true2.i112.i:                            ; preds = %land.lhs.true.i110.i
  %.b4.i111.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i111.i, label %land.lhs.true2.i112.i.rcu_read_unlock.exit117.i_crit_edge, label %if.then.i113.i

land.lhs.true2.i112.i.rcu_read_unlock.exit117.i_crit_edge: ; preds = %land.lhs.true2.i112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit117.i

if.then.i113.i:                                   ; preds = %land.lhs.true2.i112.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #12
  br label %rcu_read_unlock.exit117.i

rcu_read_unlock.exit117.i:                        ; preds = %if.then.i113.i, %land.lhs.true2.i112.i.rcu_read_unlock.exit117.i_crit_edge, %land.lhs.true.i110.i.rcu_read_unlock.exit117.i_crit_edge, %if.end16.i.rcu_read_unlock.exit117.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %44 = tail call i32 @llvm.read_register.i32(metadata !102) #12
  %and.i.i.i.i.i114.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i114.i to ptr
  %preempt_count.i.i.i.i115.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i115.i, align 4
  %sub.i.i.i116.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i116.i, ptr %preempt_count.i.i.i.i115.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call36.i = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 91, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 8
  br i1 %tobool37.not.i, label %if.end40.i, label %if.then38.i

if.then38.i:                                      ; preds = %rcu_read_unlock.exit117.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %49, i32 noundef 4, ptr noundef nonnull @.str.27) #12
  br label %cleanup122

if.end40.i:                                       ; preds = %rcu_read_unlock.exit117.i
  %dt_node.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %49, i32 0, i32 127
  %50 = ptrtoint ptr %dt_node.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dt_node.i.i, align 4
  %tobool.not.i118.i = icmp eq ptr %51, null
  br i1 %tobool.not.i118.i, label %if.end40.i.if.end_crit_edge, label %if.then.i120.i

if.end40.i.if.end_crit_edge:                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i120.i:                                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %txpwr.i.i) #12
  %52 = call ptr @memcpy(ptr %txpwr.i.i, ptr @__const.mwifiex_dnld_txpwr_table.txpwr, i32 22)
  %arrayidx.i.i = getelementptr inbounds [22 x i8], ptr %txpwr.i.i, i32 0, i32 8
  %country_code.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %49, i32 0, i32 124
  %53 = ptrtoint ptr %country_code.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %country_code.i.i, align 4
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %arrayidx.i.i, align 1
  %call.i119.i = call i32 @mwifiex_dnld_dt_cfgdata(ptr noundef %priv, ptr noundef nonnull %51, ptr noundef nonnull %txpwr.i.i) #12
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %txpwr.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i120.i, %if.end40.i.if.end_crit_edge, %rcu_read_unlock.exit95.i, %rcu_read_unlock.exit84.i, %rcu_read_unlock.exit.i, %if.then.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 256) #15
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup122_crit_edge, label %if.end8

if.end.cleanup122_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup122

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @mwifiex_fill_new_bss_desc(ptr noundef %priv, ptr noundef nonnull %bss, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.end8.if.then116_crit_edge

if.end8.if.then116_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then116

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end13:                                         ; preds = %if.end8.if.end13_crit_edge, %entry.if.end13_crit_edge
  %bss_desc.0 = phi ptr [ %call7.i.i, %if.end8.if.end13_crit_edge ], [ null, %entry.if.end13_crit_edge ]
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %57 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bss_mode, align 8
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %58, label %if.else83 [
    i32 2, label %if.end13.if.then19_crit_edge
    i32 8, label %if.end13.if.then19_crit_edge212
  ]

if.end13.if.then19_crit_edge212:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.end13.if.then19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.then19:                                        ; preds = %if.end13.if.then19_crit_edge, %if.end13.if.then19_crit_edge212
  %tobool20.not = icmp eq ptr %bss_desc.0, null
  br i1 %tobool20.not, label %if.then19.cleanup122_crit_edge, label %if.end22

if.then19.cleanup122_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup122

if.end22:                                         ; preds = %if.then19
  %bss_band = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc.0, i32 0, i32 13
  %60 = ptrtoint ptr %bss_band to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %bss_band, align 4
  %conv23 = trunc i16 %61 to i8
  %call24 = call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %conv23) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call24)
  %cmp26 = icmp eq i8 %call24, 0
  br i1 %cmp26, label %if.end22.if.end35_crit_edge, label %if.else

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %fw_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 82
  %62 = ptrtoint ptr %fw_bands to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %fw_bands, align 4
  %64 = and i8 %63, 32
  %65 = or i8 %64, 20
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.end22.if.end35_crit_edge
  %config_bands.0 = phi i8 [ 11, %if.end22.if.end35_crit_edge ], [ %65, %if.else ]
  %fw_bands37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 82
  %66 = ptrtoint ptr %fw_bands37 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %fw_bands37, align 4
  %conv38 = zext i8 %67 to i32
  %or39192 = or i8 %67, %config_bands.0
  %or39 = zext i8 %or39192 to i32
  %neg = xor i32 %conv38, -1
  %and42 = and i32 %or39, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end35.if.end46_crit_edge

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then44:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %config_bands45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 84
  %68 = ptrtoint ptr %config_bands45 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %config_bands.0, ptr %config_bands45, align 2
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end35.if.end46_crit_edge
  %call47 = call i32 @mwifiex_check_network_compatibility(ptr noundef %priv, ptr noundef nonnull %bss_desc.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.if.then116_crit_edge

if.end46.if.then116_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then116

if.end50:                                         ; preds = %if.end46
  %csa_chan.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 132
  %69 = ptrtoint ptr %csa_chan.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %csa_chan.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i193 = icmp eq i8 %70, 0
  br i1 %tobool.not.i193, label %if.end50.mwifiex_11h_get_csa_closed_channel.exit_crit_edge, label %if.end.i196

if.end50.mwifiex_11h_get_csa_closed_channel.exit_crit_edge: ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_11h_get_csa_closed_channel.exit

if.end.i196:                                      ; preds = %if.end50
  %csa_expire_time.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 134
  %71 = ptrtoint ptr %csa_expire_time.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %csa_expire_time.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %sub.i194 = sub i32 %72, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i194)
  %cmp.i195 = icmp slt i32 %sub.i194, 0
  br i1 %cmp.i195, label %if.then1.i, label %if.end.i196.if.end4.i_crit_edge

if.end.i196.if.end4.i_crit_edge:                  ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then1.i:                                       ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %csa_chan.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %csa_chan.i, align 2
  %75 = ptrtoint ptr %csa_expire_time.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %csa_expire_time.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then1.i, %if.end.i196.if.end4.i_crit_edge
  %76 = ptrtoint ptr %csa_chan.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %csa_chan.i, align 2
  br label %mwifiex_11h_get_csa_closed_channel.exit

mwifiex_11h_get_csa_closed_channel.exit:          ; preds = %if.end4.i, %if.end50.mwifiex_11h_get_csa_closed_channel.exit_crit_edge
  %retval.0.i197 = phi i8 [ %77, %if.end4.i ], [ 0, %if.end50.mwifiex_11h_get_csa_closed_channel.exit_crit_edge ]
  %channel = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc.0, i32 0, i32 5
  %78 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %channel, align 8
  %80 = trunc i32 %79 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i197, i8 %80)
  %cmp55 = icmp eq i8 %retval.0.i197, %80
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %mwifiex_11h_get_csa_closed_channel.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %79) #12
  br label %if.then116

if.end59:                                         ; preds = %mwifiex_11h_get_csa_closed_channel.exit
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.10) #12
  %netdev = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %81 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %netdev, align 4
  call void @mwifiex_stop_net_dev_queue(ptr noundef %82, ptr noundef %1) #12
  %83 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %state.i, align 4
  %87 = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i198 = icmp eq i32 %87, 0
  br i1 %tobool.not.i198, label %if.then62, label %if.end59.if.end64_crit_edge

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  call void @netif_carrier_off(ptr noundef %84) #12
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end59.if.end64_crit_edge
  %assoc_rsp_size = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 92
  %88 = ptrtoint ptr %assoc_rsp_size to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %assoc_rsp_size, align 4
  %call65 = call i32 @mwifiex_associate(ptr noundef %priv, ptr noundef nonnull %bss_desc.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call65)
  %cmp66 = icmp eq i32 %call65, 13
  br i1 %cmp66, label %land.lhs.true68, label %if.end64.if.end78_crit_edge

if.end64.if.end78_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

land.lhs.true68:                                  ; preds = %if.end64
  %is_authtype_auto = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 6
  %89 = ptrtoint ptr %is_authtype_auto to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %is_authtype_auto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool70.not = icmp eq i8 %90, 0
  br i1 %tobool70.not, label %land.lhs.true68.if.end78_crit_edge, label %land.lhs.true71

land.lhs.true68.if.end78_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %wep_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %91 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %wep_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool74.not = icmp eq i8 %92, 0
  br i1 %tobool74.not, label %land.lhs.true71.if.end78_crit_edge, label %if.then75

land.lhs.true71.if.end78_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then75:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  %authentication_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 5
  %93 = ptrtoint ptr %authentication_mode to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %authentication_mode, align 4
  %call77 = call i32 @mwifiex_associate(ptr noundef %priv, ptr noundef nonnull %bss_desc.0) #12
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %land.lhs.true71.if.end78_crit_edge, %land.lhs.true68.if.end78_crit_edge, %if.end64.if.end78_crit_edge
  %ret.1 = phi i32 [ %call77, %if.then75 ], [ 13, %land.lhs.true71.if.end78_crit_edge ], [ 13, %land.lhs.true68.if.end78_crit_edge ], [ %call65, %if.end64.if.end78_crit_edge ]
  br i1 %tobool.not, label %if.end78.if.then116_crit_edge, label %if.then80

if.end78.if.then116_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then116

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv, align 8
  %wiphy = getelementptr inbounds %struct.mwifiex_adapter, ptr %95, i32 0, i32 10
  %96 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wiphy, align 4
  call void @cfg80211_put_bss(ptr noundef %97, ptr noundef nonnull %bss) #12
  br label %if.then116

if.else83:                                        ; preds = %if.end13
  %tobool84.not = icmp eq ptr %bss_desc.0, null
  br i1 %tobool84.not, label %if.else83.if.end94_crit_edge, label %land.lhs.true85

if.else83.if.end94_crit_edge:                     ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

land.lhs.true85:                                  ; preds = %if.else83
  %ssid_len = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc.0, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ssid_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool87.not = icmp eq i8 %99, 0
  br i1 %tobool87.not, label %land.lhs.true85.if.end94_crit_edge, label %land.lhs.true88

land.lhs.true85.if.end94_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

land.lhs.true88:                                  ; preds = %land.lhs.true85
  %ssid = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc.0, i32 0, i32 1
  %ssid89 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 1
  %call91 = call i32 @mwifiex_ssid_cmp(ptr noundef %ssid89, ptr noundef %ssid) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %land.lhs.true88.if.then116_crit_edge, label %land.lhs.true88.if.end94_crit_edge

land.lhs.true88.if.end94_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

land.lhs.true88.if.then116_crit_edge:             ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then116

if.end94:                                         ; preds = %land.lhs.true88.if.end94_crit_edge, %land.lhs.true85.if.end94_crit_edge, %if.else83.if.end94_crit_edge
  %adhoc_is_link_sensed = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 57
  %100 = ptrtoint ptr %adhoc_is_link_sensed to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %adhoc_is_link_sensed, align 1
  %call95 = call i32 @mwifiex_check_network_compatibility(ptr noundef %priv, ptr noundef %bss_desc.0) #12
  %netdev96 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 15
  %101 = ptrtoint ptr %netdev96 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %netdev96, align 4
  call void @mwifiex_stop_net_dev_queue(ptr noundef %102, ptr noundef %1) #12
  %103 = ptrtoint ptr %netdev96 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %netdev96, align 4
  %state.i199 = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 6
  %105 = ptrtoint ptr %state.i199 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %state.i199, align 4
  %107 = and i32 %106, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i200 = icmp eq i32 %107, 0
  br i1 %tobool.not.i200, label %if.then99, label %if.end94.if.end101_crit_edge

if.end94.if.end101_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then99:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  call void @netif_carrier_off(ptr noundef %104) #12
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end94.if.end101_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool102.not = icmp eq i32 %call95, 0
  br i1 %tobool102.not, label %if.then103, label %if.else110

if.then103:                                       ; preds = %if.end101
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.11) #12
  %call104 = call i32 @mwifiex_adhoc_join(ptr noundef %priv, ptr noundef %bss_desc.0) #12
  br i1 %tobool.not, label %if.then103.done_crit_edge, label %if.then106

if.then103.done_crit_edge:                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then106:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %priv, align 8
  %wiphy108 = getelementptr inbounds %struct.mwifiex_adapter, ptr %109, i32 0, i32 10
  %110 = ptrtoint ptr %wiphy108 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wiphy108, align 4
  call void @cfg80211_put_bss(ptr noundef %111, ptr noundef nonnull %bss) #12
  br label %done

if.else110:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.12, ptr noundef %req_ssid) #12
  %call112 = call i32 @mwifiex_adhoc_start(ptr noundef %priv, ptr noundef %req_ssid) #12
  br label %done

done:                                             ; preds = %if.else110, %if.then106, %if.then103.done_crit_edge
  %ret.3 = phi i32 [ %call112, %if.else110 ], [ %call104, %if.then106 ], [ %call104, %if.then103.done_crit_edge ]
  br i1 %tobool84.not, label %done.if.end117_crit_edge, label %done.if.then116_crit_edge

done.if.then116_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then116

done.if.end117_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

if.then116:                                       ; preds = %done.if.then116_crit_edge, %land.lhs.true88.if.then116_crit_edge, %if.then80, %if.end78.if.then116_crit_edge, %if.then57, %if.end46.if.then116_crit_edge, %if.end8.if.then116_crit_edge
  %bss_desc.1210 = phi ptr [ %bss_desc.0, %done.if.then116_crit_edge ], [ %bss_desc.0, %land.lhs.true88.if.then116_crit_edge ], [ %call7.i.i, %if.end8.if.then116_crit_edge ], [ %bss_desc.0, %if.then57 ], [ %bss_desc.0, %if.end46.if.then116_crit_edge ], [ %bss_desc.0, %if.then80 ], [ %bss_desc.0, %if.end78.if.then116_crit_edge ]
  %ret.3208 = phi i32 [ %ret.3, %done.if.then116_crit_edge ], [ 0, %land.lhs.true88.if.then116_crit_edge ], [ %call9, %if.end8.if.then116_crit_edge ], [ -1, %if.then57 ], [ %call47, %if.end46.if.then116_crit_edge ], [ %ret.1, %if.then80 ], [ %ret.1, %if.end78.if.then116_crit_edge ]
  %beacon_buf = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc.1210, i32 0, i32 55
  %112 = ptrtoint ptr %beacon_buf to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %beacon_buf, align 8
  call void @kfree(ptr noundef %113) #12
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %done.if.end117_crit_edge
  %bss_desc.1211 = phi ptr [ %bss_desc.1210, %if.then116 ], [ null, %done.if.end117_crit_edge ]
  %ret.3209 = phi i32 [ %ret.3208, %if.then116 ], [ %ret.3, %done.if.end117_crit_edge ]
  call void @kfree(ptr noundef %bss_desc.1211) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3209)
  %cmp118 = icmp slt i32 %ret.3209, 0
  br i1 %cmp118, label %if.then120, label %if.end117.cleanup122_crit_edge

if.end117.cleanup122_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup122

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  %attempted_bss_desc = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 46
  %114 = ptrtoint ptr %attempted_bss_desc to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %attempted_bss_desc, align 4
  br label %cleanup122

cleanup122:                                       ; preds = %if.then120, %if.end117.cleanup122_crit_edge, %if.then19.cleanup122_crit_edge, %if.end.cleanup122_crit_edge, %if.then38.i, %rcu_read_unlock.exit106.i
  %retval.1 = phi i32 [ -12, %if.end.cleanup122_crit_edge ], [ %ret.3209, %if.then120 ], [ %ret.3209, %if.end117.cleanup122_crit_edge ], [ -22, %rcu_read_unlock.exit106.i ], [ -22, %if.then38.i ], [ -1, %if.then19.cleanup122_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_check_network_compatibility(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_stop_net_dev_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_associate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ssid_cmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_adhoc_join(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_adhoc_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_set_hs_params(ptr noundef %priv, i16 noundef zeroext %action, i32 noundef %cmd_type, ptr noundef %hs_cfg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %hs_cfg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i16 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %action, label %if.end.cleanup_crit_edge [
    i16 1, label %sw.bb
    i16 0, label %sw.bb66
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %pps_uapsd_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 104
  %3 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pps_uapsd_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.not = icmp eq i16 %4, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %5 = ptrtoint ptr %hs_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hs_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  %conditions54 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hs_cfg, i32 0, i32 1
  %7 = ptrtoint ptr %conditions54 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %conditions54, align 4
  br i1 %tobool5.not, label %if.else53, label %if.then6

if.then6:                                         ; preds = %if.end4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %8, label %if.then19 [
    i32 -1, label %if.then8
    i32 0, label %if.else33
  ]

if.then8:                                         ; preds = %if.then6
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %work_flags, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %if.then8.cleanup_crit_edge, label %if.end11

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %hs_cfg12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 107
  %13 = ptrtoint ptr %hs_cfg12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hs_cfg12, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %hs_cfg12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %hs_cfg12, align 4
  br label %if.end41

if.then19:                                        ; preds = %if.then6
  %17 = tail call i32 @llvm.bswap.i32(i32 %8)
  %hs_cfg21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 107
  %18 = ptrtoint ptr %hs_cfg21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %hs_cfg21, align 4
  %gpio = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hs_cfg, i32 0, i32 2
  %19 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio, align 4
  %conv23 = trunc i32 %20 to i8
  %gpio25 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 107, i32 1
  %21 = ptrtoint ptr %gpio25 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv23, ptr %gpio25, align 4
  %gap = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hs_cfg, i32 0, i32 3
  %22 = ptrtoint ptr %gap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool26.not = icmp eq i32 %23, 0
  br i1 %tobool26.not, label %if.then19.if.end41_crit_edge, label %if.then27

if.then19.if.end41_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then27:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %conv29 = trunc i32 %23 to i8
  %gap31 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 107, i32 2
  %24 = ptrtoint ptr %gap31 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv29, ptr %gap31, align 1
  br label %if.end41

if.else33:                                        ; preds = %if.then6
  %hs_cfg34 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 107
  %25 = ptrtoint ptr %hs_cfg34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hs_cfg34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp36 = icmp eq i32 %26, -1
  br i1 %cmp36, label %if.else33.cleanup_crit_edge, label %if.else33.if.end41_crit_edge

if.else33.if.end41_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.else33.cleanup_crit_edge:                      ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end41:                                         ; preds = %if.else33.if.end41_crit_edge, %if.then27, %if.then19.if.end41_crit_edge, %if.end11
  %prev_cond.0 = phi i32 [ %15, %if.end11 ], [ 0, %if.then27 ], [ 0, %if.then19.if.end41_crit_edge ], [ 0, %if.else33.if.end41_crit_edge ]
  %hs_cfg42 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 107
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd_type)
  %cmp43 = icmp eq i32 %cmd_type, 1
  %call45 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 229, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %hs_cfg42, i1 noundef zeroext %cmp43) #12
  %27 = ptrtoint ptr %conditions54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %conditions54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp47 = icmp eq i32 %28, -1
  br i1 %cmp47, label %if.then49, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then49:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %29 = tail call i32 @llvm.bswap.i32(i32 %prev_cond.0)
  %30 = ptrtoint ptr %hs_cfg42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %hs_cfg42, align 4
  br label %cleanup

if.else53:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %31 = tail call i32 @llvm.bswap.i32(i32 %8)
  %hs_cfg55 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 107
  %32 = ptrtoint ptr %hs_cfg55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %hs_cfg55, align 4
  %gpio57 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hs_cfg, i32 0, i32 2
  %33 = ptrtoint ptr %gpio57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gpio57, align 4
  %conv58 = trunc i32 %34 to i8
  %gpio60 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 107, i32 1
  %35 = ptrtoint ptr %gpio60 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv58, ptr %gpio60, align 4
  %gap61 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hs_cfg, i32 0, i32 3
  %36 = ptrtoint ptr %gap61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gap61, align 4
  %conv62 = trunc i32 %37 to i8
  %gap64 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 107, i32 2
  %38 = ptrtoint ptr %gap64 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv62, ptr %gap64, align 1
  br label %cleanup

sw.bb66:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %hs_cfg67 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 107
  %39 = ptrtoint ptr %hs_cfg67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hs_cfg67, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %conditions69 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hs_cfg, i32 0, i32 1
  %42 = ptrtoint ptr %conditions69 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %conditions69, align 4
  %gpio71 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 107, i32 1
  %43 = ptrtoint ptr %gpio71 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %gpio71, align 4
  %conv72 = zext i8 %44 to i32
  %gpio73 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hs_cfg, i32 0, i32 2
  %45 = ptrtoint ptr %gpio73 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv72, ptr %gpio73, align 4
  %gap75 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 107, i32 2
  %46 = ptrtoint ptr %gap75 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %gap75, align 1
  %conv76 = zext i8 %47 to i32
  %gap77 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %hs_cfg, i32 0, i32 3
  %48 = ptrtoint ptr %gap77 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv76, ptr %gap77, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb66, %if.else53, %if.then49, %if.end41.cleanup_crit_edge, %if.else33.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %sw.bb66 ], [ -1, %if.then3 ], [ %call45, %if.then49 ], [ %call45, %if.end41.cleanup_crit_edge ], [ 0, %if.then8.cleanup_crit_edge ], [ 0, %if.else53 ], [ -1, %if.else33.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cancel_hs(ptr noundef %priv, i32 noundef %cmd_type) #2 align 64 {
entry:
  %hscfg = alloca %struct.mwifiex_ds_hs_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hscfg) #12
  %0 = getelementptr inbounds i8, ptr %hscfg, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %2 = ptrtoint ptr %hscfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %hscfg, align 4
  %call = call i32 @mwifiex_set_hs_params(ptr noundef %priv, i16 noundef zeroext 1, i32 noundef %cmd_type, ptr noundef nonnull %hscfg)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hscfg) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_enable_hs(ptr noundef %adapter) #2 align 64 {
entry:
  %hscfg = alloca %struct.mwifiex_ds_hs_cfg, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hscfg) #12
  %0 = load i32, ptr @disconnect_on_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %for.cond.preheader

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

for.cond.preheader:                               ; preds = %entry
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %1 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp153.not = icmp eq i8 %2, 0
  br i1 %cmp153.not, label %for.cond.preheader.if.end5_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end5_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0154 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.0154
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @mwifiex_deauthenticate(ptr noundef nonnull %4, ptr noundef null) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0154, 1
  %5 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %priv_num, align 4
  %conv = zext i8 %6 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end5_crit_edge

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end5:                                          ; preds = %for.inc.if.end5_crit_edge, %for.cond.preheader.if.end5_crit_edge, %entry.if.end5_crit_edge
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %7 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp2.not.i = icmp eq i8 %8, 0
  br i1 %cmp2.not.i, label %if.end5.if.end22_crit_edge, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

if.end5.if.end22_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.03.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %bss_role6.i = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bss_role6.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bss_role6.i, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp8.i = icmp eq i8 %13, 0
  br i1 %cmp8.i, label %land.lhs.true, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end22_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end22_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true:                                    ; preds = %lor.lhs.false.i
  %sched_scanning = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 131
  %14 = ptrtoint ptr %sched_scanning to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sched_scanning, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end22_crit_edge, label %if.then10

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then10:                                        ; preds = %land.lhs.true
  %wdev = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 103
  %16 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wdev, align 8
  %wowlan_config = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 41
  %18 = ptrtoint ptr %wowlan_config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wowlan_config, align 4
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %if.then10.if.end22_crit_edge, label %land.lhs.true12

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true12:                                  ; preds = %if.then10
  %nd_config = getelementptr inbounds %struct.cfg80211_wowlan, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %nd_config to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nd_config, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true12.if.end22_crit_edge

land.lhs.true12.if.end22_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then17:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.14) #12
  %call18 = tail call i32 @mwifiex_stop_bg_scan(ptr noundef nonnull %10) #12
  %22 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wdev, align 8
  tail call void @cfg80211_sched_scan_stopped(ptr noundef %23, i64 noundef 0) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %land.lhs.true12.if.end22_crit_edge, %if.then10.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %for.inc.i.if.end22_crit_edge, %if.end5.if.end22_crit_edge
  %hs_activated = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 108
  %24 = ptrtoint ptr %hs_activated to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hs_activated, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool23.not = icmp eq i8 %25, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.15) #12
  br label %cleanup84

if.end25:                                         ; preds = %if.end22
  %hs_activate_wait_q_woken = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 110
  %26 = ptrtoint ptr %hs_activate_wait_q_woken to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %hs_activate_wait_q_woken, align 4
  %27 = getelementptr inbounds i8, ptr %hscfg, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 12)
  %29 = ptrtoint ptr %hscfg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %hscfg, align 4
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %work_flags) #12
  tail call void @mwifiex_cancel_all_pending_cmd(ptr noundef %adapter) #12
  %30 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %priv_num.i, align 4
  %conv.i122 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp2.not.i123 = icmp eq i8 %31, 0
  br i1 %cmp2.not.i123, label %if.end25.mwifiex_get_priv.exit136_crit_edge, label %if.end25.for.body.i127_crit_edge

if.end25.for.body.i127_crit_edge:                 ; preds = %if.end25
  br label %for.body.i127

if.end25.mwifiex_get_priv.exit136_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit136

for.body.i127:                                    ; preds = %for.inc.i133.for.body.i127_crit_edge, %if.end25.for.body.i127_crit_edge
  %i.03.i124 = phi i32 [ %inc.i131, %for.inc.i133.for.body.i127_crit_edge ], [ 0, %if.end25.for.body.i127_crit_edge ]
  %arrayidx.i125 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.03.i124
  %32 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i125, align 4
  %tobool.not.i126 = icmp eq ptr %33, null
  br i1 %tobool.not.i126, label %for.body.i127.for.inc.i133_crit_edge, label %lor.lhs.false.i130

for.body.i127.for.inc.i133_crit_edge:             ; preds = %for.body.i127
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i133

lor.lhs.false.i130:                               ; preds = %for.body.i127
  %bss_role6.i128 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %bss_role6.i128 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bss_role6.i128, align 1
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp8.i129 = icmp eq i8 %36, 0
  br i1 %cmp8.i129, label %lor.lhs.false.i130.mwifiex_get_priv.exit136_crit_edge, label %lor.lhs.false.i130.for.inc.i133_crit_edge

lor.lhs.false.i130.for.inc.i133_crit_edge:        ; preds = %lor.lhs.false.i130
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i133

lor.lhs.false.i130.mwifiex_get_priv.exit136_crit_edge: ; preds = %lor.lhs.false.i130
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit136

for.inc.i133:                                     ; preds = %lor.lhs.false.i130.for.inc.i133_crit_edge, %for.body.i127.for.inc.i133_crit_edge
  %inc.i131 = add nuw nsw i32 %i.03.i124, 1
  %exitcond.not.i132 = icmp eq i32 %inc.i131, %conv.i122
  br i1 %exitcond.not.i132, label %for.inc.i133.mwifiex_get_priv.exit136_crit_edge, label %for.inc.i133.for.body.i127_crit_edge

for.inc.i133.for.body.i127_crit_edge:             ; preds = %for.inc.i133
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i127

for.inc.i133.mwifiex_get_priv.exit136_crit_edge:  ; preds = %for.inc.i133
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_get_priv.exit136

mwifiex_get_priv.exit136:                         ; preds = %for.inc.i133.mwifiex_get_priv.exit136_crit_edge, %lor.lhs.false.i130.mwifiex_get_priv.exit136_crit_edge, %if.end25.mwifiex_get_priv.exit136_crit_edge
  %cond.i135 = phi ptr [ null, %if.end25.mwifiex_get_priv.exit136_crit_edge ], [ %33, %lor.lhs.false.i130.mwifiex_get_priv.exit136_crit_edge ], [ null, %for.inc.i133.mwifiex_get_priv.exit136_crit_edge ]
  %call27 = call i32 @mwifiex_set_hs_params(ptr noundef %cond.i135, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %hscfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %mwifiex_get_priv.exit136
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.16) #12
  br label %cleanup84

if.end30:                                         ; preds = %mwifiex_get_priv.exit136
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 563) #12
  %37 = ptrtoint ptr %hs_activate_wait_q_woken to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hs_activate_wait_q_woken, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool35.not = icmp eq i16 %38, 0
  br i1 %tobool35.not, label %if.then46, label %if.end30.cleanup84_crit_edge

if.end30.cleanup84_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup84

if.then46:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %39 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %hs_activate_wait_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 111
  %call49155 = call i32 @prepare_to_wait_event(ptr noundef %hs_activate_wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %40 = ptrtoint ptr %hs_activate_wait_q_woken to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hs_activate_wait_q_woken, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool52.not156.not = icmp eq i16 %41, 0
  br i1 %tobool52.not156.not, label %if.then46.if.end70_crit_edge, label %if.then46.for.end75_crit_edge

if.then46.for.end75_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end75

if.then46.if.end70_crit_edge:                     ; preds = %if.then46
  br label %if.end70

if.end70:                                         ; preds = %cleanup.if.end70_crit_edge, %if.then46.if.end70_crit_edge
  %__ret47.1159 = phi i32 [ %__ret47.1, %cleanup.if.end70_crit_edge ], [ 1000, %if.then46.if.end70_crit_edge ]
  %call49158 = phi i32 [ %call49, %cleanup.if.end70_crit_edge ], [ %call49155, %if.then46.if.end70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49158)
  %tobool71.not = icmp eq i32 %call49158, 0
  br i1 %tobool71.not, label %cleanup, label %if.end70.if.end78_crit_edge

if.end70.if.end78_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

cleanup:                                          ; preds = %if.end70
  %call74 = call i32 @schedule_timeout(i32 noundef %__ret47.1159) #12
  %call49 = call i32 @prepare_to_wait_event(ptr noundef %hs_activate_wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %42 = ptrtoint ptr %hs_activate_wait_q_woken to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %hs_activate_wait_q_woken, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool52.not = icmp eq i16 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool57.not = icmp eq i32 %call74, 0
  %spec.store.select87 = select i1 %tobool57.not, i32 1, i32 %call74
  %__ret47.1 = select i1 %tobool52.not, i32 %call74, i32 %spec.store.select87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret47.1)
  %tobool64.not = icmp eq i32 %__ret47.1, 0
  %not.tobool52.not = xor i1 %tobool52.not, true
  %44 = select i1 %not.tobool52.not, i1 true, i1 %tobool64.not
  br i1 %44, label %cleanup.for.end75_crit_edge, label %cleanup.if.end70_crit_edge

cleanup.if.end70_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

cleanup.for.end75_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end75

for.end75:                                        ; preds = %cleanup.for.end75_crit_edge, %if.then46.for.end75_crit_edge
  %__ret47.1.lcssa = phi i32 [ 1000, %if.then46.for.end75_crit_edge ], [ %__ret47.1, %cleanup.for.end75_crit_edge ]
  call void @finish_wait(ptr noundef %hs_activate_wait_q, ptr noundef nonnull %__wq_entry) #12
  br label %if.end78

if.end78:                                         ; preds = %for.end75, %if.end70.if.end78_crit_edge
  %__ret47.2141 = phi i32 [ %__ret47.1.lcssa, %for.end75 ], [ %call49158, %if.end70.if.end78_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret47.2141)
  %cmp80 = icmp slt i32 %__ret47.2141, 1
  br i1 %cmp80, label %if.then82, label %if.end78.cleanup84_crit_edge

if.end78.cleanup84_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup84

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.17) #12
  br label %cleanup84

cleanup84:                                        ; preds = %if.then82, %if.end78.cleanup84_crit_edge, %if.end30.cleanup84_crit_edge, %if.then29, %if.then24
  %retval.0 = phi i32 [ 1, %if.then24 ], [ 0, %if.then29 ], [ 0, %if.then82 ], [ 1, %if.end78.cleanup84_crit_edge ], [ 1, %if.end30.cleanup84_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hscfg) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_deauthenticate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_stop_bg_scan(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_stopped(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_get_bss_info(ptr nocapture noundef readonly %priv, ptr noundef writeonly %info) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %curr_bss_params = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bss_mode, align 8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %info, align 4
  %ssid = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 1
  %ssid3 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %ssid, ptr %ssid3, i32 33)
  %bssid = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 12
  %6 = call ptr @memcpy(ptr %bssid, ptr %curr_bss_params, i32 6)
  %channel = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 5
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 8
  %bss_chan = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %bss_chan to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %bss_chan, align 4
  %country_code = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 3
  %country_code4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 124
  %10 = call ptr @memcpy(ptr %country_code, ptr %country_code4, i32 3)
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %11 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %media_connected, align 8
  %conv = zext i8 %12 to i32
  %media_connected6 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 4
  %13 = ptrtoint ptr %media_connected6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %media_connected6, align 4
  %max_tx_power_level = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 21
  %14 = ptrtoint ptr %max_tx_power_level to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %max_tx_power_level, align 2
  %conv7 = zext i8 %15 to i32
  %max_power_level = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 5
  %16 = ptrtoint ptr %max_power_level to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv7, ptr %max_power_level, align 4
  %min_tx_power_level = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 22
  %17 = ptrtoint ptr %min_tx_power_level to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %min_tx_power_level, align 1
  %conv8 = zext i8 %18 to i32
  %min_power_level = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 6
  %19 = ptrtoint ptr %min_power_level to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv8, ptr %min_power_level, align 4
  %adhoc_state = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 58
  %20 = ptrtoint ptr %adhoc_state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %adhoc_state, align 2
  %conv9 = zext i8 %21 to i32
  %adhoc_state10 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 7
  %22 = ptrtoint ptr %adhoc_state10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv9, ptr %adhoc_state10, align 4
  %bcn_nf_last = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 42
  %23 = ptrtoint ptr %bcn_nf_last to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %bcn_nf_last, align 4
  %conv11 = sext i16 %24 to i32
  %bcn_nf_last12 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 8
  %25 = ptrtoint ptr %bcn_nf_last12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv11, ptr %bcn_nf_last12, align 4
  %wep_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %26 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %wep_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool13.not = icmp ne i8 %27, 0
  %spec.select = zext i1 %tobool13.not to i32
  %28 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 9
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select, ptr %28, align 4
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %work_flags, align 4
  %shr.i = lshr i32 %31, 3
  %and1.i = and i32 %shr.i, 1
  %is_hs_configured = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 10
  %32 = ptrtoint ptr %is_hs_configured to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and1.i, ptr %is_hs_configured, align 4
  %is_deep_sleep = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 98
  %33 = ptrtoint ptr %is_deep_sleep to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_deep_sleep, align 4
  %conv17 = zext i8 %34 to i32
  %is_deep_sleep18 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %info, i32 0, i32 11
  %35 = ptrtoint ptr %is_deep_sleep18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv17, ptr %is_deep_sleep18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_disable_auto_ds(ptr noundef %priv) #2 align 64 {
entry:
  %auto_ds = alloca %struct.mwifiex_ds_auto_ds, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %auto_ds) #12
  %0 = ptrtoint ptr %auto_ds to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %auto_ds, align 4
  %call = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 228, i16 noundef zeroext 254, i32 noundef 1, ptr noundef nonnull %auto_ds, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auto_ds) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_drv_get_data_rate(ptr noundef %priv, ptr nocapture noundef writeonly %rate) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 127, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  %is_data_rate_auto = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 33
  %0 = ptrtoint ptr %is_data_rate_auto to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_data_rate_auto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %tx_rate = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 25
  %2 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_rate, align 4
  %tx_htinfo = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 26
  %4 = ptrtoint ptr %tx_htinfo to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_htinfo, align 1
  %call3 = tail call i32 @mwifiex_index_to_data_rate(ptr noundef %priv, i8 noundef zeroext %3, i8 noundef zeroext %5) #12
  br label %if.end4.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %data_rate = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 32
  %6 = ptrtoint ptr %data_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_rate, align 8
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %if.else, %if.then2
  %call3.sink = phi i32 [ %call3, %if.then2 ], [ %7, %if.else ]
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call3.sink, ptr %rate, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %entry.if.end4_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_index_to_data_rate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_set_tx_power(ptr noundef %priv, ptr nocapture noundef readonly %power_cfg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %power_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %entry
  %power_level = getelementptr inbounds %struct.mwifiex_power_cfg, ptr %power_cfg, i32 0, i32 2
  %2 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_level, align 4
  %conv1 = and i32 %3, 65535
  %min_tx_power_level = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 22
  %4 = ptrtoint ptr %min_tx_power_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %min_tx_power_level, align 1
  %conv2 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %conv2)
  %cmp = icmp ult i32 %conv1, %conv2
  br i1 %cmp, label %if.then.if.then8_crit_edge, label %lor.lhs.false

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.then
  %max_tx_power_level = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 21
  %6 = ptrtoint ptr %max_tx_power_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_tx_power_level, align 2
  %conv5 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %conv5)
  %cmp6 = icmp ugt i32 %conv1, %conv5
  %extract.t119 = trunc i32 %3 to i8
  br i1 %cmp6, label %lor.lhs.false.if.then8_crit_edge, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.then.if.then8_crit_edge
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %max_tx_power_level12 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 21
  %10 = ptrtoint ptr %max_tx_power_level12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_tx_power_level12, align 2
  %conv13 = zext i8 %11 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv13) #12
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false.if.end14_crit_edge, %entry.if.end14_crit_edge
  %dbm.0.off0 = phi i8 [ 0, %entry.if.end14_crit_edge ], [ %extract.t119, %lor.lhs.false.if.end14_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 2048) #15
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 256, ptr %call7.i.i, align 8
  %14 = ptrtoint ptr %power_cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %power_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool19.not = icmp eq i32 %15, 0
  br i1 %tobool19.not, label %if.then20, label %if.end17.if.end57_crit_edge

if.end17.if.end57_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then20:                                        ; preds = %if.end17
  %is_power_fixed = getelementptr inbounds %struct.mwifiex_power_cfg, ptr %power_cfg, i32 0, i32 1
  %16 = ptrtoint ptr %is_power_fixed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %is_power_fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %cond.false, label %if.then20.cond.end_crit_edge

if.then20.cond.end_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %min_tx_power_level23 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 22
  %18 = ptrtoint ptr %min_tx_power_level23 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %min_tx_power_level23, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then20.cond.end_crit_edge
  %cond.off0 = phi i8 [ %19, %cond.false ], [ %dbm.0.off0, %if.then20.cond.end_crit_edge ]
  %mode = getelementptr inbounds %struct.host_cmd_ds_txpwr_cfg, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16777216, ptr %mode, align 4
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 8
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 21505, ptr %add.ptr, align 8
  %length = getelementptr i8, ptr %call7.i.i, i32 10
  %22 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 8192, ptr %length, align 2
  %add.ptr27 = getelementptr i8, ptr %call7.i.i, i32 12
  %first_rate_code = getelementptr i8, ptr %call7.i.i, i32 13
  %23 = ptrtoint ptr %first_rate_code to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %first_rate_code, align 1
  %last_rate_code = getelementptr i8, ptr %call7.i.i, i32 14
  %24 = ptrtoint ptr %last_rate_code to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %last_rate_code, align 2
  %25 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 3, ptr %add.ptr27, align 4
  %power_step = getelementptr i8, ptr %call7.i.i, i32 15
  %26 = ptrtoint ptr %power_step to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %power_step, align 1
  %power_min = getelementptr i8, ptr %call7.i.i, i32 16
  %27 = ptrtoint ptr %power_min to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %cond.off0, ptr %power_min, align 8
  %power_max = getelementptr i8, ptr %call7.i.i, i32 17
  %28 = ptrtoint ptr %power_max to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %dbm.0.off0, ptr %power_max, align 1
  %incdec.ptr = getelementptr i8, ptr %call7.i.i, i32 20
  %first_rate_code30 = getelementptr i8, ptr %call7.i.i, i32 21
  %29 = ptrtoint ptr %first_rate_code30 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %first_rate_code30, align 1
  %last_rate_code31 = getelementptr i8, ptr %call7.i.i, i32 22
  %30 = ptrtoint ptr %last_rate_code31 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 7, ptr %last_rate_code31, align 2
  %31 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 7, ptr %incdec.ptr, align 4
  %power_step33 = getelementptr i8, ptr %call7.i.i, i32 23
  %32 = ptrtoint ptr %power_step33 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %power_step33, align 1
  %power_min35 = getelementptr i8, ptr %call7.i.i, i32 24
  %33 = ptrtoint ptr %power_min35 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %cond.off0, ptr %power_min35, align 8
  %power_max37 = getelementptr i8, ptr %call7.i.i, i32 25
  %34 = ptrtoint ptr %power_max37 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %dbm.0.off0, ptr %power_max37, align 1
  %incdec.ptr38 = getelementptr i8, ptr %call7.i.i, i32 28
  %first_rate_code39 = getelementptr i8, ptr %call7.i.i, i32 29
  %35 = ptrtoint ptr %first_rate_code39 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %first_rate_code39, align 1
  %last_rate_code40 = getelementptr i8, ptr %call7.i.i, i32 30
  %36 = ptrtoint ptr %last_rate_code40 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 32, ptr %last_rate_code40, align 2
  %37 = ptrtoint ptr %incdec.ptr38 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 8, ptr %incdec.ptr38, align 4
  %power_step42 = getelementptr i8, ptr %call7.i.i, i32 31
  %38 = ptrtoint ptr %power_step42 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %power_step42, align 1
  %power_min44 = getelementptr i8, ptr %call7.i.i, i32 32
  %39 = ptrtoint ptr %power_min44 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %cond.off0, ptr %power_min44, align 8
  %power_max46 = getelementptr i8, ptr %call7.i.i, i32 33
  %40 = ptrtoint ptr %power_max46 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %dbm.0.off0, ptr %power_max46, align 1
  %ht_bandwidth = getelementptr i8, ptr %call7.i.i, i32 34
  %41 = ptrtoint ptr %ht_bandwidth to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %ht_bandwidth, align 2
  %incdec.ptr47 = getelementptr i8, ptr %call7.i.i, i32 36
  %first_rate_code48 = getelementptr i8, ptr %call7.i.i, i32 37
  %42 = ptrtoint ptr %first_rate_code48 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %first_rate_code48, align 1
  %last_rate_code49 = getelementptr i8, ptr %call7.i.i, i32 38
  %43 = ptrtoint ptr %last_rate_code49 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 32, ptr %last_rate_code49, align 2
  %44 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 8, ptr %incdec.ptr47, align 4
  %power_step51 = getelementptr i8, ptr %call7.i.i, i32 39
  %45 = ptrtoint ptr %power_step51 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %power_step51, align 1
  %power_min53 = getelementptr i8, ptr %call7.i.i, i32 40
  %46 = ptrtoint ptr %power_min53 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %cond.off0, ptr %power_min53, align 8
  %power_max55 = getelementptr i8, ptr %call7.i.i, i32 41
  %47 = ptrtoint ptr %power_max55 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %dbm.0.off0, ptr %power_max55, align 1
  %ht_bandwidth56 = getelementptr i8, ptr %call7.i.i, i32 42
  %48 = ptrtoint ptr %ht_bandwidth56 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %ht_bandwidth56, align 2
  br label %if.end57

if.end57:                                         ; preds = %cond.end, %if.end17.if.end57_crit_edge
  %call58 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 209, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end14.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ %call58, %if.end57 ], [ -1, %if.then8 ], [ -12, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_drv_set_power(ptr noundef %priv, ptr nocapture noundef readonly %ps_mode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %ps_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %spec.select = zext i1 %tobool.not to i16
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 89
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %spec.select, ptr %4, align 4
  %6 = ptrtoint ptr %ps_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ps_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  %conv = select i1 %tobool4.not, i16 254, i16 255
  %call = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 228, i16 noundef zeroext %conv, i32 noundef 16, ptr noundef null, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp ne i32 %call, 0
  %tobool4.not.not = xor i1 %tobool4.not, true
  %brmerge = select i1 %tobool5.not, i1 true, i1 %tobool4.not.not
  br i1 %brmerge, label %entry.if.end10_crit_edge, label %if.then8

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 228, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %entry.if.end10_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end10_crit_edge ], [ %call9, %if.then8 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_drv_get_driver_version(ptr noundef %adapter, ptr noundef %version, i32 noundef %max_len) local_unnamed_addr #2 align 64 {
entry:
  %fw_ver = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fw_ver) #12
  %fw_release_number = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 13
  %0 = call ptr @memset(ptr %fw_ver, i32 255, i32 32)
  %1 = ptrtoint ptr %fw_release_number to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_release_number, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %ver.sroa.0.0.extract.shift = lshr i32 %3, 24
  %ver.sroa.5.0.extract.shift = lshr i32 %3, 16
  %ver.sroa.6.0.extract.shift = lshr i32 %3, 8
  %conv = and i32 %ver.sroa.6.0.extract.shift, 255
  %conv2 = and i32 %ver.sroa.5.0.extract.shift, 255
  %conv6 = and i32 %3, 255
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fw_ver, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv2, i32 noundef %ver.sroa.0.0.extract.shift, i32 noundef %conv6)
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %version, i32 noundef %max_len, ptr noundef nonnull @driver_version, ptr noundef nonnull %fw_ver)
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef %version) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fw_ver) #12
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_set_encode(ptr noundef %priv, ptr noundef readonly %kp, ptr nocapture noundef readonly %key, i32 noundef %key_len, i8 noundef zeroext %key_index, ptr noundef readonly %mac_addr, i32 noundef %disable) local_unnamed_addr #2 align 64 {
entry:
  %encrypt_key = alloca %struct.mwifiex_ds_encrypt_key, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %encrypt_key) #12
  %0 = call ptr @memset(ptr %encrypt_key, i32 0, i32 80)
  %key_len1 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 2
  %1 = ptrtoint ptr %key_len1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %key_len, ptr %key_len1, align 4
  %conv = zext i8 %key_index to i32
  %key_index2 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 1
  %2 = ptrtoint ptr %key_index2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %key_index2, align 4
  %tobool.not = icmp eq ptr %kp, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cipher = getelementptr inbounds %struct.key_params, ptr %kp, i32 0, i32 5
  %3 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cipher, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027078, i32 %4)
  %cmp = icmp eq i32 %4, 1027078
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %is_igtk_key = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 8
  %5 = ptrtoint ptr %is_igtk_key to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %is_igtk_key, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disable)
  %tobool4.not = icmp eq i32 %disable, 0
  br i1 %tobool4.not, label %if.then5, label %if.else26

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %key_len)
  %tobool6.not = icmp eq i32 %key_len, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %key_material = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %key_material, ptr %key, i32 %key_len)
  br label %if.end8

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %is_current_wep_key = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 9
  %7 = ptrtoint ptr %is_current_wep_key to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %is_current_wep_key, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %tobool9.not = icmp eq ptr %mac_addr, null
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %mac_addr11 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 4
  %8 = call ptr @memcpy(ptr %mac_addr11, ptr %mac_addr, i32 6)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  br i1 %tobool.not, label %if.end13.if.end32_crit_edge, label %land.lhs.true15

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true15:                                  ; preds = %if.end13
  %seq = getelementptr inbounds %struct.key_params, ptr %kp, i32 0, i32 1
  %9 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %seq, align 4
  %tobool16.not = icmp eq ptr %10, null
  br i1 %tobool16.not, label %land.lhs.true15.if.end32_crit_edge, label %land.lhs.true17

land.lhs.true15.if.end32_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true17:                                  ; preds = %land.lhs.true15
  %seq_len = getelementptr inbounds %struct.key_params, ptr %kp, i32 0, i32 3
  %11 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seq_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18.not = icmp eq i32 %12, 0
  br i1 %tobool18.not, label %land.lhs.true17.if.end32_crit_edge, label %if.then19

land.lhs.true17.if.end32_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  %pn = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 6
  %13 = call ptr @memcpy(ptr %pn, ptr %10, i32 %12)
  %conv24 = trunc i32 %12 to i8
  %pn_len = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 7
  %14 = ptrtoint ptr %pn_len to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv24, ptr %pn_len, align 4
  %is_rx_seq_valid = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 10
  %15 = ptrtoint ptr %is_rx_seq_valid to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %is_rx_seq_valid, align 1
  br label %if.end32

if.else26:                                        ; preds = %if.end
  %16 = ptrtoint ptr %encrypt_key to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %encrypt_key, align 4
  %tobool27.not = icmp eq ptr %mac_addr, null
  br i1 %tobool27.not, label %if.else26.if.end32_crit_edge, label %if.then28

if.else26.if.end32_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then28:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  %mac_addr29 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 4
  %17 = call ptr @memcpy(ptr %mac_addr29, ptr %mac_addr, i32 6)
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.else26.if.end32_crit_edge, %if.then19, %land.lhs.true17.if.end32_crit_edge, %land.lhs.true15.if.end32_crit_edge, %if.end13.if.end32_crit_edge
  %is_wapi_key.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 5
  %18 = ptrtoint ptr %is_wapi_key.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %is_wapi_key.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 94, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %encrypt_key, i1 noundef zeroext true) #12
  br label %mwifiex_sec_ioctl_encrypt_key.exit

if.else.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %key_len)
  %cmp.i = icmp ugt i32 %key_len, 13
  br i1 %cmp.i, label %if.then1.i, label %if.else3.i

if.then1.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %key_len)
  %cmp.i.i = icmp ugt i32 %key_len, 32
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 4, ptr noundef nonnull @.str.28) #12
  br label %mwifiex_sec_ioctl_encrypt_key.exit

if.end.i.i:                                       ; preds = %if.then1.i
  %bss_mode.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %22 = ptrtoint ptr %bss_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bss_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp1.i.i = icmp eq i32 %23, 1
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.end13.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %24 = ptrtoint ptr %key_index2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1073741824, ptr %key_index2, align 4
  %call.i12.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 94, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %encrypt_key, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool.not.i.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool.not.i.i, label %if.end13.i.i.thread, label %if.then2.i.i.mwifiex_sec_ioctl_encrypt_key.exit_crit_edge

if.then2.i.i.mwifiex_sec_ioctl_encrypt_key.exit_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_sec_ioctl_encrypt_key.exit

if.end13.i.i.thread:                              ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %aes_key.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 66
  %25 = call ptr @memset(ptr %aes_key.i.i, i32 0, i32 62)
  %key.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 66, i32 1, i32 5
  %key_material.i.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 3
  %26 = ptrtoint ptr %key_len1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %key_len1, align 4
  %28 = call ptr @memcpy(ptr %key.i.i, ptr %key_material.i.i, i32 %27)
  %key_len8.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 66, i32 1, i32 4
  %29 = lshr i32 %27, 16
  %30 = trunc i32 %29 to i16
  %31 = ptrtoint ptr %key_len8.i.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %key_len8.i.i, align 1
  %key_type_id.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 66, i32 1, i32 2
  %32 = ptrtoint ptr %key_type_id.i.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 256, ptr %key_type_id.i.i, align 1
  %key_info.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 66, i32 1, i32 3
  %33 = ptrtoint ptr %key_info.i.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 1024, ptr %key_info.i.i, align 1
  br label %if.else.i.i.sink.split

if.end13.i.i:                                     ; preds = %if.end.i.i
  %34 = ptrtoint ptr %key_index2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %key_index2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool15.not.i.i = icmp eq i32 %.pr, 0
  br i1 %tobool15.not.i.i, label %if.end13.i.i.if.else.i.i.sink.split_crit_edge, label %if.end13.i.i.if.else.i.i_crit_edge

if.end13.i.i.if.else.i.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.end13.i.i.if.else.i.i.sink.split_crit_edge:    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i.sink.split

if.else.i.i.sink.split:                           ; preds = %if.end13.i.i.if.else.i.i.sink.split_crit_edge, %if.end13.i.i.thread
  %.sink = phi i32 [ -1073741825, %if.end13.i.i.thread ], [ 1073741824, %if.end13.i.i.if.else.i.i.sink.split_crit_edge ]
  %35 = ptrtoint ptr %key_index2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %key_index2, align 4
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %if.else.i.i.sink.split, %if.end13.i.i.if.else.i.i_crit_edge
  %call22.i.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 94, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %encrypt_key, i1 noundef zeroext true) #12
  br label %mwifiex_sec_ioctl_encrypt_key.exit

if.else3.i:                                       ; preds = %if.else.i
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %wep_key_curr_index.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 62
  %38 = ptrtoint ptr %wep_key_curr_index.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %wep_key_curr_index.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %39)
  %cmp.i13.i = icmp ugt i16 %39, 3
  br i1 %cmp.i13.i, label %if.then.i14.i, label %if.else3.i.if.end.i17.i_crit_edge

if.else3.i.if.end.i17.i_crit_edge:                ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i17.i

if.then.i14.i:                                    ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %wep_key_curr_index.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %wep_key_curr_index.i.i, align 8
  br label %if.end.i17.i

if.end.i17.i:                                     ; preds = %if.then.i14.i, %if.else3.i.if.end.i17.i_crit_edge
  %41 = ptrtoint ptr %encrypt_key to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %encrypt_key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i16.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i16.i, label %if.else.i19.i, label %if.end42.i.i.thread

if.else.i19.i:                                    ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %key_len)
  %tobool7.not.i.i = icmp eq i32 %key_len, 0
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.else28.i.i

if.then8.i.i:                                     ; preds = %if.else.i19.i
  %key_length.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 %conv, i32 2
  %43 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %key_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool11.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %if.end13.i20.i

if.then12.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %37, i32 noundef 4, ptr noundef nonnull @.str.29) #12
  br label %mwifiex_sec_ioctl_encrypt_key.exit

if.end13.i20.i:                                   ; preds = %if.then8.i.i
  %key_api_major_ver.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %37, i32 0, i32 139
  %45 = ptrtoint ptr %key_api_major_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %key_api_major_ver.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp15.i.i = icmp eq i8 %46, 2
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.end13.i20.i.if.end23.i.i_crit_edge

if.end13.i20.i.if.end23.i.i_crit_edge:            ; preds = %if.end13.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i.i

if.then17.i.i:                                    ; preds = %if.end13.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  %key_material.i21.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 3
  %key_material18.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 %conv, i32 3
  %47 = call ptr @memcpy(ptr %key_material.i21.i, ptr %key_material18.i.i, i32 %44)
  %48 = ptrtoint ptr %key_len1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %44, ptr %key_len1, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then17.i.i, %if.end13.i20.i.if.end23.i.i_crit_edge
  %conv24.i.i = zext i8 %key_index to i16
  %49 = ptrtoint ptr %wep_key_curr_index.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv24.i.i, ptr %wep_key_curr_index.i.i, align 8
  br label %if.end42.i.i

if.else28.i.i:                                    ; preds = %if.else.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx10.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 %conv
  %50 = call ptr @memset(ptr %arrayidx10.i.i, i32 0, i32 28)
  %key_material31.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 %conv, i32 3
  %key_material33.i.i = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %encrypt_key, i32 0, i32 3
  %51 = call ptr @memcpy(ptr %key_material31.i.i, ptr %key_material33.i.i, i32 %key_len)
  %key_index36.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 %conv, i32 1
  %52 = ptrtoint ptr %key_index36.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv, ptr %key_index36.i.i, align 4
  %key_length38.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 %conv, i32 2
  %53 = ptrtoint ptr %key_length38.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %key_len, ptr %key_length38.i.i, align 4
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.else28.i.i, %if.end23.i.i
  %wep_enabled27.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %54 = ptrtoint ptr %wep_enabled27.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %wep_enabled27.i.i, align 4
  %key_length43.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 %conv, i32 2
  %55 = ptrtoint ptr %key_length43.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %key_length43.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool44.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool44.not.i.i, label %if.end42.i.i.done.i.i_crit_edge, label %if.end51.i.i

if.end42.i.i.done.i.i_crit_edge:                  ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i.i

if.end42.i.i.thread:                              ; preds = %if.end.i17.i
  %57 = ptrtoint ptr %wep_key_curr_index.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %wep_key_curr_index.i.i, align 8
  %idxprom.i.i = zext i16 %58 to i32
  %wep_enabled27.i.i48 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %59 = ptrtoint ptr %wep_enabled27.i.i48 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %wep_enabled27.i.i48, align 4
  %key_length43.i.i49 = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 %idxprom.i.i, i32 2
  %60 = ptrtoint ptr %key_length43.i.i49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %key_length43.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool44.not.i.i50 = icmp eq i32 %61, 0
  br i1 %tobool44.not.i.i50, label %if.end42.i.i.thread.done.i.i_crit_edge, label %if.then48.i.i

if.end42.i.i.thread.done.i.i_crit_edge:           ; preds = %if.end42.i.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i.i

if.then48.i.i:                                    ; preds = %if.end42.i.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx50.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 61, i32 %conv
  %62 = call ptr @memset(ptr %arrayidx50.i.i, i32 0, i32 28)
  br label %done.i.i

if.end51.i.i:                                     ; preds = %if.end42.i.i
  %key_api_major_ver52.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %37, i32 0, i32 139
  %63 = ptrtoint ptr %key_api_major_ver52.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %key_api_major_ver52.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %cmp54.i.i = icmp eq i8 %64, 2
  %encrypt_key..i.i = select i1 %cmp54.i.i, ptr %encrypt_key, ptr null
  %call.i22.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 94, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %encrypt_key..i.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool59.not.i.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool59.not.i.i, label %if.end51.i.i.done.i.i_crit_edge, label %if.end51.i.i.mwifiex_sec_ioctl_encrypt_key.exit_crit_edge

if.end51.i.i.mwifiex_sec_ioctl_encrypt_key.exit_crit_edge: ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_sec_ioctl_encrypt_key.exit

if.end51.i.i.done.i.i_crit_edge:                  ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i.i

done.i.i:                                         ; preds = %if.end51.i.i.done.i.i_crit_edge, %if.then48.i.i, %if.end42.i.i.thread.done.i.i_crit_edge, %if.end42.i.i.done.i.i_crit_edge
  %wep_enabled27.i.i52 = phi ptr [ %wep_enabled27.i.i48, %if.end42.i.i.thread.done.i.i_crit_edge ], [ %wep_enabled27.i.i, %if.end51.i.i.done.i.i_crit_edge ], [ %wep_enabled27.i.i48, %if.then48.i.i ], [ %wep_enabled27.i.i, %if.end42.i.i.done.i.i_crit_edge ]
  %65 = ptrtoint ptr %wep_enabled27.i.i52 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %wep_enabled27.i.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool65.not.i.i = icmp eq i8 %66, 0
  %curr_pkt_filter68.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 17
  %67 = ptrtoint ptr %curr_pkt_filter68.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %curr_pkt_filter68.i.i, align 4
  %and.i.i = and i32 %68, -9
  %masksel.i.i = select i1 %tobool65.not.i.i, i32 0, i32 8
  %and.sink.i.i = or i32 %and.i.i, %masksel.i.i
  store i32 %and.sink.i.i, ptr %curr_pkt_filter68.i.i, align 4
  %call71.i.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 40, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %curr_pkt_filter68.i.i, i1 noundef zeroext true) #12
  br label %mwifiex_sec_ioctl_encrypt_key.exit

mwifiex_sec_ioctl_encrypt_key.exit:               ; preds = %done.i.i, %if.end51.i.i.mwifiex_sec_ioctl_encrypt_key.exit_crit_edge, %if.then12.i.i, %if.else.i.i, %if.then2.i.i.mwifiex_sec_ioctl_encrypt_key.exit_crit_edge, %if.then.i.i, %if.then.i
  %status.0.i = phi i32 [ %call.i.i, %if.then.i ], [ -1, %if.then.i.i ], [ %call22.i.i, %if.else.i.i ], [ %call.i12.i, %if.then2.i.i.mwifiex_sec_ioctl_encrypt_key.exit_crit_edge ], [ %call71.i.i, %done.i.i ], [ -1, %if.then12.i.i ], [ %call.i22.i, %if.end51.i.i.mwifiex_sec_ioctl_encrypt_key.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %encrypt_key) #12
  ret i32 %status.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_ver_ext(ptr noundef %priv, i32 noundef %version_str_sel) local_unnamed_addr #2 align 64 {
entry:
  %ver_ext = alloca %struct.mwifiex_ver_ext, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %ver_ext) #12
  %0 = getelementptr inbounds i8, ptr %ver_ext, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 128)
  %2 = ptrtoint ptr %ver_ext to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %version_str_sel, ptr %ver_ext, align 4
  %call = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 151, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %ver_ext, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %. = sext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %ver_ext) #12
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_remain_on_chan_cfg(ptr noundef %priv, i16 noundef zeroext %action, ptr nocapture noundef readonly %chan, i32 noundef %duration) local_unnamed_addr #2 align 64 {
entry:
  %roc_cfg = alloca %struct.host_cmd_ds_remain_on_chan, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %roc_cfg) #12
  %0 = getelementptr inbounds %struct.host_cmd_ds_remain_on_chan, ptr %roc_cfg, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %roc_cfg, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %action)
  %4 = ptrtoint ptr %roc_cfg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %roc_cfg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %action)
  %cmp = icmp eq i16 %action, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = getelementptr inbounds %struct.host_cmd_ds_remain_on_chan, ptr %roc_cfg, i32 0, i32 5
  %6 = getelementptr inbounds %struct.host_cmd_ds_remain_on_chan, ptr %roc_cfg, i32 0, i32 4
  %7 = getelementptr inbounds %struct.host_cmd_ds_remain_on_chan, ptr %roc_cfg, i32 0, i32 3
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan, align 4
  %conv3 = trunc i32 %9 to i8
  %call = tail call zeroext i8 @mwifiex_chan_type_to_sec_chan_offset(i32 noundef 0) #12
  %shl = shl i8 %call, 2
  %or = or i8 %shl, %conv3
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or, ptr %7, align 2
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %chan, i32 0, i32 1
  %11 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %12, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #12
  %conv9 = trunc i32 %call.i to i8
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv9, ptr %6, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %duration)
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %5, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call11 = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 269, i16 noundef zeroext %action, i32 noundef 0, ptr noundef nonnull %roc_cfg, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 4, ptr noundef nonnull @.str.21) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %0, align 2
  %conv14 = zext i8 %19 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12
  %retval.0 = phi i32 [ -1, %if.then12 ], [ %conv14, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %roc_cfg) #12
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_chan_type_to_sec_chan_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_stats_info(ptr noundef %priv, ptr noundef %log) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 11, i16 noundef zeroext 0, i32 noundef 0, ptr noundef %log, i1 noundef zeroext true) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_reg_write(ptr noundef %priv, i32 noundef %reg_type, i32 noundef %reg_offset, i32 noundef %reg_value) local_unnamed_addr #2 align 64 {
entry:
  %reg_rw = alloca %struct.mwifiex_ds_reg_rw, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reg_rw) #12
  %0 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %reg_rw, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %reg_rw, i32 0, i32 2
  %2 = ptrtoint ptr %reg_rw to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %reg_type, ptr %reg_rw, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %reg_offset, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %reg_value, ptr %1, align 4
  %switch.tableidx = add i32 %reg_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 5
  br i1 %5, label %switch.lookup, label %entry.mwifiex_reg_mem_ioctl_reg_rw.exit_crit_edge

entry.mwifiex_reg_mem_ioctl_reg_rw.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mwifiex_reg_mem_ioctl_reg_rw.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.mwifiex_reg_write, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %6)
  %switch.load = load i16, ptr %switch.gep, align 2
  %call.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext %switch.load, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %reg_rw, i1 noundef zeroext true) #12
  br label %mwifiex_reg_mem_ioctl_reg_rw.exit

mwifiex_reg_mem_ioctl_reg_rw.exit:                ; preds = %switch.lookup, %entry.mwifiex_reg_mem_ioctl_reg_rw.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %switch.lookup ], [ -1, %entry.mwifiex_reg_mem_ioctl_reg_rw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reg_rw) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_reg_read(ptr noundef %priv, i32 noundef %reg_type, i32 noundef %reg_offset, ptr nocapture noundef writeonly %value) local_unnamed_addr #2 align 64 {
entry:
  %reg_rw = alloca %struct.mwifiex_ds_reg_rw, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reg_rw) #12
  %0 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %reg_rw, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %reg_rw, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !114
  %3 = ptrtoint ptr %reg_rw to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %reg_type, ptr %reg_rw, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %reg_offset, ptr %0, align 4
  %switch.tableidx = add i32 %reg_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 5
  br i1 %5, label %switch.lookup, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.mwifiex_reg_read, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %6)
  %switch.load = load i16, ptr %switch.gep, align 2
  %call.i = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext %switch.load, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %reg_rw, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %switch.lookup.done_crit_edge

switch.lookup.done_crit_edge:                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 4
  br label %done

done:                                             ; preds = %if.end, %switch.lookup.done_crit_edge, %entry.done_crit_edge
  %retval.0.i5 = phi i32 [ %call.i, %switch.lookup.done_crit_edge ], [ 0, %if.end ], [ -1, %entry.done_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reg_rw) #12
  ret i32 %retval.0.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_eeprom_read(ptr noundef %priv, i16 noundef zeroext %offset, i16 noundef zeroext %bytes, ptr nocapture noundef writeonly %value) local_unnamed_addr #2 align 64 {
entry:
  %rd_eeprom = alloca %struct.mwifiex_ds_read_eeprom, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %rd_eeprom) #12
  %0 = getelementptr inbounds i8, ptr %rd_eeprom, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 256)
  %2 = ptrtoint ptr %rd_eeprom to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %offset, ptr %rd_eeprom, align 2
  %byte_count = getelementptr inbounds %struct.mwifiex_ds_read_eeprom, ptr %rd_eeprom, i32 0, i32 1
  %3 = ptrtoint ptr %byte_count to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %bytes, ptr %byte_count, align 2
  %call = call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 89, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %rd_eeprom, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %value2 = getelementptr inbounds %struct.mwifiex_ds_read_eeprom, ptr %rd_eeprom, i32 0, i32 2
  %4 = ptrtoint ptr %byte_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %byte_count, align 2
  %6 = call i16 @llvm.umin.i16(i16 %5, i16 256)
  %cond = zext i16 %6 to i32
  %7 = call ptr @memcpy(ptr %value, ptr %value2, i32 %cond)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %rd_eeprom) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_set_gen_ie(ptr noundef %priv, ptr nocapture noundef readonly %ie, i32 noundef %ie_len) local_unnamed_addr #2 align 64 {
entry:
  %gen_ie = alloca %struct.mwifiex_ds_misc_gen_ie, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %gen_ie) #12
  %0 = getelementptr inbounds i8, ptr %gen_ie, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %ie_len)
  %cmp = icmp sgt i32 %ie_len, 256
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %gen_ie to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %gen_ie, align 4
  %len = getelementptr inbounds %struct.mwifiex_ds_misc_gen_ie, ptr %gen_ie, i32 0, i32 1
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ie_len, ptr %len, align 4
  %ie_data = getelementptr inbounds %struct.mwifiex_ds_misc_gen_ie, ptr %gen_ie, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %ie_data, ptr %ie, i32 %ie_len)
  %conv9.i = trunc i32 %ie_len to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv9.i)
  %tobool.not.i.i = icmp eq i16 %conv9.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %gen_ie_buf_len.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 94
  %5 = ptrtoint ptr %gen_ie_buf_len.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %gen_ie_buf_len.i.i, align 8
  %wps.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 113
  %6 = ptrtoint ptr %wps.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %wps.i.i, align 2
  br label %cleanup

if.else.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv9.i)
  %cmp.i.i = icmp ult i16 %conv9.i, 3
  br i1 %cmp.i.i, label %if.else.i.i.cleanup_crit_edge, label %while.body.lr.ph.i.i

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph.i.i:                             ; preds = %if.else.i.i
  %wps38.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 113
  %wps_ie.i.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 71
  %wps_ie_len.i.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 72
  %wpa_ie.i11.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 63
  %wpa_ie_len.i12.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 64
  %wpa2_enabled.i17.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 1
  %sec_info.i15.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60
  %wapi_ie.i.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 68
  %wapi_ie_len.i.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 70
  %wapi_enabled.i.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 2
  %gen_ie_buf_len44.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 94
  %gen_ie_buf.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 93
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %next_ie.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %unparsed_len.033.i.i = phi i16 [ %conv9.i, %while.body.lr.ph.i.i ], [ %sub60.i.i, %next_ie.i.i.while.body.i.i_crit_edge ]
  %pvendor_ie.028.i.i = phi ptr [ %ie_data, %while.body.lr.ph.i.i ], [ %add.ptr68.i.i, %next_ie.i.i.while.body.i.i_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.ieee_types_vendor_header, ptr %pvendor_ie.028.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len.i.i, align 1
  %conv6.i.i = zext i8 %8 to i16
  %add.i.i = add nuw nsw i16 %conv6.i.i, 2
  %9 = ptrtoint ptr %pvendor_ie.028.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pvendor_ie.028.i.i, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %10, label %while.body.i.i.if.end42.i.i_crit_edge [
    i8 48, label %if.then11.i.i
    i8 68, label %if.then19.i.i
    i8 -35, label %if.then26.i.i
  ]

while.body.i.i.if.end42.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i.i

if.then11.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp.i.i.i = icmp eq i8 %8, -1
  br i1 %cmp.i.i.i, label %if.then2.i.i.i, label %if.end.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %13, i32 noundef 4, ptr noundef nonnull @.str.33) #12
  br label %mwifiex_set_wpa_ie.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then11.i.i
  %conv.i.i.i = zext i16 %add.i.i to i32
  %14 = call ptr @memcpy(ptr %wpa_ie.i11.i.i, ptr %pvendor_ie.028.i.i, i32 %conv.i.i.i)
  %15 = ptrtoint ptr %wpa_ie_len.i12.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %add.i.i, ptr %wpa_ie_len.i12.i.i, align 2
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %18 = ptrtoint ptr %wpa_ie.i11.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wpa_ie.i11.i.i, align 2
  %conv8.i.i.i = zext i8 %19 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 16, ptr noundef nonnull @.str.34, i32 noundef %conv.i.i.i, i32 noundef %conv8.i.i.i) #12
  %20 = ptrtoint ptr %wpa_ie.i11.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %wpa_ie.i11.i.i, align 2
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %21, label %if.else22.i.i.i [
    i8 -35, label %if.then14.i.i.i
    i8 48, label %if.then20.i.i.i
  ]

if.then14.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %sec_info.i15.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %sec_info.i15.i.i, align 4
  br label %mwifiex_set_wpa_ie.exit.i.i

if.then20.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %wpa2_enabled.i17.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %wpa2_enabled.i17.i.i, align 1
  br label %mwifiex_set_wpa_ie.exit.i.i

if.else22.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %sec_info.i15.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %sec_info.i15.i.i, align 4
  %26 = ptrtoint ptr %wpa2_enabled.i17.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %wpa2_enabled.i17.i.i, align 1
  br label %mwifiex_set_wpa_ie.exit.i.i

mwifiex_set_wpa_ie.exit.i.i:                      ; preds = %if.else22.i.i.i, %if.then20.i.i.i, %if.then14.i.i.i, %if.then2.i.i.i
  %27 = ptrtoint ptr %wps38.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %wps38.i.i, align 2
  br label %next_ie.i.i

if.then19.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp.i2.i.i = icmp eq i8 %8, -1
  br i1 %cmp.i2.i.i, label %if.then2.i3.i.i, label %if.end.i6.i.i

if.then2.i3.i.i:                                  ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %29, i32 noundef 4, ptr noundef nonnull @.str.36) #12
  br label %next_ie.i.i

if.end.i6.i.i:                                    ; preds = %if.then19.i.i
  %conv.i4.i.i = zext i16 %add.i.i to i32
  %30 = call ptr @memcpy(ptr %wapi_ie.i.i.i, ptr %pvendor_ie.028.i.i, i32 %conv.i4.i.i)
  %31 = ptrtoint ptr %wapi_ie_len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %add.i.i, ptr %wapi_ie_len.i.i.i, align 2
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %34 = ptrtoint ptr %wapi_ie.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %wapi_ie.i.i.i, align 1
  %conv8.i5.i.i = zext i8 %35 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %33, i32 noundef 16, ptr noundef nonnull @.str.37, i32 noundef %conv.i4.i.i, i32 noundef %conv8.i5.i.i) #12
  %36 = ptrtoint ptr %wapi_ie.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %wapi_ie.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %37)
  %cmp12.i.i.i = icmp eq i8 %37, 68
  br i1 %cmp12.i.i.i, label %if.then14.i7.i.i, label %if.end.i6.i.i.next_ie.i.i_crit_edge

if.end.i6.i.i.next_ie.i.i_crit_edge:              ; preds = %if.end.i6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_ie.i.i

if.then14.i7.i.i:                                 ; preds = %if.end.i6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %wapi_enabled.i.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %wapi_enabled.i.i.i, align 2
  br label %next_ie.i.i

if.then26.i.i:                                    ; preds = %while.body.i.i
  %oui.i.i = getelementptr inbounds %struct.ieee_types_vendor_header, ptr %pvendor_ie.028.i.i, i32 0, i32 2
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(4) %oui.i.i, ptr noundef nonnull dereferenceable(4) @mwifiex_set_gen_ie_helper.wpa_oui, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool28.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then29.i.i, label %if.end33.i.i

if.then29.i.i:                                    ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp.i8.i.i = icmp eq i8 %8, -1
  br i1 %cmp.i8.i.i, label %if.then2.i9.i.i, label %if.end.i14.i.i

if.then2.i9.i.i:                                  ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %40, i32 noundef 4, ptr noundef nonnull @.str.33) #12
  br label %mwifiex_set_wpa_ie.exit22.i.i

if.end.i14.i.i:                                   ; preds = %if.then29.i.i
  %conv.i10.i.i = zext i16 %add.i.i to i32
  %41 = call ptr @memcpy(ptr %wpa_ie.i11.i.i, ptr %pvendor_ie.028.i.i, i32 %conv.i10.i.i)
  %42 = ptrtoint ptr %wpa_ie_len.i12.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %add.i.i, ptr %wpa_ie_len.i12.i.i, align 2
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 8
  %45 = ptrtoint ptr %wpa_ie.i11.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %wpa_ie.i11.i.i, align 2
  %conv8.i13.i.i = zext i8 %46 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %44, i32 noundef 16, ptr noundef nonnull @.str.34, i32 noundef %conv.i10.i.i, i32 noundef %conv8.i13.i.i) #12
  %47 = ptrtoint ptr %wpa_ie.i11.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %wpa_ie.i11.i.i, align 2
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %48, label %if.else22.i21.i.i [
    i8 -35, label %if.then14.i16.i.i
    i8 48, label %if.then20.i18.i.i
  ]

if.then14.i16.i.i:                                ; preds = %if.end.i14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %sec_info.i15.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %sec_info.i15.i.i, align 4
  br label %mwifiex_set_wpa_ie.exit22.i.i

if.then20.i18.i.i:                                ; preds = %if.end.i14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %wpa2_enabled.i17.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %wpa2_enabled.i17.i.i, align 1
  br label %mwifiex_set_wpa_ie.exit22.i.i

if.else22.i21.i.i:                                ; preds = %if.end.i14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %sec_info.i15.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %sec_info.i15.i.i, align 4
  %53 = ptrtoint ptr %wpa2_enabled.i17.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %wpa2_enabled.i17.i.i, align 1
  br label %mwifiex_set_wpa_ie.exit22.i.i

mwifiex_set_wpa_ie.exit22.i.i:                    ; preds = %if.else22.i21.i.i, %if.then20.i18.i.i, %if.then14.i16.i.i, %if.then2.i9.i.i
  %54 = ptrtoint ptr %wps38.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %wps38.i.i, align 2
  br label %next_ie.i.i

if.end33.i.i:                                     ; preds = %if.then26.i.i
  %bcmp1.i.i = call i32 @bcmp(ptr noundef dereferenceable(4) %oui.i.i, ptr noundef nonnull dereferenceable(4) @mwifiex_set_gen_ie_helper.wps_oui, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1.i.i)
  %tobool36.not.i.i = icmp eq i32 %bcmp1.i.i, 0
  br i1 %tobool36.not.i.i, label %if.then37.i.i, label %if.end33.i.i.if.end42.i.i_crit_edge

if.end33.i.i.if.end42.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i.i

if.then37.i.i:                                    ; preds = %if.end33.i.i
  %55 = ptrtoint ptr %wps38.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %wps38.i.i, align 2
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %57, i32 noundef 1, ptr noundef nonnull @.str.32) #12
  %conv.i23.i.i = zext i16 %add.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp.i24.i.i = icmp eq i8 %8, -1
  br i1 %cmp.i24.i.i, label %if.then2.i25.i.i, label %if.end.i26.i.i

if.then2.i25.i.i:                                 ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %59, i32 noundef 4, ptr noundef nonnull @.str.39) #12
  br label %next_ie.i.i

if.end.i26.i.i:                                   ; preds = %if.then37.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 256) #15
  %61 = ptrtoint ptr %wps_ie.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i.i.i.i, ptr %wps_ie.i.i.i, align 8
  %tobool4.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %if.end.i26.i.i.next_ie.i.i_crit_edge, label %if.end6.i.i.i

if.end.i26.i.i.next_ie.i.i_crit_edge:             ; preds = %if.end.i26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_ie.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = call ptr @memcpy(ptr %call7.i.i.i.i.i, ptr %pvendor_ie.028.i.i, i32 %conv.i23.i.i)
  %63 = ptrtoint ptr %wps_ie_len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %add.i.i, ptr %wps_ie_len.i.i.i, align 4
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 8
  %66 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %call7.i.i.i.i.i, align 8
  %conv13.i.i.i = zext i8 %67 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %65, i32 noundef 16, ptr noundef nonnull @.str.40, i32 noundef %conv.i23.i.i, i32 noundef %conv13.i.i.i) #12
  br label %next_ie.i.i

if.end42.i.i:                                     ; preds = %if.end33.i.i.if.end42.i.i_crit_edge, %while.body.i.i.if.end42.i.i_crit_edge
  %conv43.i.i = zext i16 %add.i.i to i32
  %68 = ptrtoint ptr %gen_ie_buf_len44.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %gen_ie_buf_len44.i.i, align 8
  %conv45.i.i = zext i8 %69 to i32
  %sub.i.i = sub nuw nsw i32 256, %conv45.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv43.i.i)
  %cmp46.i.i = icmp ugt i32 %sub.i.i, %conv43.i.i
  br i1 %cmp46.i.i, label %if.then48.i.i, label %if.end42.i.i.next_ie.i.i_crit_edge

if.end42.i.i.next_ie.i.i_crit_edge:               ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_ie.i.i

if.then48.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %gen_ie_buf.i.i, i32 %conv45.i.i
  %70 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %pvendor_ie.028.i.i, i32 %conv43.i.i)
  %71 = ptrtoint ptr %gen_ie_buf_len44.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %gen_ie_buf_len44.i.i, align 8
  %73 = trunc i16 %add.i.i to i8
  %conv56.i.i = add i8 %72, %73
  store i8 %conv56.i.i, ptr %gen_ie_buf_len44.i.i, align 8
  br label %next_ie.i.i

next_ie.i.i:                                      ; preds = %if.then48.i.i, %if.end42.i.i.next_ie.i.i_crit_edge, %if.end6.i.i.i, %if.end.i26.i.i.next_ie.i.i_crit_edge, %if.then2.i25.i.i, %mwifiex_set_wpa_ie.exit22.i.i, %if.then14.i7.i.i, %if.end.i6.i.i.next_ie.i.i_crit_edge, %if.then2.i3.i.i, %mwifiex_set_wpa_ie.exit.i.i
  %sub60.i.i = sub i16 %unparsed_len.033.i.i, %add.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %sub60.i.i)
  %cmp63.i.i = icmp ult i16 %sub60.i.i, 3
  %conv58.i.i = zext i16 %add.i.i to i32
  %add.ptr68.i.i = getelementptr i8, ptr %pvendor_ie.028.i.i, i32 %conv58.i.i
  %tobool5.not34.i.i = icmp eq ptr %add.ptr68.i.i, null
  %tobool5.not.i.i = select i1 %cmp63.i.i, i1 true, i1 %tobool5.not34.i.i
  br i1 %tobool5.not.i.i, label %next_ie.i.i.cleanup_crit_edge, label %next_ie.i.i.while.body.i.i_crit_edge

next_ie.i.i.while.body.i.i_crit_edge:             ; preds = %next_ie.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

next_ie.i.i.cleanup_crit_edge:                    ; preds = %next_ie.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %next_ie.i.i.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %if.then.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.else.i.i.cleanup_crit_edge ], [ 0, %next_ie.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %gen_ie) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_wakeup_reason(ptr noundef %priv, i16 noundef zeroext %action, i32 noundef %cmd_type, ptr noundef %wakeup_reason) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd_type)
  %cmp = icmp eq i32 %cmd_type, 1
  %call = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 278, i16 noundef zeroext 0, i32 noundef 0, ptr noundef %wakeup_reason, i1 noundef zeroext %cmp) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_chan_info(ptr noundef %priv, ptr noundef %channel_band) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 575, i16 noundef zeroext 0, i32 noundef 0, ptr noundef %channel_band, i1 noundef zeroext true) #12
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_get_elem(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !60, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100}
!llvm.named.register.sp = !{!102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__param_disconnect_on_suspend, !1, !"__param_disconnect_on_suspend", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_disconnect_on_suspendtype488, !1, !"__UNIQUE_ID_disconnect_on_suspendtype488", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 63, i32 11}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 69, i32 3}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 97, i32 3}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 106, i32 4}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 113, i32 4}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 123, i32 2}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 151, i32 8}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 158, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 173, i32 3}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 324, i32 4}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 331, i32 3}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 375, i32 4}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 382, i32 4}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 424, i32 4}
!32 = !{ptr @__ksymtab_mwifiex_cancel_hs, !33, !"__ksymtab_mwifiex_cancel_hs", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 501, i32 1}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 530, i32 4}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 539, i32 3}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 556, i32 3}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 564, i32 3}
!42 = !{ptr @__ksymtab_mwifiex_enable_hs, !43, !"__ksymtab_mwifiex_enable_hs", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 571, i32 1}
!44 = !{ptr @__ksymtab_mwifiex_disable_auto_ds, !45, !"__ksymtab_mwifiex_disable_auto_ds", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 634, i32 1}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 686, i32 4}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 1093, i32 18}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 1097, i32 2}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 1184, i32 3}
!54 = !{ptr @disconnect_on_suspend, !55, !"disconnect_on_suspend", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 29, i32 12}
!56 = !{ptr @__param_str_disconnect_on_suspend, !1, !"__param_str_disconnect_on_suspend", i1 false, i1 false}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 228, i32 3}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 236, i32 3}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 259, i32 3}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 1009, i32 3}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 932, i32 4}
!74 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 1445, i32 4}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 1455, i32 3}
!78 = !{ptr @mwifiex_set_gen_ie_helper.wpa_oui, !79, !"wpa_oui", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 1328, i32 18}
!80 = !{ptr @mwifiex_set_gen_ie_helper.wps_oui, !81, !"wps_oui", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 1329, i32 18}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 1380, i32 5}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 792, i32 4}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 798, i32 3}
!88 = distinct !{null, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 813, i32 3}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 835, i32 4}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 841, i32 3}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 850, i32 3}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 870, i32 4}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 881, i32 3}
!100 = distinct !{null, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c", i32 887, i32 3}
!102 = !{!"sp"}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2149883082}
!113 = !{i64 2149883348}
!114 = !{!"auto-init"}
