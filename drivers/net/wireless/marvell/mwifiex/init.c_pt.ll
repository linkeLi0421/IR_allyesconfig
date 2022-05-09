; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/init.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mwifiex_dnld_fw\22, \22a\22\09"
module asm "\09.weak\09__crc_mwifiex_dnld_fw\09\09\09\09"
module asm "\09.long\09__crc_mwifiex_dnld_fw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_dnld_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_dnld_fw\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_dnld_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
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
%struct.mwifiex_bss_prio_node = type { %struct.list_head, ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.mwifiex_opt_sleep_confirm = type { i16, i16, i16, i16, i16, i16 }

@tos_to_tid_inv = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"info: free cmd buffer\0A\00", [41 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&adapter->int_lock\00", [45 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&adapter->main_proc_lock\00", [39 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&adapter->mwifiex_cmd_lock\00", [37 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&adapter->queue_lock\00", [43 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&priv->wmm.ra_list_spinlock\00", [36 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&priv->curr_bcn_buf_lock\00", [39 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&priv->sta_list_spinlock\00", [39 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&priv->auto_tdls_lock\00", [42 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&adapter->cmd_free_q_lock\00", [38 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&adapter->cmd_pending_q_lock\00", [35 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&adapter->scan_pending_q_lock\00", [34 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&adapter->rx_proc_lock\00", [41 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"&adapter->bss_prio_tbl[i].bss_prio_lock\00", [56 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&priv->tx_ba_stream_tbl_lock\00", [35 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&priv->rx_reorder_tbl_lock\00", [37 x i8] zeroinitializer }, align 32
@mwifiex_init_lock_list.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&priv->ack_status_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"curr_cmd is still in processing\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"info: shutdown mwifiex...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WLAN FW already running! Skip FW dnld\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WLAN read winner status failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"WLAN is not the winner! Skip FW dnld\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"prog_fw failed ret=%#x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"FW failed to be active in time\0A\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_mwifiex_dnld_fw = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_dnld_fw = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_dnld_fw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_dnld_fw to i32), ptr @__kstrtab_mwifiex_dnld_fw, ptr @__kstrtabns_mwifiex_dnld_fw }, section "___ksymtab_gpl+mwifiex_dnld_fw", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: failed to alloc cmd buffer\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.mwifiex_allocate_adapter = private unnamed_addr constant [25 x i8] c"mwifiex_allocate_adapter\00", align 1
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: failed to alloc sleep cfm\09 cmd buffer\0A\00", [53 x i8] zeroinitializer }, align 32
@mfg_mode = external dso_local local_unnamed_addr global i8, align 1
@mwifiex_init_adapter.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&adapter->wakeup_timer)\00", [39 x i8] zeroinitializer }, align 32
@mwifiex_init_adapter.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&adapter->devdump_timer)\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Firmware wakeup failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"info: delete BSS priority table,\09bss_type = %d, bss_num = %d, i = %d,\09head = %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"info: Delete\09node %p, next = %p\0A\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 414, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 430, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 431, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 432, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 433, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 437, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 438, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 439, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 440, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 451, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 452, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 453, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 454, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 461, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 477, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 478, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 480, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 634, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 642, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 701, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 713, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 719, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 729, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 739, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1984, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 378, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 185, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 196, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 322, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 324, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 58, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 575, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [47 x i8] c"../drivers/net/wireless/marvell/mwifiex/init.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 586, i32 6 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__ksymtab_mwifiex_dnld_fw, ptr @.str, ptr @mwifiex_init_lock_list.__key, ptr @.str.1, ptr @mwifiex_init_lock_list.__key.2, ptr @.str.3, ptr @mwifiex_init_lock_list.__key.4, ptr @.str.5, ptr @mwifiex_init_lock_list.__key.6, ptr @.str.7, ptr @mwifiex_init_lock_list.__key.8, ptr @.str.9, ptr @mwifiex_init_lock_list.__key.10, ptr @.str.11, ptr @mwifiex_init_lock_list.__key.12, ptr @.str.13, ptr @mwifiex_init_lock_list.__key.14, ptr @.str.15, ptr @mwifiex_init_lock_list.__key.16, ptr @.str.17, ptr @mwifiex_init_lock_list.__key.18, ptr @.str.19, ptr @mwifiex_init_lock_list.__key.20, ptr @.str.21, ptr @mwifiex_init_lock_list.__key.22, ptr @.str.23, ptr @mwifiex_init_lock_list.__key.24, ptr @.str.25, ptr @mwifiex_init_lock_list.__key.26, ptr @.str.27, ptr @mwifiex_init_lock_list.__key.28, ptr @.str.29, ptr @mwifiex_init_lock_list.__key.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @skb_queue_head_init.__key, ptr @.str.39, ptr @xa_init_flags.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @mwifiex_init_adapter.__key, ptr @.str.43, ptr @mwifiex_init_adapter.__key.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_lock_list.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_adapter.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_init_adapter.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_init_priv(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %media_connected to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %media_connected, align 8
  %curr_addr = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 7
  %1 = call ptr @memset(ptr %curr_addr, i32 255, i32 6)
  %port_open = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %port_open to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %port_open, align 1
  %usb_port = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 10
  %3 = ptrtoint ptr %usb_port to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %usb_port, align 2
  %pkt_tx_ctrl = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 19
  %4 = ptrtoint ptr %pkt_tx_ctrl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pkt_tx_ctrl, align 4
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %5 = ptrtoint ptr %bss_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bss_mode, align 8
  %data_rate = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 32
  %6 = ptrtoint ptr %data_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data_rate, align 8
  %is_data_rate_auto = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 33
  %7 = ptrtoint ptr %is_data_rate_auto to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %is_data_rate_auto, align 4
  %bcn_avg_factor = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 35
  %8 = ptrtoint ptr %bcn_avg_factor to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8, ptr %bcn_avg_factor, align 2
  %data_avg_factor = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 36
  %9 = ptrtoint ptr %data_avg_factor to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 8, ptr %data_avg_factor, align 8
  %wep_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 4
  %10 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %wep_enabled, align 4
  %authentication_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 5
  %11 = ptrtoint ptr %authentication_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %authentication_mode, align 4
  %encryption_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 60, i32 7
  %curr_pkt_filter = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 17
  %12 = call ptr @memset(ptr %encryption_mode, i32 0, i32 118)
  %13 = ptrtoint ptr %curr_pkt_filter to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65555, ptr %curr_pkt_filter, align 4
  %beacon_period = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 51
  %14 = ptrtoint ptr %beacon_period to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 100, ptr %beacon_period, align 8
  %attempted_bss_desc = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 46
  %15 = ptrtoint ptr %attempted_bss_desc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %attempted_bss_desc, align 4
  %curr_bss_params = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50
  %16 = call ptr @memset(ptr %curr_bss_params, i32 0, i32 280)
  %listen_interval = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 54
  %17 = ptrtoint ptr %listen_interval to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 10, ptr %listen_interval, align 4
  %prev_ssid = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 47
  %assoc_rsp_buf = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 91
  %adhoc_channel = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 56
  %18 = call ptr @memset(ptr %prev_ssid, i32 0, i32 39)
  %19 = call ptr @memset(ptr %assoc_rsp_buf, i32 0, i32 504)
  %20 = ptrtoint ptr %adhoc_channel to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 6, ptr %adhoc_channel, align 8
  %atim_window = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 55
  %21 = ptrtoint ptr %atim_window to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %atim_window, align 2
  %adhoc_state = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 58
  %22 = ptrtoint ptr %adhoc_state to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %adhoc_state, align 2
  %tx_power_level = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 20
  %rxpd_htinfo = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 27
  %data_rssi_last = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 37
  %wpa_ie = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 63
  %wps = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 113
  %23 = ptrtoint ptr %wps to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %wps, align 2
  %gen_ie_buf = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 93
  %vs_ie = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 96
  %wmm_required = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 73
  %24 = call ptr @memset(ptr %tx_power_level, i32 0, i32 13)
  %25 = ptrtoint ptr %rxpd_htinfo to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %rxpd_htinfo, align 2
  %26 = call ptr @memset(ptr %data_rssi_last, i32 0, i32 16)
  %27 = call ptr @memset(ptr %wpa_ie, i32 0, i32 321)
  %28 = call ptr @memset(ptr %gen_ie_buf, i32 0, i32 257)
  %29 = call ptr @memset(ptr %vs_ie, i32 0, i32 2337)
  %30 = ptrtoint ptr %wmm_required to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %wmm_required, align 2
  %wmm_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 74
  %31 = ptrtoint ptr %wmm_enabled to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %wmm_enabled, align 1
  %wmm_qosinfo = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 75
  %32 = ptrtoint ptr %wmm_qosinfo to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %wmm_qosinfo, align 8
  %curr_bcn_buf = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 100
  %33 = ptrtoint ptr %curr_bcn_buf to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %curr_bcn_buf, align 4
  %curr_bcn_size = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 101
  %34 = ptrtoint ptr %curr_bcn_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %curr_bcn_size, align 8
  %wps_ie = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 71
  %35 = ptrtoint ptr %wps_ie to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %wps_ie, align 8
  %wps_ie_len = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 72
  %36 = ptrtoint ptr %wps_ie_len to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %wps_ie_len, align 4
  %ap_11n_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 125
  %37 = ptrtoint ptr %ap_11n_enabled to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %ap_11n_enabled, align 2
  %roc_cfg = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 129
  %38 = call ptr @memset(ptr %roc_cfg, i32 0, i32 64)
  %scan_block = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 114
  %39 = ptrtoint ptr %scan_block to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %scan_block, align 1
  %csa_chan = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 132
  %40 = ptrtoint ptr %csa_chan to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %csa_chan, align 2
  %csa_expire_time = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 134
  %41 = ptrtoint ptr %csa_expire_time to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %csa_expire_time, align 4
  %del_list_idx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 135
  %42 = ptrtoint ptr %del_list_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %del_list_idx, align 8
  %hs2_enabled = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 136
  %43 = ptrtoint ptr %hs2_enabled to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %hs2_enabled, align 1
  %check_tdls_tx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 142
  %44 = ptrtoint ptr %check_tdls_tx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %check_tdls_tx, align 8
  %tos_to_tid_inv = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 88
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr @tos_to_tid_inv to i32), i32 8)
  %45 = load i64, ptr @tos_to_tid_inv, align 1
  %46 = ptrtoint ptr %tos_to_tid_inv to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %45, ptr %tos_to_tid_inv, align 4
  tail call void @mwifiex_init_11h_params(ptr noundef %priv) #6
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.mwifiex_add_bss_prio_tbl.exit_crit_edge, label %if.end.i

entry.mwifiex_add_bss_prio_tbl.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mwifiex_add_bss_prio_tbl.exit

if.end.i:                                         ; preds = %entry
  %bss_prio_tbl.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %48, i32 0, i32 35
  %priv2.i = getelementptr inbounds %struct.mwifiex_bss_prio_node, ptr %call7.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %priv, ptr %priv2.i, align 8
  %51 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %bss_priority.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 3
  %53 = ptrtoint ptr %bss_priority.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bss_priority.i, align 2
  %idxprom.i = zext i8 %54 to i32
  %bss_prio_lock.i = getelementptr %struct.mwifiex_bss_prio_tbl, ptr %bss_prio_tbl.i, i32 %idxprom.i, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %bss_prio_lock.i) #6
  %55 = ptrtoint ptr %bss_priority.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bss_priority.i, align 2
  %idxprom5.i = zext i8 %56 to i32
  %arrayidx6.i = getelementptr %struct.mwifiex_bss_prio_tbl, ptr %bss_prio_tbl.i, i32 %idxprom5.i
  %prev.i22.i = getelementptr inbounds %struct.list_head, ptr %arrayidx6.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i22.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i22.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %58, ptr noundef %arrayidx6.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %prev.i22.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i.i, ptr %prev.i22.i, align 4
  %60 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx6.i, ptr %call7.i.i.i, align 8
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %call7.i.i.i, ptr %58, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  %63 = ptrtoint ptr %bss_priority.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bss_priority.i, align 2
  %idxprom8.i = zext i8 %64 to i32
  %bss_prio_lock10.i = getelementptr %struct.mwifiex_bss_prio_tbl, ptr %bss_prio_tbl.i, i32 %idxprom8.i, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %bss_prio_lock10.i) #6
  br label %mwifiex_add_bss_prio_tbl.exit

mwifiex_add_bss_prio_tbl.exit:                    ; preds = %list_add_tail.exit.i, %entry.mwifiex_add_bss_prio_tbl.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %list_add_tail.exit.i ], [ -12, %entry.mwifiex_add_bss_prio_tbl.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_init_11h_params(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_set_trans_start(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %txq_trans_cond_update.exit.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %txq_trans_cond_update.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i = getelementptr %struct.netdev_queue, ptr %3, i32 %i.06, i32 12
  %5 = ptrtoint ptr %trans_start.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %trans_start.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not.i = icmp eq i32 %6, %4
  br i1 %cmp.not.i, label %for.body.txq_trans_cond_update.exit_crit_edge, label %do.body5.i

for.body.txq_trans_cond_update.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %txq_trans_cond_update.exit

do.body5.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %trans_start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %4, ptr %trans_start.i, align 16
  br label %txq_trans_cond_update.exit

txq_trans_cond_update.exit:                       ; preds = %do.body5.i, %for.body.txq_trans_cond_update.exit_crit_edge
  %inc = add nuw i32 %i.06, 1
  %8 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %txq_trans_cond_update.exit.for.body_crit_edge, label %txq_trans_cond_update.exit.for.end_crit_edge

txq_trans_cond_update.exit.for.end_crit_edge:     ; preds = %txq_trans_cond_update.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

txq_trans_cond_update.exit.for.body_crit_edge:    ; preds = %txq_trans_cond_update.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %txq_trans_cond_update.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 12
  %13 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp.not.i.i = icmp eq i32 %14, %12
  br i1 %cmp.not.i.i, label %for.end.netif_trans_update.exit_crit_edge, label %do.body5.i.i

for.end.netif_trans_update.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %12, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %for.end.netif_trans_update.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_wake_up_net_dev_queue(ptr nocapture noundef readonly %netdev, ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 123
  tail call void @_raw_spin_lock_bh(ptr noundef %queue_lock) #6
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %0 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not.i = icmp eq i32 %1, 0
  br i1 %cmp4.not.i, label %entry.netif_tx_wake_all_queues.exit_crit_edge, label %for.body.lr.ph.i

entry.netif_tx_wake_all_queues.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_tx_wake_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %3, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #6
  %inc.i = add nuw i32 %i.05.i, 1
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %5
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_wake_all_queues.exit_crit_edge

for.body.i.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_tx_wake_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

netif_tx_wake_all_queues.exit:                    ; preds = %for.body.i.netif_tx_wake_all_queues.exit_crit_edge, %entry.netif_tx_wake_all_queues.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_stop_net_dev_queue(ptr noundef %netdev, ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 123
  tail call void @_raw_spin_lock_bh(ptr noundef %queue_lock) #6
  tail call void @netif_tx_stop_all_queues(ptr noundef %netdev) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_free_cmd_buffers(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_free_q.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 64
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cmd_free_q.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.list_del.exit.i_crit_edge

entry.list_del.exit.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 64, i32 1
  %0 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i.i, align 4
  %2 = ptrtoint ptr %cmd_free_q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_free_q.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %entry.list_del.exit.i_crit_edge
  %6 = ptrtoint ptr %cmd_free_q.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %cmd_free_q.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 64, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmd_pending_q.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 66
  %call.i.i42.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cmd_pending_q.i) #6
  br i1 %call.i.i42.i, label %if.end.i.i45.i, label %list_del.exit.i.list_del.exit47.i_crit_edge

list_del.exit.i.list_del.exit47.i_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit47.i

if.end.i.i45.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i43.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %8 = ptrtoint ptr %prev.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i43.i, align 4
  %10 = ptrtoint ptr %cmd_pending_q.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd_pending_q.i, align 4
  %prev1.i.i.i44.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i44.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i44.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit47.i

list_del.exit47.i:                                ; preds = %if.end.i.i45.i, %list_del.exit.i.list_del.exit47.i_crit_edge
  %14 = ptrtoint ptr %cmd_pending_q.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %cmd_pending_q.i, align 4
  %prev.i46.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %15 = ptrtoint ptr %prev.i46.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i46.i, align 4
  %scan_pending_q.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 68
  %call.i.i48.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %scan_pending_q.i) #6
  br i1 %call.i.i48.i, label %if.end.i.i51.i, label %list_del.exit47.i.list_del.exit53.i_crit_edge

list_del.exit47.i.list_del.exit53.i_crit_edge:    ; preds = %list_del.exit47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit53.i

if.end.i.i51.i:                                   ; preds = %list_del.exit47.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i49.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 68, i32 1
  %16 = ptrtoint ptr %prev.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i49.i, align 4
  %18 = ptrtoint ptr %scan_pending_q.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scan_pending_q.i, align 4
  %prev1.i.i.i50.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i50.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit53.i

list_del.exit53.i:                                ; preds = %if.end.i.i51.i, %list_del.exit47.i.list_del.exit53.i_crit_edge
  %22 = ptrtoint ptr %scan_pending_q.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %scan_pending_q.i, align 4
  %prev.i52.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 68, i32 1
  %23 = ptrtoint ptr %prev.i52.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i52.i, align 4
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %24 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %priv_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp91.not.i = icmp eq i8 %25, 0
  br i1 %cmp91.not.i, label %list_del.exit53.i.mwifiex_invalidate_lists.exit_crit_edge, label %list_del.exit53.i.for.body.i_crit_edge

list_del.exit53.i.for.body.i_crit_edge:           ; preds = %list_del.exit53.i
  br label %for.body.i

list_del.exit53.i.mwifiex_invalidate_lists.exit_crit_edge: ; preds = %list_del.exit53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mwifiex_invalidate_lists.exit

for.cond2.preheader.i:                            ; preds = %list_del.exit59.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp595.not.i = icmp eq i8 %35, 0
  br i1 %cmp595.not.i, label %for.cond2.preheader.i.mwifiex_invalidate_lists.exit_crit_edge, label %for.cond2.preheader.i.for.body7.i_crit_edge

for.cond2.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond2.preheader.i
  br label %for.body7.i

for.cond2.preheader.i.mwifiex_invalidate_lists.exit_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mwifiex_invalidate_lists.exit

for.body.i:                                       ; preds = %list_del.exit59.i.for.body.i_crit_edge, %list_del.exit53.i.for.body.i_crit_edge
  %i.092.i = phi i32 [ %inc.i, %list_del.exit59.i.for.body.i_crit_edge ], [ 0, %list_del.exit53.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 35, i32 %i.092.i
  %call.i.i54.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx.i) #6
  br i1 %call.i.i54.i, label %if.end.i.i57.i, label %for.body.i.list_del.exit59.i_crit_edge

for.body.i.list_del.exit59.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit59.i

if.end.i.i57.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i55.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i55.i, align 4
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %prev1.i.i.i56.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i56.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit59.i

list_del.exit59.i:                                ; preds = %if.end.i.i57.i, %for.body.i.list_del.exit59.i_crit_edge
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx.i, align 4
  %prev.i58.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i58.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i58.i, align 4
  %inc.i = add nuw nsw i32 %i.092.i, 1
  %34 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %35 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %list_del.exit59.i.for.body.i_crit_edge, label %for.cond2.preheader.i

list_del.exit59.i.for.body.i_crit_edge:           ; preds = %list_del.exit59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body7.i:                                      ; preds = %for.inc20.i.for.body7.i_crit_edge, %for.cond2.preheader.i.for.body7.i_crit_edge
  %i.196.i = phi i32 [ %inc21.i, %for.inc20.i.for.body7.i_crit_edge ], [ 0, %for.cond2.preheader.i.for.body7.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.196.i
  %36 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx9.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %for.body7.i.for.inc20.i_crit_edge, label %for.cond12.preheader.i

for.body7.i.for.inc20.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc20.i

for.cond12.preheader.i:                           ; preds = %for.body7.i
  %wmm.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 77
  %call.i.i60.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %wmm.i) #6
  br i1 %call.i.i60.i, label %if.end.i.i63.i, label %for.cond12.preheader.i.list_del.exit65.i_crit_edge

for.cond12.preheader.i.list_del.exit65.i_crit_edge: ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit65.i

if.end.i.i63.i:                                   ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i61.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i61.i, align 4
  %40 = ptrtoint ptr %wmm.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wmm.i, align 4
  %prev1.i.i.i62.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i62.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit65.i

list_del.exit65.i:                                ; preds = %if.end.i.i63.i, %for.cond12.preheader.i.list_del.exit65.i_crit_edge
  %44 = ptrtoint ptr %wmm.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %wmm.i, align 4
  %prev.i64.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i64.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i64.i, align 4
  %arrayidx16.1.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 1
  %call.i.i60.1.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx16.1.i) #6
  br i1 %call.i.i60.1.i, label %if.end.i.i63.1.i, label %list_del.exit65.i.list_del.exit65.1.i_crit_edge

list_del.exit65.i.list_del.exit65.1.i_crit_edge:  ; preds = %list_del.exit65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit65.1.i

if.end.i.i63.1.i:                                 ; preds = %list_del.exit65.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i61.1.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i61.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i61.1.i, align 4
  %48 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx16.1.i, align 4
  %prev1.i.i.i62.1.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i62.1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i62.1.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit65.1.i

list_del.exit65.1.i:                              ; preds = %if.end.i.i63.1.i, %list_del.exit65.i.list_del.exit65.1.i_crit_edge
  %52 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx16.1.i, align 4
  %prev.i64.1.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i64.1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i64.1.i, align 4
  %arrayidx16.2.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 2
  %call.i.i60.2.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx16.2.i) #6
  br i1 %call.i.i60.2.i, label %if.end.i.i63.2.i, label %list_del.exit65.1.i.list_del.exit65.2.i_crit_edge

list_del.exit65.1.i.list_del.exit65.2.i_crit_edge: ; preds = %list_del.exit65.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit65.2.i

if.end.i.i63.2.i:                                 ; preds = %list_del.exit65.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i61.2.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 2, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i61.2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i61.2.i, align 4
  %56 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx16.2.i, align 4
  %prev1.i.i.i62.2.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i62.2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i62.2.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del.exit65.2.i

list_del.exit65.2.i:                              ; preds = %if.end.i.i63.2.i, %list_del.exit65.1.i.list_del.exit65.2.i_crit_edge
  %60 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx16.2.i, align 4
  %prev.i64.2.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 2, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i64.2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i64.2.i, align 4
  %arrayidx16.3.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 3
  %call.i.i60.3.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx16.3.i) #6
  br i1 %call.i.i60.3.i, label %if.end.i.i63.3.i, label %list_del.exit65.2.i.list_del.exit65.3.i_crit_edge

list_del.exit65.2.i.list_del.exit65.3.i_crit_edge: ; preds = %list_del.exit65.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit65.3.i

if.end.i.i63.3.i:                                 ; preds = %list_del.exit65.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i61.3.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 3, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i61.3.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i61.3.i, align 4
  %64 = ptrtoint ptr %arrayidx16.3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx16.3.i, align 4
  %prev1.i.i.i62.3.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i62.3.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i62.3.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit65.3.i

list_del.exit65.3.i:                              ; preds = %if.end.i.i63.3.i, %list_del.exit65.2.i.list_del.exit65.3.i_crit_edge
  %68 = ptrtoint ptr %arrayidx16.3.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx16.3.i, align 4
  %prev.i64.3.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 3, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i64.3.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i64.3.i, align 4
  %arrayidx16.4.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 4
  %call.i.i60.4.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx16.4.i) #6
  br i1 %call.i.i60.4.i, label %if.end.i.i63.4.i, label %list_del.exit65.3.i.list_del.exit65.4.i_crit_edge

list_del.exit65.3.i.list_del.exit65.4.i_crit_edge: ; preds = %list_del.exit65.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit65.4.i

if.end.i.i63.4.i:                                 ; preds = %list_del.exit65.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i61.4.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 4, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i61.4.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i61.4.i, align 4
  %72 = ptrtoint ptr %arrayidx16.4.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx16.4.i, align 4
  %prev1.i.i.i62.4.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i62.4.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i62.4.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %list_del.exit65.4.i

list_del.exit65.4.i:                              ; preds = %if.end.i.i63.4.i, %list_del.exit65.3.i.list_del.exit65.4.i_crit_edge
  %76 = ptrtoint ptr %arrayidx16.4.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx16.4.i, align 4
  %prev.i64.4.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 4, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i64.4.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i64.4.i, align 4
  %arrayidx16.5.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 5
  %call.i.i60.5.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx16.5.i) #6
  br i1 %call.i.i60.5.i, label %if.end.i.i63.5.i, label %list_del.exit65.4.i.list_del.exit65.5.i_crit_edge

list_del.exit65.4.i.list_del.exit65.5.i_crit_edge: ; preds = %list_del.exit65.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit65.5.i

if.end.i.i63.5.i:                                 ; preds = %list_del.exit65.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i61.5.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 5, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i61.5.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i61.5.i, align 4
  %80 = ptrtoint ptr %arrayidx16.5.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx16.5.i, align 4
  %prev1.i.i.i62.5.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i62.5.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i62.5.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del.exit65.5.i

list_del.exit65.5.i:                              ; preds = %if.end.i.i63.5.i, %list_del.exit65.4.i.list_del.exit65.5.i_crit_edge
  %84 = ptrtoint ptr %arrayidx16.5.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx16.5.i, align 4
  %prev.i64.5.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 5, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i64.5.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i64.5.i, align 4
  %arrayidx16.6.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 6
  %call.i.i60.6.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx16.6.i) #6
  br i1 %call.i.i60.6.i, label %if.end.i.i63.6.i, label %list_del.exit65.5.i.list_del.exit65.6.i_crit_edge

list_del.exit65.5.i.list_del.exit65.6.i_crit_edge: ; preds = %list_del.exit65.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit65.6.i

if.end.i.i63.6.i:                                 ; preds = %list_del.exit65.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i61.6.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 6, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i61.6.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i61.6.i, align 4
  %88 = ptrtoint ptr %arrayidx16.6.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx16.6.i, align 4
  %prev1.i.i.i62.6.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i62.6.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i62.6.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %list_del.exit65.6.i

list_del.exit65.6.i:                              ; preds = %if.end.i.i63.6.i, %list_del.exit65.5.i.list_del.exit65.6.i_crit_edge
  %92 = ptrtoint ptr %arrayidx16.6.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx16.6.i, align 4
  %prev.i64.6.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 6, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i64.6.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i64.6.i, align 4
  %arrayidx16.7.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 7
  %call.i.i60.7.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx16.7.i) #6
  br i1 %call.i.i60.7.i, label %if.end.i.i63.7.i, label %list_del.exit65.6.i.list_del.exit65.7.i_crit_edge

list_del.exit65.6.i.list_del.exit65.7.i_crit_edge: ; preds = %list_del.exit65.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit65.7.i

if.end.i.i63.7.i:                                 ; preds = %list_del.exit65.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i61.7.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 7, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i.i61.7.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i.i61.7.i, align 4
  %96 = ptrtoint ptr %arrayidx16.7.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx16.7.i, align 4
  %prev1.i.i.i62.7.i = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %prev1.i.i.i62.7.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %95, ptr %prev1.i.i.i62.7.i, align 4
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %97, ptr %95, align 4
  br label %list_del.exit65.7.i

list_del.exit65.7.i:                              ; preds = %if.end.i.i63.7.i, %list_del.exit65.6.i.list_del.exit65.7.i_crit_edge
  %100 = ptrtoint ptr %arrayidx16.7.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx16.7.i, align 4
  %prev.i64.7.i = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 7, i32 0, i32 1
  %101 = ptrtoint ptr %prev.i64.7.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i64.7.i, align 4
  %tx_ba_stream_tbl_ptr.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 83
  %call.i.i66.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tx_ba_stream_tbl_ptr.i) #6
  br i1 %call.i.i66.i, label %if.end.i.i69.i, label %list_del.exit65.7.i.list_del.exit71.i_crit_edge

list_del.exit65.7.i.list_del.exit71.i_crit_edge:  ; preds = %list_del.exit65.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit71.i

if.end.i.i69.i:                                   ; preds = %list_del.exit65.7.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i67.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 83, i32 1
  %102 = ptrtoint ptr %prev.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i.i67.i, align 4
  %104 = ptrtoint ptr %tx_ba_stream_tbl_ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tx_ba_stream_tbl_ptr.i, align 4
  %prev1.i.i.i68.i = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev1.i.i.i68.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %105, ptr %103, align 4
  br label %list_del.exit71.i

list_del.exit71.i:                                ; preds = %if.end.i.i69.i, %list_del.exit65.7.i.list_del.exit71.i_crit_edge
  %108 = ptrtoint ptr %tx_ba_stream_tbl_ptr.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr inttoptr (i32 256 to ptr), ptr %tx_ba_stream_tbl_ptr.i, align 4
  %prev.i70.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 83, i32 1
  %109 = ptrtoint ptr %prev.i70.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i70.i, align 4
  %rx_reorder_tbl_ptr.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 89
  %call.i.i72.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rx_reorder_tbl_ptr.i) #6
  br i1 %call.i.i72.i, label %if.end.i.i75.i, label %list_del.exit71.i.list_del.exit77.i_crit_edge

list_del.exit71.i.list_del.exit77.i_crit_edge:    ; preds = %list_del.exit71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit77.i

if.end.i.i75.i:                                   ; preds = %list_del.exit71.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i73.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 89, i32 1
  %110 = ptrtoint ptr %prev.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i.i73.i, align 4
  %112 = ptrtoint ptr %rx_reorder_tbl_ptr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rx_reorder_tbl_ptr.i, align 4
  %prev1.i.i.i74.i = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %prev1.i.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %111, ptr %prev1.i.i.i74.i, align 4
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %113, ptr %111, align 4
  br label %list_del.exit77.i

list_del.exit77.i:                                ; preds = %if.end.i.i75.i, %list_del.exit71.i.list_del.exit77.i_crit_edge
  %116 = ptrtoint ptr %rx_reorder_tbl_ptr.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr inttoptr (i32 256 to ptr), ptr %rx_reorder_tbl_ptr.i, align 4
  %prev.i76.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 89, i32 1
  %117 = ptrtoint ptr %prev.i76.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i76.i, align 4
  %sta_list.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 79
  %call.i.i78.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sta_list.i) #6
  br i1 %call.i.i78.i, label %if.end.i.i81.i, label %list_del.exit77.i.list_del.exit83.i_crit_edge

list_del.exit77.i.list_del.exit83.i_crit_edge:    ; preds = %list_del.exit77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit83.i

if.end.i.i81.i:                                   ; preds = %list_del.exit77.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i79.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 79, i32 1
  %118 = ptrtoint ptr %prev.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i.i79.i, align 4
  %120 = ptrtoint ptr %sta_list.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sta_list.i, align 4
  %prev1.i.i.i80.i = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %prev1.i.i.i80.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %119, ptr %prev1.i.i.i80.i, align 4
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %121, ptr %119, align 4
  br label %list_del.exit83.i

list_del.exit83.i:                                ; preds = %if.end.i.i81.i, %list_del.exit77.i.list_del.exit83.i_crit_edge
  %124 = ptrtoint ptr %sta_list.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr inttoptr (i32 256 to ptr), ptr %sta_list.i, align 4
  %prev.i82.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 79, i32 1
  %125 = ptrtoint ptr %prev.i82.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i82.i, align 4
  %auto_tdls_list.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 81
  %call.i.i84.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %auto_tdls_list.i) #6
  br i1 %call.i.i84.i, label %if.end.i.i87.i, label %list_del.exit83.i.list_del.exit89.i_crit_edge

list_del.exit83.i.list_del.exit89.i_crit_edge:    ; preds = %list_del.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit89.i

if.end.i.i87.i:                                   ; preds = %list_del.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i85.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 81, i32 1
  %126 = ptrtoint ptr %prev.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prev.i.i85.i, align 4
  %128 = ptrtoint ptr %auto_tdls_list.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %auto_tdls_list.i, align 4
  %prev1.i.i.i86.i = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %prev1.i.i.i86.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %prev1.i.i.i86.i, align 4
  %131 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %129, ptr %127, align 4
  br label %list_del.exit89.i

list_del.exit89.i:                                ; preds = %if.end.i.i87.i, %list_del.exit83.i.list_del.exit89.i_crit_edge
  %132 = ptrtoint ptr %auto_tdls_list.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr inttoptr (i32 256 to ptr), ptr %auto_tdls_list.i, align 4
  %prev.i88.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 81, i32 1
  %133 = ptrtoint ptr %prev.i88.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i88.i, align 4
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %list_del.exit89.i, %for.body7.i.for.inc20.i_crit_edge
  %inc21.i = add nuw nsw i32 %i.196.i, 1
  %134 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %priv_num.i, align 4
  %conv4.i = zext i8 %135 to i32
  %cmp5.i = icmp ult i32 %inc21.i, %conv4.i
  br i1 %cmp5.i, label %for.inc20.i.for.body7.i_crit_edge, label %for.inc20.i.mwifiex_invalidate_lists.exit_crit_edge

for.inc20.i.mwifiex_invalidate_lists.exit_crit_edge: ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mwifiex_invalidate_lists.exit

for.inc20.i.for.body7.i_crit_edge:                ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.i

mwifiex_invalidate_lists.exit:                    ; preds = %for.inc20.i.mwifiex_invalidate_lists.exit_crit_edge, %for.cond2.preheader.i.mwifiex_invalidate_lists.exit_crit_edge, %list_del.exit53.i.mwifiex_invalidate_lists.exit_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str) #6
  tail call void @mwifiex_free_cmd_buffer(ptr noundef %adapter) #6
  %sleep_cfm = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 95
  %136 = ptrtoint ptr %sleep_cfm to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sleep_cfm, align 4
  %tobool.not = icmp eq ptr %137, null
  br i1 %tobool.not, label %mwifiex_invalidate_lists.exit.if.end_crit_edge, label %if.then

mwifiex_invalidate_lists.exit.if.end_crit_edge:   ; preds = %mwifiex_invalidate_lists.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %mwifiex_invalidate_lists.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %137, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %mwifiex_invalidate_lists.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_free_cmd_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_init_lock_list(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %int_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 48
  tail call void @__raw_spin_lock_init(ptr noundef %int_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mwifiex_init_lock_list.__key, i16 noundef signext 3) #6
  %main_proc_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 36
  tail call void @__raw_spin_lock_init(ptr noundef %main_proc_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @mwifiex_init_lock_list.__key.2, i16 noundef signext 3) #6
  %mwifiex_cmd_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 61
  tail call void @__raw_spin_lock_init(ptr noundef %mwifiex_cmd_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @mwifiex_init_lock_list.__key.4, i16 noundef signext 3) #6
  %queue_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 123
  tail call void @__raw_spin_lock_init(ptr noundef %queue_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @mwifiex_init_lock_list.__key.6, i16 noundef signext 3) #6
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %0 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp169.not = icmp eq i8 %1, 0
  br i1 %cmp169.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0170 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.0170
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %ra_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 77, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %ra_list_spinlock, ptr noundef nonnull @.str.9, ptr noundef nonnull @mwifiex_init_lock_list.__key.8, i16 noundef signext 3) #6
  %curr_bcn_buf_lock = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 102
  tail call void @__raw_spin_lock_init(ptr noundef %curr_bcn_buf_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @mwifiex_init_lock_list.__key.10, i16 noundef signext 3) #6
  %sta_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 80
  tail call void @__raw_spin_lock_init(ptr noundef %sta_list_spinlock, ptr noundef nonnull @.str.13, ptr noundef nonnull @mwifiex_init_lock_list.__key.12, i16 noundef signext 3) #6
  %auto_tdls_lock = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 82
  tail call void @__raw_spin_lock_init(ptr noundef %auto_tdls_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @mwifiex_init_lock_list.__key.14, i16 noundef signext 3) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0170, 1
  %4 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv_num, align 4
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %cmd_free_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 64
  %6 = ptrtoint ptr %cmd_free_q to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %cmd_free_q, ptr %cmd_free_q, align 4
  %prev.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 64, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cmd_free_q, ptr %prev.i, align 4
  %cmd_pending_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 66
  %8 = ptrtoint ptr %cmd_pending_q to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %cmd_pending_q, ptr %cmd_pending_q, align 4
  %prev.i151 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %9 = ptrtoint ptr %prev.i151 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cmd_pending_q, ptr %prev.i151, align 4
  %scan_pending_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 68
  %10 = ptrtoint ptr %scan_pending_q to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %scan_pending_q, ptr %scan_pending_q, align 4
  %prev.i152 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 68, i32 1
  %11 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %scan_pending_q, ptr %prev.i152, align 4
  %cmd_free_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 65
  tail call void @__raw_spin_lock_init(ptr noundef %cmd_free_q_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @mwifiex_init_lock_list.__key.16, i16 noundef signext 3) #6
  %cmd_pending_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 67
  tail call void @__raw_spin_lock_init(ptr noundef %cmd_pending_q_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @mwifiex_init_lock_list.__key.18, i16 noundef signext 3) #6
  %scan_pending_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 69
  tail call void @__raw_spin_lock_init(ptr noundef %scan_pending_q_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @mwifiex_init_lock_list.__key.20, i16 noundef signext 3) #6
  %rx_proc_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 70
  tail call void @__raw_spin_lock_init(ptr noundef %rx_proc_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @mwifiex_init_lock_list.__key.22, i16 noundef signext 3) #6
  %rx_data_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 146
  %lock.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 146, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %12 = ptrtoint ptr %rx_data_q to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rx_data_q, ptr %rx_data_q, align 4
  %prev.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 146, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rx_data_q, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 146, i32 1
  %14 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %qlen.i.i, align 4
  %tx_data_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 71
  %lock.i153 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 71, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i153, ptr noundef nonnull @.str.39, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %15 = ptrtoint ptr %tx_data_q to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tx_data_q, ptr %tx_data_q, align 4
  %prev.i.i154 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 71, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i154 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tx_data_q, ptr %prev.i.i154, align 4
  %qlen.i.i155 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 71, i32 1
  %17 = ptrtoint ptr %qlen.i.i155 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %qlen.i.i155, align 4
  %18 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp52172.not = icmp eq i8 %19, 0
  br i1 %cmp52172.not, label %for.end.for.end101_crit_edge, label %for.end.for.body54_crit_edge

for.end.for.body54_crit_edge:                     ; preds = %for.end
  br label %for.body54

for.end.for.end101_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end101

for.cond65.preheader:                             ; preds = %for.body54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp68176.not = icmp eq i8 %23, 0
  br i1 %cmp68176.not, label %for.cond65.preheader.for.end101_crit_edge, label %for.cond65.preheader.for.body70_crit_edge

for.cond65.preheader.for.body70_crit_edge:        ; preds = %for.cond65.preheader
  br label %for.body70

for.cond65.preheader.for.end101_crit_edge:        ; preds = %for.cond65.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end101

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %for.end.for.body54_crit_edge
  %i.1173 = phi i32 [ %inc63, %for.body54.for.body54_crit_edge ], [ 0, %for.end.for.body54_crit_edge ]
  %arrayidx55 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 35, i32 %i.1173
  %20 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %arrayidx55, ptr %arrayidx55, align 4
  %prev.i156 = getelementptr inbounds %struct.list_head, ptr %arrayidx55, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i156 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx55, ptr %prev.i156, align 4
  %bss_prio_lock = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 35, i32 %i.1173, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %bss_prio_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @mwifiex_init_lock_list.__key.24, i16 noundef signext 3) #6
  %inc63 = add nuw nsw i32 %i.1173, 1
  %22 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %priv_num, align 4
  %conv51 = zext i8 %23 to i32
  %cmp52 = icmp ult i32 %inc63, %conv51
  br i1 %cmp52, label %for.body54.for.body54_crit_edge, label %for.cond65.preheader

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body54

for.body70:                                       ; preds = %for.inc99.for.body70_crit_edge, %for.cond65.preheader.for.body70_crit_edge
  %i.2177 = phi i32 [ %inc100, %for.inc99.for.body70_crit_edge ], [ 0, %for.cond65.preheader.for.body70_crit_edge ]
  %arrayidx72 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.2177
  %24 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx72, align 4
  %tobool73.not = icmp eq ptr %25, null
  br i1 %tobool73.not, label %for.body70.for.inc99_crit_edge, label %for.cond78.preheader

for.body70.for.inc99_crit_edge:                   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc99

for.cond78.preheader:                             ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  %wmm82 = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 77
  %26 = ptrtoint ptr %wmm82 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %wmm82, ptr %wmm82, align 4
  %prev.i157 = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i157 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %wmm82, ptr %prev.i157, align 4
  %arrayidx83.1 = getelementptr %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx83.1, ptr %arrayidx83.1, align 4
  %prev.i157.1 = getelementptr %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i157.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx83.1, ptr %prev.i157.1, align 4
  %arrayidx83.2 = getelementptr %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx83.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %arrayidx83.2, ptr %arrayidx83.2, align 4
  %prev.i157.2 = getelementptr %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 2, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i157.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx83.2, ptr %prev.i157.2, align 4
  %arrayidx83.3 = getelementptr %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx83.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %arrayidx83.3, ptr %arrayidx83.3, align 4
  %prev.i157.3 = getelementptr %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 3, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i157.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx83.3, ptr %prev.i157.3, align 4
  %arrayidx83.4 = getelementptr %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx83.4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx83.4, ptr %arrayidx83.4, align 4
  %prev.i157.4 = getelementptr %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 4, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i157.4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx83.4, ptr %prev.i157.4, align 4
  %arrayidx83.5 = getelementptr %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 5
  %36 = ptrtoint ptr %arrayidx83.5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %arrayidx83.5, ptr %arrayidx83.5, align 4
  %prev.i157.5 = getelementptr %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 5, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i157.5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx83.5, ptr %prev.i157.5, align 4
  %arrayidx83.6 = getelementptr %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 6
  %38 = ptrtoint ptr %arrayidx83.6 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %arrayidx83.6, ptr %arrayidx83.6, align 4
  %prev.i157.6 = getelementptr %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 6, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i157.6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx83.6, ptr %prev.i157.6, align 4
  %arrayidx83.7 = getelementptr %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 7
  %40 = ptrtoint ptr %arrayidx83.7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %arrayidx83.7, ptr %arrayidx83.7, align 4
  %prev.i157.7 = getelementptr %struct.mwifiex_private, ptr %25, i32 0, i32 77, i32 0, i32 7, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i157.7 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx83.7, ptr %prev.i157.7, align 4
  %tx_ba_stream_tbl_ptr = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 83
  %42 = ptrtoint ptr %tx_ba_stream_tbl_ptr to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %tx_ba_stream_tbl_ptr, ptr %tx_ba_stream_tbl_ptr, align 4
  %prev.i158 = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 83, i32 1
  %43 = ptrtoint ptr %prev.i158 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %tx_ba_stream_tbl_ptr, ptr %prev.i158, align 4
  %rx_reorder_tbl_ptr = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 89
  %44 = ptrtoint ptr %rx_reorder_tbl_ptr to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %rx_reorder_tbl_ptr, ptr %rx_reorder_tbl_ptr, align 4
  %prev.i159 = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 89, i32 1
  %45 = ptrtoint ptr %prev.i159 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %rx_reorder_tbl_ptr, ptr %prev.i159, align 4
  %sta_list = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 79
  %46 = ptrtoint ptr %sta_list to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %sta_list, ptr %sta_list, align 4
  %prev.i160 = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 79, i32 1
  %47 = ptrtoint ptr %prev.i160 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %sta_list, ptr %prev.i160, align 4
  %auto_tdls_list = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 81
  %48 = ptrtoint ptr %auto_tdls_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %auto_tdls_list, ptr %auto_tdls_list, align 4
  %prev.i161 = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 81, i32 1
  %49 = ptrtoint ptr %prev.i161 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %auto_tdls_list, ptr %prev.i161, align 4
  %tdls_txq = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 141
  %lock.i162 = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 141, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i162, ptr noundef nonnull @.str.39, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %50 = ptrtoint ptr %tdls_txq to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tdls_txq, ptr %tdls_txq, align 4
  %prev.i.i163 = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 141, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i163 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %tdls_txq, ptr %prev.i.i163, align 4
  %qlen.i.i164 = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 141, i32 1
  %52 = ptrtoint ptr %qlen.i.i164 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %qlen.i.i164, align 4
  %bypass_txq = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 160
  %lock.i165 = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 160, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i165, ptr noundef nonnull @.str.39, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %53 = ptrtoint ptr %bypass_txq to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %bypass_txq, ptr %bypass_txq, align 4
  %prev.i.i166 = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 160, i32 0, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %bypass_txq, ptr %prev.i.i166, align 4
  %qlen.i.i167 = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 160, i32 1
  %55 = ptrtoint ptr %qlen.i.i167 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %qlen.i.i167, align 4
  %tx_ba_stream_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 84
  tail call void @__raw_spin_lock_init(ptr noundef %tx_ba_stream_tbl_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @mwifiex_init_lock_list.__key.26, i16 noundef signext 3) #6
  %rx_reorder_tbl_lock = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 90
  tail call void @__raw_spin_lock_init(ptr noundef %rx_reorder_tbl_lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @mwifiex_init_lock_list.__key.28, i16 noundef signext 3) #6
  %ack_status_lock = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 148
  tail call void @__raw_spin_lock_init(ptr noundef %ack_status_lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @mwifiex_init_lock_list.__key.30, i16 noundef signext 3) #6
  %ack_status_frames = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 147
  tail call void @__raw_spin_lock_init(ptr noundef %ack_status_frames, ptr noundef nonnull @.str.40, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #6
  %xa_flags.i.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 147, i32 0, i32 1
  %56 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 147, i32 0, i32 2
  %57 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 147, i32 1
  %58 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 147, i32 2
  %59 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %idr_next.i.i, align 4
  br label %for.inc99

for.inc99:                                        ; preds = %for.cond78.preheader, %for.body70.for.inc99_crit_edge
  %inc100 = add nuw nsw i32 %i.2177, 1
  %60 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %priv_num, align 4
  %conv67 = zext i8 %61 to i32
  %cmp68 = icmp ult i32 %inc100, %conv67
  br i1 %cmp68, label %for.inc99.for.body70_crit_edge, label %for.inc99.for.end101_crit_edge

for.inc99.for.end101_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end101

for.inc99.for.body70_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body70

for.end101:                                       ; preds = %for.inc99.for.end101_crit_edge, %for.cond65.preheader.for.end101_crit_edge, %for.end.for.end101_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_init_fw(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 45
  %0 = ptrtoint ptr %hw_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %hw_status, align 4
  %call.i = tail call i32 @mwifiex_alloc_cmd_buffer(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.mwifiex_allocate_adapter) #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16, i32 noundef 2592) #6
  %sleep_cfm.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 95
  %1 = ptrtoint ptr %sleep_cfm.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i.i.i, ptr %sleep_cfm.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.mwifiex_allocate_adapter) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 4
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %6 = ptrtoint ptr %sleep_cfm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sleep_cfm.i, align 4
  %call.i85 = tail call ptr @skb_put(ptr noundef %7, i32 noundef 12) #6
  %cmd_sent.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 54
  %8 = ptrtoint ptr %cmd_sent.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %cmd_sent.i, align 1
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %adapter, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i = icmp eq i8 %10, 0
  %data_sent.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 53
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i86

if.end.thread.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %data_sent.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %data_sent.i, align 4
  br label %if.else8.i

if.end.i86:                                       ; preds = %if.end
  %12 = ptrtoint ptr %data_sent.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %data_sent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp5.i = icmp eq i8 %10, 2
  br i1 %cmp5.i, label %if.end.i86.mwifiex_init_adapter.exit_crit_edge, label %if.end.i86.if.else8.i_crit_edge

if.end.i86.if.else8.i_crit_edge:                  ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else8.i

if.end.i86.mwifiex_init_adapter.exit_crit_edge:   ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %mwifiex_init_adapter.exit

if.else8.i:                                       ; preds = %if.end.i86.if.else8.i_crit_edge, %if.end.thread.i
  br label %mwifiex_init_adapter.exit

mwifiex_init_adapter.exit:                        ; preds = %if.else8.i, %if.end.i86.mwifiex_init_adapter.exit_crit_edge
  %.sink.i = phi i8 [ 4, %if.else8.i ], [ 0, %if.end.i86.mwifiex_init_adapter.exit_crit_edge ]
  %intf_hdr_len9.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %13 = ptrtoint ptr %intf_hdr_len9.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink.i, ptr %intf_hdr_len9.i, align 4
  %cmd_resp_received.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 55
  %14 = ptrtoint ptr %cmd_resp_received.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %cmd_resp_received.i, align 2
  %event_received.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 56
  %15 = ptrtoint ptr %event_received.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %event_received.i, align 1
  %data_received.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 57
  %16 = ptrtoint ptr %data_received.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %data_received.i, align 4
  %work_flags.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %work_flags.i) #6
  %17 = ptrtoint ptr %hw_status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %hw_status, align 4
  %ps_mode.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 89
  %18 = ptrtoint ptr %ps_mode.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %ps_mode.i, align 4
  %ps_state.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 90
  %19 = ptrtoint ptr %ps_state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ps_state.i, align 4
  %need_to_wakeup.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 91
  %20 = ptrtoint ptr %need_to_wakeup.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %need_to_wakeup.i, align 4
  %scan_mode.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 77
  %21 = ptrtoint ptr %scan_mode.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %scan_mode.i, align 4
  %specific_scan_time.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 78
  %22 = ptrtoint ptr %specific_scan_time.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 40, ptr %specific_scan_time.i, align 4
  %active_scan_time.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 79
  %23 = ptrtoint ptr %active_scan_time.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 40, ptr %active_scan_time.i, align 2
  %passive_scan_time.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 80
  %24 = ptrtoint ptr %passive_scan_time.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 110, ptr %passive_scan_time.i, align 4
  %scan_chan_gap_time.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 81
  %25 = ptrtoint ptr %scan_chan_gap_time.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 50, ptr %scan_chan_gap_time.i, align 2
  %scan_probes.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 76
  %26 = ptrtoint ptr %scan_probes.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %scan_probes.i, align 4
  %multiple_dtim.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 92
  %27 = ptrtoint ptr %multiple_dtim.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %multiple_dtim.i, align 2
  %local_listen_interval.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 93
  %28 = ptrtoint ptr %local_listen_interval.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %local_listen_interval.i, align 4
  %is_deep_sleep.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 98
  %29 = ptrtoint ptr %is_deep_sleep.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %is_deep_sleep.i, align 4
  %delay_null_pkt.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 99
  %30 = ptrtoint ptr %delay_null_pkt.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %delay_null_pkt.i, align 1
  %delay_to_ps.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 100
  %31 = ptrtoint ptr %delay_to_ps.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1000, ptr %delay_to_ps.i, align 2
  %enhanced_ps_mode.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 101
  %32 = ptrtoint ptr %enhanced_ps_mode.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %enhanced_ps_mode.i, align 4
  %gen_null_pkt.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 103
  %pm_wakeup_card_req.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 102
  %33 = ptrtoint ptr %pm_wakeup_card_req.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %pm_wakeup_card_req.i, align 2
  %curr_tx_buf_size.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 40
  %34 = ptrtoint ptr %gen_null_pkt.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 0, ptr %gen_null_pkt.i, align 4
  %35 = ptrtoint ptr %curr_tx_buf_size.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 2048, ptr %curr_tx_buf_size.i, align 4
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %work_flags.i) #6
  %hs_cfg.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 107
  %36 = ptrtoint ptr %hs_cfg.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %hs_cfg.i, align 4
  %gpio.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 107, i32 1
  %37 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %gpio.i, align 4
  %gap.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 107, i32 2
  %38 = ptrtoint ptr %gap.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %gap.i, align 1
  %hs_activated.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 108
  %39 = ptrtoint ptr %hs_activated.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %hs_activated.i, align 2
  %event_body.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 112
  %sec_chan_offset.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 117
  %40 = ptrtoint ptr %sec_chan_offset.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %sec_chan_offset.i, align 1
  %adhoc_11n_enabled.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 116
  %41 = ptrtoint ptr %adhoc_11n_enabled.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %adhoc_11n_enabled.i, align 2
  %42 = call ptr @memset(ptr %event_body.i, i32 0, i32 2053)
  tail call void @mwifiex_wmm_init(ptr noundef %adapter) #6
  %tx_hw_pending.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 23
  %call.i.i.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_hw_pending.i, i32 noundef 4) #6
  %43 = ptrtoint ptr %tx_hw_pending.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 0, ptr %tx_hw_pending.i, align 4
  %44 = ptrtoint ptr %sleep_cfm.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sleep_cfm.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 19
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 6
  %48 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len.i, align 4
  %50 = call ptr @memset(ptr %47, i32 0, i32 %49)
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 -7168, ptr %47, align 1
  %52 = load ptr, ptr %sleep_cfm.i, align 4
  %len17.i = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %len17.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len17.i, align 4
  %conv18.i = trunc i32 %54 to i16
  %55 = tail call i16 @llvm.bswap.i16(i16 %conv18.i) #6
  %size.i = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %47, i32 0, i32 1
  %56 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %55, ptr %size.i, align 1
  %result.i = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %47, i32 0, i32 3
  %57 = ptrtoint ptr %result.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 0, ptr %result.i, align 1
  %action.i = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %47, i32 0, i32 4
  %58 = ptrtoint ptr %action.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 1280, ptr %action.i, align 1
  %resp_ctrl.i = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %47, i32 0, i32 5
  %59 = ptrtoint ptr %resp_ctrl.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 256, ptr %resp_ctrl.i, align 1
  %sleep_params.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 87
  %tx_lock_flag.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 86
  %60 = ptrtoint ptr %tx_lock_flag.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %tx_lock_flag.i, align 4
  %null_pkt_interval.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 94
  %61 = ptrtoint ptr %null_pkt_interval.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %null_pkt_interval.i, align 2
  %fw_bands.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 82
  %62 = ptrtoint ptr %fw_bands.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %fw_bands.i, align 4
  %config_bands.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 84
  %63 = ptrtoint ptr %config_bands.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %config_bands.i, align 2
  %adhoc_start_band.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 83
  %64 = ptrtoint ptr %adhoc_start_band.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %adhoc_start_band.i, align 1
  %scan_channels.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 85
  %65 = ptrtoint ptr %scan_channels.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %scan_channels.i, align 4
  %fw_release_number.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 13
  %66 = ptrtoint ptr %fw_release_number.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %fw_release_number.i, align 4
  %fw_cap_info.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 47
  %67 = ptrtoint ptr %fw_cap_info.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %fw_cap_info.i, align 4
  %upld_buf.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 52
  %68 = call ptr @memset(ptr %upld_buf.i, i32 0, i32 2312)
  %event_cause.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 50
  %69 = ptrtoint ptr %event_cause.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %event_cause.i, align 4
  %region_code.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 74
  %70 = ptrtoint ptr %region_code.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %region_code.i, align 4
  %bcn_miss_time_out.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 96
  %71 = call ptr @memset(ptr %sleep_params.i, i32 0, i32 14)
  %72 = ptrtoint ptr %bcn_miss_time_out.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 5, ptr %bcn_miss_time_out.i, align 4
  %adhoc_awake_period.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 97
  %73 = ptrtoint ptr %adhoc_awake_period.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %adhoc_awake_period.i, align 2
  %arp_filter.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 119
  %max_mgmt_ie_index.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 125
  %74 = call ptr @memset(ptr %arp_filter.i, i32 0, i32 72)
  %75 = ptrtoint ptr %max_mgmt_ie_index.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 16, ptr %max_mgmt_ie_index.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @mfg_mode to i32))
  %76 = load i8, ptr @mfg_mode, align 1, !range !98
  %mfg_mode.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 147
  %77 = ptrtoint ptr %mfg_mode.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %mfg_mode.i, align 4
  %key_api_major_ver.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 139
  %78 = ptrtoint ptr %key_api_major_ver.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %key_api_major_ver.i, align 1
  %key_api_minor_ver.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 140
  %79 = ptrtoint ptr %key_api_minor_ver.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %key_api_minor_ver.i, align 4
  %perm_addr.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 11
  %80 = call ptr @memset(ptr %perm_addr.i, i32 255, i32 6)
  %iface_limit.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 2
  %81 = ptrtoint ptr %iface_limit.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 3, ptr %iface_limit.i, align 4
  %uap_intf.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %uap_intf.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 3, ptr %uap_intf.i, align 1
  %p2p_intf.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 2, i32 2
  %83 = ptrtoint ptr %p2p_intf.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 3, ptr %p2p_intf.i, align 2
  %active_scan_triggered.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 159
  %84 = ptrtoint ptr %active_scan_triggered.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %active_scan_triggered.i, align 4
  %wakeup_timer.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 106
  tail call void @init_timer_key(ptr noundef %wakeup_timer.i, ptr noundef nonnull @wakeup_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.43, ptr noundef nonnull @mwifiex_init_adapter.__key) #6
  %devdump_len.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 168
  %85 = ptrtoint ptr %devdump_len.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %devdump_len.i, align 4
  %devdump_timer.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 169
  tail call void @init_timer_key(ptr noundef %devdump_timer.i, ptr noundef nonnull @fw_dump_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @mwifiex_init_adapter.__key.44) #6
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %86 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp94.not = icmp eq i8 %87, 0
  br i1 %cmp94.not, label %mwifiex_init_adapter.exit.for.end_crit_edge, label %mwifiex_init_adapter.exit.for.body_crit_edge

mwifiex_init_adapter.exit.for.body_crit_edge:     ; preds = %mwifiex_init_adapter.exit
  br label %for.body

mwifiex_init_adapter.exit.for.end_crit_edge:      ; preds = %mwifiex_init_adapter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mwifiex_init_adapter.exit.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %mwifiex_init_adapter.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %indvars.iv
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %89, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then5:                                         ; preds = %for.body
  %call9 = tail call i32 @mwifiex_init_priv(ptr noundef nonnull %89)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then5.for.inc_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.then5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %90 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %priv_num, align 4
  %92 = zext i8 %91 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %92
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %mwifiex_init_adapter.exit.for.end_crit_edge
  %93 = ptrtoint ptr %mfg_mode.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %mfg_mode.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool14.not = icmp eq i8 %94, 0
  br i1 %tobool14.not, label %for.cond17.preheader, label %if.then15

for.cond17.preheader:                             ; preds = %for.end
  %95 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp2196.not = icmp eq i8 %96, 0
  br i1 %cmp2196.not, label %for.cond17.preheader.if.end41_crit_edge, label %for.cond17.preheader.for.body23_crit_edge

for.cond17.preheader.for.body23_crit_edge:        ; preds = %for.cond17.preheader
  br label %for.body23

for.cond17.preheader.if.end41_crit_edge:          ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %hw_status to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %hw_status, align 4
  br label %if.end41

for.body23:                                       ; preds = %for.inc38.for.body23_crit_edge, %for.cond17.preheader.for.body23_crit_edge
  %indvars.iv101 = phi i32 [ %indvars.iv.next102, %for.inc38.for.body23_crit_edge ], [ 0, %for.cond17.preheader.for.body23_crit_edge ]
  %first_sta.099 = phi i8 [ %first_sta.1, %for.inc38.for.body23_crit_edge ], [ 1, %for.cond17.preheader.for.body23_crit_edge ]
  %ret.297 = phi i32 [ %ret.3, %for.inc38.for.body23_crit_edge ], [ 0, %for.cond17.preheader.for.body23_crit_edge ]
  %arrayidx26 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %indvars.iv101
  %98 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx26, align 4
  %tobool27.not = icmp eq ptr %99, null
  br i1 %tobool27.not, label %for.body23.for.inc38_crit_edge, label %if.then28

for.body23.for.inc38_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc38

if.then28:                                        ; preds = %for.body23
  %call32 = tail call i32 @mwifiex_sta_init_cmd(ptr noundef nonnull %99, i8 noundef zeroext %first_sta.099, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call32)
  %cmp33 = icmp eq i32 %call32, -1
  br i1 %cmp33, label %if.then28.cleanup_crit_edge, label %if.then28.for.inc38_crit_edge

if.then28.for.inc38_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc38

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc38:                                        ; preds = %if.then28.for.inc38_crit_edge, %for.body23.for.inc38_crit_edge
  %ret.3 = phi i32 [ %ret.297, %for.body23.for.inc38_crit_edge ], [ %call32, %if.then28.for.inc38_crit_edge ]
  %first_sta.1 = phi i8 [ %first_sta.099, %for.body23.for.inc38_crit_edge ], [ 0, %if.then28.for.inc38_crit_edge ]
  %indvars.iv.next102 = add nuw nsw i32 %indvars.iv101, 1
  %100 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %priv_num, align 4
  %102 = zext i8 %101 to i32
  %cmp21 = icmp ult i32 %indvars.iv.next102, %102
  br i1 %cmp21, label %for.inc38.for.body23_crit_edge, label %for.inc38.if.end41_crit_edge

for.inc38.if.end41_crit_edge:                     ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

for.inc38.for.body23_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23

if.end41:                                         ; preds = %for.inc38.if.end41_crit_edge, %if.then15, %for.cond17.preheader.if.end41_crit_edge
  %ret.4 = phi i32 [ -115, %if.then15 ], [ 0, %for.cond17.preheader.if.end41_crit_edge ], [ %ret.3, %for.inc38.if.end41_crit_edge ]
  %cmd_pending_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_pending_q_lock) #6
  %cmd_pending_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 66
  %103 = ptrtoint ptr %cmd_pending_q to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %cmd_pending_q, align 4
  %cmp.i88.not = icmp eq ptr %104, %cmd_pending_q
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_pending_q_lock) #6
  br i1 %cmp.i88.not, label %if.else51, label %if.then45

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = tail call i32 @mwifiex_main_process(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, -1
  %spec.select = select i1 %cmp47.not, i32 %ret.4, i32 -115
  br label %cleanup

if.else51:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %hw_status to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %hw_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else51, %if.then45, %if.then28.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ %ret.4, %if.else51 ], [ %spec.select, %if.then45 ], [ -1, %if.then.i ], [ -1, %if.then4.i ], [ -1, %if.then28.cleanup_crit_edge ], [ -1, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_sta_init_cmd(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_main_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_free_priv(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mwifiex_clean_txrx(ptr noundef %priv) #6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %priv_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp54.not.i = icmp eq i8 %3, 0
  br i1 %cmp54.not.i, label %entry.mwifiex_delete_bss_prio_tbl.exit_crit_edge, label %for.body.lr.ph.i

entry.mwifiex_delete_bss_prio_tbl.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mwifiex_delete_bss_prio_tbl.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %bss_type.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %bss_num.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.055.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 35, i32 %i.055.i
  %bss_prio_lock.i = getelementptr %struct.mwifiex_adapter, ptr %1, i32 0, i32 35, i32 %i.055.i, i32 1
  %4 = ptrtoint ptr %bss_type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bss_type.i, align 4
  %conv5.i = zext i8 %5 to i32
  %6 = ptrtoint ptr %bss_num.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bss_num.i, align 1
  %conv6.i = zext i8 %7 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.47, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %i.055.i, ptr noundef %arrayidx.i) #6
  tail call void @_raw_spin_lock_bh(ptr noundef %bss_prio_lock.i) #6
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %cmp13.not49.i = icmp eq ptr %9, %arrayidx.i
  br i1 %cmp13.not49.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body15.i_crit_edge

for.body.i.for.body15.i_crit_edge:                ; preds = %for.body.i
  br label %for.body15.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body15.i:                                     ; preds = %for.inc.i.for.body15.i_crit_edge, %for.body.i.for.body15.i_crit_edge
  %bssprio_node.050.i = phi ptr [ %tmp_node.052.i, %for.inc.i.for.body15.i_crit_edge ], [ %9, %for.body.i.for.body15.i_crit_edge ]
  %10 = ptrtoint ptr %bssprio_node.050.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp_node.052.i = load ptr, ptr %bssprio_node.050.i, align 4
  %priv16.i = getelementptr inbounds %struct.mwifiex_bss_prio_node, ptr %bssprio_node.050.i, i32 0, i32 1
  %11 = ptrtoint ptr %priv16.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv16.i, align 4
  %cmp17.i = icmp eq ptr %12, %priv
  br i1 %cmp17.i, label %if.then.i, label %for.body15.i.for.inc.i_crit_edge

for.body15.i.for.inc.i_crit_edge:                 ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body15.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.48, ptr noundef %bssprio_node.050.i, ptr noundef %tmp_node.052.i) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bssprio_node.050.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %bssprio_node.050.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %bssprio_node.050.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bssprio_node.050.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %bssprio_node.050.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %bssprio_node.050.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %bssprio_node.050.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %bssprio_node.050.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %for.body15.i.for.inc.i_crit_edge
  %cmp13.not.i = icmp eq ptr %tmp_node.052.i, %arrayidx.i
  br i1 %cmp13.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body15.i_crit_edge

for.inc.i.for.body15.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %bss_prio_lock.i) #6
  %inc.i = add nuw nsw i32 %i.055.i, 1
  %21 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %22 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.end.i.for.body.i_crit_edge, label %for.end.i.mwifiex_delete_bss_prio_tbl.exit_crit_edge

for.end.i.mwifiex_delete_bss_prio_tbl.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mwifiex_delete_bss_prio_tbl.exit

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

mwifiex_delete_bss_prio_tbl.exit:                 ; preds = %for.end.i.mwifiex_delete_bss_prio_tbl.exit_crit_edge, %entry.mwifiex_delete_bss_prio_tbl.exit_crit_edge
  tail call void @mwifiex_free_curr_bcn(ptr noundef %priv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_clean_txrx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_free_curr_bcn(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_shutdown_drv(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 45
  %0 = ptrtoint ptr %hw_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %curr_cmd = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 60
  %2 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_cmd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 536870912, ptr noundef nonnull @.str.32) #6
  %cmd_timer = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 63
  %call = tail call i32 @del_timer_sync(ptr noundef %cmd_timer) #6
  %4 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curr_cmd, align 4
  tail call void @mwifiex_recycle_cmd_node(ptr noundef %adapter, ptr noundef %5) #6
  %6 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %curr_cmd, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.33) #6
  %priv_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %7 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %priv_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp564.not = icmp eq i8 %8, 0
  br i1 %cmp564.not, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.065 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.065
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.then9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mwifiex_clean_auto_tdls(ptr noundef nonnull %10) #6
  tail call void @mwifiex_abort_cac(ptr noundef nonnull %10) #6
  tail call void @mwifiex_free_priv(ptr noundef nonnull %10)
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.065, 1
  %11 = ptrtoint ptr %priv_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %priv_num, align 4
  %conv = zext i8 %12 to i32
  %cmp5 = icmp ult i32 %inc, %conv
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end4.for.end_crit_edge
  %tx_queued = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 72
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_queued, i32 noundef 4) #6
  %13 = ptrtoint ptr %tx_queued to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %tx_queued, align 4
  %tx_data_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 71
  %call1366 = tail call ptr @skb_dequeue(ptr noundef %tx_data_q) #6
  %tobool14.not67 = icmp eq ptr %call1366, null
  br i1 %tobool14.not67, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %call1368 = phi ptr [ %call13, %while.body.while.body_crit_edge ], [ %call1366, %for.end.while.body_crit_edge ]
  %call15 = tail call i32 @mwifiex_write_data_complete(ptr noundef %adapter, ptr noundef nonnull %call1368, i32 noundef 0, i32 noundef 0) #6
  %call13 = tail call ptr @skb_dequeue(ptr noundef %tx_data_q) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end.while.end_crit_edge
  %rx_proc_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 70
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_proc_lock) #6
  %rx_data_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 146
  %call1769 = tail call ptr @skb_dequeue(ptr noundef %rx_data_q) #6
  %tobool18.not70 = icmp eq ptr %call1769, null
  br i1 %tobool18.not70, label %while.end.while.end27_crit_edge, label %while.body19.lr.ph

while.end.while.end27_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end27

while.body19.lr.ph:                               ; preds = %while.end
  %rx_pending = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 20
  br label %while.body19

while.body19:                                     ; preds = %if.end26.while.body19_crit_edge, %while.body19.lr.ph
  %call1771 = phi ptr [ %call1769, %while.body19.lr.ph ], [ %call17, %if.end26.while.body19_crit_edge ]
  %call.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_pending, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rx_pending, i32 1, i32 3, i32 1) #6
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_pending, ptr %rx_pending, i32 1, ptr elementtype(i32) %rx_pending) #6, !srcloc !99
  %bss_num = getelementptr inbounds %struct.sk_buff, ptr %call1771, i32 0, i32 3, i32 12
  %15 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bss_num, align 4
  %idxprom = zext i8 %16 to i32
  %arrayidx22 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %18, null
  br i1 %tobool23.not, label %while.body19.if.end26_crit_edge, label %if.then24

while.body19.if.end26_crit_edge:                  ; preds = %while.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %while.body19
  call void @__sanitizer_cov_trace_pc() #8
  %rx_dropped = getelementptr inbounds %struct.mwifiex_private, ptr %18, i32 0, i32 16, i32 6
  %19 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_dropped, align 8
  %inc25 = add i32 %20, 1
  store i32 %inc25, ptr %rx_dropped, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %while.body19.if.end26_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call1771, i32 noundef 1) #6
  %call17 = tail call ptr @skb_dequeue(ptr noundef %rx_data_q) #6
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end26.while.end27_crit_edge, label %if.end26.while.body19_crit_edge

if.end26.while.body19_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body19

if.end26.while.end27_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end27

while.end27:                                      ; preds = %if.end26.while.end27_crit_edge, %while.end.while.end27_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_proc_lock) #6
  %wakeup_timer.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 106
  %call.i = tail call i32 @del_timer(ptr noundef %wakeup_timer.i) #6
  %devdump_timer.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 169
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %devdump_timer.i) #6
  tail call void @mwifiex_cancel_all_pending_cmd(ptr noundef %adapter) #6
  %cmd_wait_q.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 121
  tail call void @__wake_up(ptr noundef %cmd_wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  %hs_activate_wait_q.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 111
  tail call void @__wake_up(ptr noundef %hs_activate_wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  %21 = ptrtoint ptr %hw_status to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %hw_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end27, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_recycle_cmd_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_clean_auto_tdls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_abort_cac(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_write_data_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_dnld_fw(ptr noundef %adapter, ptr noundef %pmfw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %check_fw_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 2
  %0 = ptrtoint ptr %check_fw_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %check_fw_status, align 4
  %call = tail call i32 %1(ptr noundef %adapter, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.34) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %check_winner_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 3
  %2 = ptrtoint ptr %check_winner_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_winner_status, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end14_crit_edge, label %if.then3

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then3:                                         ; preds = %if.end
  %winner = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 8
  %4 = ptrtoint ptr %winner to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %winner, align 4
  %call6 = tail call i32 %3(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.35) #6
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  %5 = ptrtoint ptr %winner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %winner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1, ptr noundef nonnull @.str.36) #6
  br label %poll_fw

if.end14:                                         ; preds = %if.end9.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %poll_num.0 = phi i32 [ 150, %if.end9.if.end14_crit_edge ], [ 1, %if.end.if.end14_crit_edge ]
  %tobool15.not = icmp eq ptr %pmfw, null
  br i1 %tobool15.not, label %if.end14.poll_fw_crit_edge, label %if.then16

if.end14.poll_fw_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_fw

if.then16:                                        ; preds = %if.end14
  %prog_fw = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 4
  %7 = ptrtoint ptr %prog_fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prog_fw, align 4
  %call18 = tail call i32 %8(ptr noundef %adapter, ptr noundef nonnull %pmfw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then16.poll_fw_crit_edge, label %if.then20

if.then16.poll_fw_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_fw

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.37, i32 noundef %call18) #6
  br label %cleanup

poll_fw:                                          ; preds = %if.then16.poll_fw_crit_edge, %if.end14.poll_fw_crit_edge, %if.then12
  %poll_num.1 = phi i32 [ %poll_num.0, %if.then16.poll_fw_crit_edge ], [ %poll_num.0, %if.end14.poll_fw_crit_edge ], [ 150, %if.then12 ]
  %9 = ptrtoint ptr %check_fw_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %check_fw_status, align 4
  %call25 = tail call i32 %10(ptr noundef %adapter, i32 noundef %poll_num.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %poll_fw.cleanup_crit_edge, label %if.then27

poll_fw.cleanup_crit_edge:                        ; preds = %poll_fw
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %poll_fw
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.38) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %poll_fw.cleanup_crit_edge, %if.then20, %if.then8, %if.then
  %retval.0 = phi i32 [ %call6, %if.then8 ], [ %call18, %if.then20 ], [ 0, %if.then ], [ %call25, %if.then27 ], [ 0, %poll_fw.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_alloc_cmd_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wakeup_timer_fn(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -3772
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 4, ptr noundef nonnull @.str.46) #6
  %hw_status = getelementptr i8, ptr %t, i32 -3092
  %0 = ptrtoint ptr %hw_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %hw_status, align 4
  tail call void @mwifiex_cancel_all_pending_cmd(ptr noundef %add.ptr) #6
  %card_reset = getelementptr i8, ptr %t, i32 -3540
  %1 = ptrtoint ptr %card_reset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card_reset, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %2(ptr noundef %add.ptr) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_dump_timer_fn(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -6552
  tail call void @mwifiex_upload_device_dump(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_cancel_all_pending_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_upload_device_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !72, !74, !75, !77, !79, !80, !82, !83, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 414, i32 2}
!2 = !{ptr @mwifiex_init_lock_list.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 430, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mwifiex_init_lock_list.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 431, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mwifiex_init_lock_list.__key.4, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 432, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mwifiex_init_lock_list.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 433, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mwifiex_init_lock_list.__key.8, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 437, i32 4}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mwifiex_init_lock_list.__key.10, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 438, i32 4}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mwifiex_init_lock_list.__key.12, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 439, i32 4}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mwifiex_init_lock_list.__key.14, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 440, i32 4}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mwifiex_init_lock_list.__key.16, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 451, i32 2}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mwifiex_init_lock_list.__key.18, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 452, i32 2}
!31 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mwifiex_init_lock_list.__key.20, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 453, i32 2}
!34 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mwifiex_init_lock_list.__key.22, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 454, i32 2}
!37 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mwifiex_init_lock_list.__key.24, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 461, i32 3}
!40 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mwifiex_init_lock_list.__key.26, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 477, i32 3}
!43 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mwifiex_init_lock_list.__key.28, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 478, i32 3}
!46 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mwifiex_init_lock_list.__key.30, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 480, i32 3}
!49 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 634, i32 3}
!52 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 642, i32 2}
!54 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 701, i32 3}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 713, i32 4}
!58 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 719, i32 4}
!60 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 729, i32 4}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 739, i32 3}
!64 = !{ptr @__ksymtab_mwifiex_dnld_fw, !65, !"__ksymtab_mwifiex_dnld_fw", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 744, i32 1}
!66 = !{ptr @skb_queue_head_init.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!68 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @xa_init_flags.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!71 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 185, i32 3}
!74 = !{ptr @__func__.mwifiex_allocate_adapter, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 196, i32 3}
!77 = !{ptr @mwifiex_init_adapter.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 322, i32 2}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mwifiex_init_adapter.__key.44, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 324, i32 2}
!82 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 58, i32 2}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 575, i32 3}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/marvell/mwifiex/init.c", i32 586, i32 6}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i8 0, i8 2}
!99 = !{i64 2148549564, i64 2148549590, i64 2148549619, i64 2148549653, i64 2148549684, i64 2148549707}
