; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/rndis_wlan.c_pt.bc'
source_filename = "../drivers/net/wireless/rndis_wlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
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
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.128, i32 }
%union.anon.128 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.127 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.rndis_wlan_private = type { ptr, %struct.wireless_dev, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, i32, i32, i32, i32, i32, %struct.ieee80211_supported_band, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], [4 x i32], i32, i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, [6 x i8], i32, i8, [4 x %struct.rndis_wlan_encr_key], i32, [1053 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.125, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.125 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.126 }
%union.anon.126 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.rndis_wlan_encr_key = type { i32, i32, [32 x i8], [6 x i8], i8, i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.rndis_indicate = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ndis_80211_status_indication = type { i32, %union.anon.135 }
%union.anon.135 = type { %struct.ndis_80211_pmkid_cand_list }
%struct.ndis_80211_pmkid_cand_list = type { i32, i32, [0 x %struct.ndis_80211_pmkid_candidate] }
%struct.ndis_80211_pmkid_candidate = type { [6 x i8], [2 x i8], i32 }
%struct.ndis_80211_auth_request = type { i32, [6 x i8], [2 x i8], i32 }
%struct.rndis_set = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rndis_query = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rndis_query_c = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.134 = type { i32, [8 x i32] }
%struct.ndis_80211_capability = type { i32, i32, i32, i32 }
%struct.ndis_80211_ssid = type { i32, [32 x i8] }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_pmksa = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.ndis_80211_pmkid = type { i32, i32, [0 x %struct.ndis_80211_bssid_info] }
%struct.ndis_80211_bssid_info = type { [6 x i8], [16 x i8] }
%struct.ndis_80211_wep_key = type { i32, i32, i32, [32 x i8] }
%struct.ndis_80211_key = type { i32, i32, i32, [6 x i8], [6 x i8], [8 x i8], [32 x i8] }
%struct.ndis_80211_remove_key = type { i32, i32, [6 x i8], [2 x i8] }
%struct.ndis_80211_bssid_list_ex = type { i32, [0 x %struct.ndis_80211_bssid_ex] }
%struct.ndis_80211_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_80211_ssid, i32, i32, i32, %struct.ndis_80211_conf, i32, [16 x i8], i32, [0 x i8] }
%struct.ndis_80211_conf = type { i32, i32, i32, i32, %struct.ndis_80211_conf_freq_hop }
%struct.ndis_80211_conf_freq_hop = type { i32, i32, i32, i32 }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.cfg80211_roam_info = type { ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params }
%struct.ndis_80211_assoc_info = type { i32, i16, %struct.req_ie, i32, i32, i16, %struct.resp_ie, i32, i32 }
%struct.req_ie = type { i16, i16, [6 x i8] }
%struct.resp_ie = type { i16, i16, i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ndis_config_param = type { i32, i32, i32, i32, i32 }

@__param_str_country = internal constant [19 x i8] c"rndis_wlan.country\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_country = internal constant %struct.kparam_string { i32 4, ptr @modparam_country }, align 4
@__param_country = internal constant %struct.kernel_param { ptr @__param_str_country, ptr null, ptr @param_ops_string, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_string_country } }, section "__param", align 4
@__UNIQUE_ID_countrytype348 = internal constant [35 x i8] c"rndis_wlan.parmtype=country:string\00", section ".modinfo", align 1
@__UNIQUE_ID_country349 = internal constant [71 x i8] c"rndis_wlan.parm=country:Country code (ISO 3166-1 alpha-2), default: EU\00", section ".modinfo", align 1
@__param_str_frameburst = internal constant [22 x i8] c"rndis_wlan.frameburst\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@modparam_frameburst = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_frameburst = internal constant %struct.kernel_param { ptr @__param_str_frameburst, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_frameburst } }, section "__param", align 4
@__UNIQUE_ID_framebursttype350 = internal constant [35 x i8] c"rndis_wlan.parmtype=frameburst:int\00", section ".modinfo", align 1
@__UNIQUE_ID_frameburst351 = internal constant [63 x i8] c"rndis_wlan.parm=frameburst:enable frame bursting (default: on)\00", section ".modinfo", align 1
@__param_str_afterburner = internal constant [23 x i8] c"rndis_wlan.afterburner\00", align 1
@modparam_afterburner = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_afterburner = internal constant %struct.kernel_param { ptr @__param_str_afterburner, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_afterburner } }, section "__param", align 4
@__UNIQUE_ID_afterburnertype352 = internal constant [36 x i8] c"rndis_wlan.parmtype=afterburner:int\00", section ".modinfo", align 1
@__UNIQUE_ID_afterburner353 = internal constant [88 x i8] c"rndis_wlan.parm=afterburner:enable afterburner aka '125 High Speed Mode' (default: off)\00", section ".modinfo", align 1
@__param_str_power_save = internal constant [22 x i8] c"rndis_wlan.power_save\00", align 1
@modparam_power_save = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_power_save = internal constant %struct.kernel_param { ptr @__param_str_power_save, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_power_save } }, section "__param", align 4
@__UNIQUE_ID_power_savetype354 = internal constant [35 x i8] c"rndis_wlan.parmtype=power_save:int\00", section ".modinfo", align 1
@__UNIQUE_ID_power_save355 = internal constant [83 x i8] c"rndis_wlan.parm=power_save:set power save mode: 0=off, 1=on, 2=fast (default: off)\00", section ".modinfo", align 1
@__param_str_power_output = internal constant [24 x i8] c"rndis_wlan.power_output\00", align 1
@modparam_power_output = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_power_output = internal constant %struct.kernel_param { ptr @__param_str_power_output, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_power_output } }, section "__param", align 4
@__UNIQUE_ID_power_outputtype356 = internal constant [37 x i8] c"rndis_wlan.parmtype=power_output:int\00", section ".modinfo", align 1
@__UNIQUE_ID_power_output357 = internal constant [91 x i8] c"rndis_wlan.parm=power_output:set power output: 0=25%, 1=50%, 2=75%, 3=100% (default: 100%)\00", section ".modinfo", align 1
@__param_str_roamtrigger = internal constant [23 x i8] c"rndis_wlan.roamtrigger\00", align 1
@modparam_roamtrigger = internal global { i32, [28 x i8] } { i32 -70, [28 x i8] zeroinitializer }, align 32
@__param_roamtrigger = internal constant %struct.kernel_param { ptr @__param_str_roamtrigger, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_roamtrigger } }, section "__param", align 4
@__UNIQUE_ID_roamtriggertype358 = internal constant [36 x i8] c"rndis_wlan.parmtype=roamtrigger:int\00", section ".modinfo", align 1
@__UNIQUE_ID_roamtrigger359 = internal constant [109 x i8] c"rndis_wlan.parm=roamtrigger:set roaming dBm trigger: -80=optimize for distance, -60=bandwidth (default: -70)\00", section ".modinfo", align 1
@__param_str_roamdelta = internal constant [21 x i8] c"rndis_wlan.roamdelta\00", align 1
@modparam_roamdelta = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_roamdelta = internal constant %struct.kernel_param { ptr @__param_str_roamdelta, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_roamdelta } }, section "__param", align 4
@__UNIQUE_ID_roamdeltatype360 = internal constant [34 x i8] c"rndis_wlan.parmtype=roamdelta:int\00", section ".modinfo", align 1
@__UNIQUE_ID_roamdelta361 = internal constant [109 x i8] c"rndis_wlan.parm=roamdelta:set roaming tendency: 0=aggressive, 1=moderate, 2=conservative (default: moderate)\00", section ".modinfo", align 1
@__param_str_workaround_interval = internal constant [31 x i8] c"rndis_wlan.workaround_interval\00", align 1
@modparam_workaround_interval = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_workaround_interval = internal constant %struct.kernel_param { ptr @__param_str_workaround_interval, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_workaround_interval } }, section "__param", align 4
@__UNIQUE_ID_workaround_intervaltype362 = internal constant [44 x i8] c"rndis_wlan.parmtype=workaround_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_workaround_interval363 = internal constant [101 x i8] c"rndis_wlan.parm=workaround_interval:set stall workaround interval in msecs (0=disabled) (default: 0)\00", section ".modinfo", align 1
@__initcall__kmod_rndis_wlan__446_3755_rndis_wlan_driver_init6 = internal global ptr @rndis_wlan_driver_init, section ".initcall6.init", align 4
@rndis_wlan_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_rndis_wlan_driver_exit = internal global ptr @rndis_wlan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author447 = internal constant [34 x i8] c"rndis_wlan.author=Bjorge Dijkstra\00", section ".modinfo", align 1
@__UNIQUE_ID_author448 = internal constant [34 x i8] c"rndis_wlan.author=Jussi Kivilinna\00", section ".modinfo", align 1
@__UNIQUE_ID_description449 = internal constant [68 x i8] c"rndis_wlan.description=Driver for RNDIS based USB Wireless adapters\00", section ".modinfo", align 1
@__UNIQUE_ID_file450 = internal constant [48 x i8] c"rndis_wlan.file=drivers/net/wireless/rndis_wlan\00", section ".modinfo", align 1
@__UNIQUE_ID_license451 = internal constant [23 x i8] c"rndis_wlan.license=GPL\00", section ".modinfo", align 1
@modparam_country = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"EU\00\00", [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rndis_wlan\00", [21 x i8] zeroinitializer }, align 32
@products = internal constant { [15 x %struct.usb_device_id], [88 x i8] } { [15 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 1041, i16 188, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @bcm4320b_info to i32) }, %struct.usb_device_id { i16 899, i16 2991, i16 283, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @bcm4320b_info to i32) }, %struct.usb_device_id { i16 899, i16 1293, i16 283, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @bcm4320b_info to i32) }, %struct.usb_device_id { i16 899, i16 6041, i16 283, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @bcm4320b_info to i32) }, %struct.usb_device_id { i16 899, i16 5041, i16 20, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @bcm4320b_info to i32) }, %struct.usb_device_id { i16 899, i16 5041, i16 38, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @bcm4320b_info to i32) }, %struct.usb_device_id { i16 899, i16 2821, i16 5911, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @bcm4320b_info to i32) }, %struct.usb_device_id { i16 899, i16 2652, i16 -12005, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @bcm4320b_info to i32) }, %struct.usb_device_id { i16 899, i16 5776, i16 1813, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @bcm4320b_info to i32) }, %struct.usb_device_id { i16 899, i16 5041, i16 14, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @bcm4320a_info to i32) }, %struct.usb_device_id { i16 899, i16 2991, i16 273, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @bcm4320a_info to i32) }, %struct.usb_device_id { i16 899, i16 1041, i16 75, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @bcm4320a_info to i32) }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 ptrtoint (ptr @rndis_wlan_info to i32) }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -17, i8 1, i8 1, i8 0, i32 ptrtoint (ptr @rndis_wlan_info to i32) }, %struct.usb_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@bcm4320b_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 408, ptr @rndis_wlan_bind, ptr @rndis_wlan_unbind, ptr @rndis_wlan_reset, ptr @rndis_wlan_stop, ptr null, ptr null, ptr @rndis_status, ptr null, ptr @rndis_rx_fixup, ptr @rndis_tx_fixup, ptr null, ptr @bcm4320b_early_init, ptr @rndis_wlan_indication, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@bcm4320a_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.184, i32 408, ptr @rndis_wlan_bind, ptr @rndis_wlan_unbind, ptr @rndis_wlan_reset, ptr @rndis_wlan_stop, ptr null, ptr null, ptr @rndis_status, ptr null, ptr @rndis_rx_fixup, ptr @rndis_tx_fixup, ptr null, ptr @bcm4320a_early_init, ptr @rndis_wlan_indication, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@rndis_wlan_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.185, i32 408, ptr @rndis_wlan_bind, ptr @rndis_wlan_unbind, ptr @rndis_wlan_reset, ptr @rndis_wlan_stop, ptr null, ptr null, ptr @rndis_status, ptr null, ptr @rndis_rx_fixup, ptr @rndis_tx_fixup, ptr null, ptr @unknown_early_init, ptr @rndis_wlan_indication, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Wireless RNDIS device, BCM4320b based\00", [58 x i8] zeroinitializer }, align 32
@rndis_config_ops = internal constant { %struct.cfg80211_ops, [108 x i8] } { %struct.cfg80211_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rndis_change_virtual_intf, ptr @rndis_add_key, ptr null, ptr @rndis_del_key, ptr @rndis_set_default_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rndis_get_station, ptr @rndis_dump_station, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rndis_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rndis_connect, ptr null, ptr @rndis_disconnect, ptr @rndis_join_ibss, ptr @rndis_leave_ibss, ptr null, ptr @rndis_set_wiphy_params, ptr @rndis_set_tx_power, ptr @rndis_get_tx_power, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rndis_set_pmksa, ptr @rndis_del_pmksa, ptr @rndis_flush_pmksa, ptr null, ptr null, ptr null, ptr null, ptr @rndis_set_power_mgmt, ptr @rndis_set_cqm_rssi_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [108 x i8] zeroinitializer }, align 32
@rndis_wlan_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->command_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@rndis_wlan_bind.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&priv->work)\00", [33 x i8] zeroinitializer }, align 32
@rndis_wlan_bind.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&priv->dev_poller_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@rndis_wlan_bind.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&priv->dev_poller_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@rndis_wlan_bind.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&priv->scan_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@rndis_wlan_bind.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&priv->scan_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@rndis_wlan_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @rndis_wlan_set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@rndis_wiphy_privid = internal global { ptr, [28 x i8] } { ptr @rndis_wiphy_privid, [28 x i8] zeroinitializer }, align 32
@rndis_channels = internal constant { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@rndis_rates = internal constant { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 1, i16 20, i16 0, i16 0 }, %struct.ieee80211_rate { i32 1, i16 55, i16 0, i16 0 }, %struct.ieee80211_rate { i32 1, i16 110, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 0, i16 0 }], [48 x i8] zeroinitializer }, align 32
@rndis_cipher_suites = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1027073, i32 1027077, i32 1027074, i32 1027076], [16 x i8] zeroinitializer }, align 32
@set_infra_mode.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.15, ptr @.str.16, i8 1, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set_infra_mode\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/wireless/rndis_wlan.c\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): infra_mode=0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"setting infra mode failed (%08X)\0A\00", [62 x i8] zeroinitializer }, align 32
@restore_key.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.15, ptr @.str.19, i8 1, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"restore_key\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(): %i:%i\0A\00", [19 x i8] zeroinitializer }, align 32
@add_wep_key.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.15, ptr @.str.21, i8 1, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"add_wep_key\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(idx: %d, len: %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"encryption couldn't be enabled (%08X)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"adding encryption key %d failed (%08X)\0A\00", [56 x i8] zeroinitializer }, align 32
@set_encr_mode.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.15, ptr @.str.25, i8 1, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_encr_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): cipher_pair=0x%x cipher_group=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setting encr mode failed (%08X)\0A\00", [63 x i8] zeroinitializer }, align 32
@rndis_add_key.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.15, ptr @.str.28, i8 2, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rndis_add_key\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(%i, %pM, %08x)\0A\00", [45 x i8] zeroinitializer }, align 32
@rndis_add_key.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.15, ptr @.str.29, i8 2, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): unsupported cipher %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@add_wpa_key.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.15, ptr @.str.31, i8 1, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"add_wpa_key\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): index out of range (%i)\0A\00", [33 x i8] zeroinitializer }, align 32
@add_wpa_key.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.15, ptr @.str.32, i8 1, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): key length out of range (%i)\0A\00", [60 x i8] zeroinitializer }, align 32
@add_wpa_key.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.15, ptr @.str.33, i8 1, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): recv seq flag without buffer\0A\00", [60 x i8] zeroinitializer }, align 32
@add_wpa_key.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.15, ptr @.str.34, i8 1, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): too big recv seq buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@add_wpa_key.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.15, ptr @.str.35, i8 1, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): pairwise but bssid invalid (%pM)\0A\00", [56 x i8] zeroinitializer }, align 32
@add_wpa_key.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.15, ptr @.str.36, i8 1, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(%i): flags:%i%i%i\0A\00", [42 x i8] zeroinitializer }, align 32
@add_wpa_key.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.15, ptr @.str.37, i8 1, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): RNDIS_OID_802_11_ADD_KEY -> %08X\0A\00", [56 x i8] zeroinitializer }, align 32
@rndis_del_key.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.15, ptr @.str.39, i8 2, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rndis_del_key\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(%i, %pM)\0A\00", [19 x i8] zeroinitializer }, align 32
@remove_key.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.15, ptr @.str.41, i8 1, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"remove_key\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s(): %i:%s:%i\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wpa\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wep\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"removing encryption key %d failed (%08X)\0A\00", [54 x i8] zeroinitializer }, align 32
@rndis_set_default_key.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.15, ptr @.str.46, i8 2, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rndis_set_default_key\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%i)\0A\00", [24 x i8] zeroinitializer }, align 32
@rndis_scan.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.15, ptr @.str.48, i8 1, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rndis_scan\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfg80211.scan\0A\00", [17 x i8] zeroinitializer }, align 32
@rndis_check_bssid_list.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.50, i8 2, i8 1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rndis_check_bssid_list\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@rndis_check_bssid_list.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.51, i8 2, i8 8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(): buflen: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rndis_check_bssid_list.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.52, i8 2, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(): num_items from device: %d, really found: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rndis_bss_info_update.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.15, ptr @.str.54, i8 1, i8 -19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rndis_bss_info_update\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" found bssid: '%.32s' [%pM], len: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported pairwise cipher\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid keymgmt\0A\00", [47 x i8] zeroinitializer }, align 32
@rndis_connect.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.15, ptr @.str.58, i8 2, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rndis_connect\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"cfg80211.connect('%.32s':[%pM]:%d:[%d,0x%x:0x%x]:[0x%x:0x%x]:0x%x)\0A\00", [60 x i8] zeroinitializer }, align 32
@rndis_connect.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.15, ptr @.str.59, i8 2, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"connect: set_infra_mode failed, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rndis_connect.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.15, ptr @.str.60, i8 2, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"connect: set_auth_mode failed, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rndis_connect.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.15, ptr @.str.61, i8 2, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"connect: set_encr_mode failed, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rndis_connect.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.15, ptr @.str.62, i8 2, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"connect: set_channel failed, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rndis_connect.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.15, ptr @.str.63, i8 2, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"connect: add_wep_key failed, %d (%d, %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@rndis_connect.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.15, ptr @.str.64, i8 2, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"connect: set_bssid failed, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rndis_connect.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.15, ptr @.str.65, i8 2, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"connect: set_essid failed, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@set_auth_mode.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.15, ptr @.str.67, i8 1, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_auth_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(): wpa_version=0x%x authalg=0x%x keymgmt=0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setting auth mode failed (%08X)\0A\00", [63 x i8] zeroinitializer }, align 32
@set_priv_filter.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.15, ptr @.str.70, i8 1, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_priv_filter\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(): wpa_version=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@set_channel.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.15, ptr @.str.72, i8 1, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"set_channel\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%d)\0A\00", [24 x i8] zeroinitializer }, align 32
@set_channel.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.15, ptr @.str.73, i8 1, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): querying configuration failed\0A\00", [59 x i8] zeroinitializer }, align 32
@set_channel.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.15, ptr @.str.74, i8 1, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s(): %d -> %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"setting BSSID[%pM] failed (%08X)\0A\00", [62 x i8] zeroinitializer }, align 32
@clear_bssid.broadcast_mac = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"setting SSID failed (%08X)\0A\00", [36 x i8] zeroinitializer }, align 32
@set_essid.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.15, ptr @.str.78, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"set_essid\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): radio_on = true\0A\00", [41 x i8] zeroinitializer }, align 32
@rndis_disconnect.__UNIQUE_ID_ddebug418 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.15, ptr @.str.80, i8 2, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rndis_disconnect\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cfg80211.disconnect(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@rndis_join_ibss.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.15, ptr @.str.82, i8 2, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rndis_join_ibss\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cfg80211.join_ibss('%.32s':[%pM]:%d:%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@rndis_join_ibss.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.15, ptr @.str.83, i8 2, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"join_ibss: set_infra_mode failed, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@rndis_join_ibss.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.15, ptr @.str.84, i8 2, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"join_ibss: set_auth_mode failed, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rndis_join_ibss.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.15, ptr @.str.85, i8 2, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"join_ibss: set_encr_mode failed, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rndis_join_ibss.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.15, ptr @.str.86, i8 2, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"join_ibss: set_channel failed, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rndis_join_ibss.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.15, ptr @.str.87, i8 2, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"join_ibss: set_bssid failed, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rndis_join_ibss.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.15, ptr @.str.88, i8 2, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"join_ibss: set_essid failed, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rndis_leave_ibss.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.15, ptr @.str.90, i8 2, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rndis_leave_ibss\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cfg80211.leave_ibss()\0A\00", [41 x i8] zeroinitializer }, align 32
@rndis_set_tx_power.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.15, ptr @.str.92, i8 1, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rndis_set_tx_power\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(): type:0x%x mbm:%i\0A\00", [40 x i8] zeroinitializer }, align 32
@rndis_get_tx_power.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.15, ptr @.str.94, i8 1, i8 -33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rndis_get_tx_power\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(): dbm:%i\0A\00", [18 x i8] zeroinitializer }, align 32
@rndis_set_pmksa.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.15, ptr @.str.96, i8 2, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rndis_set_pmksa\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(%pM, %08X:%08X:%08X:%08X)\0A\00", [34 x i8] zeroinitializer }, align 32
@get_device_pmkids.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.15, ptr @.str.98, i8 1, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_device_pmkids\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): RNDIS_OID_802_11_PMKID(%d, %d) -> %d\0A\00", [52 x i8] zeroinitializer }, align 32
@update_pmkid.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.15, ptr @.str.100, i8 1, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"update_pmkid\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(): out of space\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.set_device_pmkids = private unnamed_addr constant [18 x i8] c"set_device_pmkids\00", align 1
@set_device_pmkids.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.set_device_pmkids, ptr @.str.15, ptr @.str.98, i8 1, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rndis_del_pmksa.__UNIQUE_ID_ddebug432 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.15, ptr @.str.96, i8 2, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rndis_del_pmksa\00", [16 x i8] zeroinitializer }, align 32
@remove_pmkid.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.15, ptr @.str.103, i8 1, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"remove_pmkid\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): bssid not found (%pM)\0A\00", [35 x i8] zeroinitializer }, align 32
@rndis_flush_pmksa.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.15, ptr @.str.50, i8 2, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rndis_flush_pmksa\00", [46 x i8] zeroinitializer }, align 32
@rndis_set_power_mgmt.__UNIQUE_ID_ddebug434 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.15, ptr @.str.106, i8 2, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rndis_set_power_mgmt\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(): %s, %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@rndis_set_power_mgmt.__UNIQUE_ID_ddebug435 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.15, ptr @.str.109, i8 2, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): RNDIS_OID_802_11_POWER_MODE -> %d\0A\00", [55 x i8] zeroinitializer }, align 32
@rndis_wlan_do_link_up_work.__UNIQUE_ID_ddebug439 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.15, ptr @.str.111, i8 2, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rndis_wlan_do_link_up_work\00", [37 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"link up work: [%pM]%s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" roamed\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@rndis_wlan_craft_connected_bss.__UNIQUE_ID_ddebug436 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.15, ptr @.str.115, i8 2, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rndis_wlan_craft_connected_bss\00", [33 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(): RNDIS_OID_802_11_RSSI -> %d, rssi:%d, qual: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): could not get channel.\0A\00", [34 x i8] zeroinitializer }, align 32
@rndis_wlan_craft_connected_bss.__UNIQUE_ID_ddebug437 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.15, ptr @.str.117, i8 2, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s(): RNDIS_OID_802_11_SSID -> %d, len: %d, ssid: '%.32s'\0A\00", [37 x i8] zeroinitializer }, align 32
@rndis_wlan_craft_connected_bss.__UNIQUE_ID_ddebug438 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.15, ptr @.str.118, i8 2, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"%s(): channel:%d(freq), bssid:[%pM], tsf:%d, capa:%x, beacon int:%d, resp_ie(len:%d, essid:'%.32s'), signal:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@get_current_channel.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.15, ptr @.str.120, i8 1, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_current_channel\00", [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): RNDIS_OID_802_11_CONFIGURATION -> %d\0A\00", [52 x i8] zeroinitializer }, align 32
@set_multicast_list.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.15, ptr @.str.122, i8 1, i8 -105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_multicast_list\00", [45 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"RNDIS_OID_802_3_MULTICAST_LIST(%d, max: %d) -> %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't set packet filter: %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@set_multicast_list.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.15, ptr @.str.124, i8 1, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"RNDIS_OID_GEN_CURRENT_PACKET_FILTER(%08x) -> %d\0A\00", [47 x i8] zeroinitializer }, align 32
@rndis_device_poller.__UNIQUE_ID_ddebug443 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.15, ptr @.str.126, i8 3, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rndis_device_poller\00", [44 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"dev-poller: RNDIS_OID_802_11_RSSI -> %d, rssi:%d, qual: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rndis_get_scan_results.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.15, ptr @.str.128, i8 2, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rndis_get_scan_results\00", [41 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_scan_results\0A\00", [46 x i8] zeroinitializer }, align 32
@rndis_set_oid.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.129, ptr @.str.15, ptr @.str.130, i8 0, i8 -53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rndis_set_oid\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(%s): rndis_command() failed, %d (%08x)\0A\00", [53 x i8] zeroinitializer }, align 32
@rndis_set_oid.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.129, ptr @.str.15, ptr @.str.131, i8 0, i8 -51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(%s): device returned error, 0x%08x (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@rndis_query_oid.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.15, ptr @.str.130, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rndis_query_oid\00", [16 x i8] zeroinitializer }, align 32
@rndis_query_oid.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.15, ptr @.str.134, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(%s): received invalid data offset: %d > %d\0A\00", [49 x i8] zeroinitializer }, align 32
@rndis_query_oid.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.15, ptr @.str.135, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(%s): device returned error,  0x%08x (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@rndis_wlan_get_caps.__UNIQUE_ID_ddebug442 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.15, ptr @.str.137, i8 3, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rndis_wlan_get_caps\00", [44 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"RNDIS_OID_802_11_CAPABILITY -> len %d, ver %d, pmkids %d, auth-encr-pairs %d\0A\00", [50 x i8] zeroinitializer }, align 32
@set_frag_threshold.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.138, ptr @.str.15, ptr @.str.139, i8 1, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_frag_threshold\00", [45 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s(): %i\0A\00", [22 x i8] zeroinitializer }, align 32
@set_rts_threshold.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.140, ptr @.str.15, ptr @.str.139, i8 1, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_rts_threshold\00", [46 x i8] zeroinitializer }, align 32
@disassociate.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.15, ptr @.str.142, i8 1, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disassociate\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(): radio_on = false\0A\00", [40 x i8] zeroinitializer }, align 32
@rndis_wlan_reset.__UNIQUE_ID_ddebug444 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.15, ptr @.str.50, i8 3, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rndis_wlan_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rndis_reset failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@rndis_wlan_stop.__UNIQUE_ID_ddebug445 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.145, ptr @.str.15, ptr @.str.50, i8 3, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rndis_wlan_stop\00", [16 x i8] zeroinitializer }, align 32
@__const.rndis_wlan_stop.info = private unnamed_addr constant { i64, [6 x i8], i8, [1 x i8] } { i64 0, [6 x i8] zeroinitializer, i8 1, [1 x i8] zeroinitializer }, align 8
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Country\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FrameBursting\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Afterburner\00", [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PowerSaveMode\00", [18 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PwrOut\00", [25 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RoamTrigger\00", [20 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RoamDelta\00", [22 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EU\00", [29 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FI\00", [29 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@rndis_set_config_parameter.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.158, ptr @.str.15, ptr @.str.159, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rndis_set_config_parameter\00", [37 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"setting config parameter: %s, value: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@rndis_set_config_parameter.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.158, ptr @.str.15, ptr @.str.161, i8 0, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"setting rndis config parameter failed, %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rndis_wlan_indication.__UNIQUE_ID_ddebug441 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.162, ptr @.str.15, ptr @.str.163, i8 2, i8 -2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rndis_wlan_indication\00", [42 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ignored RNDIS_OID_802_11_ADD_KEY triggered 'media connect'\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"media connect\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"media disconnect\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"indication: 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"media specific indication, ignore too short message (%i < 8)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"media specific indication, too large to fit to buffer (%i > %i)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"radio state indication: %i\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"media stream mode indication: %i\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"media specific indication: unknown status type 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"authentication indication: too short message (%i)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reauth request\00", [17 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"key update request\00", [45 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pairwise_error\00", [17 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"group_error\00", [20 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"authentication indication: %s (0x%08x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"pmkid candidate list indication: too short message (%i)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"pmkid candidate list indication: list larger than buffer (%i < %i)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"pmkid candidate list indication: version %i, candidates %i\0A\00", [36 x i8] zeroinitializer }, align 32
@rndis_wlan_pmkid_cand_list_indication.__UNIQUE_ID_ddebug440 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.182, ptr @.str.15, ptr @.str.183, i8 2, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rndis_wlan_pmkid_cand_list_indication\00", [58 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cand[%i]: flags: 0x%08x, preauth: %d, bssid: %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Wireless RNDIS device, BCM4320a based\00", [58 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Wireless RNDIS device\00", [42 x i8] zeroinitializer }, align 32
@switch.table.rndis_wlan_get_caps = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 2, i32 1, i32 4], [16 x i8] zeroinitializer }, align 32
@switch.table.rndis_connect = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 0, i32 4, i32 1], [44 x i8] zeroinitializer }, align 32
@switch.table.rndis_connect.186 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 0, i32 4, i32 1], [44 x i8] zeroinitializer }, align 32
@switch.table.rndis_set_tx_power = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 7, i32 10, i32 12], [20 x i8] zeroinitializer }, align 32
@switch.table.rndis_get_tx_power = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 7, i32 10, i32 12], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1073807371, i64 1073807372, i64 1073807378]
@__sancov_gen_cov_switch_values.187 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.188 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3221225659, i64 3221291025, i64 3221291026]
@__sancov_gen_cov_switch_values.189 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3221225659, i64 3221291025, i64 3221291026]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.191 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 13]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@__sancov_gen_cov_switch_values.196 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 8]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c"modparam_frameburst\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 40, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant [21 x i8] c"modparam_afterburner\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 44, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant [20 x i8] c"modparam_power_save\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 49, i32 12 }
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"modparam_power_output\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 54, i32 12 }
@___asan_gen_.211 = private unnamed_addr constant [21 x i8] c"modparam_roamtrigger\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 59, i32 12 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"modparam_roamdelta\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 65, i32 12 }
@___asan_gen_.217 = private unnamed_addr constant [29 x i8] c"modparam_workaround_interval\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 71, i32 12 }
@___asan_gen_.220 = private unnamed_addr constant [18 x i8] c"rndis_wlan_driver\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3745, i32 26 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"modparam_country\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 36, i32 13 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3755, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3630, i32 35 }
@___asan_gen_.232 = private unnamed_addr constant [14 x i8] c"bcm4320b_info\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3583, i32 33 }
@___asan_gen_.235 = private unnamed_addr constant [14 x i8] c"bcm4320a_info\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3598, i32 33 }
@___asan_gen_.238 = private unnamed_addr constant [16 x i8] c"rndis_wlan_info\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3613, i32 33 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3584, i32 17 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"rndis_config_ops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 522, i32 34 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3411, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3414, i32 20 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3419, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3420, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3421, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [22 x i8] c"rndis_wlan_netdev_ops\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3374, i32 36 }
@___asan_gen_.289 = private unnamed_addr constant [19 x i8] c"rndis_wiphy_privid\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 544, i32 14 }
@___asan_gen_.292 = private unnamed_addr constant [15 x i8] c"rndis_channels\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 357, i32 39 }
@___asan_gen_.295 = private unnamed_addr constant [12 x i8] c"rndis_rates\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 374, i32 36 }
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c"rndis_cipher_suites\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 389, i32 18 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1190, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1198, i32 28 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1486, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1332, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1357, i32 29 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1365, i32 28 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1155, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1176, i32 28 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2387, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2409, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1388, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1393, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1399, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1404, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1412, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1417, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1456, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2421, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1524, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1556, i32 9 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2433, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1934, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2052, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2082, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2101, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1972, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2152, i32 27 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2162, i32 27 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2166, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2176, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2184, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2193, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2201, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2211, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2221, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2244, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1092, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1121, i32 28 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1136, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1266, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1280, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1290, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 996, i32 28 }
@___asan_gen_.487 = private unnamed_addr constant [14 x i8] c"broadcast_mac\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1006, i32 18 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 978, i32 28 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 983, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2259, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2293, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2301, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2308, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2317, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2325, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2335, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2356, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2371, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1889, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1919, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2510, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1701, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1805, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2538, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1758, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2564, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2587, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2605, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2785, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2646, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2662, i32 28 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2672, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2688, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1308, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1627, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1635, i32 28 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1639, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3217, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2117, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 811, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 819, i32 4 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 661, i32 9 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 723, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 733, i32 4 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 759, i32 4 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3138, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1231, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1216, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1058, i32 4 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3533, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3537, i32 28 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3555, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3356, i32 41 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3357, i32 41 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3358, i32 31 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3358, i32 37 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3359, i32 41 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3361, i32 15 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3362, i32 41 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3364, i32 41 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3366, i32 41 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3368, i32 41 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3289, i32 35 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3290, i32 31 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 890, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 930, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3065, i32 4 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3071, i32 28 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3079, i32 28 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3091, i32 28 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3014, i32 28 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3020, i32 28 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3029, i32 28 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3034, i32 28 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3047, i32 28 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2898, i32 28 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2910, i32 10 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2916, i32 11 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2918, i32 11 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2921, i32 11 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2925, i32 11 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2928, i32 28 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2965, i32 28 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2976, i32 28 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2983, i32 27 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2995, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3599, i32 17 }
@___asan_gen_.814 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.815 = private constant [37 x i8] c"../drivers/net/wireless/rndis_wlan.c\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 3614, i32 17 }
@___asan_gen_.817 = private unnamed_addr constant [33 x i8] c"switch.table.rndis_wlan_get_caps\00", align 1
@___asan_gen_.818 = private unnamed_addr constant [27 x i8] c"switch.table.rndis_connect\00", align 1
@___asan_gen_.819 = private unnamed_addr constant [31 x i8] c"switch.table.rndis_connect.186\00", align 1
@___asan_gen_.820 = private unnamed_addr constant [32 x i8] c"switch.table.rndis_set_tx_power\00", align 1
@___asan_gen_.821 = private unnamed_addr constant [32 x i8] c"switch.table.rndis_get_tx_power\00", align 1
@llvm.compiler.used = appending global [243 x ptr] [ptr @__UNIQUE_ID_afterburner353, ptr @__UNIQUE_ID_afterburnertype352, ptr @__UNIQUE_ID_author447, ptr @__UNIQUE_ID_author448, ptr @__UNIQUE_ID_country349, ptr @__UNIQUE_ID_countrytype348, ptr @__UNIQUE_ID_description449, ptr @__UNIQUE_ID_file450, ptr @__UNIQUE_ID_frameburst351, ptr @__UNIQUE_ID_framebursttype350, ptr @__UNIQUE_ID_license451, ptr @__UNIQUE_ID_power_output357, ptr @__UNIQUE_ID_power_outputtype356, ptr @__UNIQUE_ID_power_save355, ptr @__UNIQUE_ID_power_savetype354, ptr @__UNIQUE_ID_roamdelta361, ptr @__UNIQUE_ID_roamdeltatype360, ptr @__UNIQUE_ID_roamtrigger359, ptr @__UNIQUE_ID_roamtriggertype358, ptr @__UNIQUE_ID_workaround_interval363, ptr @__UNIQUE_ID_workaround_intervaltype362, ptr @__exitcall_rndis_wlan_driver_exit, ptr @__initcall__kmod_rndis_wlan__446_3755_rndis_wlan_driver_init6, ptr @__param_afterburner, ptr @__param_country, ptr @__param_frameburst, ptr @__param_power_output, ptr @__param_power_save, ptr @__param_roamdelta, ptr @__param_roamtrigger, ptr @__param_workaround_interval, ptr @rndis_wlan_driver_exit, ptr @modparam_frameburst, ptr @modparam_afterburner, ptr @modparam_power_save, ptr @modparam_power_output, ptr @modparam_roamtrigger, ptr @modparam_roamdelta, ptr @modparam_workaround_interval, ptr @rndis_wlan_driver, ptr @modparam_country, ptr @.str, ptr @products, ptr @bcm4320b_info, ptr @bcm4320a_info, ptr @rndis_wlan_info, ptr @.str.1, ptr @rndis_config_ops, ptr @rndis_wlan_bind.__key, ptr @.str.2, ptr @.str.3, ptr @rndis_wlan_bind.__key.4, ptr @.str.5, ptr @rndis_wlan_bind.__key.6, ptr @.str.7, ptr @rndis_wlan_bind.__key.8, ptr @.str.9, ptr @rndis_wlan_bind.__key.10, ptr @.str.11, ptr @rndis_wlan_bind.__key.12, ptr @.str.13, ptr @rndis_wlan_netdev_ops, ptr @rndis_wiphy_privid, ptr @rndis_channels, ptr @rndis_rates, ptr @rndis_cipher_suites, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @clear_bssid.broadcast_mac, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @switch.table.rndis_wlan_get_caps, ptr @switch.table.rndis_connect, ptr @switch.table.rndis_connect.186, ptr @switch.table.rndis_set_tx_power, ptr @switch.table.rndis_get_tx_power], section "llvm.metadata"
@0 = internal global [211 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_frameburst to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_afterburner to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_power_save to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_power_output to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_roamtrigger to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_roamdelta to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_workaround_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_wlan_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_country to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4320b_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4320a_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_wlan_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_config_ops to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_wlan_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_wlan_bind.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_wlan_bind.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_wlan_bind.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_wlan_bind.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_wlan_bind.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_wlan_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_wiphy_privid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_cipher_suites to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_bssid.broadcast_mac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rndis_wlan_get_caps to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rndis_connect to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rndis_connect.186 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rndis_set_tx_power to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rndis_get_tx_power to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_wlan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @rndis_wlan_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rndis_wlan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_deregister(ptr noundef nonnull @rndis_wlan_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_wlan_bind(ptr noundef %usbdev, ptr noundef %intf) #2 align 64 {
entry:
  %len = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #13
  %call.i = tail call ptr @wiphy_new_nm(ptr noundef nonnull @rndis_config_ops, i32 noundef 3692, ptr noundef null) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %wiphy_priv.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 86
  %wdev = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 0, i32 1
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %2 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wdev, ptr %ieee80211_ptr, align 16
  %3 = ptrtoint ptr %wdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %wdev, align 4
  %iftype = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %iftype, align 4
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %5 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %priv.i, ptr %driver_priv, align 4
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %usbdev, ptr %priv.i, align 4
  %command_lock = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4, i32 6
  tail call void @__mutex_init(ptr noundef %command_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @rndis_wlan_bind.__key) #13
  %call7 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str) #13
  %workqueue = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %7 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %workqueue, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.then10, label %do.body12

if.then10:                                        ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @wiphy_free(ptr noundef nonnull %call.i) #13
  br label %cleanup

do.body12:                                        ; preds = %wiphy_priv.exit
  %work = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 29
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #13
  %8 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 31, i32 0, i32 0, i32 2
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @rndis_wlan_bind.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry16 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 30
  %9 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 31
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 31, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rndis_wlan_worker, ptr %func, align 4
  %dev_poller_work = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 2
  tail call void @__init_work(ptr noundef %dev_poller_work, i32 noundef 0) #13
  %12 = ptrtoint ptr %dev_poller_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %dev_poller_work, align 4
  %lockdep_map30 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 12, i32 11, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map30, ptr noundef nonnull @.str.7, ptr noundef nonnull @rndis_wlan_bind.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry33 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i202 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %prev.i202 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry33, ptr %prev.i202, align 4
  %func36 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 7
  %15 = ptrtoint ptr %func36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rndis_device_poller, ptr %func36, align 4
  %timer = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 12, i32 17
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @rndis_wlan_bind.__key.8) #13
  %scan_work = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 12, i32 27
  tail call void @__init_work(ptr noundef %scan_work, i32 noundef 0) #13
  %16 = ptrtoint ptr %scan_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %scan_work, align 4
  %lockdep_map55 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 14
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map55, ptr noundef nonnull @.str.11, ptr noundef nonnull @rndis_wlan_bind.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry58 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 12, i32 28
  %17 = ptrtoint ptr %entry58 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry58, ptr %entry58, align 4
  %prev.i203 = getelementptr inbounds %struct.list_head, ptr %entry58, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i203 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry58, ptr %prev.i203, align 4
  %func61 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 13
  %19 = ptrtoint ptr %func61 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rndis_get_scan_results, ptr %func61, align 4
  %timer66 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 56, i32 19
  tail call void @init_timer_key(ptr noundef %timer66, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.13, ptr noundef nonnull @rndis_wlan_bind.__key.12) #13
  %call71 = tail call i32 @generic_rndis_bind(ptr noundef %usbdev, ptr noundef %intf, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp = icmp slt i32 %call71, 0
  br i1 %cmp, label %do.body12.fail_crit_edge, label %if.end73

do.body12.fail_crit_edge:                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end73:                                         ; preds = %do.body12
  %20 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @rndis_wlan_netdev_ops, ptr %netdev_ops, align 8
  %23 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 150994944, ptr %tmp, align 4
  %call75 = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 65806, ptr noundef nonnull %tmp, i32 noundef 4)
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %len, align 4
  %call76 = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 16843012, ptr noundef nonnull %tmp, ptr noundef nonnull %len)
  %25 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmp, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %multicast_size = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 2, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp79 = icmp slt i32 %27, 0
  %or.cond = select i1 %cmp77, i1 true, i1 %cmp79
  %spec.store.select = select i1 %or.cond, i32 0, i32 %27
  %28 = ptrtoint ptr %multicast_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.store.select, ptr %multicast_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp84.not = icmp eq i32 %spec.store.select, 0
  %29 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net, align 4
  %flags88 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags88, align 8
  %and = and i32 %32, -4097
  %masksel = select i1 %cmp84.not, i32 0, i32 4096
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %flags88, align 8
  %perm_addr = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 1
  %33 = load ptr, ptr %net, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 86
  %34 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_addr, align 64
  %36 = call ptr @memcpy(ptr %perm_addr, ptr %35, i32 6)
  %37 = load ptr, ptr @rndis_wiphy_privid, align 4
  %privid = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 52
  %38 = ptrtoint ptr %privid to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %privid, align 4
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 9
  %39 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 6, ptr %interface_modes, align 4
  %max_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 18
  %40 = ptrtoint ptr %max_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %max_scan_ssids, align 32
  tail call fastcc void @rndis_wlan_get_caps(ptr noundef %usbdev, ptr noundef nonnull %call.i)
  %channels = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 2, i32 0, i32 1, i32 3
  %41 = call ptr @memcpy(ptr %channels, ptr @rndis_channels, i32 784)
  %rates = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 2, i32 56, i32 12, i32 5, i32 1, i32 0, i32 3
  %42 = call ptr @memcpy(ptr %rates, ptr @rndis_rates, i32 144)
  %band = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 74
  %43 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %channels, ptr %band, align 4
  %n_channels = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 77
  %44 = ptrtoint ptr %n_channels to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 14, ptr %n_channels, align 4
  %bitrates = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 75
  %45 = ptrtoint ptr %bitrates to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %rates, ptr %bitrates, align 4
  %n_bitrates = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 78
  %46 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 12, ptr %n_bitrates, align 4
  %bands = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 53
  %47 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %band, ptr %bands, align 16
  %signal_type = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 16
  %48 = ptrtoint ptr %signal_type to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %signal_type, align 8
  %cipher_suites = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 2, i32 56, i32 12, i32 10, i32 3, i32 7
  %49 = call ptr @memcpy(ptr %cipher_suites, ptr @rndis_cipher_suites, i32 16)
  %cipher_suites106 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 28
  %50 = ptrtoint ptr %cipher_suites106 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %cipher_suites, ptr %cipher_suites106, align 8
  %n_cipher_suites = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 27
  %51 = ptrtoint ptr %n_cipher_suites to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %n_cipher_suites, align 4
  %52 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %usbdev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 15
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 56, i32 1
  %54 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %dev, ptr %parent.i, align 8
  %call107 = tail call i32 @wiphy_register(ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end73.fail_crit_edge

if.end73.fail_crit_edge:                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end110:                                        ; preds = %if.end73
  tail call fastcc void @set_default_iw_params(ptr noundef %usbdev)
  %power_mode = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 2, i32 56, i32 12, i32 14
  %55 = ptrtoint ptr %power_mode to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %power_mode, align 4
  %call111 = tail call i32 @rndis_set_wiphy_params(ptr noundef nonnull %call.i, i32 noundef 12)
  %radio_on = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 2, i32 56, i32 12, i32 13
  %56 = ptrtoint ptr %radio_on to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %radio_on, align 4
  %57 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver_priv, align 4
  %radio_on.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %58, i32 0, i32 28
  %59 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %radio_on.i, align 4, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i204 = icmp eq i8 %60, 0
  br i1 %tobool.not.i204, label %if.end110.disassociate.exit_crit_edge, label %if.then.i

if.end110.disassociate.exit_crit_edge:            ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #15
  br label %disassociate.exit

if.then.i:                                        ; preds = %if.end110
  %call1.i = tail call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169621, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.disassociate.exit_crit_edge

if.then.i.disassociate.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disassociate.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %radio_on.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disassociate.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_bind, %if.then10.i)) #13
          to label %disassociate.exit [label %if.then10.i], !srcloc !512

if.then10.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @disassociate.__UNIQUE_ID_ddebug373, ptr noundef %63, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141) #13
  br label %disassociate.exit

disassociate.exit:                                ; preds = %if.then10.i, %if.then2.i, %if.then.i.disassociate.exit_crit_edge, %if.end110.disassociate.exit_crit_edge
  %64 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %net, align 4
  tail call void @netif_carrier_off(ptr noundef %65) #13
  br label %cleanup

fail:                                             ; preds = %if.end73.fail_crit_edge, %do.body12.fail_crit_edge
  %retval1.0 = phi i32 [ %call71, %do.body12.fail_crit_edge ], [ -19, %if.end73.fail_crit_edge ]
  %call115 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dev_poller_work) #13
  %call117 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %scan_work) #13
  %call119 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #13
  %66 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %67) #13
  tail call void @wiphy_free(ptr noundef nonnull %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %fail, %disassociate.exit, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %fail ], [ 0, %disassociate.exit ], [ -12, %if.then10 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_wlan_unbind(ptr noundef %usbdev, ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  %radio_on.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %radio_on.i, align 4, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.disassociate.exit_crit_edge, label %if.then.i

entry.disassociate.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %disassociate.exit

if.then.i:                                        ; preds = %entry
  %call1.i = tail call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169621, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.disassociate.exit_crit_edge

if.then.i.disassociate.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disassociate.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %radio_on.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disassociate.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_unbind, %if.then10.i)) #13
          to label %disassociate.exit [label %if.then10.i], !srcloc !512

if.then10.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %5 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @disassociate.__UNIQUE_ID_ddebug373, ptr noundef %6, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141) #13
  br label %disassociate.exit

disassociate.exit:                                ; preds = %if.then10.i, %if.then2.i, %if.then.i.disassociate.exit_crit_edge, %entry.disassociate.exit_crit_edge
  %dev_poller_work = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 4
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dev_poller_work) #13
  %scan_work = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 5
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %scan_work) #13
  %work = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 6
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #13
  %workqueue = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %8) #13
  tail call void @rndis_unbind(ptr noundef %usbdev, ptr noundef %intf) #13
  %wdev = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wdev, align 4
  tail call void @wiphy_unregister(ptr noundef %10) #13
  %11 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wdev, align 4
  tail call void @wiphy_free(ptr noundef %12) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_wlan_reset(ptr noundef %usbdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_wlan_reset.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_reset, %if.then)) #13
          to label %do.end7 [label %if.then], !srcloc !512

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_wlan_reset.__UNIQUE_ID_ddebug444, ptr noundef %3, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.143) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %4 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_priv.i, align 4
  %command_lock.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %5, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %command_lock.i, i32 noundef 0) #13
  %command_buffer.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %5, i32 0, i32 37
  %6 = getelementptr inbounds %struct.rndis_wlan_private, ptr %5, i32 0, i32 37, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %6, align 1
  %8 = ptrtoint ptr %command_buffer.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 100663296, ptr %command_buffer.i, align 1
  %msg_len.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %5, i32 0, i32 37, i32 4
  %9 = ptrtoint ptr %msg_len.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 201326592, ptr %msg_len.i, align 1
  %current_command_oid.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %5, i32 0, i32 33
  %10 = ptrtoint ptr %current_command_oid.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %current_command_oid.i, align 4
  %call1.i = tail call i32 @rndis_command(ptr noundef %usbdev, ptr noundef %command_buffer.i, i32 noundef 1025) #13
  tail call void @mutex_unlock(ptr noundef %command_lock.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %tobool9.not = icmp sgt i32 %call1.i, -1
  br i1 %tobool9.not, label %do.end7.if.end12_crit_edge, label %if.then10

do.end7.if.end12_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  %net11 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %11 = ptrtoint ptr %net11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net11, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.144, i32 noundef %call1.i) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end7.if.end12_crit_edge
  tail call fastcc void @set_multicast_list(ptr noundef %usbdev)
  %workqueue = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %workqueue, align 4
  %dev_poller_work = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 4
  %call13 = tail call i32 @round_jiffies_relative(i32 noundef 100) #13
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %dev_poller_work, i32 noundef %call13) #13
  %call.i23 = tail call fastcc i32 @disassociate(ptr noundef %usbdev, i1 noundef zeroext true) #13
  tail call fastcc void @set_default_iw_params(ptr noundef %usbdev) #13
  ret i32 %call.i23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_wlan_stop(ptr noundef %usbdev) #2 align 64 {
entry:
  %filter = alloca i32, align 4
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filter) #13
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %filter, align 4, !annotation !513
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_wlan_stop.__UNIQUE_ID_ddebug445, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_stop, %if.then)) #13
          to label %do.end7 [label %if.then], !srcloc !512

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_wlan_stop.__UNIQUE_ID_ddebug445, ptr noundef %4, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.145) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %5 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_priv.i, align 4
  %radio_on.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %6, i32 0, i32 28
  %7 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %radio_on.i, align 4, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %do.end7.disassociate.exit_crit_edge, label %if.then.i

do.end7.disassociate.exit_crit_edge:              ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %disassociate.exit

if.then.i:                                        ; preds = %do.end7
  %call1.i = tail call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169621, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.disassociate.exit_crit_edge

if.then.i.disassociate.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disassociate.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %radio_on.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disassociate.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_stop, %if.then10.i)) #13
          to label %disassociate.exit [label %if.then10.i], !srcloc !512

if.then10.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %10 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @disassociate.__UNIQUE_ID_ddebug373, ptr noundef %11, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141) #13
  br label %disassociate.exit

disassociate.exit:                                ; preds = %if.then10.i, %if.then2.i, %if.then.i.disassociate.exit_crit_edge, %do.end7.disassociate.exit_crit_edge
  %ret.1.i = phi i32 [ 0, %if.then10.i ], [ 0, %if.then2.i ], [ %call1.i, %if.then.i.disassociate.exit_crit_edge ], [ 0, %do.end7.disassociate.exit_crit_edge ]
  %work_pending = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %work_pending to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %work_pending, align 4
  %dev_poller_work = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 4
  %call9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dev_poller_work) #13
  %scan_work = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 5
  %call10 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %scan_work) #13
  %work = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 6
  %call11 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #13
  %workqueue = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %14) #13
  %scan_request = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scan_request, align 4
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %disassociate.exit.if.end16_crit_edge, label %if.then13

disassociate.exit.if.end16_crit_edge:             ; preds = %disassociate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then13:                                        ; preds = %disassociate.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #13
  %17 = call ptr @memcpy(ptr %info, ptr @__const.rndis_wlan_stop.info, i32 16)
  call void @cfg80211_scan_done(ptr noundef nonnull %16, ptr noundef nonnull %info) #13
  %18 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %scan_request, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %disassociate.exit.if.end16_crit_edge
  %19 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %filter, align 4
  %call17 = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 65806, ptr noundef nonnull %filter, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #13
  ret i32 %ret.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_rx_fixup(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rndis_tx_fixup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm4320b_early_init(ptr noundef %usbdev) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #13
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %buf, align 8
  tail call fastcc void @rndis_copy_module_params(ptr noundef %usbdev, i32 noundef 2)
  %param_country = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 20
  tail call fastcc void @rndis_set_config_parameter(ptr noundef %usbdev, ptr noundef nonnull @.str.146, ptr noundef %param_country) #13
  %param_frameburst = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 21
  %3 = ptrtoint ptr %param_frameburst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %param_frameburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, ptr @.str.149, ptr @.str.148
  tail call fastcc void @rndis_set_config_parameter(ptr noundef %usbdev, ptr noundef nonnull @.str.147, ptr noundef nonnull %cond) #13
  %param_afterburner = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %param_afterburner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %param_afterburner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  %cond4 = select i1 %tobool3.not, ptr @.str.149, ptr @.str.148
  tail call fastcc void @rndis_set_config_parameter(ptr noundef %usbdev, ptr noundef nonnull @.str.150, ptr noundef nonnull %cond4) #13
  %param_power_save = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %param_power_save to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %param_power_save, align 4
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.151, i32 noundef %8)
  call fastcc void @rndis_set_config_parameter(ptr noundef %usbdev, ptr noundef nonnull @.str.152, ptr noundef nonnull %buf) #13
  %param_power_output = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %param_power_output to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %param_power_output, align 4
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.151, i32 noundef %10)
  call fastcc void @rndis_set_config_parameter(ptr noundef %usbdev, ptr noundef nonnull @.str.153, ptr noundef nonnull %buf) #13
  %param_roamtrigger = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 25
  %11 = ptrtoint ptr %param_roamtrigger to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %param_roamtrigger, align 4
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.151, i32 noundef %12)
  call fastcc void @rndis_set_config_parameter(ptr noundef %usbdev, ptr noundef nonnull @.str.154, ptr noundef nonnull %buf) #13
  %param_roamdelta = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 26
  %13 = ptrtoint ptr %param_roamdelta to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %param_roamdelta, align 4
  %call19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.151, i32 noundef %14)
  call fastcc void @rndis_set_config_parameter(ptr noundef %usbdev, ptr noundef nonnull @.str.155, ptr noundef nonnull %buf) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_wlan_indication(ptr noundef %usbdev, ptr noundef %ind, i32 noundef %buflen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  %status = getelementptr inbounds %struct.rndis_indicate, ptr %ind, i32 0, i32 2
  %2 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %status, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %sw.default [
    i32 1073807371, label %sw.bb
    i32 1073807372, label %sw.bb11
    i32 1073807378, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  %current_command_oid = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %current_command_oid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_command_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 218169629, i32 %7)
  %cmp = icmp eq i32 %7, 218169629
  br i1 %cmp, label %do.body1, label %if.end8

do.body1:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_wlan_indication.__UNIQUE_ID_ddebug441, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_indication, %if.then5)) #13
          to label %cleanup [label %if.then5], !srcloc !512

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_wlan_indication.__UNIQUE_ID_ddebug441, ptr noundef %9, ptr noundef nonnull @.str.163) #13
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usbnet_pause_rx(ptr noundef %usbdev) #13
  %net9 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %10 = ptrtoint ptr %net9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net9, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %11, ptr noundef nonnull @.str.164) #16
  %work_pending = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %work_pending) #13
  %workqueue = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %workqueue, align 4
  %work = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 6
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %work) #13
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net12 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %14 = ptrtoint ptr %net12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net12, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %15, ptr noundef nonnull @.str.165) #16
  %work_pending13 = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %work_pending13) #13
  %workqueue14 = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %workqueue14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %workqueue14, align 4
  %work15 = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 6
  %call.i35 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %work15) #13
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %offset1.i = getelementptr inbounds %struct.rndis_indicate, ptr %ind, i32 0, i32 4
  %18 = ptrtoint ptr %offset1.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %offset1.i, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #13
  %add.i = add i32 %20, 8
  %length.i = getelementptr inbounds %struct.rndis_indicate, ptr %ind, i32 0, i32 3
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %length.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %23)
  %cmp.i = icmp ult i32 %23, 8
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %24 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %25, ptr noundef nonnull @.str.167, i32 noundef %23) #16
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %buflen)
  %cmp2.i = icmp ugt i32 %23, %buflen
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %buflen)
  %cmp3.i = icmp ugt i32 %add.i, %buflen
  %or.cond.i = select i1 %cmp2.i, i1 true, i1 %cmp3.i
  %add5.i = add i32 %add.i, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %buflen)
  %cmp6.i = icmp ugt i32 %add5.i, %buflen
  %or.cond46.i = select i1 %or.cond.i, i1 true, i1 %cmp6.i
  br i1 %or.cond46.i, label %if.then7.i, label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %net8.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %26 = ptrtoint ptr %net8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net8.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.168, i32 noundef %add5.i, i32 noundef %buflen) #16
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %ind, i32 %add.i
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %add.ptr.i, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %30, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 1, label %sw.bb12.i
    i32 0, label %sw.bb15.i
    i32 2, label %sw.bb16.i
  ]

sw.bb.i:                                          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %net11.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %32 = ptrtoint ptr %net11.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net11.i, align 4
  %u.i = getelementptr inbounds %struct.ndis_80211_status_indication, ptr %add.ptr.i, i32 0, i32 1
  %34 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %u.i, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %33, ptr noundef nonnull @.str.169, i32 noundef %36) #16
  br label %cleanup

sw.bb12.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %net13.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %37 = ptrtoint ptr %net13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net13.i, align 4
  %u14.i = getelementptr inbounds %struct.ndis_80211_status_indication, ptr %add.ptr.i, i32 0, i32 1
  %39 = ptrtoint ptr %u14.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %u14.i, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %38, ptr noundef nonnull @.str.170, i32 noundef %41) #16
  br label %cleanup

sw.bb15.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %23)
  %cmp.i.i = icmp ult i32 %23, 20
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.lr.ph.i.i

if.then.i.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #15
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %42 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %43, ptr noundef nonnull @.str.172, i32 noundef %23) #16
  br label %cleanup

while.body.lr.ph.i.i:                             ; preds = %sw.bb15.i
  %sub.i.i = add i32 %23, -4
  %u.i.i = getelementptr inbounds %struct.ndis_80211_status_indication, ptr %add.ptr.i, i32 0, i32 1
  %net20.i.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end31.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %buflen.064.i.i = phi i32 [ %sub.i.i, %while.body.lr.ph.i.i ], [ %sub33.i.i, %if.end31.i.i.while.body.i.i_crit_edge ]
  %buf.063.i.i = phi ptr [ %u.i.i, %while.body.lr.ph.i.i ], [ %add.ptr.i.i, %if.end31.i.i.while.body.i.i_crit_edge ]
  %44 = ptrtoint ptr %buf.063.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %buf.063.i.i, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %buflen.064.i.i, i32 %46)
  %cmp2.i.i = icmp ult i32 %buflen.064.i.i, %46
  br i1 %cmp2.i.i, label %while.body.i.i.cleanup_crit_edge, label %if.end4.i.i

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4.i.i:                                      ; preds = %while.body.i.i
  %flags5.i.i = getelementptr inbounds %struct.ndis_80211_auth_request, ptr %buf.063.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %flags5.i.i, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #13
  %and.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr @.str.173, ptr @.str.174
  %and8.i.i = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  %type.1.i.i = select i1 %tobool9.not.i.i, ptr %spec.select.i.i, ptr @.str.175
  %and12.i.i = and i32 %49, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  %type.2.i.i = select i1 %tobool13.not.i.i, ptr %type.1.i.i, ptr @.str.176
  %and16.i.i = and i32 %49, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  %type.3.i.i = select i1 %tobool17.not.i.i, ptr %type.2.i.i, ptr @.str.177
  %50 = ptrtoint ptr %net20.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net20.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %51, ptr noundef nonnull @.str.178, ptr noundef nonnull %type.3.i.i, i32 noundef %49) #16
  br i1 %tobool13.not.i.i, label %if.end4.i.i.if.end25.i.i_crit_edge, label %if.then23.i.i

if.end4.i.i.if.end25.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i.i

if.then23.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %net20.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %net20.i.i, align 4
  %bssid.i.i = getelementptr inbounds %struct.ndis_80211_auth_request, ptr %buf.063.i.i, i32 0, i32 1
  tail call void @cfg80211_michael_mic_failure(ptr noundef %53, ptr noundef %bssid.i.i, i32 noundef 1, i32 noundef -1, ptr noundef null, i32 noundef 3264) #13
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then23.i.i, %if.end4.i.i.if.end25.i.i_crit_edge
  br i1 %tobool17.not.i.i, label %if.end25.i.i.if.end31.i.i_crit_edge, label %if.then27.i.i

if.end25.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i.i

if.then27.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %net20.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net20.i.i, align 4
  %bssid29.i.i = getelementptr inbounds %struct.ndis_80211_auth_request, ptr %buf.063.i.i, i32 0, i32 1
  tail call void @cfg80211_michael_mic_failure(ptr noundef %55, ptr noundef %bssid29.i.i, i32 noundef 0, i32 noundef -1, ptr noundef null, i32 noundef 3264) #13
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then27.i.i, %if.end25.i.i.if.end31.i.i_crit_edge
  %56 = ptrtoint ptr %buf.063.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %buf.063.i.i, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #13
  %sub33.i.i = sub i32 %buflen.064.i.i, %58
  %add.ptr.i.i = getelementptr i8, ptr %buf.063.i.i, i32 %58
  %cmp1.i.i = icmp ugt i32 %sub33.i.i, 15
  br i1 %cmp1.i.i, label %if.end31.i.i.while.body.i.i_crit_edge, label %if.end31.i.i.cleanup_crit_edge

if.end31.i.i.cleanup_crit_edge:                   ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31.i.i.while.body.i.i_crit_edge:            ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

sw.bb16.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rndis_wlan_pmkid_cand_list_indication(ptr noundef %usbdev, ptr noundef %add.ptr.i, i32 noundef %23) #13
  br label %cleanup

sw.default.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %net17.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %59 = ptrtoint ptr %net17.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net17.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %60, ptr noundef nonnull @.str.171, i32 noundef %30) #16
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net18 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %61 = ptrtoint ptr %net18 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %net18, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %62, ptr noundef nonnull @.str.166, i32 noundef %4) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.default.i, %sw.bb16.i, %if.end31.i.i.cleanup_crit_edge, %while.body.i.i.cleanup_crit_edge, %if.then.i.i, %sw.bb12.i, %sw.bb.i, %if.then7.i, %if.then.i, %sw.bb11, %if.end8, %if.then5, %do.body1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_wlan_worker(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1176
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %work_pending = getelementptr i8, ptr %work, i32 136
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %work_pending) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rndis_wlan_do_link_up_work(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %work_pending) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.end
  %driver_priv.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv.i.i, align 4
  %connected.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %connected.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %connected.i, align 4, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then5.rndis_wlan_do_link_down_work.exit_crit_edge, label %if.then.i

if.then5.rndis_wlan_do_link_down_work.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %rndis_wlan_do_link_down_work.exit

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %6 = call ptr @memset(ptr %connected.i, i32 0, i32 7)
  %call.i.i = tail call fastcc i32 @disassociate(ptr noundef %1, i1 noundef zeroext true) #13
  tail call fastcc void @set_default_iw_params(ptr noundef %1) #13
  %net.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i, align 4
  tail call void @cfg80211_disconnected(ptr noundef %8, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i32 noundef 3264) #13
  br label %rndis_wlan_do_link_down_work.exit

rndis_wlan_do_link_down_work.exit:                ; preds = %if.then.i, %if.then5.rndis_wlan_do_link_down_work.exit_crit_edge
  %net3.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %net3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net3.i, align 4
  tail call void @netif_carrier_off(ptr noundef %10) #13
  br label %if.end6

if.end6:                                          ; preds = %rndis_wlan_do_link_down_work.exit, %if.end.if.end6_crit_edge
  %call8 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %work_pending) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.if.end11_crit_edge, label %if.then10

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @set_multicast_list(ptr noundef %1)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_device_poller(ptr noundef %work) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %len.i.i = alloca i32, align 4
  %bssid.i = alloca [6 x i8], align 4
  %rssi = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -976
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rssi) #13
  %2 = ptrtoint ptr %rssi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rssi, align 4, !annotation !513
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2) #13
  %3 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp2, align 4, !annotation !513
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #13
  %driver_priv.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bssid.i) #13
  %6 = getelementptr inbounds [6 x i8], ptr %bssid.i, i32 0, i32 4
  %radio_on.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %5, i32 0, i32 28
  %7 = call ptr @memset(ptr %bssid.i, i32 255, i32 6)
  %8 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %radio_on.i, align 4, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.is_associated.exit.thread_crit_edge, label %if.end.i90

entry.is_associated.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_associated.exit.thread

if.end.i90:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #13
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %len.i.i, align 4
  %call.i.i = call fastcc i32 @rndis_query_oid(ptr noundef %1, i32 noundef 218169601, ptr noundef nonnull %bssid.i, ptr noundef nonnull %len.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #13
  br i1 %cmp.not.i.i, label %is_associated.exit, label %if.end.i90.is_associated.exit.thread_crit_edge

if.end.i90.is_associated.exit.thread_crit_edge:   ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_associated.exit.thread

is_associated.exit.thread:                        ; preds = %if.end.i90.is_associated.exit.thread_crit_edge, %entry.is_associated.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid.i) #13
  br label %if.then

is_associated.exit:                               ; preds = %if.end.i90
  %11 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bssid.i, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %6, align 4
  %conv.i.i = zext i16 %14 to i32
  %or.i.i = or i32 %12, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid.i) #13
  br i1 %cmp.i.i.not, label %is_associated.exit.if.then_crit_edge, label %if.end8

is_associated.exit.if.then_crit_edge:             ; preds = %is_associated.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %is_associated.exit.if.then_crit_edge, %is_associated.exit.thread
  %device_type = getelementptr i8, ptr %work, i32 1392
  %15 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %land.lhs.true, label %if.then.if.then46_crit_edge

if.then.if.then46_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

land.lhs.true:                                    ; preds = %if.then
  %radio_on = getelementptr i8, ptr %work, i32 1436
  %17 = ptrtoint ptr %radio_on to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %radio_on, align 4, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %land.lhs.true.if.then46_crit_edge, label %land.lhs.true3

land.lhs.true.if.then46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

land.lhs.true3:                                   ; preds = %land.lhs.true
  %scan_request = getelementptr i8, ptr %work, i32 -8
  %19 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %scan_request, align 4
  %tobool4.not = icmp eq ptr %20, null
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true3.if.then46_crit_edge

land.lhs.true3.if.then46_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call fastcc i32 @rndis_check_bssid_list(ptr noundef %1, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  %21 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16777216, ptr %tmp.i, align 4
  %call.i = call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169626, ptr noundef nonnull %tmp.i, i32 noundef 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  br label %if.then46

if.end8:                                          ; preds = %is_associated.exit
  %22 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %len, align 4
  %call9 = call fastcc i32 @rndis_query_oid(ptr noundef %1, i32 noundef 218169862, ptr noundef nonnull %rssi, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end8.do.body14_crit_edge

if.end8.do.body14_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14

if.then11:                                        ; preds = %if.end8
  %23 = ptrtoint ptr %rssi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rssi, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = mul i32 %25, 100
  %mul.i = add i32 %26, 9600
  %div.i = sdiv i32 %mul.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %mul.i)
  %cmp.i92 = icmp sgt i32 %mul.i, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 6464, i32 %mul.i)
  %cmp1.i = icmp slt i32 %mul.i, 6464
  %spec.select.i = select i1 %cmp1.i, i32 %div.i, i32 100
  %cond5.i = select i1 %cmp.i92, i32 %spec.select.i, i32 0
  %last_qual = getelementptr i8, ptr %work, i32 340
  %27 = ptrtoint ptr %last_qual to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond5.i, ptr %last_qual, align 4
  %28 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_priv.i.i, align 4
  %cqm_rssi_thold.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %cqm_rssi_thold.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cqm_rssi_thold.i, align 4
  %32 = and i32 %31, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %.not.i = icmp slt i32 %32, 0
  br i1 %.not.i, label %if.end.i94, label %if.then11.do.body14_crit_edge

if.then11.do.body14_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14

if.end.i94:                                       ; preds = %if.then11
  %infra_mode.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %29, i32 0, i32 30
  %33 = ptrtoint ptr %infra_mode.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %infra_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp2.not.i = icmp eq i32 %34, 1
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i94.do.body14_crit_edge

if.end.i94.do.body14_crit_edge:                   ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14

if.end4.i:                                        ; preds = %if.end.i94
  %last_cqm_event_rssi.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %29, i32 0, i32 12
  %35 = ptrtoint ptr %last_cqm_event_rssi.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_cqm_event_rssi.i, align 4
  %cqm_rssi_hyst.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %29, i32 0, i32 11
  %37 = ptrtoint ptr %cqm_rssi_hyst.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cqm_rssi_hyst.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %25)
  %cmp6.i = icmp ugt i32 %31, %25
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end4.i.if.else.i95_crit_edge

if.end4.i.if.else.i95_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i95

land.lhs.true.i:                                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp7.i = icmp eq i32 %36, 0
  %sub.i = sub i32 %36, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %25)
  %cmp9.i = icmp sgt i32 %sub.i, %25
  %or.cond43.i = select i1 %cmp7.i, i1 true, i1 %cmp9.i
  br i1 %or.cond43.i, label %land.lhs.true.i.if.end19.i_crit_edge, label %land.lhs.true.i.if.else.i95_crit_edge

land.lhs.true.i.if.else.i95_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i95

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.else.i95:                                      ; preds = %land.lhs.true.i.if.else.i95_crit_edge, %if.end4.i.if.else.i95_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %25)
  %cmp11.i = icmp ult i32 %31, %25
  br i1 %cmp11.i, label %land.lhs.true12.i, label %if.else.i95.do.body14_crit_edge

if.else.i95.do.body14_crit_edge:                  ; preds = %if.else.i95
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14

land.lhs.true12.i:                                ; preds = %if.else.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp13.i = icmp eq i32 %36, 0
  %add.i = add i32 %38, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %25)
  %cmp15.i = icmp slt i32 %add.i, %25
  %or.cond44.i = select i1 %cmp13.i, i1 true, i1 %cmp15.i
  br i1 %or.cond44.i, label %land.lhs.true12.i.if.end19.i_crit_edge, label %land.lhs.true12.i.do.body14_crit_edge

land.lhs.true12.i.do.body14_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14

land.lhs.true12.i.if.end19.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.end19.i:                                       ; preds = %land.lhs.true12.i.if.end19.i_crit_edge, %land.lhs.true.i.if.end19.i_crit_edge
  %event.0.i = phi i32 [ 0, %land.lhs.true.i.if.end19.i_crit_edge ], [ 1, %land.lhs.true12.i.if.end19.i_crit_edge ]
  %39 = ptrtoint ptr %last_cqm_event_rssi.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %25, ptr %last_cqm_event_rssi.i, align 4
  %net.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %40 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net.i, align 4
  tail call void @cfg80211_cqm_rssi_notify(ptr noundef %41, i32 noundef %event.0.i, i32 noundef %25, i32 noundef 3264) #13
  br label %do.body14

do.body14:                                        ; preds = %if.end19.i, %land.lhs.true12.i.do.body14_crit_edge, %if.else.i95.do.body14_crit_edge, %if.end.i94.do.body14_crit_edge, %if.then11.do.body14_crit_edge, %if.end8.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_device_poller.__UNIQUE_ID_ddebug443, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_device_poller, %if.then20)) #13
          to label %do.end24 [label %if.then20], !srcloc !512

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %42 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net, align 4
  %44 = ptrtoint ptr %rssi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rssi, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = mul i32 %46, 100
  %mul.i96 = add i32 %47, 9600
  %div.i97 = sdiv i32 %mul.i96, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %mul.i96)
  %cmp.i98 = icmp sgt i32 %mul.i96, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 6464, i32 %mul.i96)
  %cmp1.i99 = icmp slt i32 %mul.i96, 6464
  %spec.select.i100 = select i1 %cmp1.i99, i32 %div.i97, i32 100
  %cond5.i101 = select i1 %cmp.i98, i32 %spec.select.i100, i32 0
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_device_poller.__UNIQUE_ID_ddebug443, ptr noundef %43, ptr noundef nonnull @.str.126, i32 noundef %call9, i32 noundef %46, i32 noundef %cond5.i101) #13
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.body14
  %param_workaround_interval = getelementptr i8, ptr %work, i32 1432
  %48 = ptrtoint ptr %param_workaround_interval to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %param_workaround_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp25.not = icmp eq i32 %49, 0
  br i1 %cmp25.not, label %do.end24.if.then46_crit_edge, label %land.lhs.true26

do.end24.if.then46_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

land.lhs.true26:                                  ; preds = %do.end24
  %last_qual27 = getelementptr i8, ptr %work, i32 340
  %50 = ptrtoint ptr %last_qual27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %last_qual27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %51)
  %cmp28 = icmp slt i32 %51, 26
  br i1 %cmp28, label %if.else.i, label %land.lhs.true26.if.then46_crit_edge

land.lhs.true26.if.then46_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

if.else.i:                                        ; preds = %land.lhs.true26
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %49) #13
  %52 = tail call i32 @llvm.smax.i32(i32 %call2.i, i32 1)
  %53 = call i32 @llvm.smin.i32(i32 %52, i32 100)
  %54 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16777216, ptr %tmp2, align 4
  %call38 = call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169626, ptr noundef nonnull %tmp2, i32 noundef 4)
  %55 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1025, ptr %len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3264, i32 noundef 1025) #17
  %tobool40.not = icmp eq ptr %call7.i, null
  br i1 %tobool40.not, label %if.else.i.end_crit_edge, label %if.end42

if.else.i.end_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end42:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %call43 = call fastcc i32 @rndis_query_oid(ptr noundef %1, i32 noundef 218169879, ptr noundef nonnull %call7.i, ptr noundef nonnull %len)
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %end

end:                                              ; preds = %if.end42, %if.else.i.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %53)
  %cmp45 = icmp ugt i32 %53, 99
  br i1 %cmp45, label %end.if.then46_crit_edge, label %if.else48

end.if.then46_crit_edge:                          ; preds = %end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

if.then46:                                        ; preds = %end.if.then46_crit_edge, %land.lhs.true26.if.then46_crit_edge, %do.end24.if.then46_crit_edge, %if.then5, %land.lhs.true3.if.then46_crit_edge, %land.lhs.true.if.then46_crit_edge, %if.then.if.then46_crit_edge
  %call47 = tail call i32 @round_jiffies_relative(i32 noundef 100) #13
  br label %if.end56

if.else48:                                        ; preds = %end
  call void @__sanitizer_cov_trace_pc() #15
  %call49 = tail call i32 @round_jiffies_relative(i32 noundef %53) #13
  %sub = sub i32 %call49, %53
  %57 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %57)
  %cmp53 = icmp slt i32 %57, 11
  %spec.select = select i1 %cmp53, i32 %call49, i32 %53
  br label %if.end56

if.end56:                                         ; preds = %if.else48, %if.then46
  %update_jiffies.1 = phi i32 [ %call47, %if.then46 ], [ %spec.select, %if.else48 ]
  %workqueue = getelementptr i8, ptr %work, i32 -4
  %58 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %workqueue, align 4
  %call.i102 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %work, i32 noundef %update_jiffies.1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rssi) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_get_scan_results(ptr nocapture noundef %work) #2 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1076
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #13
  %2 = call ptr @memset(ptr %info, i32 0, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_get_scan_results.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_get_scan_results, %if.then)) #13
          to label %do.end7 [label %if.then], !srcloc !512

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_get_scan_results.__UNIQUE_ID_ddebug409, ptr noundef %4, ptr noundef nonnull @.str.128) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %scan_request = getelementptr i8, ptr %work, i32 -108
  %5 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scan_request, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %do.end7.cleanup_crit_edge, label %if.end10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = tail call fastcc i32 @rndis_check_bssid_list(ptr noundef %1, ptr noundef null, ptr noundef null)
  %aborted = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info, i32 0, i32 2
  %call11.lobit = lshr i32 %call11, 31
  %7 = trunc i32 %call11.lobit to i8
  %8 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %aborted, align 2
  %9 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scan_request, align 4
  call void @cfg80211_scan_done(ptr noundef %10, ptr noundef nonnull %info) #13
  %11 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %scan_request, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_rndis_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rndis_set_oid(ptr noundef %dev, i32 noundef %oid, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  %add = add i32 %len, 28
  %2 = tail call i32 @llvm.smax.i32(i32 %add, i32 1025)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1053, i32 %2)
  %cmp1 = icmp ugt i32 %2, 1053
  br i1 %cmp1, label %if.end8.i, label %if.else

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.if.end6_crit_edge

if.end8.i.if.end6_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %command_buffer = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 37
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end8.i.if.end6_crit_edge
  %u.sroa.0.0 = phi ptr [ %call9.i, %if.end8.i.if.end6_crit_edge ], [ %command_buffer, %if.else ]
  %command_lock = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %command_lock, i32 noundef 0) #13
  %3 = getelementptr inbounds i8, ptr %u.sroa.0.0, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %3, align 1
  %5 = ptrtoint ptr %u.sroa.0.0 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 83886080, ptr %u.sroa.0.0, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %add)
  %msg_len = getelementptr inbounds %struct.rndis_set, ptr %u.sroa.0.0, i32 0, i32 1
  %7 = ptrtoint ptr %msg_len to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %msg_len, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %oid)
  %oid8 = getelementptr inbounds %struct.rndis_set, ptr %u.sroa.0.0, i32 0, i32 3
  %9 = ptrtoint ptr %oid8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %oid8, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %len)
  %len9 = getelementptr inbounds %struct.rndis_set, ptr %u.sroa.0.0, i32 0, i32 4
  %11 = ptrtoint ptr %len9 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %len9, align 1
  %offset = getelementptr inbounds %struct.rndis_set, ptr %u.sroa.0.0, i32 0, i32 5
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 335544320, ptr %offset, align 1
  %handle = getelementptr inbounds %struct.rndis_set, ptr %u.sroa.0.0, i32 0, i32 6
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 0, ptr %handle, align 1
  %add.ptr = getelementptr i8, ptr %u.sroa.0.0, i32 28
  %14 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %len)
  %current_command_oid = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 33
  %15 = ptrtoint ptr %current_command_oid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %oid, ptr %current_command_oid, align 4
  %call10 = tail call i32 @rndis_command(ptr noundef %dev, ptr noundef %u.sroa.0.0, i32 noundef %2) #13
  %16 = ptrtoint ptr %current_command_oid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %current_command_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp12 = icmp slt i32 %call10, 0
  br i1 %cmp12, label %do.body14, label %if.end6.if.end24_crit_edge

if.end6.if.end24_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

do.body14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_set_oid.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_set_oid, %if.end24.thread)) #13
          to label %if.end24 [label %if.end24.thread], !srcloc !512

if.end24.thread:                                  ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 4
  %19 = ptrtoint ptr %oid8 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %oid8, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_set_oid.__UNIQUE_ID_ddebug367, ptr noundef %18, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.132, i32 noundef %call10, i32 noundef %21) #13
  br label %if.end54

if.end24:                                         ; preds = %do.body14, %if.end6.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp25 = icmp eq i32 %call10, 0
  br i1 %cmp25, label %if.then26, label %if.end24.if.end54_crit_edge

if.end24.if.end54_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then26:                                        ; preds = %if.end24
  %22 = ptrtoint ptr %oid8 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %oid8, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #13
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %24, label %if.then26.do.body32_crit_edge [
    i32 0, label %if.then26.if.end54_crit_edge
    i32 -1073676270, label %if.then26.sw.bb3.i_crit_edge
    i32 -1073676271, label %if.then26.sw.bb3.i_crit_edge109
    i32 -1073741637, label %sw.bb2.i
  ]

if.then26.sw.bb3.i_crit_edge109:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3.i

if.then26.sw.bb3.i_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3.i

if.then26.if.end54_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then26.do.body32_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body32

sw.bb2.i:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body32

sw.bb3.i:                                         ; preds = %if.then26.sw.bb3.i_crit_edge, %if.then26.sw.bb3.i_crit_edge109
  br label %do.body32

do.body32:                                        ; preds = %sw.bb3.i, %sw.bb2.i, %if.then26.do.body32_crit_edge
  %ret.0.i.ph = phi i32 [ -22, %if.then26.do.body32_crit_edge ], [ -95, %sw.bb2.i ], [ -16, %sw.bb3.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_set_oid.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_set_oid, %if.then44)) #13
          to label %if.end54 [label %if.then44], !srcloc !512

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #15
  %net45 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %26 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net45, align 4
  %28 = ptrtoint ptr %oid8 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %oid8, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_set_oid.__UNIQUE_ID_ddebug368, ptr noundef %27, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.132, i32 noundef %30, i32 noundef %ret.0.i.ph) #13
  br label %if.end54

if.end54:                                         ; preds = %if.then44, %do.body32, %if.then26.if.end54_crit_edge, %if.end24.if.end54_crit_edge, %if.end24.thread
  %ret.0 = phi i32 [ %ret.0.i.ph, %if.then44 ], [ %call10, %if.end24.if.end54_crit_edge ], [ %call10, %if.end24.thread ], [ %24, %if.then26.if.end54_crit_edge ], [ %ret.0.i.ph, %do.body32 ]
  tail call void @mutex_unlock(ptr noundef %command_lock) #13
  %command_buffer56 = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 37
  %cmp58.not = icmp eq ptr %u.sroa.0.0, %command_buffer56
  br i1 %cmp58.not, label %if.end54.cleanup_crit_edge, label %if.then59

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %u.sroa.0.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.end54.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end8.i.cleanup_crit_edge ], [ %ret.0, %if.then59 ], [ %ret.0, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rndis_query_oid(ptr noundef %dev, i32 noundef %oid, ptr nocapture noundef writeonly %data, ptr nocapture noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add = add i32 %3, 28
  %4 = tail call i32 @llvm.smax.i32(i32 %add, i32 1025)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1053, i32 %4)
  %cmp1 = icmp ugt i32 %4, 1053
  br i1 %cmp1, label %if.end8.i, label %if.else

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.if.end6_crit_edge

if.end8.i.if.end6_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %command_buffer = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 37
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end8.i.if.end6_crit_edge
  %u.sroa.0.0 = phi ptr [ %call9.i, %if.end8.i.if.end6_crit_edge ], [ %command_buffer, %if.else ]
  %command_lock = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %command_lock, i32 noundef 0) #13
  %5 = getelementptr inbounds i8, ptr %u.sroa.0.0, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 20)
  %7 = ptrtoint ptr %u.sroa.0.0 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 67108864, ptr %u.sroa.0.0, align 1
  %msg_len = getelementptr inbounds %struct.rndis_query, ptr %u.sroa.0.0, i32 0, i32 1
  %8 = ptrtoint ptr %msg_len to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 469762048, ptr %msg_len, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %oid)
  %oid7 = getelementptr inbounds %struct.rndis_query, ptr %u.sroa.0.0, i32 0, i32 3
  %10 = ptrtoint ptr %oid7 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %oid7, align 1
  %current_command_oid = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 33
  %11 = ptrtoint ptr %current_command_oid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %oid, ptr %current_command_oid, align 4
  %call8 = tail call i32 @rndis_command(ptr noundef %dev, ptr noundef %u.sroa.0.0, i32 noundef %4) #13
  %12 = ptrtoint ptr %current_command_oid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %current_command_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp10 = icmp slt i32 %call8, 0
  br i1 %cmp10, label %do.body12, label %if.end6.if.end22_crit_edge

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

do.body12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_query_oid.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_query_oid, %if.end22.thread)) #13
          to label %if.end22 [label %if.end22.thread], !srcloc !512

if.end22.thread:                                  ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net, align 4
  %15 = ptrtoint ptr %oid7 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %oid7, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_query_oid.__UNIQUE_ID_ddebug364, ptr noundef %14, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.132, i32 noundef %call8, i32 noundef %17) #13
  br label %exit_unlock

if.end22:                                         ; preds = %do.body12, %if.end6.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp23 = icmp eq i32 %call8, 0
  br i1 %cmp23, label %if.then24, label %if.end22.exit_unlock_crit_edge

if.end22.exit_unlock_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_unlock

if.then24:                                        ; preds = %if.end22
  %offset = getelementptr inbounds %struct.rndis_query_c, ptr %u.sroa.0.0, i32 0, i32 5
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %offset, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %add26 = add i32 %20, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add26)
  %cmp27 = icmp slt i32 %4, %add26
  br i1 %cmp27, label %do.body30, label %if.end50

do.body30:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_query_oid.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_query_oid, %if.then42)) #13
          to label %exit_unlock [label %if.then42], !srcloc !512

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #15
  %net43 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %21 = ptrtoint ptr %net43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net43, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_query_oid.__UNIQUE_ID_ddebug365, ptr noundef %22, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.132, i32 noundef %add26, i32 noundef %4) #13
  br label %exit_unlock

if.end50:                                         ; preds = %if.then24
  %len25 = getelementptr inbounds %struct.rndis_query_c, ptr %u.sroa.0.0, i32 0, i32 4
  %23 = ptrtoint ptr %len25 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %len25, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %add51 = add i32 %25, %add26
  call void @__sanitizer_cov_trace_cmp4(i32 %add51, i32 %4)
  %cmp52 = icmp sgt i32 %add51, %4
  %sub = sub i32 %4, %add26
  %copylen.0 = select i1 %cmp52, i32 %sub, i32 %25
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %28 = tail call i32 @llvm.smin.i32(i32 %copylen.0, i32 %27)
  %add.ptr = getelementptr i8, ptr %u.sroa.0.0, i32 %add26
  %29 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %28)
  %30 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %25, ptr %len, align 4
  %31 = ptrtoint ptr %oid7 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %oid7, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #13
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %33, label %if.end50.do.body64_crit_edge [
    i32 0, label %if.end50.exit_unlock_crit_edge
    i32 -1073676270, label %if.end50.sw.bb3.i_crit_edge
    i32 -1073676271, label %if.end50.sw.bb3.i_crit_edge160
    i32 -1073741637, label %sw.bb2.i
  ]

if.end50.sw.bb3.i_crit_edge160:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3.i

if.end50.sw.bb3.i_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3.i

if.end50.exit_unlock_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_unlock

if.end50.do.body64_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body64

sw.bb2.i:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body64

sw.bb3.i:                                         ; preds = %if.end50.sw.bb3.i_crit_edge, %if.end50.sw.bb3.i_crit_edge160
  br label %do.body64

do.body64:                                        ; preds = %sw.bb3.i, %sw.bb2.i, %if.end50.do.body64_crit_edge
  %ret.0.i.ph = phi i32 [ -22, %if.end50.do.body64_crit_edge ], [ -95, %sw.bb2.i ], [ -16, %sw.bb3.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_query_oid.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_query_oid, %if.then76)) #13
          to label %exit_unlock [label %if.then76], !srcloc !512

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #15
  %net77 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %35 = ptrtoint ptr %net77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net77, align 4
  %37 = ptrtoint ptr %oid7 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %oid7, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_query_oid.__UNIQUE_ID_ddebug366, ptr noundef %36, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.132, i32 noundef %39, i32 noundef %ret.0.i.ph) #13
  br label %exit_unlock

exit_unlock:                                      ; preds = %if.then76, %do.body64, %if.end50.exit_unlock_crit_edge, %if.then42, %do.body30, %if.end22.exit_unlock_crit_edge, %if.end22.thread
  %ret.0 = phi i32 [ %ret.0.i.ph, %if.then76 ], [ %call8, %if.end22.exit_unlock_crit_edge ], [ -22, %if.then42 ], [ %call8, %if.end22.thread ], [ -22, %do.body30 ], [ %33, %if.end50.exit_unlock_crit_edge ], [ %ret.0.i.ph, %do.body64 ]
  tail call void @mutex_unlock(ptr noundef %command_lock) #13
  %command_buffer88 = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 37
  %cmp90.not = icmp eq ptr %u.sroa.0.0, %command_buffer88
  br i1 %cmp90.not, label %exit_unlock.cleanup_crit_edge, label %if.then91

exit_unlock.cleanup_crit_edge:                    ; preds = %exit_unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then91:                                        ; preds = %exit_unlock
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %u.sroa.0.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %exit_unlock.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end8.i.cleanup_crit_edge ], [ %ret.0, %if.then91 ], [ %ret.0, %exit_unlock.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rndis_wlan_get_caps(ptr noundef %usbdev, ptr nocapture noundef writeonly %wiphy) unnamed_addr #2 align 64 {
entry:
  %networks_supported = alloca %struct.anon.134, align 4
  %caps = alloca %struct.ndis_80211_capability, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %networks_supported) #13
  %0 = call ptr @memset(ptr %networks_supported, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %caps) #13
  %1 = getelementptr inbounds %struct.ndis_80211_capability, ptr %caps, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ndis_80211_capability, ptr %caps, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ndis_80211_capability, ptr %caps, i32 0, i32 3
  %4 = call ptr @memset(ptr %caps, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #13
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %5 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_priv.i, align 4
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 36, ptr %len, align 4
  %call2 = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 218169859, ptr noundef nonnull %networks_supported, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %networks_supported to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %networks_supported, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp42 = icmp sgt i32 %10, 0
  br i1 %cmp42, label %for.body.lr.ph, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

for.body.lr.ph:                                   ; preds = %if.then
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 8)
  %caps10 = getelementptr inbounds %struct.rndis_wlan_private, ptr %6, i32 0, i32 18
  %arrayidx = getelementptr inbounds %struct.anon.134, ptr %networks_supported, i32 0, i32 1, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %switch.lookup, label %for.body.lr.ph.for.inc_crit_edge

for.body.lr.ph.for.inc_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

switch.lookup:                                    ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rndis_wlan_get_caps, i32 0, i32 %14
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %17 = ptrtoint ptr %caps10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %caps10, align 4
  %or = or i32 %18, %switch.load
  store i32 %or, ptr %caps10, align 4
  br label %for.inc

for.inc:                                          ; preds = %switch.lookup, %for.body.lr.ph.for.inc_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %exitcond.not = icmp eq i32 %11, 1
  br i1 %exitcond.not, label %for.inc.if.end12_crit_edge, label %for.body.1

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

for.body.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr inbounds %struct.anon.134, ptr %networks_supported, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.1, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %switch.lookup.1, label %for.body.1.for.inc.1_crit_edge

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

switch.lookup.1:                                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep.1 = getelementptr inbounds [4 x i32], ptr @switch.table.rndis_wlan_get_caps, i32 0, i32 %21
  %23 = ptrtoint ptr %switch.gep.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load.1 = load i32, ptr %switch.gep.1, align 4
  %24 = ptrtoint ptr %caps10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %caps10, align 4
  %or.1 = or i32 %25, %switch.load.1
  store i32 %or.1, ptr %caps10, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %switch.lookup.1, %for.body.1.for.inc.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %exitcond.not.1 = icmp eq i32 %11, 2
  br i1 %exitcond.not.1, label %for.inc.1.if.end12_crit_edge, label %for.body.2

for.inc.1.if.end12_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

for.body.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr inbounds %struct.anon.134, ptr %networks_supported, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.2, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %29 = icmp ult i32 %28, 4
  br i1 %29, label %switch.lookup.2, label %for.body.2.for.inc.2_crit_edge

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

switch.lookup.2:                                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep.2 = getelementptr inbounds [4 x i32], ptr @switch.table.rndis_wlan_get_caps, i32 0, i32 %28
  %30 = ptrtoint ptr %switch.gep.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load.2 = load i32, ptr %switch.gep.2, align 4
  %31 = ptrtoint ptr %caps10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %caps10, align 4
  %or.2 = or i32 %32, %switch.load.2
  store i32 %or.2, ptr %caps10, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %switch.lookup.2, %for.body.2.for.inc.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %exitcond.not.2 = icmp eq i32 %11, 3
  br i1 %exitcond.not.2, label %for.inc.2.if.end12_crit_edge, label %for.body.3

for.inc.2.if.end12_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

for.body.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr inbounds %struct.anon.134, ptr %networks_supported, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.3, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %36 = icmp ult i32 %35, 4
  br i1 %36, label %switch.lookup.3, label %for.body.3.for.inc.3_crit_edge

for.body.3.for.inc.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

switch.lookup.3:                                  ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep.3 = getelementptr inbounds [4 x i32], ptr @switch.table.rndis_wlan_get_caps, i32 0, i32 %35
  %37 = ptrtoint ptr %switch.gep.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load.3 = load i32, ptr %switch.gep.3, align 4
  %38 = ptrtoint ptr %caps10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %caps10, align 4
  %or.3 = or i32 %39, %switch.load.3
  store i32 %or.3, ptr %caps10, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %switch.lookup.3, %for.body.3.for.inc.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %exitcond.not.3 = icmp eq i32 %11, 4
  br i1 %exitcond.not.3, label %for.inc.3.if.end12_crit_edge, label %for.body.4

for.inc.3.if.end12_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

for.body.4:                                       ; preds = %for.inc.3
  %arrayidx.4 = getelementptr inbounds %struct.anon.134, ptr %networks_supported, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.4, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %43 = icmp ult i32 %42, 4
  br i1 %43, label %switch.lookup.4, label %for.body.4.for.inc.4_crit_edge

for.body.4.for.inc.4_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

switch.lookup.4:                                  ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep.4 = getelementptr inbounds [4 x i32], ptr @switch.table.rndis_wlan_get_caps, i32 0, i32 %42
  %44 = ptrtoint ptr %switch.gep.4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load.4 = load i32, ptr %switch.gep.4, align 4
  %45 = ptrtoint ptr %caps10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %caps10, align 4
  %or.4 = or i32 %46, %switch.load.4
  store i32 %or.4, ptr %caps10, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %switch.lookup.4, %for.body.4.for.inc.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %exitcond.not.4 = icmp eq i32 %11, 5
  br i1 %exitcond.not.4, label %for.inc.4.if.end12_crit_edge, label %for.body.5

for.inc.4.if.end12_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

for.body.5:                                       ; preds = %for.inc.4
  %arrayidx.5 = getelementptr inbounds %struct.anon.134, ptr %networks_supported, i32 0, i32 1, i32 5
  %47 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.5, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %50 = icmp ult i32 %49, 4
  br i1 %50, label %switch.lookup.5, label %for.body.5.for.inc.5_crit_edge

for.body.5.for.inc.5_crit_edge:                   ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

switch.lookup.5:                                  ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep.5 = getelementptr inbounds [4 x i32], ptr @switch.table.rndis_wlan_get_caps, i32 0, i32 %49
  %51 = ptrtoint ptr %switch.gep.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load.5 = load i32, ptr %switch.gep.5, align 4
  %52 = ptrtoint ptr %caps10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %caps10, align 4
  %or.5 = or i32 %53, %switch.load.5
  store i32 %or.5, ptr %caps10, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %switch.lookup.5, %for.body.5.for.inc.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %exitcond.not.5 = icmp eq i32 %11, 6
  br i1 %exitcond.not.5, label %for.inc.5.if.end12_crit_edge, label %for.body.6

for.inc.5.if.end12_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

for.body.6:                                       ; preds = %for.inc.5
  %arrayidx.6 = getelementptr inbounds %struct.anon.134, ptr %networks_supported, i32 0, i32 1, i32 6
  %54 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.6, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %57 = icmp ult i32 %56, 4
  br i1 %57, label %switch.lookup.6, label %for.body.6.for.inc.6_crit_edge

for.body.6.for.inc.6_crit_edge:                   ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6

switch.lookup.6:                                  ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep.6 = getelementptr inbounds [4 x i32], ptr @switch.table.rndis_wlan_get_caps, i32 0, i32 %56
  %58 = ptrtoint ptr %switch.gep.6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %switch.load.6 = load i32, ptr %switch.gep.6, align 4
  %59 = ptrtoint ptr %caps10 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %caps10, align 4
  %or.6 = or i32 %60, %switch.load.6
  store i32 %or.6, ptr %caps10, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %switch.lookup.6, %for.body.6.for.inc.6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %exitcond.not.6 = icmp eq i32 %11, 7
  br i1 %exitcond.not.6, label %for.inc.6.if.end12_crit_edge, label %for.body.7

for.inc.6.if.end12_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

for.body.7:                                       ; preds = %for.inc.6
  %arrayidx.7 = getelementptr inbounds %struct.anon.134, ptr %networks_supported, i32 0, i32 1, i32 7
  %61 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.7, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %63)
  %64 = icmp ult i32 %63, 4
  br i1 %64, label %switch.lookup.7, label %for.body.7.if.end12_crit_edge

for.body.7.if.end12_crit_edge:                    ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

switch.lookup.7:                                  ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep.7 = getelementptr inbounds [4 x i32], ptr @switch.table.rndis_wlan_get_caps, i32 0, i32 %63
  %65 = ptrtoint ptr %switch.gep.7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load.7 = load i32, ptr %switch.gep.7, align 4
  %66 = ptrtoint ptr %caps10 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %caps10, align 4
  %or.7 = or i32 %67, %switch.load.7
  store i32 %or.7, ptr %caps10, align 4
  br label %if.end12

if.end12:                                         ; preds = %switch.lookup.7, %for.body.7.if.end12_crit_edge, %for.inc.6.if.end12_crit_edge, %for.inc.5.if.end12_crit_edge, %for.inc.4.if.end12_crit_edge, %for.inc.3.if.end12_crit_edge, %for.inc.2.if.end12_crit_edge, %for.inc.1.if.end12_crit_edge, %for.inc.if.end12_crit_edge, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %68 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 16, ptr %len, align 4
  %call13 = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 218169634, ptr noundef nonnull %caps, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body16, label %if.end12.if.end27_crit_edge

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

do.body16:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_wlan_get_caps.__UNIQUE_ID_ddebug442, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_get_caps, %if.then21)) #13
          to label %do.end24 [label %if.then21], !srcloc !512

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %69 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %net, align 4
  %71 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %caps, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %1, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %77 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %2, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %3, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_wlan_get_caps.__UNIQUE_ID_ddebug442, ptr noundef %70, ptr noundef nonnull @.str.137, i32 noundef %73, i32 noundef %76, i32 noundef %79, i32 noundef %82) #13
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body16
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %2, align 4
  %85 = lshr i32 %84, 24
  %conv = trunc i32 %85 to i8
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.end12.if.end27_crit_edge
  %.sink = phi i8 [ %conv, %do.end24 ], [ 0, %if.end12.if.end27_crit_edge ]
  %max_num_pmkids26 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 43
  %86 = ptrtoint ptr %max_num_pmkids26 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %.sink, ptr %max_num_pmkids26, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %caps) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %networks_supported) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_default_iw_params(ptr noundef %usbdev) unnamed_addr #2 align 64 {
entry:
  %tmp.i12 = alloca i32, align 4
  %tmp.i7 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @set_infra_mode(ptr noundef %usbdev, i32 noundef 1)
  %driver_priv.i.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_auth_mode.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_default_iw_params, %if.then.i)) #13
          to label %do.end7.i [label %if.then.i], !srcloc !512

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_auth_mode.__UNIQUE_ID_ddebug374, ptr noundef %3, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %entry
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tmp.i, align 4
  %call42.i = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169624, ptr noundef nonnull %tmp.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp43.not.i = icmp eq i32 %call42.i, 0
  br i1 %cmp43.not.i, label %if.end46.i, label %if.then44.i

if.then44.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %net45.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %5 = ptrtoint ptr %net45.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net45.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.68, i32 noundef %call42.i) #16
  br label %set_auth_mode.exit

if.end46.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %wpa_version47.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 36
  %7 = ptrtoint ptr %wpa_version47.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wpa_version47.i, align 4
  br label %set_auth_mode.exit

set_auth_mode.exit:                               ; preds = %if.end46.i, %if.then44.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  %8 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i7) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_priv_filter.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_default_iw_params, %if.then.i10)) #13
          to label %set_priv_filter.exit [label %if.then.i10], !srcloc !512

if.then.i10:                                      ; preds = %set_auth_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net.i9 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %10 = ptrtoint ptr %net.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i9, align 4
  %wpa_version.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %9, i32 0, i32 36
  %12 = ptrtoint ptr %wpa_version.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wpa_version.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_priv_filter.__UNIQUE_ID_ddebug375, ptr noundef %11, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef %13) #13
  br label %set_priv_filter.exit

set_priv_filter.exit:                             ; preds = %if.then.i10, %set_auth_mode.exit
  %wpa_version8.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %9, i32 0, i32 36
  %14 = ptrtoint ptr %wpa_version8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wpa_version8.i, align 4
  %16 = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  %storemerge.i = select i1 %17, i32 0, i32 16777216
  %18 = ptrtoint ptr %tmp.i7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge.i, ptr %tmp.i7, align 4
  %call15.i = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169625, ptr noundef nonnull %tmp.i7, i32 noundef 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i12) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_encr_mode.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_default_iw_params, %if.then.i14)) #13
          to label %do.end6.i [label %if.then.i14], !srcloc !512

if.then.i14:                                      ; preds = %set_priv_filter.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net.i13 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %19 = ptrtoint ptr %net.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_encr_mode.__UNIQUE_ID_ddebug376, ptr noundef %20, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0) #13
  br label %do.end6.i

do.end6.i:                                        ; preds = %if.then.i14, %set_priv_filter.exit
  %21 = ptrtoint ptr %tmp.i12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16777216, ptr %tmp.i12, align 4
  %call30.i = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169627, ptr noundef nonnull %tmp.i12, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp.not.i = icmp eq i32 %call30.i, 0
  br i1 %cmp.not.i, label %do.end6.i.set_encr_mode.exit_crit_edge, label %if.then31.i

do.end6.i.set_encr_mode.exit_crit_edge:           ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_encr_mode.exit

if.then31.i:                                      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %net32.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %22 = ptrtoint ptr %net32.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net32.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.26, i32 noundef %call30.i) #16
  br label %set_encr_mode.exit

set_encr_mode.exit:                               ; preds = %if.then31.i, %do.end6.i.set_encr_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i12) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_set_wiphy_params(ptr noundef readonly %wiphy, i32 noundef %changed) #2 align 64 {
entry:
  %tmp.i22 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %and = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %wiphy_priv.exit.if.end4_crit_edge, label %if.then

wiphy_priv.exit.if.end4_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %wiphy_priv.exit
  %frag_threshold = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 35
  %2 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frag_threshold, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_frag_threshold.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_set_wiphy_params, %if.then.i)) #13
          to label %set_frag_threshold.exit [label %if.then.i], !srcloc !512

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_frag_threshold.__UNIQUE_ID_ddebug379, ptr noundef %5, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.138, i32 noundef %3) #13
  br label %set_frag_threshold.exit

set_frag_threshold.exit:                          ; preds = %if.then.i, %if.then
  %6 = add i32 %3, -2347
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2091, i32 %6)
  %7 = icmp ult i32 %6, -2091
  %frag_threshold.addr.0.i = select i1 %7, i32 2346, i32 %3
  %8 = tail call i32 @llvm.bswap.i32(i32 %frag_threshold.addr.0.i) #13
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i, align 4
  %call10.i = call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169865, ptr noundef nonnull %tmp.i, i32 noundef 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp = icmp slt i32 %call10.i, 0
  br i1 %cmp, label %set_frag_threshold.exit.cleanup_crit_edge, label %set_frag_threshold.exit.if.end4_crit_edge

set_frag_threshold.exit.if.end4_crit_edge:        ; preds = %set_frag_threshold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

set_frag_threshold.exit.cleanup_crit_edge:        ; preds = %set_frag_threshold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %set_frag_threshold.exit.if.end4_crit_edge, %wiphy_priv.exit.if.end4_crit_edge
  %and5 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end12_crit_edge, label %if.then7

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then7:                                         ; preds = %if.end4
  %rts_threshold = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 36
  %10 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rts_threshold, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i22) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_rts_threshold.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_set_wiphy_params, %if.then.i24)) #13
          to label %set_rts_threshold.exit [label %if.then.i24], !srcloc !512

if.then.i24:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %net.i23 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %net.i23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net.i23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_rts_threshold.__UNIQUE_ID_ddebug378, ptr noundef %13, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.140, i32 noundef %11) #13
  br label %set_rts_threshold.exit

set_rts_threshold.exit:                           ; preds = %if.then.i24, %if.then7
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 2347) #13
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  %16 = ptrtoint ptr %tmp.i22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i22, align 4
  %call10.i25 = call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169866, ptr noundef nonnull %tmp.i22, i32 noundef 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i25)
  %cmp9 = icmp slt i32 %call10.i25, 0
  br i1 %cmp9, label %set_rts_threshold.exit.cleanup_crit_edge, label %set_rts_threshold.exit.if.end12_crit_edge

set_rts_threshold.exit.if.end12_crit_edge:        ; preds = %set_rts_threshold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

set_rts_threshold.exit.cleanup_crit_edge:         ; preds = %set_rts_threshold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %set_rts_threshold.exit.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %set_rts_threshold.exit.cleanup_crit_edge, %set_frag_threshold.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call10.i, %set_frag_threshold.exit.cleanup_crit_edge ], [ %call10.i25, %set_rts_threshold.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @disassociate(ptr noundef %usbdev, i1 noundef zeroext %reset_ssid) unnamed_addr #2 align 64 {
entry:
  %ssid = alloca %struct.ndis_80211_ssid, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ssid) #13
  %2 = getelementptr inbounds i8, ptr %ssid, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 32)
  %radio_on = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %radio_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %radio_on, align 4, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169621, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then2:                                         ; preds = %if.then
  %6 = ptrtoint ptr %radio_on to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %radio_on, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disassociate.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@disassociate, %if.then10)) #13
          to label %do.end12 [label %if.then10], !srcloc !512

if.then10:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @disassociate.__UNIQUE_ID_ddebug373, ptr noundef %8, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141) #13
  br label %do.end12

do.end12:                                         ; preds = %if.then10, %if.then2
  br i1 %reset_ssid, label %if.end17.thread, label %do.end12.if.end32_crit_edge

do.end12.if.end32_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.end17.thread:                                  ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msleep(i32 noundef 100) #13
  br label %if.then19

if.end17:                                         ; preds = %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then.if.end17_crit_edge ], [ 0, %entry.if.end17_crit_edge ]
  br i1 %reset_ssid, label %if.end17.if.then19_crit_edge, label %if.end17.if.end32_crit_edge

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.end17.if.then19_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.then19:                                        ; preds = %if.end17.if.then19_crit_edge, %if.end17.thread
  %call20 = tail call fastcc i32 @set_infra_mode(ptr noundef %usbdev, i32 noundef 1)
  %9 = ptrtoint ptr %ssid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 536870912, ptr %ssid, align 4
  %essid = getelementptr inbounds %struct.ndis_80211_ssid, ptr %ssid, i32 0, i32 1
  %arrayidx = getelementptr inbounds %struct.ndis_80211_ssid, ptr %ssid, i32 0, i32 1, i32 2
  call void @get_random_bytes(ptr noundef %arrayidx, i32 noundef 30) #13
  %10 = ptrtoint ptr %essid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %essid, align 4
  %arrayidx24 = getelementptr inbounds %struct.ndis_80211_ssid, ptr %ssid, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %arrayidx24, align 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then19
  %i.047 = phi i32 [ 2, %if.then19 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx27 = getelementptr %struct.ndis_80211_ssid, ptr %ssid, i32 0, i32 1, i32 %i.047
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx27, align 1
  %conv = zext i8 %13 to i16
  %mul = mul nuw i16 %conv, 254
  %div = udiv i16 %mul, 255
  %14 = trunc i16 %div to i8
  %conv28 = add nuw i8 %14, 1
  store i8 %conv28, ptr %arrayidx27, align 1
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %15 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_priv.i, align 4
  %call1.i = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169602, ptr noundef nonnull %ssid, i32 noundef 36) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %17 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.76, i32 noundef %call1.i) #16
  br label %if.end32

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end32_crit_edge

if.end.i.if.end32_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %radio_on.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %16, i32 0, i32 28
  %19 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %radio_on.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_essid.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@disassociate, %if.then8.i)) #13
          to label %if.end32 [label %if.then8.i], !srcloc !512

if.then8.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %net9.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %20 = ptrtoint ptr %net9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net9.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_essid.__UNIQUE_ID_ddebug372, ptr noundef %21, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77) #13
  br label %if.end32

if.end32:                                         ; preds = %if.then8.i, %if.then3.i, %if.end.i.if.end32_crit_edge, %if.then.i, %if.end17.if.end32_crit_edge, %do.end12.if.end32_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end17.if.end32_crit_edge ], [ %call1.i, %if.then.i ], [ %call1.i, %if.end.i.if.end32_crit_edge ], [ 0, %if.then3.i ], [ 0, %if.then8.i ], [ 0, %do.end12.if.end32_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ssid) #13
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_change_virtual_intf(ptr noundef %wiphy, ptr nocapture noundef readnone %dev, i32 noundef %type, ptr nocapture noundef readnone %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %type, label %wiphy_priv.exit.cleanup_crit_edge [
    i32 1, label %wiphy_priv.exit.sw.epilog_crit_edge
    i32 2, label %sw.bb2
  ]

wiphy_priv.exit.sw.epilog_crit_edge:              ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb2:                                           ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %wiphy_priv.exit.sw.epilog_crit_edge
  %mode.0 = phi i32 [ 1, %sw.bb2 ], [ 0, %wiphy_priv.exit.sw.epilog_crit_edge ]
  %iftype = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %iftype, align 4
  %call3 = tail call fastcc i32 @set_infra_mode(ptr noundef %1, i32 noundef %mode.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %sw.epilog ], [ -22, %wiphy_priv.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_add_key(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %netdev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef %mac_addr, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_add_key.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_add_key, %if.then)) #13
          to label %do.end8 [label %if.then], !srcloc !512

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %conv = zext i8 %key_index to i32
  %cipher = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 5
  %4 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cipher, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_add_key.__UNIQUE_ID_ddebug427, ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef %conv, ptr noundef %mac_addr, i32 noundef %5) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then, %wiphy_priv.exit
  %cipher9 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 5
  %6 = ptrtoint ptr %cipher9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cipher9, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %7, label %do.body27 [
    i32 1027073, label %do.end8.sw.bb_crit_edge
    i32 1027077, label %do.end8.sw.bb_crit_edge75
    i32 1027074, label %do.end8.sw.bb11_crit_edge
    i32 1027076, label %do.end8.sw.bb11_crit_edge76
  ]

do.end8.sw.bb11_crit_edge76:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb11

do.end8.sw.bb11_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb11

do.end8.sw.bb_crit_edge75:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

do.end8.sw.bb_crit_edge:                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %do.end8.sw.bb_crit_edge, %do.end8.sw.bb_crit_edge75
  %9 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %params, align 4
  %key_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %11 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key_len, align 4
  %call10 = tail call fastcc i32 @add_wep_key(ptr noundef %1, ptr noundef %10, i32 noundef %12, i8 noundef zeroext %key_index)
  br label %cleanup

sw.bb11:                                          ; preds = %do.end8.sw.bb11_crit_edge, %do.end8.sw.bb11_crit_edge76
  %seq = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 1
  %13 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %seq, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %sw.bb11.if.end15_crit_edge, label %land.lhs.true

sw.bb11.if.end15_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  %seq_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 3
  %15 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seq_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp sgt i32 %16, 0
  %spec.select = select i1 %cmp, i32 32, i32 0
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %sw.bb11.if.end15_crit_edge
  %flags.0 = phi i32 [ 0, %sw.bb11.if.end15_crit_edge ], [ %spec.select, %land.lhs.true ]
  %tobool16.not = icmp eq ptr %mac_addr, null
  %or18 = or i32 %flags.0, 192
  %spec.select69 = select i1 %tobool16.not, i32 %flags.0, i32 %or18
  %17 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %params, align 4
  %key_len21 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %19 = ptrtoint ptr %key_len21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %key_len21, align 4
  %seq_len23 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 3
  %21 = ptrtoint ptr %seq_len23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %seq_len23, align 4
  %call25 = tail call fastcc i32 @add_wpa_key(ptr noundef %1, ptr noundef %18, i32 noundef %20, i8 noundef zeroext %key_index, ptr noundef %mac_addr, ptr noundef %14, i32 noundef %22, i32 noundef %7, i32 noundef %spec.select69)
  br label %cleanup

do.body27:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_add_key.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_add_key, %if.then39)) #13
          to label %cleanup [label %if.then39], !srcloc !512

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #15
  %net40 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %23 = ptrtoint ptr %net40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net40, align 4
  %25 = ptrtoint ptr %cipher9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cipher9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_add_key.__UNIQUE_ID_ddebug428, ptr noundef %24, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %26) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body27, %if.end15, %sw.bb
  %retval.0 = phi i32 [ %call25, %if.end15 ], [ %call10, %sw.bb ], [ -524, %if.then39 ], [ -524, %do.body27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_del_key(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %netdev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef %mac_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_del_key.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_del_key, %if.then)) #13
          to label %do.end8 [label %if.then], !srcloc !512

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %conv = zext i8 %key_index to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_del_key.__UNIQUE_ID_ddebug429, ptr noundef %3, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %conv, ptr noundef %mac_addr) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then, %wiphy_priv.exit
  %call9 = tail call fastcc i32 @remove_key(ptr noundef %1, i8 noundef zeroext %key_index, ptr noundef %mac_addr)
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_set_default_key(ptr noundef %wiphy, ptr nocapture noundef readnone %netdev, i8 noundef zeroext %key_index, i1 noundef zeroext %unicast, i1 noundef zeroext %multicast) #2 align 64 {
entry:
  %key = alloca %struct.rndis_wlan_encr_key, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %key) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_set_default_key.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_set_default_key, %if.then)) #13
          to label %do.end9 [label %if.then], !srcloc !512

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %conv = zext i8 %key_index to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_set_default_key.__UNIQUE_ID_ddebug430, ptr noundef %3, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %conv) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then, %wiphy_priv.exit
  %conv10 = zext i8 %key_index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %key_index)
  %cmp = icmp ugt i8 %key_index, 3
  br i1 %cmp, label %do.end9.cleanup_crit_edge, label %if.end13

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  %encr_tx_key_index = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 2, i32 56, i32 12, i32 19
  %4 = ptrtoint ptr %encr_tx_key_index to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %key_index, ptr %encr_tx_key_index, align 4
  %cipher1.i = getelementptr %struct.rndis_wlan_private, ptr %priv.i, i32 0, i32 35, i32 %conv10, i32 1
  %5 = ptrtoint ptr %cipher1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cipher1.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %6, label %if.end16 [
    i32 1027076, label %if.end13.cleanup_crit_edge
    i32 1027074, label %if.end13.cleanup_crit_edge30
  ]

if.end13.cleanup_crit_edge30:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.rndis_wlan_private, ptr %priv.i, i32 0, i32 35, i32 %conv10
  %8 = call ptr @memcpy(ptr %key, ptr %arrayidx, i32 48)
  %material = getelementptr inbounds %struct.rndis_wlan_encr_key, ptr %key, i32 0, i32 2
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key, align 4
  %call17 = call fastcc i32 @add_wep_key(ptr noundef %1, ptr noundef %material, i32 noundef %10, i8 noundef zeroext %key_index)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end13.cleanup_crit_edge, %if.end13.cleanup_crit_edge30, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ -2, %do.end9.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge30 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %key) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_get_station(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %mac, ptr nocapture noundef %sinfo) #2 align 64 {
entry:
  %linkspeed.i = alloca i32, align 4
  %rssi.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %bssid = getelementptr inbounds %struct.rndis_wlan_private, ptr %priv.i, i32 0, i32 32
  %2 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bssid, align 4
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac, align 4
  %xor.i = xor i32 %5, %3
  %add.ptr.i = getelementptr %struct.rndis_wlan_private, ptr %priv.i, i32 0, i32 32, i32 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %9, %7
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end, label %wiphy_priv.exit.cleanup_crit_edge

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %linkspeed.i) #13
  %10 = ptrtoint ptr %linkspeed.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %linkspeed.i, align 4, !annotation !513
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rssi.i) #13
  %11 = ptrtoint ptr %rssi.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %rssi.i, align 4, !annotation !513
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #13
  %12 = call ptr @memset(ptr %sinfo, i32 0, i32 208)
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %len.i, align 4
  %call.i = call fastcc i32 @rndis_query_oid(ptr noundef %1, i32 noundef 65799, ptr noundef nonnull %linkspeed.i, ptr noundef nonnull %len.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i5 = icmp eq i32 %call.i, 0
  br i1 %cmp.i5, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %linkspeed.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %linkspeed.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #13
  %div.i = udiv i32 %16, 1000
  %conv.i = trunc i32 %div.i to i16
  %legacy.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 2
  %17 = ptrtoint ptr %legacy.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %legacy.i, align 2
  %18 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sinfo, align 8
  %or.i6 = or i64 %19, 256
  store i64 %or.i6, ptr %sinfo, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %len.i, align 4
  %call1.i = call fastcc i32 @rndis_query_oid(ptr noundef %1, i32 noundef 218169862, ptr noundef nonnull %rssi.i, ptr noundef nonnull %len.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %if.then4.i, label %if.end.i.rndis_fill_station_info.exit_crit_edge

if.end.i.rndis_fill_station_info.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rndis_fill_station_info.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %rssi.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rssi.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  %24 = mul i32 %23, 100
  %mul.i.i = add i32 %24, 9600
  %div.i.i = sdiv i32 %mul.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %mul.i.i)
  %cmp.i.i = icmp sgt i32 %mul.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 6464, i32 %mul.i.i)
  %cmp1.i.i = icmp slt i32 %mul.i.i, 6464
  %25 = trunc i32 %div.i.i to i8
  %26 = select i1 %cmp1.i.i, i8 %25, i8 100
  %conv6.i = select i1 %cmp.i.i, i8 %26, i8 0
  %signal.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %27 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv6.i, ptr %signal.i, align 1
  %28 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sinfo, align 8
  %or8.i = or i64 %29, 128
  store i64 %or8.i, ptr %sinfo, align 8
  br label %rndis_fill_station_info.exit

rndis_fill_station_info.exit:                     ; preds = %if.then4.i, %if.end.i.rndis_fill_station_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rssi.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %linkspeed.i) #13
  br label %cleanup

cleanup:                                          ; preds = %rndis_fill_station_info.exit, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rndis_fill_station_info.exit ], [ -2, %wiphy_priv.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_dump_station(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %dev, i32 noundef %idx, ptr nocapture noundef writeonly %mac, ptr nocapture noundef %sinfo) #2 align 64 {
entry:
  %linkspeed.i = alloca i32, align 4
  %rssi.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp.not = icmp eq i32 %idx, 0
  br i1 %cmp.not, label %if.end, label %wiphy_priv.exit.cleanup_crit_edge

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %bssid = getelementptr inbounds %struct.rndis_wlan_private, ptr %priv.i, i32 0, i32 32
  %2 = call ptr @memcpy(ptr %mac, ptr %bssid, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %linkspeed.i) #13
  %3 = ptrtoint ptr %linkspeed.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %linkspeed.i, align 4, !annotation !513
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rssi.i) #13
  %4 = ptrtoint ptr %rssi.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rssi.i, align 4, !annotation !513
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #13
  %5 = call ptr @memset(ptr %sinfo, i32 0, i32 208)
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len.i, align 4
  %call.i = call fastcc i32 @rndis_query_oid(ptr noundef %1, i32 noundef 65799, ptr noundef nonnull %linkspeed.i, ptr noundef nonnull %len.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %linkspeed.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %linkspeed.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  %div.i = udiv i32 %9, 1000
  %conv.i = trunc i32 %div.i to i16
  %legacy.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 2
  %10 = ptrtoint ptr %legacy.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %legacy.i, align 2
  %11 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %sinfo, align 8
  %or.i = or i64 %12, 256
  store i64 %or.i, ptr %sinfo, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %len.i, align 4
  %call1.i = call fastcc i32 @rndis_query_oid(ptr noundef %1, i32 noundef 218169862, ptr noundef nonnull %rssi.i, ptr noundef nonnull %len.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %if.then4.i, label %if.end.i.rndis_fill_station_info.exit_crit_edge

if.end.i.rndis_fill_station_info.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rndis_fill_station_info.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %rssi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rssi.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #13
  %17 = mul i32 %16, 100
  %mul.i.i = add i32 %17, 9600
  %div.i.i = sdiv i32 %mul.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %mul.i.i)
  %cmp.i.i = icmp sgt i32 %mul.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 6464, i32 %mul.i.i)
  %cmp1.i.i = icmp slt i32 %mul.i.i, 6464
  %18 = trunc i32 %div.i.i to i8
  %19 = select i1 %cmp1.i.i, i8 %18, i8 100
  %conv6.i = select i1 %cmp.i.i, i8 %19, i8 0
  %signal.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %20 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv6.i, ptr %signal.i, align 1
  %21 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %sinfo, align 8
  %or8.i = or i64 %22, 128
  store i64 %or8.i, ptr %sinfo, align 8
  br label %rndis_fill_station_info.exit

rndis_fill_station_info.exit:                     ; preds = %if.then4.i, %if.end.i.rndis_fill_station_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rssi.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %linkspeed.i) #13
  br label %cleanup

cleanup:                                          ; preds = %rndis_fill_station_info.exit, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rndis_fill_station_info.exit ], [ -2, %wiphy_priv.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_scan(ptr nocapture noundef readnone %wiphy, ptr noundef %request) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wdev = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 10
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 8
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  %driver_priv.i = getelementptr i8, ptr %3, i32 2320
  %4 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_scan.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_scan, %if.then)) #13
          to label %do.end7 [label %if.then], !srcloc !512

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr i8, ptr %3, i32 2548
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_scan.__UNIQUE_ID_ddebug402, ptr noundef %7, ptr noundef nonnull @.str.48) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %call8 = tail call fastcc i32 @rndis_check_bssid_list(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null)
  %scan_request = getelementptr inbounds %struct.rndis_wlan_private, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scan_request, align 4
  %tobool9.not = icmp eq ptr %9, null
  %cmp.not = icmp eq ptr %9, %request
  %or.cond = or i1 %tobool9.not, %cmp.not
  br i1 %or.cond, label %if.end12, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  %10 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %request, ptr %scan_request, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777216, ptr %tmp.i, align 4
  %call.i = call fastcc i32 @rndis_set_oid(ptr noundef %add.ptr.i, i32 noundef 218169626, ptr noundef nonnull %tmp.i, i32 noundef 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15 = icmp eq i32 %call.i, 0
  br i1 %cmp15, label %if.then16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %device_type = getelementptr inbounds %struct.rndis_wlan_private, ptr %5, i32 0, i32 17
  %12 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp17 = icmp eq i32 %13, 1
  %spec.select = select i1 %cmp17, i32 100, i32 600
  %workqueue = getelementptr inbounds %struct.rndis_wlan_private, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %workqueue, align 4
  %scan_work = getelementptr inbounds %struct.rndis_wlan_private, ptr %5, i32 0, i32 5
  %call.i37 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %scan_work, i32 noundef %spec.select) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end12.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end7.cleanup_crit_edge ], [ 0, %if.then16 ], [ %call.i, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_connect(ptr noundef %wiphy, ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %sme) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %len.i.i = alloca i32, align 4
  %bssid.i = alloca [6 x i8], align 4
  %ssid = alloca %struct.ndis_80211_ssid, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %sme to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sme, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ssid) #13
  %4 = call ptr @memset(ptr %ssid, i32 255, i32 36)
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %wiphy_priv.exit.if.end_crit_edge, label %if.then

wiphy_priv.exit.if.end_crit_edge:                 ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %6, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %wiphy_priv.exit.if.end_crit_edge
  %chan.0 = phi i32 [ %call.i, %if.then ], [ -1, %wiphy_priv.exit.if.end_crit_edge ]
  %crypto = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11
  %cipher_group = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %cipher_group to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cipher_group, align 4
  %switch.tableidx = add i32 %8, -1027073
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 5
  br i1 %9, label %switch.lookup, label %if.end.rndis_cipher_to_alg.exit_crit_edge

if.end.rndis_cipher_to_alg.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rndis_cipher_to_alg.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rndis_connect, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %rndis_cipher_to_alg.exit

rndis_cipher_to_alg.exit:                         ; preds = %switch.lookup, %if.end.rndis_cipher_to_alg.exit_crit_edge
  %retval.0.i384 = phi i32 [ 0, %if.end.rndis_cipher_to_alg.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %n_ciphers_pairwise = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 2
  %11 = ptrtoint ptr %n_ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_ciphers_pairwise, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp424 = icmp sgt i32 %12, 0
  br i1 %cmp424, label %rndis_cipher_to_alg.exit.for.body_crit_edge, label %rndis_cipher_to_alg.exit.for.cond14.preheader_crit_edge

rndis_cipher_to_alg.exit.for.cond14.preheader_crit_edge: ; preds = %rndis_cipher_to_alg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond14.preheader

rndis_cipher_to_alg.exit.for.body_crit_edge:      ; preds = %rndis_cipher_to_alg.exit
  br label %for.body

for.body:                                         ; preds = %rndis_cipher_to_alg.exit389.for.body_crit_edge, %rndis_cipher_to_alg.exit.for.body_crit_edge
  %pairwise.0426 = phi i32 [ %or, %rndis_cipher_to_alg.exit389.for.body_crit_edge ], [ 0, %rndis_cipher_to_alg.exit.for.body_crit_edge ]
  %i.0425 = phi i32 [ %inc, %rndis_cipher_to_alg.exit389.for.body_crit_edge ], [ 0, %rndis_cipher_to_alg.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 3, i32 %i.0425
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %switch.tableidx443 = add i32 %14, -1027073
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx443)
  %15 = icmp ult i32 %switch.tableidx443, 5
  br i1 %15, label %switch.lookup442, label %for.body.rndis_cipher_to_alg.exit389_crit_edge

for.body.rndis_cipher_to_alg.exit389_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %rndis_cipher_to_alg.exit389

switch.lookup442:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep444 = getelementptr inbounds [5 x i32], ptr @switch.table.rndis_connect.186, i32 0, i32 %switch.tableidx443
  %16 = ptrtoint ptr %switch.gep444 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load445 = load i32, ptr %switch.gep444, align 4
  br label %rndis_cipher_to_alg.exit389

rndis_cipher_to_alg.exit389:                      ; preds = %switch.lookup442, %for.body.rndis_cipher_to_alg.exit389_crit_edge
  %retval.0.i388 = phi i32 [ 0, %for.body.rndis_cipher_to_alg.exit389_crit_edge ], [ %switch.load445, %switch.lookup442 ]
  %or = or i32 %retval.0.i388, %pairwise.0426
  %inc = add nuw nsw i32 %i.0425, 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %for.end, label %rndis_cipher_to_alg.exit389.for.body_crit_edge

rndis_cipher_to_alg.exit389.for.body_crit_edge:   ; preds = %rndis_cipher_to_alg.exit389
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %rndis_cipher_to_alg.exit389
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp11 = icmp eq i32 %or, 0
  %or.cond = select i1 %cmp424, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.then12, label %for.end.for.cond14.preheader_crit_edge

for.end.for.cond14.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.end.for.cond14.preheader_crit_edge, %rndis_cipher_to_alg.exit.for.cond14.preheader_crit_edge
  %pairwise.0.lcssa437 = phi i32 [ %or, %for.end.for.cond14.preheader_crit_edge ], [ 0, %rndis_cipher_to_alg.exit.for.cond14.preheader_crit_edge ]
  %n_akm_suites = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 4
  %17 = ptrtoint ptr %n_akm_suites to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_akm_suites, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp16428 = icmp sgt i32 %18, 0
  br i1 %cmp16428, label %for.cond14.preheader.for.body17_crit_edge, label %for.cond14.preheader.do.body33_crit_edge

for.cond14.preheader.do.body33_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body33

for.cond14.preheader.for.body17_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body17

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.55) #16
  br label %cleanup

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond14.preheader.for.body17_crit_edge
  %keymgmt.0430 = phi i32 [ %or21, %for.body17.for.body17_crit_edge ], [ 0, %for.cond14.preheader.for.body17_crit_edge ]
  %i.1429 = phi i32 [ %inc23, %for.body17.for.body17_crit_edge ], [ 0, %for.cond14.preheader.for.body17_crit_edge ]
  %arrayidx19 = getelementptr %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 5, i32 %i.1429
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %22)
  %switch.selectcmp.i = icmp eq i32 %22, 1027074
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027073, i32 %22)
  %switch.selectcmp2.i = icmp eq i32 %22, 1027073
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 1, i32 %switch.select.i
  %or21 = or i32 %switch.select3.i, %keymgmt.0430
  %inc23 = add nuw nsw i32 %i.1429, 1
  %exitcond433.not = icmp eq i32 %inc23, %18
  br i1 %exitcond433.not, label %for.end24, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17

for.end24:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or21)
  %cmp29 = icmp eq i32 %or21, 0
  %or.cond362 = select i1 %cmp16428, i1 %cmp29, i1 false
  br i1 %or.cond362, label %if.then30, label %for.end24.do.body33_crit_edge

for.end24.do.body33_crit_edge:                    ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body33

if.then30:                                        ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #15
  %net31 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %23 = ptrtoint ptr %net31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net31, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.56) #16
  br label %cleanup

do.body33:                                        ; preds = %for.end24.do.body33_crit_edge, %for.cond14.preheader.do.body33_crit_edge
  %keymgmt.0.lcssa441 = phi i32 [ %or21, %for.end24.do.body33_crit_edge ], [ 0, %for.cond14.preheader.do.body33_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_connect.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_connect, %if.then38)) #13
          to label %do.end45 [label %if.then38], !srcloc !512

if.then38:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  %net39 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %25 = ptrtoint ptr %net39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net39, align 4
  %ssid40 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 4
  %27 = ptrtoint ptr %ssid40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ssid40, align 4
  %bssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 2
  %29 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bssid, align 4
  %privacy = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 9
  %31 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %privacy, align 4, !range !511
  %33 = zext i8 %32 to i32
  %34 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crypto, align 4
  %auth_type = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 6
  %36 = ptrtoint ptr %auth_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %auth_type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_connect.__UNIQUE_ID_ddebug410, ptr noundef %26, ptr noundef nonnull @.str.58, ptr noundef %28, ptr noundef %30, i32 noundef %chan.0, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %retval.0.i384, i32 noundef %pairwise.0.lcssa437, i32 noundef %keymgmt.0.lcssa441) #13
  br label %do.end45

do.end45:                                         ; preds = %if.then38, %do.body33
  %driver_priv.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bssid.i) #13
  %40 = getelementptr inbounds [6 x i8], ptr %bssid.i, i32 0, i32 4
  %radio_on.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %39, i32 0, i32 28
  %41 = call ptr @memset(ptr %bssid.i, i32 255, i32 6)
  %42 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %radio_on.i, align 4, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i390 = icmp eq i8 %43, 0
  br i1 %tobool.not.i390, label %do.end45.is_associated.exit.thread_crit_edge, label %if.end.i

do.end45.is_associated.exit.thread_crit_edge:     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_associated.exit.thread

if.end.i:                                         ; preds = %do.end45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #13
  %44 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 6, ptr %len.i.i, align 4
  %call.i.i = call fastcc i32 @rndis_query_oid(ptr noundef %1, i32 noundef 218169601, ptr noundef nonnull %bssid.i, ptr noundef nonnull %len.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #13
  br i1 %cmp.not.i.i, label %is_associated.exit, label %if.end.i.is_associated.exit.thread_crit_edge

if.end.i.is_associated.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_associated.exit.thread

is_associated.exit.thread:                        ; preds = %if.end.i.is_associated.exit.thread_crit_edge, %do.end45.is_associated.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid.i) #13
  br label %if.end49

is_associated.exit:                               ; preds = %if.end.i
  %45 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bssid.i, align 4
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %40, align 4
  %conv.i.i = zext i16 %48 to i32
  %or.i.i = or i32 %46, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid.i) #13
  br i1 %cmp.i.i.not, label %is_associated.exit.if.end49_crit_edge, label %if.then47

is_associated.exit.if.end49_crit_edge:            ; preds = %is_associated.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then47:                                        ; preds = %is_associated.exit
  %49 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver_priv.i.i, align 4
  %radio_on.i393 = getelementptr inbounds %struct.rndis_wlan_private, ptr %50, i32 0, i32 28
  %51 = ptrtoint ptr %radio_on.i393 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %radio_on.i393, align 4, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i394 = icmp eq i8 %52, 0
  br i1 %tobool.not.i394, label %if.then47.if.end49_crit_edge, label %if.then.i

if.then47.if.end49_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then.i:                                        ; preds = %if.then47
  %call1.i = tail call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169621, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.if.end49_crit_edge

if.then.i.if.end49_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %radio_on.i393 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %radio_on.i393, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disassociate.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_connect, %if.then10.i)) #13
          to label %if.end49 [label %if.then10.i], !srcloc !512

if.then10.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %54 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @disassociate.__UNIQUE_ID_ddebug373, ptr noundef %55, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141) #13
  br label %if.end49

if.end49:                                         ; preds = %if.then10.i, %if.then2.i, %if.then.i.if.end49_crit_edge, %if.then47.if.end49_crit_edge, %is_associated.exit.if.end49_crit_edge, %is_associated.exit.thread
  %call50 = tail call fastcc i32 @set_infra_mode(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.body55, label %if.end74

do.body55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_connect.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_connect, %if.then67)) #13
          to label %err_turn_radio_on [label %if.then67], !srcloc !512

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  %net68 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %56 = ptrtoint ptr %net68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net68, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_connect.__UNIQUE_ID_ddebug411, ptr noundef %57, ptr noundef nonnull @.str.59, i32 noundef %call50) #13
  br label %err_turn_radio_on

if.end74:                                         ; preds = %if.end49
  %58 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %crypto, align 4
  %auth_type77 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 6
  %60 = ptrtoint ptr %auth_type77 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %auth_type77, align 4
  %call78 = tail call fastcc i32 @set_auth_mode(ptr noundef %1, i32 noundef %59, i32 noundef %61, i32 noundef %keymgmt.0.lcssa441)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.body83, label %if.end102

do.body83:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_connect.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_connect, %if.then95)) #13
          to label %err_turn_radio_on [label %if.then95], !srcloc !512

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #15
  %net96 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %62 = ptrtoint ptr %net96 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %net96, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_connect.__UNIQUE_ID_ddebug412, ptr noundef %63, ptr noundef nonnull @.str.60, i32 noundef %call78) #13
  br label %err_turn_radio_on

if.end102:                                        ; preds = %if.end74
  %64 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_priv_filter.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_connect, %if.then.i397)) #13
          to label %set_priv_filter.exit [label %if.then.i397], !srcloc !512

if.then.i397:                                     ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %net.i396 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %66 = ptrtoint ptr %net.i396 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net.i396, align 4
  %wpa_version.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %65, i32 0, i32 36
  %68 = ptrtoint ptr %wpa_version.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wpa_version.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_priv_filter.__UNIQUE_ID_ddebug375, ptr noundef %67, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef %69) #13
  br label %set_priv_filter.exit

set_priv_filter.exit:                             ; preds = %if.then.i397, %if.end102
  %wpa_version8.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %65, i32 0, i32 36
  %70 = ptrtoint ptr %wpa_version8.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %wpa_version8.i, align 4
  %72 = and i32 %71, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %73 = icmp eq i32 %72, 0
  %storemerge.i = select i1 %73, i32 0, i32 16777216
  %74 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %storemerge.i, ptr %tmp.i, align 4
  %call15.i = call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169625, ptr noundef nonnull %tmp.i, i32 noundef 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  %call104 = tail call fastcc i32 @set_encr_mode(ptr noundef %1, i32 noundef %pairwise.0.lcssa437, i32 noundef %retval.0.i384)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.body109, label %if.end128

do.body109:                                       ; preds = %set_priv_filter.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_connect.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_connect, %if.then121)) #13
          to label %err_turn_radio_on [label %if.then121], !srcloc !512

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #15
  %net122 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %75 = ptrtoint ptr %net122 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %net122, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_connect.__UNIQUE_ID_ddebug413, ptr noundef %76, ptr noundef nonnull @.str.61, i32 noundef %call104) #13
  br label %err_turn_radio_on

if.end128:                                        ; preds = %set_priv_filter.exit
  br i1 %tobool.not, label %if.end128.if.end156_crit_edge, label %if.then130

if.end128.if.end156_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end156

if.then130:                                       ; preds = %if.end128
  %call131 = tail call fastcc i32 @set_channel(ptr noundef %1, i32 noundef %chan.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %do.body136, label %if.then130.if.end156_crit_edge

if.then130.if.end156_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end156

do.body136:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_connect.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_connect, %if.then148)) #13
          to label %err_turn_radio_on [label %if.then148], !srcloc !512

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #15
  %net149 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %77 = ptrtoint ptr %net149 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %net149, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_connect.__UNIQUE_ID_ddebug414, ptr noundef %78, ptr noundef nonnull @.str.62, i32 noundef %call131) #13
  br label %err_turn_radio_on

if.end156:                                        ; preds = %if.then130.if.end156_crit_edge, %if.end128.if.end156_crit_edge
  %key = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 12
  %79 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %key, align 4
  %tobool157.not = icmp eq ptr %80, null
  br i1 %tobool157.not, label %if.end156.if.end194_crit_edge, label %land.lhs.true158

if.end156.if.end194_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

land.lhs.true158:                                 ; preds = %if.end156
  %or159 = or i32 %pairwise.0.lcssa437, %retval.0.i384
  %and = and i32 %or159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool160.not = icmp eq i32 %and, 0
  br i1 %tobool160.not, label %land.lhs.true158.if.end194_crit_edge, label %if.then161

land.lhs.true158.if.end194_crit_edge:             ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

if.then161:                                       ; preds = %land.lhs.true158
  %key_idx = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 14
  %81 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %key_idx, align 1
  %encr_tx_key_index = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 2, i32 56, i32 12, i32 19
  %83 = ptrtoint ptr %encr_tx_key_index to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %encr_tx_key_index, align 4
  %84 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %key, align 4
  %key_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 13
  %86 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %key_len, align 4
  %conv163 = zext i8 %87 to i32
  %88 = load i8, ptr %key_idx, align 1
  %call165 = tail call fastcc i32 @add_wep_key(ptr noundef %1, ptr noundef %85, i32 noundef %conv163, i8 noundef zeroext %88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %do.body170, label %if.then161.if.end194_crit_edge

if.then161.if.end194_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

do.body170:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_connect.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_connect, %if.then182)) #13
          to label %err_turn_radio_on [label %if.then182], !srcloc !512

if.then182:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #15
  %net183 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %89 = ptrtoint ptr %net183 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %net183, align 4
  %91 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %key_len, align 4
  %conv185 = zext i8 %92 to i32
  %93 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %key_idx, align 1
  %conv187 = zext i8 %94 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_connect.__UNIQUE_ID_ddebug415, ptr noundef %90, ptr noundef nonnull @.str.63, i32 noundef %call165, i32 noundef %conv185, i32 noundef %conv187) #13
  br label %err_turn_radio_on

if.end194:                                        ; preds = %if.then161.if.end194_crit_edge, %land.lhs.true158.if.end194_crit_edge, %if.end156.if.end194_crit_edge
  %bssid195 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 2
  %95 = ptrtoint ptr %bssid195 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bssid195, align 4
  %tobool196.not = icmp eq ptr %96, null
  br i1 %tobool196.not, label %if.end194.if.else_crit_edge, label %land.lhs.true197

if.end194.if.else_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true197:                                 ; preds = %if.end194
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %add.ptr.i = getelementptr i8, ptr %96, i32 4
  %99 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %100 to i32
  %or.i = or i32 %98, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i398 = icmp eq i32 %or.i, 0
  br i1 %cmp.i398, label %land.lhs.true197.if.else_crit_edge, label %land.lhs.true200

land.lhs.true197.if.else_crit_edge:               ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true200:                                 ; preds = %land.lhs.true197
  %101 = ptrtoint ptr %96 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %96, align 2
  %add.ptr1.i = getelementptr i8, ptr %96, i32 2
  %103 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %102, %100
  %and510.i = and i16 %and9.i, %104
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i399 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i399, label %land.lhs.true200.if.else_crit_edge, label %if.then203

land.lhs.true200.if.else_crit_edge:               ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then203:                                       ; preds = %land.lhs.true200
  %call.i400 = tail call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169601, ptr noundef nonnull %96, i32 noundef 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i400)
  %cmp.i401 = icmp slt i32 %call.i400, 0
  br i1 %cmp.i401, label %do.body210, label %if.then203.if.end231_crit_edge

if.then203.if.end231_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end231

do.body210:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #15
  %net.i402 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %105 = ptrtoint ptr %net.i402 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %net.i402, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %106, ptr noundef nonnull @.str.75, ptr noundef nonnull %96, i32 noundef %call.i400) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_connect.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_connect, %if.then222)) #13
          to label %err_turn_radio_on [label %if.then222], !srcloc !512

if.then222:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %net.i402 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %net.i402, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_connect.__UNIQUE_ID_ddebug416, ptr noundef %108, ptr noundef nonnull @.str.64, i32 noundef %call.i400) #13
  br label %err_turn_radio_on

if.else:                                          ; preds = %land.lhs.true200.if.else_crit_edge, %land.lhs.true197.if.else_crit_edge, %if.end194.if.else_crit_edge
  %call.i.i404 = tail call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169601, ptr noundef nonnull @clear_bssid.broadcast_mac, i32 noundef 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i404)
  %cmp.i.i405 = icmp slt i32 %call.i.i404, 0
  br i1 %cmp.i.i405, label %if.then.i.i, label %if.else.if.end231_crit_edge

if.else.if.end231_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end231

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %109 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %net.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %110, ptr noundef nonnull @.str.75, ptr noundef nonnull @clear_bssid.broadcast_mac, i32 noundef %call.i.i404) #16
  br label %if.end231

if.end231:                                        ; preds = %if.then.i.i, %if.else.if.end231_crit_edge, %if.then203.if.end231_crit_edge
  %ssid_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 5
  %111 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ssid_len, align 4
  %113 = tail call i32 @llvm.smin.i32(i32 %112, i32 32)
  %114 = getelementptr inbounds i8, ptr %ssid, i32 4
  %115 = call ptr @memset(ptr %114, i32 0, i32 32)
  %116 = tail call i32 @llvm.bswap.i32(i32 %113)
  %117 = ptrtoint ptr %ssid to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %ssid, align 4
  %essid = getelementptr inbounds %struct.ndis_80211_ssid, ptr %ssid, i32 0, i32 1
  %ssid237 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 4
  %118 = ptrtoint ptr %ssid237 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ssid237, align 4
  %120 = call ptr @memcpy(ptr %essid, ptr %119, i32 %113)
  tail call void @usbnet_pause_rx(ptr noundef %1) #13
  tail call void @usbnet_purge_paused_rxq(ptr noundef %1) #13
  %121 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %driver_priv.i.i, align 4
  %call1.i407 = call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169602, ptr noundef nonnull %ssid, i32 noundef 36) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i407)
  %cmp.i408 = icmp slt i32 %call1.i407, 0
  br i1 %cmp.i408, label %do.body243, label %if.end.i411

if.end.i411:                                      ; preds = %if.end231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i407)
  %cmp2.i = icmp eq i32 %call1.i407, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i411.cleanup_crit_edge

if.end.i411.cleanup_crit_edge:                    ; preds = %if.end.i411
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i411
  call void @__sanitizer_cov_trace_pc() #15
  %radio_on.i412 = getelementptr inbounds %struct.rndis_wlan_private, ptr %122, i32 0, i32 28
  %123 = ptrtoint ptr %radio_on.i412 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %radio_on.i412, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_essid.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_connect, %if.then8.i)) #13
          to label %cleanup [label %if.then8.i], !srcloc !512

if.then8.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %net9.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %124 = ptrtoint ptr %net9.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %net9.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_essid.__UNIQUE_ID_ddebug372, ptr noundef %125, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77) #13
  br label %cleanup

do.body243:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #15
  %net.i409 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %126 = ptrtoint ptr %net.i409 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %net.i409, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %127, ptr noundef nonnull @.str.76, i32 noundef %call1.i407) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_connect.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_connect, %if.then255)) #13
          to label %cleanup [label %if.then255], !srcloc !512

if.then255:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #15
  %128 = ptrtoint ptr %net.i409 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %net.i409, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_connect.__UNIQUE_ID_ddebug417, ptr noundef %129, ptr noundef nonnull @.str.65, i32 noundef %call1.i407) #13
  br label %cleanup

err_turn_radio_on:                                ; preds = %if.then222, %do.body210, %if.then182, %do.body170, %if.then148, %do.body136, %if.then121, %do.body109, %if.then95, %do.body83, %if.then67, %do.body55
  %ret.0 = phi i32 [ %call50, %if.then67 ], [ %call78, %if.then95 ], [ %call104, %if.then121 ], [ %call131, %if.then148 ], [ %call165, %if.then182 ], [ %call.i400, %if.then222 ], [ %call50, %do.body55 ], [ %call78, %do.body83 ], [ %call104, %do.body109 ], [ %call131, %do.body136 ], [ %call165, %do.body170 ], [ %call.i400, %do.body210 ]
  %call263 = tail call fastcc i32 @disassociate(ptr noundef %1, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %err_turn_radio_on, %if.then255, %do.body243, %if.then8.i, %if.then3.i, %if.end.i411.cleanup_crit_edge, %if.then30, %if.then12
  %retval.0 = phi i32 [ -524, %if.then12 ], [ -524, %if.then30 ], [ %ret.0, %err_turn_radio_on ], [ %call1.i407, %if.then255 ], [ 0, %if.then3.i ], [ %call1.i407, %do.body243 ], [ %call1.i407, %if.end.i411.cleanup_crit_edge ], [ 0, %if.then8.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ssid) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_disconnect(ptr noundef %wiphy, ptr nocapture noundef readnone %dev, i16 noundef zeroext %reason_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_disconnect.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_disconnect, %if.then)) #13
          to label %do.end7 [label %if.then], !srcloc !512

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %conv = zext i16 %reason_code to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_disconnect.__UNIQUE_ID_ddebug418, ptr noundef %3, ptr noundef nonnull @.str.80, i32 noundef %conv) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %wiphy_priv.exit
  %connected = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 2, i32 56, i32 12, i32 16
  %4 = call ptr @memset(ptr %connected, i32 0, i32 7)
  %call.i = tail call fastcc i32 @disassociate(ptr noundef %1, i1 noundef zeroext true) #13
  tail call fastcc void @set_default_iw_params(ptr noundef %1) #13
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_join_ibss(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  %tmp.i284 = alloca i32, align 4
  %tmp.i279 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %len.i.i = alloca i32, align 4
  %bssid.i = alloca [6 x i8], align 4
  %ssid = alloca %struct.ndis_80211_ssid, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %chandef = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ssid) #13
  %4 = call ptr @memset(ptr %ssid, i32 255, i32 36)
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %wiphy_priv.exit.if.end_crit_edge, label %if.then

wiphy_priv.exit.if.end_crit_edge:                 ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %6, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %wiphy_priv.exit.if.end_crit_edge
  %chan2.0 = phi i32 [ %call.i, %if.then ], [ -1, %wiphy_priv.exit.if.end_crit_edge ]
  %privacy = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 9
  %7 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %privacy, align 1, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  %not.tobool4.not = xor i1 %tobool4.not, true
  %. = zext i1 %not.tobool4.not to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_join_ibss.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_join_ibss, %if.then12)) #13
          to label %do.end18 [label %if.then12], !srcloc !512

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net, align 4
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %params, align 4
  %bssid = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 1
  %13 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bssid, align 4
  %15 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %privacy, align 1, !range !511
  %17 = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_join_ibss.__UNIQUE_ID_ddebug419, ptr noundef %10, ptr noundef nonnull @.str.82, ptr noundef %12, ptr noundef %14, i32 noundef %chan2.0, i32 noundef %17) #13
  br label %do.end18

do.end18:                                         ; preds = %if.then12, %if.end
  %driver_priv.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bssid.i) #13
  %20 = getelementptr inbounds [6 x i8], ptr %bssid.i, i32 0, i32 4
  %radio_on.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %19, i32 0, i32 28
  %21 = call ptr @memset(ptr %bssid.i, i32 255, i32 6)
  %22 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %radio_on.i, align 4, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i270 = icmp eq i8 %23, 0
  br i1 %tobool.not.i270, label %do.end18.is_associated.exit.thread_crit_edge, label %if.end.i

do.end18.is_associated.exit.thread_crit_edge:     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_associated.exit.thread

if.end.i:                                         ; preds = %do.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #13
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6, ptr %len.i.i, align 4
  %call.i.i = call fastcc i32 @rndis_query_oid(ptr noundef %1, i32 noundef 218169601, ptr noundef nonnull %bssid.i, ptr noundef nonnull %len.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #13
  br i1 %cmp.not.i.i, label %is_associated.exit, label %if.end.i.is_associated.exit.thread_crit_edge

if.end.i.is_associated.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_associated.exit.thread

is_associated.exit.thread:                        ; preds = %if.end.i.is_associated.exit.thread_crit_edge, %do.end18.is_associated.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid.i) #13
  br label %if.end22

is_associated.exit:                               ; preds = %if.end.i
  %25 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bssid.i, align 4
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %20, align 4
  %conv.i.i = zext i16 %28 to i32
  %or.i.i = or i32 %26, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid.i) #13
  br i1 %cmp.i.i.not, label %is_associated.exit.if.end22_crit_edge, label %if.then20

is_associated.exit.if.end22_crit_edge:            ; preds = %is_associated.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then20:                                        ; preds = %is_associated.exit
  %29 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_priv.i.i, align 4
  %radio_on.i273 = getelementptr inbounds %struct.rndis_wlan_private, ptr %30, i32 0, i32 28
  %31 = ptrtoint ptr %radio_on.i273 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %radio_on.i273, align 4, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i274 = icmp eq i8 %32, 0
  br i1 %tobool.not.i274, label %if.then20.if.end22_crit_edge, label %if.then.i

if.then20.if.end22_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then.i:                                        ; preds = %if.then20
  %call1.i = tail call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169621, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.if.end22_crit_edge

if.then.i.if.end22_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %radio_on.i273 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %radio_on.i273, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disassociate.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_join_ibss, %if.then10.i)) #13
          to label %if.end22 [label %if.then10.i], !srcloc !512

if.then10.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %34 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @disassociate.__UNIQUE_ID_ddebug373, ptr noundef %35, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141) #13
  br label %if.end22

if.end22:                                         ; preds = %if.then10.i, %if.then2.i, %if.then.i.if.end22_crit_edge, %if.then20.if.end22_crit_edge, %is_associated.exit.if.end22_crit_edge, %is_associated.exit.thread
  %call23 = tail call fastcc i32 @set_infra_mode(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %do.body27, label %if.end46

do.body27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_join_ibss.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_join_ibss, %if.then39)) #13
          to label %err_turn_radio_on [label %if.then39], !srcloc !512

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #15
  %net40 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %36 = ptrtoint ptr %net40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_join_ibss.__UNIQUE_ID_ddebug420, ptr noundef %37, ptr noundef nonnull @.str.83, i32 noundef %call23) #13
  br label %err_turn_radio_on

if.end46:                                         ; preds = %if.end22
  %38 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_auth_mode.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_join_ibss, %if.then.i277)) #13
          to label %do.end7.i [label %if.then.i277], !srcloc !512

if.then.i277:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %net.i276 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %40 = ptrtoint ptr %net.i276 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net.i276, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_auth_mode.__UNIQUE_ID_ddebug374, ptr noundef %41, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef 0, i32 noundef %., i32 noundef 0) #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i277, %if.end46
  %spec.select = select i1 %tobool4.not, i32 0, i32 16777216
  %42 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.select, ptr %tmp.i, align 4
  %call42.i = call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169624, ptr noundef nonnull %tmp.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp43.not.i = icmp eq i32 %call42.i, 0
  br i1 %cmp43.not.i, label %set_auth_mode.exit.thread308, label %set_auth_mode.exit

set_auth_mode.exit.thread308:                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %wpa_version47.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %39, i32 0, i32 36
  %43 = ptrtoint ptr %wpa_version47.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %wpa_version47.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  br label %if.end71

set_auth_mode.exit:                               ; preds = %do.end7.i
  %net45.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %44 = ptrtoint ptr %net45.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net45.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %45, ptr noundef nonnull @.str.68, i32 noundef %call42.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp48 = icmp slt i32 %call42.i, 0
  br i1 %cmp48, label %do.body52, label %set_auth_mode.exit.if.end71_crit_edge

set_auth_mode.exit.if.end71_crit_edge:            ; preds = %set_auth_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

do.body52:                                        ; preds = %set_auth_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_join_ibss.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_join_ibss, %if.then64)) #13
          to label %err_turn_radio_on [label %if.then64], !srcloc !512

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %net45.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net45.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_join_ibss.__UNIQUE_ID_ddebug421, ptr noundef %47, ptr noundef nonnull @.str.84, i32 noundef %call42.i) #13
  br label %err_turn_radio_on

if.end71:                                         ; preds = %set_auth_mode.exit.if.end71_crit_edge, %set_auth_mode.exit.thread308
  %48 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i279) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_priv_filter.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_join_ibss, %if.then.i282)) #13
          to label %set_priv_filter.exit [label %if.then.i282], !srcloc !512

if.then.i282:                                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %net.i281 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %50 = ptrtoint ptr %net.i281 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net.i281, align 4
  %wpa_version.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %49, i32 0, i32 36
  %52 = ptrtoint ptr %wpa_version.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wpa_version.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_priv_filter.__UNIQUE_ID_ddebug375, ptr noundef %51, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef %53) #13
  br label %set_priv_filter.exit

set_priv_filter.exit:                             ; preds = %if.then.i282, %if.end71
  %wpa_version8.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %49, i32 0, i32 36
  %54 = ptrtoint ptr %wpa_version8.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wpa_version8.i, align 4
  %56 = and i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %57 = icmp eq i32 %56, 0
  %storemerge.i = select i1 %57, i32 0, i32 16777216
  %58 = ptrtoint ptr %tmp.i279 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %storemerge.i, ptr %tmp.i279, align 4
  %call15.i = call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169625, ptr noundef nonnull %tmp.i279, i32 noundef 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i279) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i284) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_encr_mode.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_join_ibss, %if.then.i286)) #13
          to label %do.end6.i [label %if.then.i286], !srcloc !512

if.then.i286:                                     ; preds = %set_priv_filter.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net.i285 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %59 = ptrtoint ptr %net.i285 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net.i285, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_encr_mode.__UNIQUE_ID_ddebug376, ptr noundef %60, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %., i32 noundef 0) #13
  br label %do.end6.i

do.end6.i:                                        ; preds = %if.then.i286, %set_priv_filter.exit
  %spec.select318 = select i1 %tobool4.not, i32 16777216, i32 0
  %61 = ptrtoint ptr %tmp.i284 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.select318, ptr %tmp.i284, align 4
  %call30.i = call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169627, ptr noundef nonnull %tmp.i284, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp.not.i = icmp eq i32 %call30.i, 0
  br i1 %cmp.not.i, label %set_encr_mode.exit.thread, label %set_encr_mode.exit

set_encr_mode.exit.thread:                        ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i284) #13
  br label %if.end97

set_encr_mode.exit:                               ; preds = %do.end6.i
  %net32.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %62 = ptrtoint ptr %net32.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %net32.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %63, ptr noundef nonnull @.str.26, i32 noundef %call30.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i284) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp74 = icmp slt i32 %call30.i, 0
  br i1 %cmp74, label %do.body78, label %set_encr_mode.exit.if.end97_crit_edge

set_encr_mode.exit.if.end97_crit_edge:            ; preds = %set_encr_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

do.body78:                                        ; preds = %set_encr_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_join_ibss.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_join_ibss, %if.then90)) #13
          to label %err_turn_radio_on [label %if.then90], !srcloc !512

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %net32.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %net32.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_join_ibss.__UNIQUE_ID_ddebug422, ptr noundef %65, ptr noundef nonnull @.str.85, i32 noundef %call30.i) #13
  br label %err_turn_radio_on

if.end97:                                         ; preds = %set_encr_mode.exit.if.end97_crit_edge, %set_encr_mode.exit.thread
  br i1 %tobool.not, label %if.end97.if.end125_crit_edge, label %if.then99

if.end97.if.end125_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

if.then99:                                        ; preds = %if.end97
  %call100 = tail call fastcc i32 @set_channel(ptr noundef %1, i32 noundef %chan2.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %do.body105, label %if.then99.if.end125_crit_edge

if.then99.if.end125_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

do.body105:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_join_ibss.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_join_ibss, %if.then117)) #13
          to label %err_turn_radio_on [label %if.then117], !srcloc !512

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #15
  %net118 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %66 = ptrtoint ptr %net118 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net118, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_join_ibss.__UNIQUE_ID_ddebug423, ptr noundef %67, ptr noundef nonnull @.str.86, i32 noundef %call100) #13
  br label %err_turn_radio_on

if.end125:                                        ; preds = %if.then99.if.end125_crit_edge, %if.end97.if.end125_crit_edge
  %bssid126 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 1
  %68 = ptrtoint ptr %bssid126 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bssid126, align 4
  %tobool127.not = icmp eq ptr %69, null
  br i1 %tobool127.not, label %if.end125.if.else160_crit_edge, label %land.lhs.true

if.end125.if.else160_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else160

land.lhs.true:                                    ; preds = %if.end125
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 4
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %73 to i32
  %or.i = or i32 %71, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i287 = icmp eq i32 %or.i, 0
  br i1 %cmp.i287, label %land.lhs.true.if.else160_crit_edge, label %land.lhs.true130

land.lhs.true.if.else160_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else160

land.lhs.true130:                                 ; preds = %land.lhs.true
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %69, align 2
  %add.ptr1.i = getelementptr i8, ptr %69, i32 2
  %76 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %75, %73
  %and510.i = and i16 %and9.i, %77
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i288 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i288, label %land.lhs.true130.if.else160_crit_edge, label %if.then133

land.lhs.true130.if.else160_crit_edge:            ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else160

if.then133:                                       ; preds = %land.lhs.true130
  %call.i289 = tail call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169601, ptr noundef nonnull %69, i32 noundef 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289)
  %cmp.i290 = icmp slt i32 %call.i289, 0
  br i1 %cmp.i290, label %do.body140, label %if.then133.if.end162_crit_edge

if.then133.if.end162_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end162

do.body140:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #15
  %net.i291 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %78 = ptrtoint ptr %net.i291 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %net.i291, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %79, ptr noundef nonnull @.str.75, ptr noundef nonnull %69, i32 noundef %call.i289) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_join_ibss.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_join_ibss, %if.then152)) #13
          to label %err_turn_radio_on [label %if.then152], !srcloc !512

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %net.i291 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %net.i291, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_join_ibss.__UNIQUE_ID_ddebug424, ptr noundef %81, ptr noundef nonnull @.str.87, i32 noundef %call.i289) #13
  br label %err_turn_radio_on

if.else160:                                       ; preds = %land.lhs.true130.if.else160_crit_edge, %land.lhs.true.if.else160_crit_edge, %if.end125.if.else160_crit_edge
  %call.i.i293 = tail call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169601, ptr noundef nonnull @clear_bssid.broadcast_mac, i32 noundef 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i293)
  %cmp.i.i294 = icmp slt i32 %call.i.i293, 0
  br i1 %cmp.i.i294, label %if.then.i.i, label %if.else160.if.end162_crit_edge

if.else160.if.end162_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end162

if.then.i.i:                                      ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #15
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %82 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %net.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %83, ptr noundef nonnull @.str.75, ptr noundef nonnull @clear_bssid.broadcast_mac, i32 noundef %call.i.i293) #16
  br label %if.end162

if.end162:                                        ; preds = %if.then.i.i, %if.else160.if.end162_crit_edge, %if.then133.if.end162_crit_edge
  %ssid_len = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 4
  %84 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ssid_len, align 4
  %86 = tail call i8 @llvm.umin.i8(i8 %85, i8 32)
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds i8, ptr %ssid, i32 4
  %89 = call ptr @memset(ptr %88, i32 0, i32 32)
  %90 = shl nuw nsw i32 %87, 24
  %91 = ptrtoint ptr %ssid to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %ssid, align 4
  %essid = getelementptr inbounds %struct.ndis_80211_ssid, ptr %ssid, i32 0, i32 1
  %92 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %params, align 4
  %94 = call ptr @memcpy(ptr %essid, ptr %93, i32 %87)
  tail call void @usbnet_purge_paused_rxq(ptr noundef %1) #13
  tail call void @usbnet_resume_rx(ptr noundef %1) #13
  %95 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %driver_priv.i.i, align 4
  %call1.i296 = call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169602, ptr noundef nonnull %ssid, i32 noundef 36) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i296)
  %cmp.i297 = icmp slt i32 %call1.i296, 0
  br i1 %cmp.i297, label %do.body175, label %if.end.i300

if.end.i300:                                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i296)
  %cmp2.i = icmp eq i32 %call1.i296, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i300.cleanup_crit_edge

if.end.i300.cleanup_crit_edge:                    ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #15
  %radio_on.i301 = getelementptr inbounds %struct.rndis_wlan_private, ptr %96, i32 0, i32 28
  %97 = ptrtoint ptr %radio_on.i301 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %radio_on.i301, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_essid.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_join_ibss, %if.then8.i)) #13
          to label %cleanup [label %if.then8.i], !srcloc !512

if.then8.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %net9.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %98 = ptrtoint ptr %net9.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %net9.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_essid.__UNIQUE_ID_ddebug372, ptr noundef %99, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77) #13
  br label %cleanup

do.body175:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #15
  %net.i298 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %100 = ptrtoint ptr %net.i298 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %net.i298, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %101, ptr noundef nonnull @.str.76, i32 noundef %call1.i296) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_join_ibss.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_join_ibss, %if.then187)) #13
          to label %cleanup [label %if.then187], !srcloc !512

if.then187:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #15
  %102 = ptrtoint ptr %net.i298 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %net.i298, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_join_ibss.__UNIQUE_ID_ddebug425, ptr noundef %103, ptr noundef nonnull @.str.88, i32 noundef %call1.i296) #13
  br label %cleanup

err_turn_radio_on:                                ; preds = %if.then152, %do.body140, %if.then117, %do.body105, %if.then90, %do.body78, %if.then64, %do.body52, %if.then39, %do.body27
  %ret.0 = phi i32 [ %call23, %if.then39 ], [ %call42.i, %if.then64 ], [ %call30.i, %if.then90 ], [ %call100, %if.then117 ], [ %call.i289, %if.then152 ], [ %call23, %do.body27 ], [ %call42.i, %do.body52 ], [ %call30.i, %do.body78 ], [ %call100, %do.body105 ], [ %call.i289, %do.body140 ]
  %call195 = tail call fastcc i32 @disassociate(ptr noundef %1, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %err_turn_radio_on, %if.then187, %do.body175, %if.then8.i, %if.then3.i, %if.end.i300.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_turn_radio_on ], [ %call1.i296, %if.then187 ], [ 0, %if.then3.i ], [ %call1.i296, %do.body175 ], [ %call1.i296, %if.end.i300.cleanup_crit_edge ], [ 0, %if.then8.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ssid) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_leave_ibss(ptr noundef %wiphy, ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_leave_ibss.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_leave_ibss, %if.then)) #13
          to label %do.end7 [label %if.then], !srcloc !512

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_leave_ibss.__UNIQUE_ID_ddebug426, ptr noundef %3, ptr noundef nonnull @.str.90) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %wiphy_priv.exit
  %connected = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 2, i32 56, i32 12, i32 16
  %4 = call ptr @memset(ptr %connected, i32 0, i32 7)
  %call.i = tail call fastcc i32 @disassociate(ptr noundef %1, i1 noundef zeroext true) #13
  tail call fastcc void @set_default_iw_params(ptr noundef %1) #13
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_set_tx_power(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %wdev, i32 noundef %type, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_set_tx_power.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_set_tx_power, %if.then)) #13
          to label %do.end7 [label %if.then], !srcloc !512

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_set_tx_power.__UNIQUE_ID_ddebug400, ptr noundef %3, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, i32 noundef %type, i32 noundef %mbm) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %wiphy_priv.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mbm)
  %cmp = icmp sgt i32 %mbm, -1
  %rem = srem i32 %mbm, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool8.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %tobool8.not
  br i1 %or.cond, label %if.end10, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp11 = icmp eq i32 %type, 0
  br i1 %cmp11, label %if.end10.if.then15_crit_edge, label %lor.lhs.false12

if.end10.if.then15_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

lor.lhs.false12:                                  ; preds = %if.end10
  %div31 = udiv i32 %mbm, 100
  %param_power_output.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 2, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %param_power_output.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param_power_output.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %switch.lookup, label %lor.lhs.false12.get_bcm4320_power_dbm.exit_crit_edge

lor.lhs.false12.get_bcm4320_power_dbm.exit_crit_edge: ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_bcm4320_power_dbm.exit

switch.lookup:                                    ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.rndis_set_tx_power, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_bcm4320_power_dbm.exit

get_bcm4320_power_dbm.exit:                       ; preds = %switch.lookup, %lor.lhs.false12.get_bcm4320_power_dbm.exit_crit_edge
  %retval.0.i29 = phi i32 [ 13, %lor.lhs.false12.get_bcm4320_power_dbm.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div31, i32 %retval.0.i29)
  %cmp14 = icmp eq i32 %div31, %retval.0.i29
  br i1 %cmp14, label %get_bcm4320_power_dbm.exit.if.then15_crit_edge, label %get_bcm4320_power_dbm.exit.cleanup_crit_edge

get_bcm4320_power_dbm.exit.cleanup_crit_edge:     ; preds = %get_bcm4320_power_dbm.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

get_bcm4320_power_dbm.exit.if.then15_crit_edge:   ; preds = %get_bcm4320_power_dbm.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

if.then15:                                        ; preds = %get_bcm4320_power_dbm.exit.if.then15_crit_edge, %if.end10.if.then15_crit_edge
  %radio_on = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 2, i32 56, i32 12, i32 13
  %8 = ptrtoint ptr %radio_on to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %radio_on, align 4, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool16.not = icmp eq i8 %9, 0
  br i1 %tobool16.not, label %if.then17, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = tail call fastcc i32 @disassociate(ptr noundef %1, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.then15.cleanup_crit_edge, %get_bcm4320_power_dbm.exit.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end7.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.then15.cleanup_crit_edge ], [ -524, %get_bcm4320_power_dbm.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_get_tx_power(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %wdev, ptr nocapture noundef %dbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %param_power_output.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 2, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %param_power_output.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param_power_output.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %wiphy_priv.exit.get_bcm4320_power_dbm.exit_crit_edge

wiphy_priv.exit.get_bcm4320_power_dbm.exit_crit_edge: ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_bcm4320_power_dbm.exit

switch.lookup:                                    ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.rndis_get_tx_power, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_bcm4320_power_dbm.exit

get_bcm4320_power_dbm.exit:                       ; preds = %switch.lookup, %wiphy_priv.exit.get_bcm4320_power_dbm.exit_crit_edge
  %retval.0.i11 = phi i32 [ 13, %wiphy_priv.exit.get_bcm4320_power_dbm.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %6 = ptrtoint ptr %dbm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i11, ptr %dbm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_get_tx_power.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_get_tx_power, %if.then)) #13
          to label %do.end8 [label %if.then], !srcloc !512

if.then:                                          ; preds = %get_bcm4320_power_dbm.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  %9 = ptrtoint ptr %dbm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dbm, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_get_tx_power.__UNIQUE_ID_ddebug401, ptr noundef %8, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93, i32 noundef %10) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then, %get_bcm4320_power_dbm.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_set_pmksa(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %netdev, ptr nocapture noundef readonly %pmksa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %pmkid = getelementptr inbounds %struct.cfg80211_pmksa, ptr %pmksa, i32 0, i32 1
  %2 = ptrtoint ptr %pmkid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmkid, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_set_pmksa.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_set_pmksa, %if.then)) #13
          to label %do.end11 [label %if.then], !srcloc !512

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %6 = ptrtoint ptr %pmksa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmksa, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %arrayidx7 = getelementptr i32, ptr %3, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %3, i32 2
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr i32, ptr %3, i32 3
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_set_pmksa.__UNIQUE_ID_ddebug431, ptr noundef %5, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #13
  br label %do.end11

do.end11:                                         ; preds = %if.then, %wiphy_priv.exit
  %call12 = tail call fastcc ptr @get_device_pmkids(ptr noundef %1)
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %do.end11
  %max_num_pmkids = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 43
  %17 = ptrtoint ptr %max_num_pmkids to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_num_pmkids, align 2
  %conv = zext i8 %18 to i32
  %call17 = tail call fastcc ptr @update_pmkid(ptr noundef %1, ptr noundef %call12, ptr noundef %pmksa, i32 noundef %conv)
  %cmp.i40 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %bssid_info_count.i = getelementptr inbounds %struct.ndis_80211_pmkid, ptr %call17, i32 0, i32 1
  %20 = ptrtoint ptr %bssid_info_count.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %bssid_info_count.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #13
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 22) #13
  %24 = extractvalue { i32, i1 } %23, 1
  %25 = extractvalue { i32, i1 } %23, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %25, i32 8) #13
  %retval.0.i22.i = select i1 %24, i32 -1, i32 %spec.select.i.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i22.i) #13
  %27 = ptrtoint ptr %call17 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %call17, align 1
  %call2.i = tail call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169635, ptr noundef %call17, i32 noundef %retval.0.i22.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i41 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i41, label %do.body3.i, label %if.end21.set_device_pmkids.exit_crit_edge

if.end21.set_device_pmkids.exit_crit_edge:        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_device_pmkids.exit

do.body3.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_device_pmkids.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_set_pmksa, %if.then7.i)) #13
          to label %set_device_pmkids.exit [label %if.then7.i], !srcloc !512

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %28 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_device_pmkids.__UNIQUE_ID_ddebug397, ptr noundef %29, ptr noundef nonnull @.str.98, ptr noundef nonnull @__func__.set_device_pmkids, i32 noundef %retval.0.i22.i, i32 noundef %22, i32 noundef %call2.i) #13
  br label %set_device_pmkids.exit

set_device_pmkids.exit:                           ; preds = %if.then7.i, %do.body3.i, %if.end21.set_device_pmkids.exit_crit_edge
  tail call void @kfree(ptr noundef %call17) #13
  br label %cleanup

cleanup:                                          ; preds = %set_device_pmkids.exit, %if.then19, %if.then14
  %retval.0 = phi i32 [ %16, %if.then14 ], [ %19, %if.then19 ], [ %call2.i, %set_device_pmkids.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_del_pmksa(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %netdev, ptr nocapture noundef readonly %pmksa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %pmkid = getelementptr inbounds %struct.cfg80211_pmksa, ptr %pmksa, i32 0, i32 1
  %2 = ptrtoint ptr %pmkid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmkid, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_del_pmksa.__UNIQUE_ID_ddebug432, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_del_pmksa, %if.then)) #13
          to label %do.end11 [label %if.then], !srcloc !512

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %6 = ptrtoint ptr %pmksa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmksa, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %arrayidx7 = getelementptr i32, ptr %3, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %3, i32 2
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr i32, ptr %3, i32 3
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_del_pmksa.__UNIQUE_ID_ddebug432, ptr noundef %5, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.101, ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #13
  br label %do.end11

do.end11:                                         ; preds = %if.then, %wiphy_priv.exit
  %call12 = tail call fastcc ptr @get_device_pmkids(ptr noundef %1)
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %do.end11
  %max_num_pmkids = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 43
  %17 = ptrtoint ptr %max_num_pmkids to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_num_pmkids, align 2
  %conv = zext i8 %18 to i32
  %call17 = tail call fastcc ptr @remove_pmkid(ptr noundef %1, ptr noundef %call12, ptr noundef %pmksa, i32 noundef %conv)
  %cmp.i40 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %bssid_info_count.i = getelementptr inbounds %struct.ndis_80211_pmkid, ptr %call17, i32 0, i32 1
  %20 = ptrtoint ptr %bssid_info_count.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %bssid_info_count.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #13
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 22) #13
  %24 = extractvalue { i32, i1 } %23, 1
  %25 = extractvalue { i32, i1 } %23, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %25, i32 8) #13
  %retval.0.i22.i = select i1 %24, i32 -1, i32 %spec.select.i.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i22.i) #13
  %27 = ptrtoint ptr %call17 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %call17, align 1
  %call2.i = tail call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169635, ptr noundef %call17, i32 noundef %retval.0.i22.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i41 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i41, label %do.body3.i, label %if.end21.set_device_pmkids.exit_crit_edge

if.end21.set_device_pmkids.exit_crit_edge:        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_device_pmkids.exit

do.body3.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_device_pmkids.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_del_pmksa, %if.then7.i)) #13
          to label %set_device_pmkids.exit [label %if.then7.i], !srcloc !512

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %28 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_device_pmkids.__UNIQUE_ID_ddebug397, ptr noundef %29, ptr noundef nonnull @.str.98, ptr noundef nonnull @__func__.set_device_pmkids, i32 noundef %retval.0.i22.i, i32 noundef %22, i32 noundef %call2.i) #13
  br label %set_device_pmkids.exit

set_device_pmkids.exit:                           ; preds = %if.then7.i, %do.body3.i, %if.end21.set_device_pmkids.exit_crit_edge
  tail call void @kfree(ptr noundef %call17) #13
  br label %cleanup

cleanup:                                          ; preds = %set_device_pmkids.exit, %if.then19, %if.then14
  %retval.0 = phi i32 [ %16, %if.then14 ], [ %19, %if.then19 ], [ %call2.i, %set_device_pmkids.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_flush_pmksa(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %netdev) #2 align 64 {
entry:
  %pmkid = alloca %struct.ndis_80211_pmkid, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pmkid) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_flush_pmksa.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_flush_pmksa, %if.then)) #13
          to label %do.end7 [label %if.then], !srcloc !512

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_flush_pmksa.__UNIQUE_ID_ddebug433, ptr noundef %3, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.104) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %wiphy_priv.exit
  %4 = ptrtoint ptr %pmkid to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 576460752303423488, ptr %pmkid, align 8
  %call8 = call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169635, ptr noundef nonnull %pmkid, i32 noundef 8)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pmkid) #13
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_set_power_mgmt(ptr noundef %wiphy, ptr nocapture noundef readnone %dev, i1 noundef zeroext %enabled, i32 noundef %timeout) #2 align 64 {
entry:
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #13
  %device_type = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 2, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %2 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %do.body2, label %wiphy_priv.exit.cleanup_crit_edge

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body2:                                         ; preds = %wiphy_priv.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_set_power_mgmt.__UNIQUE_ID_ddebug434, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_set_power_mgmt, %if.then7)) #13
          to label %do.end11 [label %if.then7], !srcloc !512

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %cond = select i1 %enabled, ptr @.str.107, ptr @.str.108
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_set_power_mgmt.__UNIQUE_ID_ddebug434, ptr noundef %5, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, ptr noundef nonnull %cond, i32 noundef %timeout) #13
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body2
  %. = select i1 %enabled, i32 2, i32 0
  %power_mode15 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 2, i32 56, i32 12, i32 14
  %6 = ptrtoint ptr %power_mode15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_mode15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %7)
  %cmp16 = icmp eq i32 %., %7
  br i1 %cmp16, label %do.end11.cleanup_crit_edge, label %if.end18

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %power_mode15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %., ptr %power_mode15, align 4
  %9 = shl nuw nsw i32 %., 24
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mode, align 4
  %call20 = call fastcc i32 @rndis_set_oid(ptr noundef %1, i32 noundef 218169878, ptr noundef nonnull %mode, i32 noundef 4)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_set_power_mgmt.__UNIQUE_ID_ddebug435, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_set_power_mgmt, %if.then34)) #13
          to label %cleanup [label %if.then34], !srcloc !512

if.then34:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %net35 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %net35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_set_power_mgmt.__UNIQUE_ID_ddebug435, ptr noundef %12, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.105, i32 noundef %call20) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end18, %do.end11.cleanup_crit_edge, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %wiphy_priv.exit.cleanup_crit_edge ], [ 0, %do.end11.cleanup_crit_edge ], [ %call20, %if.then34 ], [ %call20, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_set_cqm_rssi_config(ptr noundef writeonly %wiphy, ptr nocapture noundef readnone %dev, i32 noundef %rssi_thold, i32 noundef %rssi_hyst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !514

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !515
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cqm_rssi_thold = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 71
  %0 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rssi_thold, ptr %cqm_rssi_thold, align 4
  %cqm_rssi_hyst = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 72
  %1 = ptrtoint ptr %cqm_rssi_hyst to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %rssi_hyst, ptr %cqm_rssi_hyst, align 4
  %last_cqm_event_rssi = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 73
  %2 = ptrtoint ptr %last_cqm_event_rssi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %last_cqm_event_rssi, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_infra_mode(ptr noundef %usbdev, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  %key.i.i = alloca %struct.rndis_wlan_encr_key, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_infra_mode.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_infra_mode, %if.then)) #13
          to label %do.end7 [label %if.then], !srcloc !512

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %infra_mode = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %infra_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %infra_mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_infra_mode.__UNIQUE_ID_ddebug377, ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef %5) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %6 = tail call i32 @llvm.bswap.i32(i32 %mode)
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp, align 4
  %call8 = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169608, ptr noundef nonnull %tmp, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  br i1 %cmp.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.17, i32 noundef %call8) #16
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %material.i.i = getelementptr inbounds %struct.rndis_wlan_encr_key, ptr %key.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %restore_key.exit.i.for.body.i_crit_edge, %if.end11
  %i.03.i = phi i32 [ 0, %if.end11 ], [ %inc.i, %restore_key.exit.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.03.i to i8
  %10 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %key.i.i) #13
  %cipher1.i.i.i = getelementptr %struct.rndis_wlan_private, ptr %11, i32 0, i32 35, i32 %i.03.i, i32 1
  %12 = ptrtoint ptr %cipher1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cipher1.i.i.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %13, label %if.end.i.i [
    i32 1027076, label %for.body.i.restore_key.exit.i_crit_edge
    i32 1027074, label %for.body.i.restore_key.exit.i_crit_edge24
  ]

for.body.i.restore_key.exit.i_crit_edge24:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %restore_key.exit.i

for.body.i.restore_key.exit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %restore_key.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %arrayidx.i.i = getelementptr %struct.rndis_wlan_private, ptr %11, i32 0, i32 35, i32 %i.03.i
  %15 = call ptr @memcpy(ptr %key.i.i, ptr %arrayidx.i.i, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @restore_key.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_infra_mode, %if.then6.i.i)) #13
          to label %do.end9.i.i [label %if.then6.i.i], !srcloc !512

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i.i, align 4
  %18 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @restore_key.__UNIQUE_ID_ddebug392, ptr noundef %17, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %i.03.i, i32 noundef %19) #13
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %if.then6.i.i, %if.end.i.i
  %20 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i, label %do.end9.i.i.restore_key.exit.i_crit_edge, label %if.end13.i.i

do.end9.i.i.restore_key.exit.i_crit_edge:         ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %restore_key.exit.i

if.end13.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i.i = call fastcc i32 @add_wep_key(ptr noundef %usbdev, ptr noundef %material.i.i, i32 noundef %21, i8 noundef zeroext %conv.i) #13
  br label %restore_key.exit.i

restore_key.exit.i:                               ; preds = %if.end13.i.i, %do.end9.i.i.restore_key.exit.i_crit_edge, %for.body.i.restore_key.exit.i_crit_edge, %for.body.i.restore_key.exit.i_crit_edge24
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %key.i.i) #13
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %restore_keys.exit, label %restore_key.exit.i.for.body.i_crit_edge

restore_key.exit.i.for.body.i_crit_edge:          ; preds = %restore_key.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

restore_keys.exit:                                ; preds = %restore_key.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %infra_mode12 = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 30
  %22 = ptrtoint ptr %infra_mode12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mode, ptr %infra_mode12, align 4
  br label %cleanup

cleanup:                                          ; preds = %restore_keys.exit, %if.then9
  %retval.0 = phi i32 [ %call8, %if.then9 ], [ 0, %restore_keys.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_wep_key(ptr noundef %usbdev, ptr nocapture noundef readonly %key, i32 noundef %key_len, i8 noundef zeroext %index) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %ndis_key = alloca %struct.ndis_80211_wep_key, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ndis_key) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_wep_key.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_wep_key, %if.then)) #13
          to label %do.end6 [label %if.then], !srcloc !512

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %conv = zext i8 %index to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @add_wep_key.__UNIQUE_ID_ddebug384, ptr noundef %3, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %conv, i32 noundef %key_len) #13
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %conv7 = zext i8 %index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %index)
  %cmp = icmp ugt i8 %index, 3
  br i1 %cmp, label %do.end6.cleanup_crit_edge, label %if.end10

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %do.end6
  %4 = zext i32 %key_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %key_len, label %if.end10.cleanup_crit_edge [
    i32 5, label %if.end10.if.end19_crit_edge
    i32 13, label %if.then16
  ]

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end10.if.end19_crit_edge
  %cipher.0 = phi i32 [ 1027077, %if.then16 ], [ 1027073, %if.end10.if.end19_crit_edge ]
  %5 = getelementptr inbounds i8, ptr %ndis_key, i32 12
  %6 = call ptr @memset(ptr %5, i32 0, i32 32)
  %7 = ptrtoint ptr %ndis_key to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 738197504, ptr %ndis_key, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %key_len)
  %length = getelementptr inbounds %struct.ndis_80211_wep_key, ptr %ndis_key, i32 0, i32 2
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %length, align 4
  %10 = shl nuw i32 %conv7, 24
  %index21 = getelementptr inbounds %struct.ndis_80211_wep_key, ptr %ndis_key, i32 0, i32 1
  %11 = ptrtoint ptr %index21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %index21, align 4
  %material = getelementptr inbounds %struct.ndis_80211_wep_key, ptr %ndis_key, i32 0, i32 3
  %12 = call ptr @memcpy(ptr %material, ptr %key, i32 %key_len)
  %encr_tx_key_index = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 34
  %13 = ptrtoint ptr %encr_tx_key_index to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %encr_tx_key_index, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %index)
  %cmp24 = icmp eq i8 %14, %index
  br i1 %cmp24, label %if.then26, label %if.end19.if.end33_crit_edge

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then26:                                        ; preds = %if.end19
  %or = or i32 %10, 128
  %15 = ptrtoint ptr %index21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %index21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_encr_mode.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_wep_key, %if.then.i)) #13
          to label %do.end6.i [label %if.then.i], !srcloc !512

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %16 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_encr_mode.__UNIQUE_ID_ddebug376, ptr noundef %17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef 0) #13
  br label %do.end6.i

do.end6.i:                                        ; preds = %if.then.i, %if.then26
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tmp.i, align 4
  %call30.i = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169627, ptr noundef nonnull %tmp.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp.not.i = icmp eq i32 %call30.i, 0
  br i1 %cmp.not.i, label %set_encr_mode.exit.thread, label %if.then30

set_encr_mode.exit.thread:                        ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  br label %if.end33

if.then30:                                        ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %net32.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %19 = ptrtoint ptr %net32.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net32.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.26, i32 noundef %call30.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  %21 = ptrtoint ptr %net32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net32.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.22, i32 noundef %call30.i) #16
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %set_encr_mode.exit.thread, %if.end19.if.end33_crit_edge
  %call34 = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169619, ptr noundef nonnull %ndis_key, i32 noundef 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %net38 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %23 = ptrtoint ptr %net38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net38, align 4
  %add = add nuw nsw i32 %conv7, 1
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.23, i32 noundef %add, i32 noundef %call34) #16
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.rndis_wlan_private, ptr %1, i32 0, i32 35, i32 %conv7
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %key_len, ptr %arrayidx, align 4
  %cipher44 = getelementptr %struct.rndis_wlan_private, ptr %1, i32 0, i32 35, i32 %conv7, i32 1
  %26 = ptrtoint ptr %cipher44 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cipher.0, ptr %cipher44, align 4
  %material48 = getelementptr %struct.rndis_wlan_private, ptr %1, i32 0, i32 35, i32 %conv7, i32 2
  %27 = call ptr @memcpy(ptr %material48, ptr %key, i32 %key_len)
  %bssid = getelementptr %struct.rndis_wlan_private, ptr %1, i32 0, i32 35, i32 %conv7, i32 3
  %28 = call ptr @memset(ptr %bssid, i32 255, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then37, %if.end10.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.then37 ], [ 0, %if.end40 ], [ -22, %do.end6.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ndis_key) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_encr_mode(ptr noundef %usbdev, i32 noundef %pairwise, i32 noundef %groupwise) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_encr_mode.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_encr_mode, %if.then)) #13
          to label %do.end6 [label %if.then], !srcloc !512

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_encr_mode.__UNIQUE_ID_ddebug376, ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %pairwise, i32 noundef %groupwise) #13
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %and = and i32 %pairwise, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %do.end6.if.end29_crit_edge

do.end6.if.end29_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.else:                                          ; preds = %do.end6
  %and9 = and i32 %pairwise, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else12, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.else12:                                        ; preds = %if.else
  %and13 = and i32 %pairwise, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else16, label %if.else12.if.end29_crit_edge

if.else12.if.end29_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.else16:                                        ; preds = %if.else12
  %and17 = and i32 %groupwise, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else20, label %if.else16.if.end29_crit_edge

if.else16.if.end29_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.else20:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #15
  %and21 = and i32 %groupwise, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %. = select i1 %tobool22.not, i32 16777216, i32 67108864
  br label %if.end29

if.end29:                                         ; preds = %if.else20, %if.else16.if.end29_crit_edge, %if.else12.if.end29_crit_edge, %if.else.if.end29_crit_edge, %do.end6.if.end29_crit_edge
  %encr_mode.0 = phi i32 [ 100663296, %do.end6.if.end29_crit_edge ], [ 67108864, %if.else.if.end29_crit_edge ], [ 0, %if.else12.if.end29_crit_edge ], [ 100663296, %if.else16.if.end29_crit_edge ], [ %., %if.else20 ]
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %encr_mode.0, ptr %tmp, align 4
  %call30 = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169627, ptr noundef nonnull %tmp, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp.not = icmp eq i32 %call30, 0
  br i1 %cmp.not, label %if.end29.cleanup_crit_edge, label %if.then31

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %net32 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %3 = ptrtoint ptr %net32 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net32, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef %call30) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end29.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #13
  ret i32 %call30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_wpa_key(ptr noundef %usbdev, ptr nocapture noundef readonly %key, i32 noundef %key_len, i8 noundef zeroext %index, ptr noundef %addr, ptr noundef readonly %rx_seq, i32 noundef %seq_len, i32 noundef %cipher, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  %ndis_key = alloca %struct.ndis_80211_key, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ndis_key) #13
  %conv = zext i8 %index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %index)
  %cmp = icmp ugt i8 %index, 3
  br i1 %cmp, label %do.body2, label %if.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_wpa_key.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_wpa_key, %if.then6)) #13
          to label %cleanup [label %if.then6], !srcloc !512

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @add_wpa_key.__UNIQUE_ID_ddebug385, ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %conv) #13
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %key_len)
  %cmp11 = icmp ugt i32 %key_len, 32
  br i1 %cmp11, label %do.body17, label %if.end36

do.body17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_wpa_key.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_wpa_key, %if.then29)) #13
          to label %cleanup [label %if.then29], !srcloc !512

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #15
  %net30 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %4 = ptrtoint ptr %net30 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net30, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @add_wpa_key.__UNIQUE_ID_ddebug386, ptr noundef %5, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %key_len) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end10
  %and = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end36.if.end90_crit_edge, label %if.then38

if.end36.if.end90_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then38:                                        ; preds = %if.end36
  %tobool39.not = icmp eq ptr %rx_seq, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %seq_len)
  %cmp41 = icmp slt i32 %seq_len, 1
  %or.cond = or i1 %tobool39.not, %cmp41
  br i1 %or.cond, label %do.body45, label %land.lhs.true

do.body45:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_wpa_key.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_wpa_key, %if.then57)) #13
          to label %cleanup [label %if.then57], !srcloc !512

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  %net58 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %6 = ptrtoint ptr %net58 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net58, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @add_wpa_key.__UNIQUE_ID_ddebug387, ptr noundef %7, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30) #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %seq_len)
  %cmp66 = icmp ugt i32 %seq_len, 8
  br i1 %cmp66, label %do.body70, label %land.lhs.true.if.end90_crit_edge

land.lhs.true.if.end90_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

do.body70:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_wpa_key.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_wpa_key, %if.then82)) #13
          to label %cleanup [label %if.then82], !srcloc !512

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #15
  %net83 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %8 = ptrtoint ptr %net83 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net83, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @add_wpa_key.__UNIQUE_ID_ddebug388, ptr noundef %9, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.30) #13
  br label %cleanup

if.end90:                                         ; preds = %land.lhs.true.if.end90_crit_edge, %if.end36.if.end90_crit_edge
  %tobool91.not = icmp eq ptr %addr, null
  br i1 %tobool91.not, label %if.end90.land.end_crit_edge, label %land.lhs.true92

if.end90.land.end_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true92:                                  ; preds = %if.end90
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %13 to i32
  %or.i = or i32 %11, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true92.land.end_crit_edge, label %land.rhs

land.lhs.true92.land.end_crit_edge:               ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 2
  %add.ptr1.i = getelementptr i8, ptr %addr, i32 2
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %15, %13
  %and510.i = and i16 %and9.i, %17
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i339 = icmp ne i16 %and510.i, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true92.land.end_crit_edge, %if.end90.land.end_crit_edge
  %18 = phi i1 [ false, %land.lhs.true92.land.end_crit_edge ], [ false, %if.end90.land.end_crit_edge ], [ %cmp.i339, %land.rhs ]
  %and98 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  %brmerge = select i1 %tobool99.not, i1 true, i1 %18
  br i1 %brmerge, label %do.body125, label %do.body104

do.body104:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_wpa_key.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_wpa_key, %if.then116)) #13
          to label %cleanup [label %if.then116], !srcloc !512

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #15
  %net117 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %19 = ptrtoint ptr %net117 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net117, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @add_wpa_key.__UNIQUE_ID_ddebug389, ptr noundef %20, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.30, ptr noundef %addr) #13
  br label %cleanup

do.body125:                                       ; preds = %land.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_wpa_key.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_wpa_key, %if.then137)) #13
          to label %do.end162 [label %if.then137], !srcloc !512

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #15
  %net138 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %21 = ptrtoint ptr %net138 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net138, align 4
  %and140 = lshr i32 %flags, 7
  %and140.lobit = and i32 %and140, 1
  %and98.lobit = lshr exact i32 %and98, 6
  %and.lobit = lshr exact i32 %and, 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @add_wpa_key.__UNIQUE_ID_ddebug390, ptr noundef %22, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %and140.lobit, i32 noundef %and98.lobit, i32 noundef %and.lobit) #13
  br label %do.end162

do.end162:                                        ; preds = %if.then137, %do.body125
  %23 = getelementptr inbounds i8, ptr %ndis_key, i32 12
  %24 = call ptr @memset(ptr %23, i32 0, i32 52)
  %add = add nuw nsw i32 %key_len, 32
  %25 = tail call i32 @llvm.bswap.i32(i32 %add)
  %26 = ptrtoint ptr %ndis_key to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ndis_key, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %key_len)
  %length = getelementptr inbounds %struct.ndis_80211_key, ptr %ndis_key, i32 0, i32 2
  %28 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %length, align 4
  %29 = shl nuw i32 %conv, 24
  %or = or i32 %29, %flags
  %index164 = getelementptr inbounds %struct.ndis_80211_key, ptr %ndis_key, i32 0, i32 1
  %30 = ptrtoint ptr %index164 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or, ptr %index164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %cipher)
  %cmp165 = icmp eq i32 %cipher, 1027074
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %key_len)
  %cmp168 = icmp eq i32 %key_len, 32
  %or.cond320 = and i1 %cmp168, %cmp165
  %material = getelementptr inbounds %struct.ndis_80211_key, ptr %ndis_key, i32 0, i32 6
  br i1 %or.cond320, label %if.then170, label %if.else

if.then170:                                       ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #15
  %31 = call ptr @memcpy(ptr %material, ptr %key, i32 16)
  %add.ptr = getelementptr inbounds %struct.ndis_80211_key, ptr %ndis_key, i32 0, i32 6, i32 16
  %add.ptr173 = getelementptr i8, ptr %key, i32 24
  %32 = ptrtoint ptr %add.ptr173 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %add.ptr173, align 1
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %add.ptr, align 4
  %add.ptr176 = getelementptr inbounds %struct.ndis_80211_key, ptr %ndis_key, i32 0, i32 6, i32 24
  %add.ptr177 = getelementptr i8, ptr %key, i32 16
  %35 = ptrtoint ptr %add.ptr177 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %add.ptr177, align 1
  %37 = ptrtoint ptr %add.ptr176 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %add.ptr176, align 4
  br label %if.end180

if.else:                                          ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #15
  %38 = call ptr @memcpy(ptr %material, ptr %key, i32 %key_len)
  br label %if.end180

if.end180:                                        ; preds = %if.else, %if.then170
  br i1 %tobool37.not, label %if.end180.if.end185_crit_edge, label %if.then183

if.end180.if.end185_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.then183:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #15
  %rsc = getelementptr inbounds %struct.ndis_80211_key, ptr %ndis_key, i32 0, i32 5
  %39 = call ptr @memcpy(ptr %rsc, ptr %rx_seq, i32 %seq_len)
  br label %if.end185

if.end185:                                        ; preds = %if.then183, %if.end180.if.end185_crit_edge
  br i1 %tobool99.not, label %if.else190, label %if.then188

if.then188:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #15
  %bssid = getelementptr inbounds %struct.ndis_80211_key, ptr %ndis_key, i32 0, i32 3
  %40 = call ptr @memcpy(ptr %bssid, ptr %addr, i32 6)
  br label %if.end201

if.else190:                                       ; preds = %if.end185
  %infra_mode = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 30
  %41 = ptrtoint ptr %infra_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %infra_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp191 = icmp eq i32 %42, 0
  %bssid194 = getelementptr inbounds %struct.ndis_80211_key, ptr %ndis_key, i32 0, i32 3
  br i1 %cmp191, label %if.then193, label %if.else196

if.then193:                                       ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #15
  %43 = call ptr @memset(ptr %bssid194, i32 255, i32 6)
  br label %if.end201

if.else196:                                       ; preds = %if.else190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #13
  %44 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 6, ptr %len.i, align 4
  %call.i = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 218169601, ptr noundef %bssid194, ptr noundef nonnull %len.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.else196.get_bssid.exit_crit_edge, label %if.then.i

if.else196.get_bssid.exit_crit_edge:              ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_bssid.exit

if.then.i:                                        ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #15
  %45 = call ptr @memset(ptr %bssid194, i32 0, i32 6)
  br label %get_bssid.exit

get_bssid.exit:                                   ; preds = %if.then.i, %if.else196.get_bssid.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #13
  br label %if.end201

if.end201:                                        ; preds = %get_bssid.exit, %if.then193, %if.then188
  %46 = ptrtoint ptr %ndis_key to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ndis_key, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %call203 = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169629, ptr noundef nonnull %ndis_key, i32 noundef %48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_wpa_key.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_wpa_key, %if.then217)) #13
          to label %do.end223 [label %if.then217], !srcloc !512

if.then217:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #15
  %net218 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %49 = ptrtoint ptr %net218 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net218, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @add_wpa_key.__UNIQUE_ID_ddebug391, ptr noundef %50, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.30, i32 noundef %call203) #13
  br label %do.end223

do.end223:                                        ; preds = %if.then217, %if.end201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %cmp224.not = icmp eq i32 %call203, 0
  br i1 %cmp224.not, label %if.end227, label %do.end223.cleanup_crit_edge

do.end223.cleanup_crit_edge:                      ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end227:                                        ; preds = %do.end223
  %arrayidx = getelementptr %struct.rndis_wlan_private, ptr %1, i32 0, i32 35, i32 %conv
  %51 = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %52 = call ptr @memset(ptr %51, i32 0, i32 44)
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %key_len, ptr %arrayidx, align 4
  %cipher234 = getelementptr %struct.rndis_wlan_private, ptr %1, i32 0, i32 35, i32 %conv, i32 1
  %54 = ptrtoint ptr %cipher234 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cipher, ptr %cipher234, align 4
  %material238 = getelementptr %struct.rndis_wlan_private, ptr %1, i32 0, i32 35, i32 %conv, i32 2
  %55 = call ptr @memcpy(ptr %material238, ptr %key, i32 %key_len)
  %bssid252 = getelementptr %struct.rndis_wlan_private, ptr %1, i32 0, i32 35, i32 %conv, i32 3
  br i1 %tobool99.not, label %if.else248, label %if.then241

if.then241:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  %bssid246 = getelementptr inbounds %struct.ndis_80211_key, ptr %ndis_key, i32 0, i32 3
  %56 = call ptr @memcpy(ptr %bssid252, ptr %bssid246, i32 6)
  br label %if.end254

if.else248:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  %57 = call ptr @memset(ptr %bssid252, i32 255, i32 6)
  br label %if.end254

if.end254:                                        ; preds = %if.else248, %if.then241
  %and255 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  br i1 %tobool256.not, label %if.end254.cleanup_crit_edge, label %if.then257

if.end254.cleanup_crit_edge:                      ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then257:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #15
  %encr_tx_key_index = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 34
  %58 = ptrtoint ptr %encr_tx_key_index to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %index, ptr %encr_tx_key_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then257, %if.end254.cleanup_crit_edge, %do.end223.cleanup_crit_edge, %if.then116, %do.body104, %if.then82, %do.body70, %if.then57, %do.body45, %if.then29, %do.body17, %if.then6, %do.body2
  %retval.0 = phi i32 [ -22, %if.then6 ], [ -22, %if.then29 ], [ -22, %if.then57 ], [ -22, %if.then82 ], [ -22, %if.then116 ], [ %call203, %do.end223.cleanup_crit_edge ], [ 0, %if.then257 ], [ 0, %if.end254.cleanup_crit_edge ], [ -22, %do.body2 ], [ -22, %do.body17 ], [ -22, %do.body45 ], [ -22, %do.body70 ], [ -22, %do.body104 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ndis_key) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @remove_key(ptr noundef %usbdev, i8 noundef zeroext %index, ptr noundef readonly %bssid) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %remove_key = alloca %struct.ndis_80211_remove_key, align 4
  %keyindex = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %remove_key) #13
  %2 = getelementptr inbounds %struct.ndis_80211_remove_key, ptr %remove_key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ndis_80211_remove_key, ptr %remove_key, i32 0, i32 2
  %4 = getelementptr inbounds i8, ptr %remove_key, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 -1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %keyindex) #13
  %conv = zext i8 %index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %index)
  %cmp = icmp ugt i8 %index, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.rndis_wlan_private, ptr %1, i32 0, i32 35, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cipher1.i = getelementptr %struct.rndis_wlan_private, ptr %1, i32 0, i32 35, i32 %conv, i32 1
  %8 = ptrtoint ptr %cipher1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cipher1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remove_key.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remove_key, %if.then12)) #13
          to label %do.end22 [label %if.then12], !srcloc !512

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027076, i32 %9)
  %cmp.i = icmp eq i32 %9, 1027076
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %9)
  %cmp2.i = icmp eq i32 %9, 1027074
  %spec.select.i = or i1 %cmp.i, %cmp2.i
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  %cond = select i1 %spec.select.i, ptr @.str.42, ptr @.str.43
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @remove_key.__UNIQUE_ID_ddebug393, ptr noundef %11, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %conv, ptr noundef nonnull %cond, i32 noundef %13) #13
  br label %do.end22

do.end22:                                         ; preds = %if.then12, %if.end5
  %14 = call ptr @memset(ptr %arrayidx, i32 0, i32 48)
  %15 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %9, label %if.else42 [
    i32 1027076, label %do.end22.if.then24_crit_edge
    i32 1027074, label %do.end22.if.then24_crit_edge91
  ]

do.end22.if.then24_crit_edge91:                   ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

do.end22.if.then24_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

if.then24:                                        ; preds = %do.end22.if.then24_crit_edge, %do.end22.if.then24_crit_edge91
  %16 = ptrtoint ptr %remove_key to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 268435456, ptr %remove_key, align 4
  %17 = shl nuw i32 %conv, 24
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %2, align 4
  %tobool27.not = icmp eq ptr %bssid, null
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then24
  %19 = ptrtoint ptr %bssid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bssid, align 2
  %add.ptr1.i = getelementptr i8, ptr %bssid, i32 2
  %21 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %22, %20
  %add.ptr3.i = getelementptr i8, ptr %bssid, i32 4
  %23 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %24
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i89 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i89, label %if.then28.if.end32_crit_edge, label %if.then30

if.then28.if.end32_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %17, 64
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or, ptr %2, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then28.if.end32_crit_edge
  %26 = call ptr @memcpy(ptr %3, ptr %bssid, i32 6)
  br label %if.end36

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %27 = call ptr @memset(ptr %3, i32 255, i32 6)
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end32
  %call37 = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169630, ptr noundef nonnull %remove_key, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %if.end36.if.end51_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end36.if.end51_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.else42:                                        ; preds = %do.end22
  %28 = shl nuw i32 %conv, 24
  %29 = ptrtoint ptr %keyindex to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %keyindex, align 4
  %call44 = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169620, ptr noundef nonnull %keyindex, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %if.else42.if.end51_crit_edge, label %if.then47

if.else42.if.end51_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then47:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #15
  %net48 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %30 = ptrtoint ptr %net48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net48, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.44, i32 noundef %conv, i32 noundef %call44) #16
  br label %cleanup

if.end51:                                         ; preds = %if.else42.if.end51_crit_edge, %if.end36.if.end51_crit_edge
  %encr_tx_key_index = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 34
  %32 = ptrtoint ptr %encr_tx_key_index to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %encr_tx_key_index, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %index)
  %cmp54 = icmp eq i8 %33, %index
  br i1 %cmp54, label %if.then56, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then56:                                        ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_encr_mode.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remove_key, %if.then.i)) #13
          to label %do.end6.i [label %if.then.i], !srcloc !512

if.then.i:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %34 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_encr_mode.__UNIQUE_ID_ddebug376, ptr noundef %35, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0) #13
  br label %do.end6.i

do.end6.i:                                        ; preds = %if.then.i, %if.then56
  %36 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16777216, ptr %tmp.i, align 4
  %call30.i = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169627, ptr noundef nonnull %tmp.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp.not.i = icmp eq i32 %call30.i, 0
  br i1 %cmp.not.i, label %do.end6.i.set_encr_mode.exit_crit_edge, label %if.then31.i

do.end6.i.set_encr_mode.exit_crit_edge:           ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_encr_mode.exit

if.then31.i:                                      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %net32.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %37 = ptrtoint ptr %net32.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net32.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %38, ptr noundef nonnull @.str.26, i32 noundef %call30.i) #16
  br label %set_encr_mode.exit

set_encr_mode.exit:                               ; preds = %if.then31.i, %do.end6.i.set_encr_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  br label %cleanup

cleanup:                                          ; preds = %set_encr_mode.exit, %if.end51.cleanup_crit_edge, %if.then47, %if.end36.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call44, %if.then47 ], [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ], [ 0, %set_encr_mode.exit ], [ 0, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %keyindex) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %remove_key) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rndis_check_bssid_list(ptr noundef %usbdev, ptr noundef readonly %match_bssid, ptr noundef writeonly %matched) unnamed_addr #2 align 64 {
entry:
  %new_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_len) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_check_bssid_list.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_check_bssid_list, %if.then)) #13
          to label %if.end8.i.i [label %if.then], !srcloc !512

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_check_bssid_list.__UNIQUE_ID_ddebug406, ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49) #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then15, %if.then, %entry
  %len.0 = phi i32 [ %4, %if.then15 ], [ 1025, %entry ], [ 1025, %if.then ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len.0, i32 noundef 3520) #18
  %tobool7.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool7.not, label %if.end8.i.i.out_crit_edge, label %if.end9

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end9:                                          ; preds = %if.end8.i.i
  %2 = ptrtoint ptr %new_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len.0, ptr %new_len, align 4
  %call10 = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 218169879, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %new_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false:                                    ; preds = %if.end9
  %3 = ptrtoint ptr %new_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %new_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp11 = icmp ult i32 %4, 4
  br i1 %cmp11, label %lor.lhs.false.out_crit_edge, label %if.end13

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end13:                                         ; preds = %lor.lhs.false
  %cmp14 = icmp sgt i32 %4, %len.0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %if.end8.i.i

if.end16:                                         ; preds = %if.end13
  %5 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call9.i.i, align 128
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_check_bssid_list.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_check_bssid_list, %if.then30)) #13
          to label %do.end36 [label %if.then30], !srcloc !512

if.then30:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %net31 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %8 = ptrtoint ptr %net31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_check_bssid_list.__UNIQUE_ID_ddebug407, ptr noundef %9, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef %4) #13
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %if.end16
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 %4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %10 = and i32 %4, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp.i = icmp eq i32 %10, 4
  br i1 %cmp.i, label %do.end36.do.body52_crit_edge, label %next_bssid_list_item.exit

do.end36.do.body52_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body52

next_bssid_list_item.exit:                        ; preds = %do.end36
  %bssid37 = getelementptr inbounds %struct.ndis_80211_bssid_list_ex, ptr %call9.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %bssid37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bssid37, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i104133 = icmp slt i32 %13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %4)
  %cmp2.i135 = icmp sgt i32 %13, %4
  %or.cond16.i136 = or i1 %cmp2.i135, %cmp.i104133
  br i1 %or.cond16.i136, label %next_bssid_list_item.exit.do.body52_crit_edge, label %check_bssid_list_item.exit.lr.ph

next_bssid_list_item.exit.do.body52_crit_edge:    ; preds = %next_bssid_list_item.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body52

check_bssid_list_item.exit.lr.ph:                 ; preds = %next_bssid_list_item.exit
  %sub.ptr.rhs.cast6.i = ptrtoint ptr %call9.i.i to i32
  %tobool41.not = icmp eq ptr %match_bssid, null
  %tobool43.not = icmp eq ptr %matched, null
  %add.ptr1.i111 = getelementptr i8, ptr %match_bssid, i32 4
  br label %check_bssid_list_item.exit

check_bssid_list_item.exit:                       ; preds = %next_bssid_list_item.exit122.check_bssid_list_item.exit_crit_edge, %check_bssid_list_item.exit.lr.ph
  %bssid.0139 = phi ptr [ %bssid37, %check_bssid_list_item.exit.lr.ph ], [ %add.ptr3.i, %next_bssid_list_item.exit122.check_bssid_list_item.exit_crit_edge ]
  %real_count.0138 = phi i32 [ 0, %check_bssid_list_item.exit.lr.ph ], [ %inc, %next_bssid_list_item.exit122.check_bssid_list_item.exit_crit_edge ]
  %bssid_len.0137 = phi i32 [ %13, %check_bssid_list_item.exit.lr.ph ], [ %27, %next_bssid_list_item.exit122.check_bssid_list_item.exit_crit_edge ]
  %add.ptr3.i = getelementptr i8, ptr %bssid.0139, i32 %bssid_len.0137
  %sub.ptr.rhs.cast.i107 = ptrtoint ptr %add.ptr3.i to i32
  %sub.ptr.sub.i108 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i107
  %sub.ptr.sub7.i = sub i32 %sub.ptr.rhs.cast.i107, %sub.ptr.rhs.cast6.i
  %14 = or i32 %sub.ptr.sub.i108, %sub.ptr.sub7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %while.body, label %check_bssid_list_item.exit.do.body52_crit_edge

check_bssid_list_item.exit.do.body52_crit_edge:   ; preds = %check_bssid_list_item.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body52

while.body:                                       ; preds = %check_bssid_list_item.exit
  %call40 = tail call fastcc zeroext i1 @rndis_bss_info_update(ptr noundef %usbdev, ptr noundef nonnull %bssid.0139)
  %call40.not = xor i1 %call40, true
  %or.cond = or i1 %tobool41.not, %call40.not
  %or.cond96 = or i1 %tobool43.not, %or.cond
  br i1 %or.cond96, label %while.body.if.end49_crit_edge, label %if.then44

while.body.if.end49_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then44:                                        ; preds = %while.body
  %mac = getelementptr inbounds %struct.ndis_80211_bssid_ex, ptr %bssid.0139, i32 0, i32 1
  %16 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mac, align 4
  %18 = ptrtoint ptr %match_bssid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %match_bssid, align 4
  %xor.i = xor i32 %19, %17
  %add.ptr.i110 = getelementptr %struct.ndis_80211_bssid_ex, ptr %bssid.0139, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %add.ptr.i110 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i110, align 2
  %22 = ptrtoint ptr %add.ptr1.i111 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr1.i111, align 2
  %xor37.i = xor i16 %23, %21
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i112 = icmp eq i32 %or.i, 0
  br i1 %cmp.i112, label %if.then47, label %if.then44.if.end49_crit_edge

if.then44.if.end49_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %matched to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %matched, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.then44.if.end49_crit_edge, %while.body.if.end49_crit_edge
  %inc = add i32 %real_count.0138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i108)
  %cmp.i118 = icmp ult i32 %sub.ptr.sub.i108, 4
  br i1 %cmp.i118, label %if.end49.do.body52_crit_edge, label %next_bssid_list_item.exit122

if.end49.do.body52_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body52

next_bssid_list_item.exit122:                     ; preds = %if.end49
  %25 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %add.ptr3.i, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  %tobool.not.i = icmp eq ptr %add.ptr3.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i104 = icmp slt i32 %27, 1
  %or.cond.i = or i1 %cmp.i104, %tobool.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %4)
  %cmp2.i = icmp sgt i32 %27, %4
  %or.cond16.i = or i1 %cmp2.i, %or.cond.i
  br i1 %or.cond16.i, label %next_bssid_list_item.exit122.do.body52_crit_edge, label %next_bssid_list_item.exit122.check_bssid_list_item.exit_crit_edge

next_bssid_list_item.exit122.check_bssid_list_item.exit_crit_edge: ; preds = %next_bssid_list_item.exit122
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_bssid_list_item.exit

next_bssid_list_item.exit122.do.body52_crit_edge: ; preds = %next_bssid_list_item.exit122
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body52

do.body52:                                        ; preds = %next_bssid_list_item.exit122.do.body52_crit_edge, %if.end49.do.body52_crit_edge, %check_bssid_list_item.exit.do.body52_crit_edge, %next_bssid_list_item.exit.do.body52_crit_edge, %do.end36.do.body52_crit_edge
  %real_count.0.lcssa = phi i32 [ 0, %next_bssid_list_item.exit.do.body52_crit_edge ], [ 0, %do.end36.do.body52_crit_edge ], [ %inc, %if.end49.do.body52_crit_edge ], [ %inc, %next_bssid_list_item.exit122.do.body52_crit_edge ], [ %real_count.0138, %check_bssid_list_item.exit.do.body52_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_check_bssid_list.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_check_bssid_list, %if.then64)) #13
          to label %out [label %if.then64], !srcloc !512

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  %net65 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %28 = ptrtoint ptr %net65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net65, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_check_bssid_list.__UNIQUE_ID_ddebug408, ptr noundef %29, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.49, i32 noundef %7, i32 noundef %real_count.0.lcssa) #13
  br label %out

out:                                              ; preds = %if.then64, %do.body52, %lor.lhs.false.out_crit_edge, %if.end9.out_crit_edge, %if.end8.i.i.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then64 ], [ 0, %do.body52 ], [ 0, %lor.lhs.false.out_crit_edge ], [ %call10, %if.end9.out_crit_edge ], [ -12, %if.end8.i.i.out_crit_edge ]
  tail call void @kfree(ptr noundef %call9.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_len) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rndis_bss_info_update(ptr nocapture noundef readonly %usbdev, ptr noundef %bssid) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca %struct.cfg80211_inform_bss, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_bss_info_update.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_bss_info_update, %if.then)) #13
          to label %do.end7 [label %if.then], !srcloc !512

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %essid = getelementptr inbounds %struct.ndis_80211_bssid_ex, ptr %bssid, i32 0, i32 3, i32 1
  %mac = getelementptr inbounds %struct.ndis_80211_bssid_ex, ptr %bssid, i32 0, i32 1
  %4 = ptrtoint ptr %bssid to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %bssid, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_bss_info_update.__UNIQUE_ID_ddebug403, ptr noundef %3, ptr noundef nonnull @.str.54, ptr noundef %essid, ptr noundef %mac, i32 noundef %6) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %7 = ptrtoint ptr %bssid to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %bssid, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %9)
  %cmp = icmp ult i32 %9, 128
  br i1 %cmp, label %do.end7.cleanup_crit_edge, label %if.end10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  %ies = getelementptr inbounds %struct.ndis_80211_bssid_ex, ptr %bssid, i32 0, i32 11
  %add.ptr = getelementptr %struct.ndis_80211_bssid_ex, ptr %bssid, i32 1, i32 3
  %sub = add i32 %9, -116
  %ie_length = getelementptr inbounds %struct.ndis_80211_bssid_ex, ptr %bssid, i32 0, i32 10
  %10 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %ie_length, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %12)
  %sub16 = add i32 %13, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub16)
  %cmp17 = icmp slt i32 %sub16, 0
  br i1 %cmp17, label %if.end10.cleanup_crit_edge, label %if.end19

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %wdev = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wdev, align 4
  %ds_config = getelementptr inbounds %struct.ndis_80211_bssid_ex, ptr %bssid, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %ds_config to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %ds_config, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = urem i32 %18, 1000
  %mul.i = sub i32 %18, %19
  %call.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %15, i32 noundef %mul.i) #13
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %rssi = getelementptr inbounds %struct.ndis_80211_bssid_ex, ptr %bssid, i32 0, i32 5
  %20 = ptrtoint ptr %rssi to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %rssi, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = mul i32 %22, 100
  %mul.i68 = add i32 %23, 9600
  %div.i = sdiv i32 %mul.i68, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %mul.i68)
  %cmp.i = icmp sgt i32 %mul.i68, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 6464, i32 %mul.i68)
  %cmp1.i = icmp slt i32 %mul.i68, 6464
  %spec.select.i = select i1 %cmp1.i, i32 %div.i, i32 100
  %cond5.i = select i1 %cmp.i, i32 %spec.select.i, i32 0
  %24 = ptrtoint ptr %ies to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %ies, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %capabilities = getelementptr inbounds %struct.ndis_80211_bssid_ex, ptr %bssid, i32 1, i32 2
  %27 = ptrtoint ptr %capabilities to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %capabilities, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %beacon_interval27 = getelementptr inbounds %struct.ndis_80211_bssid_ex, ptr %bssid, i32 1, i32 1, i32 4
  %30 = ptrtoint ptr %beacon_interval27 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %beacon_interval27, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %33 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wdev, align 4
  %mac30 = getelementptr inbounds %struct.ndis_80211_bssid_ex, ptr %bssid, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i) #13
  %35 = getelementptr inbounds i8, ptr %data.i, i32 8
  %36 = call ptr @memset(ptr %35, i32 0, i32 40)
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %data.i, align 8
  %scan_width.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i, i32 0, i32 1
  %38 = ptrtoint ptr %scan_width.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %scan_width.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond5.i, ptr %35, align 8
  %call.i69 = call ptr @cfg80211_inform_bss_data(ptr noundef %34, ptr noundef nonnull %data.i, i32 noundef 0, ptr noundef %mac30, i64 noundef %26, i16 noundef zeroext %29, i16 noundef zeroext %32, ptr noundef %add.ptr, i32 noundef %sub16, i32 noundef 3264) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #13
  %40 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wdev, align 4
  call void @cfg80211_put_bss(ptr noundef %41, ptr noundef %call.i69) #13
  %cmp35 = icmp ne ptr %call.i69, null
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp35, %if.end23 ], [ false, %do.end7.cleanup_crit_edge ], [ false, %if.end10.cleanup_crit_edge ], [ false, %if.end19.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_auth_mode(ptr noundef %usbdev, i32 noundef %wpa_version, i32 noundef %auth_type, i32 noundef %keymgmt) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_auth_mode.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_auth_mode, %if.then)) #13
          to label %do.end7 [label %if.then], !srcloc !512

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_auth_mode.__UNIQUE_ID_ddebug374, ptr noundef %3, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef %wpa_version, i32 noundef %auth_type, i32 noundef %keymgmt) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %and = and i32 %wpa_version, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else14, label %if.then9

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  %and10 = and i32 %keymgmt, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %. = select i1 %tobool11.not, i32 117440512, i32 100663296
  br label %if.end41

if.else14:                                        ; preds = %do.end7
  %and15 = and i32 %wpa_version, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else28, label %if.then17

if.then17:                                        ; preds = %if.else14
  %and18 = and i32 %keymgmt, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else21, label %if.then17.if.end41_crit_edge

if.then17.if.end41_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.else21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  %and22 = and i32 %keymgmt, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %.65 = select i1 %tobool23.not, i32 83886080, i32 67108864
  br label %if.end41

if.else28:                                        ; preds = %if.else14
  %4 = zext i32 %auth_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %auth_type, label %if.else28.cleanup_crit_edge [
    i32 1, label %if.else28.if.end41_crit_edge
    i32 0, label %if.then32
    i32 8, label %if.then35
  ]

if.else28.if.end41_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.else28.cleanup_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then35:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.then32, %if.else28.if.end41_crit_edge, %if.else21, %if.then17.if.end41_crit_edge, %if.then9
  %auth_mode.0 = phi i32 [ 0, %if.then32 ], [ 33554432, %if.then35 ], [ %., %if.then9 ], [ 50331648, %if.then17.if.end41_crit_edge ], [ %.65, %if.else21 ], [ 16777216, %if.else28.if.end41_crit_edge ]
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %auth_mode.0, ptr %tmp, align 4
  %call42 = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169624, ptr noundef nonnull %tmp, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %net45 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %6 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net45, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.68, i32 noundef %call42) #16
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %wpa_version47 = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 36
  %8 = ptrtoint ptr %wpa_version47 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %wpa_version, ptr %wpa_version47, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then44, %if.else28.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.then44 ], [ 0, %if.end46 ], [ -524, %if.else28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_channel(ptr noundef %usbdev, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  %len.i.i = alloca i32, align 4
  %bssid.i = alloca [6 x i8], align 4
  %config = alloca %struct.ndis_80211_conf, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %config) #13
  %0 = getelementptr inbounds %struct.ndis_80211_conf, ptr %config, i32 0, i32 3
  %1 = call ptr @memset(ptr %config, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #13
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %len, align 4, !annotation !513
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_channel.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_channel, %if.then)) #13
          to label %do.end5 [label %if.then], !srcloc !512

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_channel.__UNIQUE_ID_ddebug380, ptr noundef %4, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, i32 noundef %channel) #13
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %driver_priv.i.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %5 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bssid.i) #13
  %7 = getelementptr inbounds [6 x i8], ptr %bssid.i, i32 0, i32 4
  %radio_on.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %6, i32 0, i32 28
  %8 = call ptr @memset(ptr %bssid.i, i32 255, i32 6)
  %9 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %radio_on.i, align 4, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %do.end5.is_associated.exit.thread_crit_edge, label %if.end.i

do.end5.is_associated.exit.thread_crit_edge:      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_associated.exit.thread

if.end.i:                                         ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #13
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6, ptr %len.i.i, align 4
  %call.i.i = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 218169601, ptr noundef nonnull %bssid.i, ptr noundef nonnull %len.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #13
  br i1 %cmp.not.i.i, label %is_associated.exit, label %if.end.i.is_associated.exit.thread_crit_edge

if.end.i.is_associated.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_associated.exit.thread

is_associated.exit.thread:                        ; preds = %if.end.i.is_associated.exit.thread_crit_edge, %do.end5.is_associated.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid.i) #13
  br label %if.end8

is_associated.exit:                               ; preds = %if.end.i
  %12 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bssid.i, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %7, align 4
  %conv.i.i = zext i16 %15 to i32
  %or.i.i = or i32 %13, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid.i) #13
  br i1 %cmp.i.i.not, label %is_associated.exit.if.end8_crit_edge, label %is_associated.exit.cleanup_crit_edge

is_associated.exit.cleanup_crit_edge:             ; preds = %is_associated.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

is_associated.exit.if.end8_crit_edge:             ; preds = %is_associated.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end8:                                          ; preds = %is_associated.exit.if.end8_crit_edge, %is_associated.exit.thread
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %channel, i32 noundef 0) #13
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %len, align 4
  %call10 = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 218169873, ptr noundef nonnull %config, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.body13, label %if.end32

do.body13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_channel.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_channel, %if.then25)) #13
          to label %cleanup [label %if.then25], !srcloc !512

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  %net26 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %17 = ptrtoint ptr %net26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_channel.__UNIQUE_ID_ddebug381, ptr noundef %18, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71) #13
  br label %cleanup

if.end32:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %19 = urem i32 %call.i, 1000
  %mul = sub i32 %call.i, %19
  %20 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %0, align 4
  %call33 = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 218169873, ptr noundef nonnull %config, i32 noundef 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_channel.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_channel, %if.then47)) #13
          to label %cleanup [label %if.then47], !srcloc !512

if.then47:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %net48 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %22 = ptrtoint ptr %net48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_channel.__UNIQUE_ID_ddebug382, ptr noundef %23, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.71, i32 noundef %channel, i32 noundef %call33) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end32, %if.then25, %do.body13, %is_associated.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %is_associated.exit.cleanup_crit_edge ], [ %call10, %if.then25 ], [ %call33, %if.then47 ], [ %call10, %do.body13 ], [ %call33, %if.end32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %config) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_pause_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_purge_paused_rxq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_resume_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_device_pmkids(ptr noundef %usbdev) unnamed_addr #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #13
  %wdev = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdev, align 4
  %max_num_pmkids = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %max_num_pmkids to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_num_pmkids, align 2
  %conv = zext i8 %5 to i32
  %6 = mul nuw nsw i32 %conv, 22
  %spec.select.i47 = add nuw nsw i32 %6, 8
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select.i47, ptr %len, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i47, i32 noundef 3520) #18
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i47)
  %9 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call9.i.i, align 128
  %10 = shl nuw i32 %conv, 24
  %bssid_info_count = getelementptr inbounds %struct.ndis_80211_pmkid, ptr %call9.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %bssid_info_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bssid_info_count, align 4
  %call4 = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 218169635, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.body7, label %if.end17

do.body7:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_device_pmkids.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_device_pmkids, %if.then12)) #13
          to label %do.end15 [label %if.then12], !srcloc !512

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @get_device_pmkids.__UNIQUE_ID_ddebug396, ptr noundef %13, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.97, i32 noundef %15, i32 noundef %conv, i32 noundef %call4) #13
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body7
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #13
  %16 = inttoptr i32 %call4 to ptr
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %17 = ptrtoint ptr %bssid_info_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bssid_info_count, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %cmp19 = icmp ugt i32 %19, %conv
  br i1 %cmp19, label %if.then21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %bssid_info_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %10, ptr %bssid_info_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end17.cleanup_crit_edge, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %16, %do.end15 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call9.i.i, %if.then21 ], [ %call9.i.i, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @update_pmkid(ptr nocapture noundef readonly %usbdev, ptr noundef %pmkids, ptr nocapture noundef readonly %pmksa, i32 noundef %max_pmkids) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bssid_info_count = getelementptr inbounds %struct.ndis_80211_pmkid, ptr %pmkids, i32 0, i32 1
  %0 = ptrtoint ptr %bssid_info_count to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %bssid_info_count, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 %max_pmkids)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp171.not = icmp eq i32 %3, 0
  br i1 %cmp171.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %pmksa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmksa, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 4
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr1.i, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ndis_80211_pmkid, ptr %pmkids, i32 0, i32 2, i32 %i.072
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %xor.i = xor i32 %7, %11
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %xor37.i = xor i16 %9, %13
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end4, label %for.inc

if.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %pmkid = getelementptr %struct.ndis_80211_pmkid, ptr %pmkids, i32 0, i32 2, i32 %i.072, i32 1
  %pmkid8 = getelementptr inbounds %struct.cfg80211_pmksa, ptr %pmksa, i32 0, i32 1
  %14 = ptrtoint ptr %pmkid8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pmkid8, align 4
  %16 = call ptr @memcpy(ptr %pmkid, ptr %15, i32 16)
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %max_pmkids)
  %cmp9.not = icmp ult i32 %2, %max_pmkids
  br i1 %cmp9.not, label %if.end19, label %do.body11

do.body11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_pmkid.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_pmkid, %if.then15)) #13
          to label %error [label %if.then15], !srcloc !512

if.then15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @update_pmkid.__UNIQUE_ID_ddebug399, ptr noundef %18, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.99) #13
  br label %error

if.end19:                                         ; preds = %for.end
  %add = add i32 %3, 1
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 22) #13
  %20 = extractvalue { i32, i1 } %19, 1
  %21 = extractvalue { i32, i1 } %19, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %21, i32 8) #13
  %retval.0.i68 = select i1 %20, i32 -1, i32 %spec.select.i
  %call21 = tail call noalias ptr @krealloc(ptr noundef %pmkids, i32 noundef %retval.0.i68, i32 noundef 3264) #19
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end19.error_crit_edge, label %if.end24

if.end19.error_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %22 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i68)
  %23 = ptrtoint ptr %call21 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %call21, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %add)
  %bssid_info_count26 = getelementptr inbounds %struct.ndis_80211_pmkid, ptr %call21, i32 0, i32 1
  %25 = ptrtoint ptr %bssid_info_count26 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %bssid_info_count26, align 1
  %arrayidx28 = getelementptr %struct.ndis_80211_pmkid, ptr %call21, i32 0, i32 2, i32 %3
  %26 = ptrtoint ptr %pmksa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pmksa, align 4
  %28 = call ptr @memcpy(ptr %arrayidx28, ptr %27, i32 6)
  %pmkid34 = getelementptr %struct.ndis_80211_pmkid, ptr %call21, i32 0, i32 2, i32 %3, i32 1
  %pmkid36 = getelementptr inbounds %struct.cfg80211_pmksa, ptr %pmksa, i32 0, i32 1
  %29 = ptrtoint ptr %pmkid36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pmkid36, align 4
  %31 = call ptr @memcpy(ptr %pmkid34, ptr %30, i32 16)
  br label %cleanup

error:                                            ; preds = %if.end19.error_crit_edge, %if.then15, %do.body11
  %err.0 = phi ptr [ inttoptr (i32 -28 to ptr), %if.then15 ], [ inttoptr (i32 -12 to ptr), %if.end19.error_crit_edge ], [ inttoptr (i32 -28 to ptr), %do.body11 ]
  tail call void @kfree(ptr noundef %pmkids) #13
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end24, %if.end4
  %retval.0 = phi ptr [ %pmkids, %if.end4 ], [ %err.0, %error ], [ %call21, %if.end24 ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @remove_pmkid(ptr nocapture noundef readonly %usbdev, ptr noundef %pmkids, ptr nocapture noundef readonly %pmksa, i32 noundef %max_pmkids) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bssid_info_count = getelementptr inbounds %struct.ndis_80211_pmkid, ptr %pmkids, i32 0, i32 1
  %0 = ptrtoint ptr %bssid_info_count to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %bssid_info_count, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 %max_pmkids)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp157.not = icmp eq i32 %3, 0
  br i1 %cmp157.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %pmksa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmksa, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 4
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr1.i, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ndis_80211_pmkid, ptr %pmkids, i32 0, i32 2, i32 %i.058
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %xor.i = xor i32 %7, %11
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %xor37.i = xor i16 %9, %13
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.do.body7_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.do.body7_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body7

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.058, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %3)
  %cmp5 = icmp eq i32 %i.0.lcssa, %3
  br i1 %cmp5, label %for.end.do.body7_crit_edge, label %for.cond17.preheader

for.end.do.body7_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body7

for.cond17.preheader:                             ; preds = %for.end
  %add60 = add i32 %i.0.lcssa, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add60, i32 %3)
  %cmp1861 = icmp ult i32 %add60, %3
  br i1 %cmp1861, label %for.cond17.preheader.for.body19_crit_edge, label %for.cond17.preheader.for.end27_crit_edge

for.cond17.preheader.for.end27_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end27

for.cond17.preheader.for.body19_crit_edge:        ; preds = %for.cond17.preheader
  br label %for.body19

do.body7:                                         ; preds = %for.end.do.body7_crit_edge, %for.inc.do.body7_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remove_pmkid.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remove_pmkid, %if.then11)) #13
          to label %do.end15 [label %if.then11], !srcloc !512

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %14 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net, align 4
  %16 = ptrtoint ptr %pmksa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pmksa, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @remove_pmkid.__UNIQUE_ID_ddebug398, ptr noundef %15, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102, ptr noundef %17) #13
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body7
  tail call void @kfree(ptr noundef %pmkids) #13
  br label %cleanup

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.cond17.preheader.for.body19_crit_edge
  %add63 = phi i32 [ %add, %for.body19.for.body19_crit_edge ], [ %add60, %for.cond17.preheader.for.body19_crit_edge ]
  %i.162 = phi i32 [ %add63, %for.body19.for.body19_crit_edge ], [ %i.0.lcssa, %for.cond17.preheader.for.body19_crit_edge ]
  %arrayidx21 = getelementptr %struct.ndis_80211_pmkid, ptr %pmkids, i32 0, i32 2, i32 %i.162
  %arrayidx24 = getelementptr %struct.ndis_80211_pmkid, ptr %pmkids, i32 0, i32 2, i32 %add63
  %18 = call ptr @memcpy(ptr %arrayidx21, ptr %arrayidx24, i32 22)
  %add = add i32 %add63, 1
  %exitcond65.not = icmp eq i32 %add, %3
  br i1 %exitcond65.not, label %for.body19.for.end27_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body19

for.body19.for.end27_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end27

for.end27:                                        ; preds = %for.body19.for.end27_crit_edge, %for.cond17.preheader.for.end27_crit_edge
  %dec = add i32 %3, -1
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %dec, i32 22) #13
  %20 = extractvalue { i32, i1 } %19, 1
  %21 = extractvalue { i32, i1 } %19, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %21, i32 8) #13
  %retval.0.i55 = select i1 %20, i32 -1, i32 %spec.select.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i55)
  %23 = ptrtoint ptr %pmkids to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %pmkids, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %dec)
  %25 = ptrtoint ptr %bssid_info_count to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %bssid_info_count, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end27, %do.end15
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %do.end15 ], [ %pmkids, %for.end27 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rndis_wlan_do_link_up_work(ptr noundef %usbdev) unnamed_addr #2 align 64 {
entry:
  %config.i206 = alloca %struct.ndis_80211_conf, align 4
  %len.i207 = alloca i32, align 4
  %config.i = alloca %struct.ndis_80211_conf, align 4
  %len.i202 = alloca i32, align 4
  %params.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  %len.i = alloca i32, align 4
  %len.addr.i = alloca i32, align 4
  %bssid = alloca [6 x i8], align 4
  %match_bss = alloca i8, align 1
  %roam_info = alloca %struct.cfg80211_roam_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bssid) #13
  %2 = getelementptr inbounds [6 x i8], ptr %bssid, i32 0, i32 4
  %3 = call ptr @memset(ptr %bssid, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %match_bss) #13
  %infra_mode = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %infra_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %infra_mode, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %5, label %do.end [
    i32 1, label %if.end.thread
    i32 0, label %entry.if.end67_crit_edge
  ], !prof !516

entry.if.end67_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.end.thread:                                    ; preds = %entry
  %connected = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 31
  %7 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %connected, align 4, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp ne i8 %8, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1025) #17
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  %work_pending = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %work_pending) #13
  %workqueue = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %workqueue, align 4
  %work = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 6
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %work) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.addr.i)
  %12 = ptrtoint ptr %len.addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1025, ptr %len.addr.i, align 4
  %call.i200 = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 218169631, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %len.addr.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %tobool10.not = icmp eq i32 %call.i200, 0
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  %req_ie_length = getelementptr inbounds %struct.ndis_80211_assoc_info, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %req_ie_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %req_ie_length, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 1025)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp15.not = icmp eq i32 %16, 0
  br i1 %cmp15.not, label %if.then11.if.end23_crit_edge, label %if.then16

if.then11.if.end23_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %offset_req_ies = getelementptr inbounds %struct.ndis_80211_assoc_info, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %offset_req_ies to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset_req_ies, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 1025)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %20
  %add = add nuw nsw i32 %20, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %add)
  %cmp20 = icmp ugt i32 %add, 1025
  %sub = sub nuw nsw i32 1025, %20
  %spec.select198 = select i1 %cmp20, i32 %sub, i32 %16
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.then11.if.end23_crit_edge
  %req_ie_len.0 = phi i32 [ 0, %if.then11.if.end23_crit_edge ], [ %spec.select198, %if.then16 ]
  %req_ie.0 = phi ptr [ null, %if.then11.if.end23_crit_edge ], [ %add.ptr, %if.then16 ]
  %resp_ie_length = getelementptr inbounds %struct.ndis_80211_assoc_info, ptr %call7.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %resp_ie_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resp_ie_length, align 8
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 1025)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp27.not = icmp eq i32 %24, 0
  br i1 %cmp27.not, label %if.end23.if.end67_crit_edge, label %if.then28

if.end23.if.end67_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %offset_resp_ies = getelementptr inbounds %struct.ndis_80211_assoc_info, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %offset_resp_ies to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset_resp_ies, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 1025)
  %add.ptr32 = getelementptr i8, ptr %call7.i.i, i32 %28
  %add33 = add nuw nsw i32 %28, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %add33)
  %cmp34 = icmp ugt i32 %add33, 1025
  %sub36 = sub nuw nsw i32 1025, %28
  %spec.select199 = select i1 %cmp34, i32 %sub36, i32 %24
  br label %if.end67

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %if.end67

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 2778, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end67:                                         ; preds = %if.else, %if.then28, %if.end23.if.end67_crit_edge, %entry.if.end67_crit_edge
  %roamed.0.off0223 = phi i1 [ %tobool.not, %if.else ], [ %tobool.not, %if.end23.if.end67_crit_edge ], [ %tobool.not, %if.then28 ], [ false, %entry.if.end67_crit_edge ]
  %req_ie_len.1 = phi i32 [ 0, %if.else ], [ %req_ie_len.0, %if.end23.if.end67_crit_edge ], [ %req_ie_len.0, %if.then28 ], [ %5, %entry.if.end67_crit_edge ]
  %req_ie.1 = phi ptr [ null, %if.else ], [ %req_ie.0, %if.end23.if.end67_crit_edge ], [ %req_ie.0, %if.then28 ], [ null, %entry.if.end67_crit_edge ]
  %resp_ie.0 = phi ptr [ null, %if.else ], [ null, %if.end23.if.end67_crit_edge ], [ %add.ptr32, %if.then28 ], [ null, %entry.if.end67_crit_edge ]
  %resp_ie_len.0 = phi i32 [ 0, %if.else ], [ 0, %if.end23.if.end67_crit_edge ], [ %spec.select199, %if.then28 ], [ %5, %entry.if.end67_crit_edge ]
  %info.0 = phi ptr [ null, %if.else ], [ %call7.i.i, %if.end23.if.end67_crit_edge ], [ %call7.i.i, %if.then28 ], [ null, %entry.if.end67_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #13
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %len.i, align 4
  %call.i201 = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 218169601, ptr noundef nonnull %bssid, ptr noundef nonnull %len.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %cmp.not.i = icmp eq i32 %call.i201, 0
  br i1 %cmp.not.i, label %get_bssid.exit.thread, label %get_bssid.exit

get_bssid.exit.thread:                            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #13
  br label %do.body74

get_bssid.exit:                                   ; preds = %if.end67
  %30 = call ptr @memset(ptr %bssid, i32 0, i32 6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %cmp69 = icmp slt i32 %call.i201, 0
  br i1 %cmp69, label %if.then70, label %get_bssid.exit.do.body74_crit_edge

get_bssid.exit.do.body74_crit_edge:               ; preds = %get_bssid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body74

if.then70:                                        ; preds = %get_bssid.exit
  call void @__sanitizer_cov_trace_pc() #15
  %31 = call ptr @memset(ptr %bssid, i32 0, i32 6)
  br label %do.body74

do.body74:                                        ; preds = %if.then70, %get_bssid.exit.do.body74_crit_edge, %get_bssid.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_wlan_do_link_up_work.__UNIQUE_ID_ddebug439, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_do_link_up_work, %if.then84)) #13
          to label %do.end91 [label %if.then84], !srcloc !512

if.then84:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %32 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net, align 4
  %cond = select i1 %roamed.0.off0223, ptr @.str.112, ptr @.str.113
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_wlan_do_link_up_work.__UNIQUE_ID_ddebug439, ptr noundef %33, ptr noundef nonnull @.str.111, ptr noundef nonnull %bssid, ptr noundef nonnull %cond) #13
  br label %do.end91

do.end91:                                         ; preds = %if.then84, %do.body74
  %34 = ptrtoint ptr %match_bss to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %match_bss, align 1
  %call93 = call fastcc i32 @rndis_check_bssid_list(ptr noundef %usbdev, ptr noundef nonnull %bssid, ptr noundef nonnull %match_bss)
  %35 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bssid, align 4
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %2, align 4
  %conv.i = zext i16 %38 to i32
  %or.i = or i32 %36, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %do.end91.if.end100_crit_edge, label %land.lhs.true96

do.end91.if.end100_crit_edge:                     ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

land.lhs.true96:                                  ; preds = %do.end91
  %39 = ptrtoint ptr %match_bss to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %match_bss, align 1, !range !511
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool97.not = icmp eq i8 %40, 0
  br i1 %tobool97.not, label %if.then98, label %land.lhs.true96.if.end100_crit_edge

land.lhs.true96.if.end100_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

if.then98:                                        ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @rndis_wlan_craft_connected_bss(ptr noundef %usbdev, ptr noundef nonnull %bssid, ptr noundef %info.0)
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %land.lhs.true96.if.end100_crit_edge, %do.end91.if.end100_crit_edge
  %41 = ptrtoint ptr %infra_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %infra_mode, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %42, label %if.end100.if.end126_crit_edge [
    i32 1, label %if.then103
    i32 0, label %if.then121
  ]

if.end100.if.end126_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

if.then103:                                       ; preds = %if.end100
  br i1 %roamed.0.off0223, label %if.else108, label %if.then105

if.then105:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #15
  %net106 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %44 = ptrtoint ptr %net106 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net106, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i) #13
  %bssid2.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 1
  %46 = call ptr @memset(ptr %params.i.i, i32 0, i32 52)
  %47 = ptrtoint ptr %bssid2.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %bssid, ptr %bssid2.i.i, align 4
  %req_ie4.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %req_ie4.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %req_ie.1, ptr %req_ie4.i.i, align 4
  %req_ie_len5.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %req_ie_len5.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %req_ie_len.1, ptr %req_ie_len5.i.i, align 4
  %resp_ie6.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %resp_ie6.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %resp_ie.0, ptr %resp_ie6.i.i, align 4
  %resp_ie_len7.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %resp_ie_len7.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %resp_ie_len.0, ptr %resp_ie_len7.i.i, align 4
  %timeout_reason8.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %timeout_reason8.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %timeout_reason8.i.i, align 4
  call void @cfg80211_connect_done(ptr noundef %45, ptr noundef nonnull %params.i.i, i32 noundef 3264) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i) #13
  br label %if.end126

if.else108:                                       ; preds = %if.then103
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %roam_info) #13
  %53 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %config.i) #13
  %55 = getelementptr inbounds %struct.ndis_80211_conf, ptr %config.i, i32 0, i32 3
  %56 = call ptr @memset(ptr %config.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i202) #13
  %57 = ptrtoint ptr %len.i202 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 32, ptr %len.i202, align 4
  %call1.i = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 218169873, ptr noundef nonnull %config.i, ptr noundef nonnull %len.i202) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_current_channel.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_do_link_up_work, %if.then.i203)) #13
          to label %do.end7.i [label %if.then.i203], !srcloc !512

if.then.i203:                                     ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %58 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @get_current_channel.__UNIQUE_ID_ddebug383, ptr noundef %59, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.119, i32 noundef %call1.i) #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i203, %if.else108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i204 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i204, label %do.end7.i.get_current_channel.exit_crit_edge, label %if.end9.i

do.end7.i.get_current_channel.exit_crit_edge:     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_current_channel.exit

if.end9.i:                                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %wdev.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %54, i32 0, i32 1
  %60 = ptrtoint ptr %wdev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wdev.i, align 4
  %62 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %55, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #13
  %65 = urem i32 %64, 1000
  %mul.i.i = sub i32 %64, %65
  %call.i.i = call ptr @ieee80211_get_channel_khz(ptr noundef %61, i32 noundef %mul.i.i) #13
  br label %get_current_channel.exit

get_current_channel.exit:                         ; preds = %if.end9.i, %do.end7.i.get_current_channel.exit_crit_edge
  %retval.0.i205 = phi ptr [ null, %do.end7.i.get_current_channel.exit_crit_edge ], [ %call.i.i, %if.end9.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i202) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %config.i) #13
  %66 = ptrtoint ptr %roam_info to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %retval.0.i205, ptr %roam_info, align 4
  %bss = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 1
  %67 = ptrtoint ptr %bss to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %bss, align 4
  %bssid110 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 2
  %68 = ptrtoint ptr %bssid110 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %bssid, ptr %bssid110, align 4
  %req_ie112 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 3
  %69 = ptrtoint ptr %req_ie112 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %req_ie.1, ptr %req_ie112, align 4
  %req_ie_len113 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 4
  %70 = ptrtoint ptr %req_ie_len113 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %req_ie_len.1, ptr %req_ie_len113, align 4
  %resp_ie114 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 5
  %71 = ptrtoint ptr %resp_ie114 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %resp_ie.0, ptr %resp_ie114, align 4
  %resp_ie_len115 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 6
  %72 = ptrtoint ptr %resp_ie_len115 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %resp_ie_len.0, ptr %resp_ie_len115, align 4
  %fils = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 7
  %73 = call ptr @memset(ptr %fils, i32 0, i32 24)
  %net116 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %74 = ptrtoint ptr %net116 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %net116, align 4
  call void @cfg80211_roamed(ptr noundef %75, ptr noundef nonnull %roam_info, i32 noundef 3264) #13
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %roam_info) #13
  br label %if.end126

if.then121:                                       ; preds = %if.end100
  %net122 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %76 = ptrtoint ptr %net122 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %net122, align 4
  %78 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %config.i206) #13
  %80 = getelementptr inbounds %struct.ndis_80211_conf, ptr %config.i206, i32 0, i32 3
  %81 = call ptr @memset(ptr %config.i206, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i207) #13
  %82 = ptrtoint ptr %len.i207 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 32, ptr %len.i207, align 4
  %call1.i209 = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 218169873, ptr noundef nonnull %config.i206, ptr noundef nonnull %len.i207) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_current_channel.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_do_link_up_work, %if.then.i211)) #13
          to label %do.end7.i213 [label %if.then.i211], !srcloc !512

if.then.i211:                                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #15
  %83 = ptrtoint ptr %net122 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %net122, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @get_current_channel.__UNIQUE_ID_ddebug383, ptr noundef %84, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.119, i32 noundef %call1.i209) #13
  br label %do.end7.i213

do.end7.i213:                                     ; preds = %if.then.i211, %if.then121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i209)
  %cmp.i212 = icmp slt i32 %call1.i209, 0
  br i1 %cmp.i212, label %do.end7.i213.get_current_channel.exit221_crit_edge, label %if.end9.i218

do.end7.i213.get_current_channel.exit221_crit_edge: ; preds = %do.end7.i213
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_current_channel.exit221

if.end9.i218:                                     ; preds = %do.end7.i213
  call void @__sanitizer_cov_trace_pc() #15
  %wdev.i214 = getelementptr inbounds %struct.rndis_wlan_private, ptr %79, i32 0, i32 1
  %85 = ptrtoint ptr %wdev.i214 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wdev.i214, align 4
  %87 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %80, align 4
  %89 = call i32 @llvm.bswap.i32(i32 %88) #13
  %90 = urem i32 %89, 1000
  %mul.i.i215 = sub i32 %89, %90
  %call.i.i216 = call ptr @ieee80211_get_channel_khz(ptr noundef %86, i32 noundef %mul.i.i215) #13
  br label %get_current_channel.exit221

get_current_channel.exit221:                      ; preds = %if.end9.i218, %do.end7.i213.get_current_channel.exit221_crit_edge
  %retval.0.i220 = phi ptr [ null, %do.end7.i213.get_current_channel.exit221_crit_edge ], [ %call.i.i216, %if.end9.i218 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i207) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %config.i206) #13
  call void @cfg80211_ibss_joined(ptr noundef %77, ptr noundef nonnull %bssid, ptr noundef %retval.0.i220, i32 noundef 3264) #13
  br label %if.end126

if.end126:                                        ; preds = %get_current_channel.exit221, %get_current_channel.exit, %if.then105, %if.end100.if.end126_crit_edge
  call void @kfree(ptr noundef %info.0) #13
  %connected127 = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 31
  %91 = ptrtoint ptr %connected127 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %connected127, align 4
  %bssid128 = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 32
  %92 = call ptr @memcpy(ptr %bssid128, ptr %bssid, i32 6)
  call void @usbnet_resume_rx(ptr noundef %usbdev) #13
  %net131 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %93 = ptrtoint ptr %net131 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %net131, align 4
  call void @netif_carrier_on(ptr noundef %94) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end126, %do.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %match_bss) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_multicast_list(ptr noundef %usbdev) unnamed_addr #2 align 64 {
entry:
  %filter = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filter) #13
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 150994944, ptr %filter, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1459617792, ptr %filter, align 4
  br label %set_filter

if.else:                                          ; preds = %entry
  %and3 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 218103808, ptr %filter, align 4
  br label %set_filter

if.end7:                                          ; preds = %if.else
  %9 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994944, i32 %.pr)
  %cmp.not = icmp eq i32 %.pr, 150994944
  br i1 %cmp.not, label %if.end9, label %if.end7.set_filter_crit_edge

if.end7.set_filter_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_filter

if.end9:                                          ; preds = %if.end7
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 73
  %10 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #13
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 63
  %conv.i = zext i8 %11 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #13
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %count = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 66, i32 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 8
  %multicast_size = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %multicast_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %multicast_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp12 = icmp sgt i32 %15, %17
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 218103808, ptr %filter, align 4
  br label %if.end37

if.else15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %if.else15.if.end37_crit_edge, label %if.then17

if.else15.if.end37_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then17:                                        ; preds = %if.else15
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 6) #13
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %if.then17.if.then20_crit_edge, label %if.end7.i, !prof !514

if.then17.if.then20_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

if.end7.i:                                        ; preds = %if.then17
  %21 = extractvalue { i32, i1 } %19, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 2592) #18
  %tobool19.not = icmp eq ptr %call8.i, null
  br i1 %tobool19.not, label %if.end7.i.if.then20_crit_edge, label %if.end22

if.end7.i.if.then20_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

if.then20:                                        ; preds = %if.end7.i.if.then20_crit_edge, %if.then17.if.then20_crit_edge
  %22 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net, align 4
  %addr_list_lock.i132 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 63
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i132) #13
  br label %cleanup91

if.end22:                                         ; preds = %if.end7.i
  %24 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net, align 4
  %mc24 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 66
  %26 = ptrtoint ptr %mc24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %ha.0143 = load ptr, ptr %mc24, align 4
  %cmp29.not145 = icmp eq ptr %ha.0143, %mc24
  br i1 %cmp29.not145, label %if.end22.if.end37_crit_edge, label %for.body.preheader

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

for.body.preheader:                               ; preds = %if.end22
  %27 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net, align 4
  %mc27 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 66
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %ha.0147 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.0143, %for.body.preheader ]
  %i.0146 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %inc = add i32 %i.0146, 1
  %mul = mul i32 %i.0146, 6
  %add.ptr30 = getelementptr i8, ptr %call8.i, i32 %mul
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0147, i32 0, i32 2
  %29 = call ptr @memcpy(ptr %add.ptr30, ptr %addr, i32 6)
  %30 = ptrtoint ptr %ha.0147 to i32
  call void @__asan_load4_noabort(i32 %30)
  %ha.0 = load ptr, ptr %ha.0147, align 4
  %cmp29.not = icmp eq ptr %ha.0, %mc27
  br i1 %cmp29.not, label %for.body.if.end37_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.end37:                                         ; preds = %for.body.if.end37_crit_edge, %if.end22.if.end37_crit_edge, %if.else15.if.end37_crit_edge, %if.then13
  %mc_addrs.0 = phi ptr [ null, %if.then13 ], [ null, %if.else15.if.end37_crit_edge ], [ %call8.i, %if.end22.if.end37_crit_edge ], [ %call8.i, %for.body.if.end37_crit_edge ]
  %31 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net, align 4
  %addr_list_lock.i133 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 63
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i133) #13
  %33 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994944, i32 %34)
  %cmp39.not = icmp ne i32 %34, 150994944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool42.not = icmp eq i32 %15, 0
  %or.cond = select i1 %cmp39.not, i1 true, i1 %tobool42.not
  br i1 %or.cond, label %if.end37.set_filter_crit_edge, label %if.then43

if.end37.set_filter_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_filter

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %mul44 = mul i32 %15, 6
  %call45 = tail call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 16843011, ptr noundef %mc_addrs.0, i32 noundef %mul44)
  tail call void @kfree(ptr noundef %mc_addrs.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 0
  %. = select i1 %cmp46, i32 184549376, i32 218103808
  %35 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %., ptr %filter, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_multicast_list.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_multicast_list, %if.then59)) #13
          to label %set_filter [label %if.then59], !srcloc !512

if.then59:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net, align 4
  %38 = ptrtoint ptr %multicast_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %multicast_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_multicast_list.__UNIQUE_ID_ddebug394, ptr noundef %37, ptr noundef nonnull @.str.122, i32 noundef %15, i32 noundef %39, i32 noundef %call45) #13
  br label %set_filter

set_filter:                                       ; preds = %if.then59, %if.then43, %if.end37.set_filter_crit_edge, %if.end7.set_filter_crit_edge, %if.then5, %if.then
  %call66 = call fastcc i32 @rndis_set_oid(ptr noundef %usbdev, i32 noundef 65806, ptr noundef nonnull %filter, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then68, label %set_filter.do.body72_crit_edge

set_filter.do.body72_crit_edge:                   ; preds = %set_filter
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body72

if.then68:                                        ; preds = %set_filter
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net, align 4
  %42 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %filter, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.123, i32 noundef %44) #16
  br label %do.body72

do.body72:                                        ; preds = %if.then68, %set_filter.do.body72_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_multicast_list.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_multicast_list, %if.then84)) #13
          to label %cleanup91 [label %if.then84], !srcloc !512

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net, align 4
  %47 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %filter, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_multicast_list.__UNIQUE_ID_ddebug395, ptr noundef %46, ptr noundef nonnull @.str.124, i32 noundef %49, i32 noundef %call66) #13
  br label %cleanup91

cleanup91:                                        ; preds = %if.then84, %do.body72, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rndis_wlan_craft_connected_bss(ptr noundef %usbdev, ptr noundef %bssid, ptr noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca %struct.cfg80211_inform_bss, align 8
  %config.i = alloca %struct.ndis_80211_conf, align 4
  %len.i = alloca i32, align 4
  %ssid = alloca %struct.ndis_80211_ssid, align 4
  %rssi = alloca i32, align 4
  %ie_buf = alloca [34 x i8], align 1
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ssid) #13
  %2 = call ptr @memset(ptr %ssid, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rssi) #13
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %ie_buf) #13
  %3 = call ptr @memset(ptr %ie_buf, i32 255, i32 34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #13
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %len, align 4
  %5 = ptrtoint ptr %rssi to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rssi, align 4
  %call1 = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 218169862, ptr noundef nonnull %rssi, ptr noundef nonnull %len)
  %6 = ptrtoint ptr %rssi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rssi, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = mul i32 %8, 100
  %mul.i = add i32 %9, 9600
  %div.i = sdiv i32 %mul.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 6464, i32 %mul.i)
  %cmp1.i = icmp slt i32 %mul.i, 6464
  %spec.select.i = select i1 %cmp1.i, i32 %div.i, i32 100
  %cond5.i = select i1 %cmp.i, i32 %spec.select.i, i32 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_wlan_craft_connected_bss.__UNIQUE_ID_ddebug436, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_craft_connected_bss, %if.then)) #13
          to label %do.end9 [label %if.then], !srcloc !512

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_wlan_craft_connected_bss.__UNIQUE_ID_ddebug436, ptr noundef %11, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i32 noundef %call1, i32 noundef %8, i32 noundef %cond5.i) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then, %entry
  %tobool10.not = icmp eq ptr %info, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  %resp_ie = getelementptr inbounds %struct.ndis_80211_assoc_info, ptr %info, i32 0, i32 6
  %12 = ptrtoint ptr %resp_ie to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %resp_ie, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  br label %if.end12

if.else:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  %infra_mode = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 30
  %15 = ptrtoint ptr %infra_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %infra_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  %conv = select i1 %cmp, i16 1, i16 2
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %capability.0 = phi i16 [ %14, %if.then11 ], [ %conv, %if.else ]
  %17 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %config.i) #13
  %19 = getelementptr inbounds %struct.ndis_80211_conf, ptr %config.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.ndis_80211_conf, ptr %config.i, i32 0, i32 3
  %21 = call ptr @memset(ptr %config.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #13
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %len.i, align 4
  %call1.i = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 218169873, ptr noundef nonnull %config.i, ptr noundef nonnull %len.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_current_channel.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_craft_connected_bss, %if.then.i)) #13
          to label %do.end7.i [label %if.then.i], !srcloc !512

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %net.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %23 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @get_current_channel.__UNIQUE_ID_ddebug383, ptr noundef %24, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.119, i32 noundef %call1.i) #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i127 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i127, label %do.end7.i.if.then15_crit_edge, label %if.end9.i

do.end7.i.if.then15_crit_edge:                    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

if.end9.i:                                        ; preds = %do.end7.i
  %wdev.i = getelementptr inbounds %struct.rndis_wlan_private, ptr %18, i32 0, i32 1
  %25 = ptrtoint ptr %wdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wdev.i, align 4
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %20, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #13
  %30 = urem i32 %29, 1000
  %mul.i.i = sub i32 %29, %30
  %call.i.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %26, i32 noundef %mul.i.i) #13
  %tobool11.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool11.not.i, label %if.end9.i.if.then15_crit_edge, label %if.end17

if.end9.i.if.then15_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

if.then15:                                        ; preds = %if.end9.i.if.then15_crit_edge, %do.end7.i.if.then15_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %config.i) #13
  %net16 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %31 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net16, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.114) #16
  br label %cleanup

if.end17:                                         ; preds = %if.end9.i
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %19, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %config.i) #13
  %36 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 36, ptr %len, align 4
  %37 = call ptr @memset(ptr %ssid, i32 0, i32 36)
  %call18 = call fastcc i32 @rndis_query_oid(ptr noundef %usbdev, i32 noundef 218169602, ptr noundef nonnull %ssid, ptr noundef nonnull %len)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_wlan_craft_connected_bss.__UNIQUE_ID_ddebug437, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_craft_connected_bss, %if.then32)) #13
          to label %do.end38 [label %if.then32], !srcloc !512

if.then32:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %net33 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %38 = ptrtoint ptr %net33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net33, align 4
  %40 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ssid, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %essid = getelementptr inbounds %struct.ndis_80211_ssid, ptr %ssid, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_wlan_craft_connected_bss.__UNIQUE_ID_ddebug437, ptr noundef %39, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.114, i32 noundef %call18, i32 noundef %42, ptr noundef %essid) #13
  br label %do.end38

do.end38:                                         ; preds = %if.then32, %if.end17
  %43 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ssid, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %45)
  %cmp40 = icmp ugt i32 %45, 32
  br i1 %cmp40, label %if.then42, label %do.end38.if.end44_crit_edge

do.end38.if.end44_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then42:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %ssid to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 536870912, ptr %ssid, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %do.end38.if.end44_crit_edge
  %47 = ptrtoint ptr %ie_buf to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %ie_buf, align 1
  %48 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ssid, align 4
  %50 = lshr i32 %49, 24
  %conv46 = trunc i32 %50 to i8
  %arrayidx47 = getelementptr inbounds [34 x i8], ptr %ie_buf, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv46, ptr %arrayidx47, align 1
  %arrayidx48 = getelementptr inbounds [34 x i8], ptr %ie_buf, i32 0, i32 2
  %essid49 = getelementptr inbounds %struct.ndis_80211_ssid, ptr %ssid, i32 0, i32 1
  %52 = call i32 @llvm.bswap.i32(i32 %49)
  %53 = call ptr @memcpy(ptr %arrayidx48, ptr %essid49, i32 %52)
  %add = add i32 %52, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_wlan_craft_connected_bss.__UNIQUE_ID_ddebug438, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_craft_connected_bss, %if.then66)) #13
          to label %do.end78 [label %if.then66], !srcloc !512

if.then66:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %net67 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %54 = ptrtoint ptr %net67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net67, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %center_freq, align 4
  %conv71 = zext i16 %capability.0 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_wlan_craft_connected_bss.__UNIQUE_ID_ddebug438, ptr noundef %55, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.114, i32 noundef %57, ptr noundef %bssid, i32 noundef 0, i32 noundef %conv71, i32 noundef %35, i32 noundef %add, ptr noundef %essid49, i32 noundef %cond5.i) #13
  br label %do.end78

do.end78:                                         ; preds = %if.then66, %if.end44
  %wdev = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wdev, align 4
  %conv79 = trunc i32 %35 to i16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i) #13
  %60 = getelementptr inbounds i8, ptr %data.i, i32 8
  %61 = call ptr @memset(ptr %60, i32 0, i32 40)
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i.i, ptr %data.i, align 8
  %scan_width.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i, i32 0, i32 1
  %63 = ptrtoint ptr %scan_width.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %scan_width.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %cond5.i, ptr %60, align 8
  %call.i = call ptr @cfg80211_inform_bss_data(ptr noundef %59, ptr noundef nonnull %data.i, i32 noundef 0, ptr noundef %bssid, i64 noundef 0, i16 noundef zeroext %capability.0, i16 noundef zeroext %conv79, ptr noundef nonnull %ie_buf, i32 noundef %add, i32 noundef 3264) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #13
  %65 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wdev, align 4
  call void @cfg80211_put_bss(ptr noundef %66, ptr noundef %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %if.then15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #13
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %ie_buf) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rssi) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ssid) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_roamed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ibss_joined(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_connect_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cqm_rssi_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_wlan_set_multicast_list(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  %work_pending = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %work_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %work_pending, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %work_pending) #13
  %workqueue = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %workqueue, align 4
  %work = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 6
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_unbind(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @rndis_copy_module_params(ptr nocapture noundef readonly %usbdev, i32 noundef %device_type) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  %device_type1 = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %device_type1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %device_type, ptr %device_type1, align 4
  %3 = load i8, ptr @modparam_country, align 1
  %param_country = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 20
  %4 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @modparam_country, i32 0, i32 1), align 1
  %arrayidx3 = getelementptr %struct.rndis_wlan_private, ptr %1, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr %struct.rndis_wlan_private, ptr %1, i32 0, i32 20, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx5, align 2
  %7 = load i32, ptr @modparam_frameburst, align 4
  %param_frameburst = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %param_frameburst to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %param_frameburst, align 4
  %9 = load i32, ptr @modparam_afterburner, align 4
  %param_afterburner = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %param_afterburner to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %param_afterburner, align 4
  %11 = load i32, ptr @modparam_power_save, align 4
  %param_power_save = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %param_power_save to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %param_power_save, align 4
  %13 = load i32, ptr @modparam_power_output, align 4
  %param_power_output = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %param_power_output to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %param_power_output, align 4
  %15 = load i32, ptr @modparam_roamtrigger, align 4
  %param_roamtrigger = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 25
  %16 = ptrtoint ptr %param_roamtrigger to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %param_roamtrigger, align 4
  %17 = load i32, ptr @modparam_roamdelta, align 4
  %param_roamdelta = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 26
  %18 = ptrtoint ptr %param_roamdelta to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %param_roamdelta, align 4
  %conv.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.not.i = icmp eq i8 %21, 0
  %sub.i = add i8 %3, -32
  %spec.select.i = select i1 %cmp.not.i, i8 %3, i8 %sub.i
  %22 = ptrtoint ptr %param_country to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %spec.select.i, ptr %param_country, align 4
  %conv.i105 = zext i8 %4 to i32
  %arrayidx.i106 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i105
  %23 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i106, align 1
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.not.i107 = icmp eq i8 %25, 0
  %sub.i108 = add i8 %4, -32
  %spec.select.i109 = select i1 %cmp.not.i107, i8 %4, i8 %sub.i108
  %26 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %spec.select.i109, ptr %arrayidx3, align 1
  %call17 = tail call i32 @strcmp(ptr noundef %param_country, ptr noundef nonnull dereferenceable(3) @.str.156) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %27 = call ptr @memcpy(ptr %param_country, ptr @.str.157, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.end.if.end29.sink.split_crit_edge, label %if.else

if.end.if.end29.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp25 = icmp ugt i32 %11, 2
  br i1 %cmp25, label %if.else.if.end29.sink.split_crit_edge, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.else.if.end29.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.else.if.end29.sink.split_crit_edge, %if.end.if.end29.sink.split_crit_edge
  %.sink110 = phi i32 [ 0, %if.end.if.end29.sink.split_crit_edge ], [ 2, %if.else.if.end29.sink.split_crit_edge ]
  %28 = ptrtoint ptr %param_power_save to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink110, ptr %param_power_save, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.else.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp31 = icmp slt i32 %13, 0
  br i1 %cmp31, label %if.end29.if.end40.sink.split_crit_edge, label %if.else34

if.end29.if.end40.sink.split_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.sink.split

if.else34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp36 = icmp ugt i32 %13, 3
  br i1 %cmp36, label %if.else34.if.end40.sink.split_crit_edge, label %if.else34.if.end40_crit_edge

if.else34.if.end40_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.else34.if.end40.sink.split_crit_edge:          ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.sink.split

if.end40.sink.split:                              ; preds = %if.else34.if.end40.sink.split_crit_edge, %if.end29.if.end40.sink.split_crit_edge
  %.sink111 = phi i32 [ 0, %if.end29.if.end40.sink.split_crit_edge ], [ 3, %if.else34.if.end40.sink.split_crit_edge ]
  %29 = ptrtoint ptr %param_power_output to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink111, ptr %param_power_output, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %if.else34.if.end40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -80, i32 %15)
  %cmp42 = icmp slt i32 %15, -80
  br i1 %cmp42, label %if.end40.if.end51.sink.split_crit_edge, label %if.else45

if.end40.if.end51.sink.split_crit_edge:           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.sink.split

if.else45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -60, i32 %15)
  %cmp47 = icmp sgt i32 %15, -60
  br i1 %cmp47, label %if.else45.if.end51.sink.split_crit_edge, label %if.else45.if.end51_crit_edge

if.else45.if.end51_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.else45.if.end51.sink.split_crit_edge:          ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %if.else45.if.end51.sink.split_crit_edge, %if.end40.if.end51.sink.split_crit_edge
  %.sink112 = phi i32 [ -80, %if.end40.if.end51.sink.split_crit_edge ], [ -60, %if.else45.if.end51.sink.split_crit_edge ]
  %30 = ptrtoint ptr %param_roamtrigger to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink112, ptr %param_roamtrigger, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.else45.if.end51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp53 = icmp slt i32 %17, 0
  br i1 %cmp53, label %if.end51.if.end62.sink.split_crit_edge, label %if.else56

if.end51.if.end62.sink.split_crit_edge:           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.sink.split

if.else56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp58 = icmp ugt i32 %17, 2
  br i1 %cmp58, label %if.else56.if.end62.sink.split_crit_edge, label %if.else56.if.end62_crit_edge

if.else56.if.end62_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.else56.if.end62.sink.split_crit_edge:          ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.sink.split

if.end62.sink.split:                              ; preds = %if.else56.if.end62.sink.split_crit_edge, %if.end51.if.end62.sink.split_crit_edge
  %.sink113 = phi i32 [ 0, %if.end51.if.end62.sink.split_crit_edge ], [ 2, %if.else56.if.end62.sink.split_crit_edge ]
  %31 = ptrtoint ptr %param_roamdelta to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink113, ptr %param_roamdelta, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.else56.if.end62_crit_edge
  %32 = load i32, ptr @modparam_workaround_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp63 = icmp slt i32 %32, 0
  %.sink = select i1 %cmp63, i32 500, i32 %32
  %33 = getelementptr inbounds %struct.rndis_wlan_private, ptr %1, i32 0, i32 27
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %33, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rndis_set_config_parameter(ptr noundef %dev, ptr noundef %param, ptr noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %value) #20
  %mul = shl i32 %call, 1
  %call5 = tail call i32 @strlen(ptr noundef %param) #20
  %mul6 = shl i32 %call5, 1
  %add = add i32 %mul6, 20
  %add7 = add i32 %add, %mul
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add7, i32 noundef 3264) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body13

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body13:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_set_config_parameter.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_set_config_parameter, %if.then18)) #13
          to label %if.end43 [label %if.then18], !srcloc !512

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_set_config_parameter.__UNIQUE_ID_ddebug369, ptr noundef %1, ptr noundef nonnull @.str.159, ptr noundef %param, ptr noundef %value) #13
  br label %if.end43

if.end43:                                         ; preds = %if.then18, %do.body13
  %2 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 335544320, ptr %call9.i, align 128
  %3 = tail call i32 @llvm.bswap.i32(i32 %mul6)
  %name_length = getelementptr inbounds %struct.ndis_config_param, ptr %call9.i, i32 0, i32 1
  %4 = ptrtoint ptr %name_length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %name_length, align 4
  %type = getelementptr inbounds %struct.ndis_config_param, ptr %call9.i, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 33554432, ptr %type, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %add)
  %value_offs = getelementptr inbounds %struct.ndis_config_param, ptr %call9.i, i32 0, i32 3
  %7 = ptrtoint ptr %value_offs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value_offs, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %value_length = getelementptr inbounds %struct.ndis_config_param, ptr %call9.i, i32 0, i32 4
  %9 = ptrtoint ptr %value_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value_length, align 16
  %add.ptr = getelementptr i8, ptr %call9.i, i32 20
  %div1 = and i32 %call5, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div1)
  %cmp4511.not = icmp eq i32 %div1, 0
  br i1 %cmp4511.not, label %if.end43.if.then49_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  br label %for.body

if.end43.if.then49_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end43.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end43.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %param, i32 %i.012
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i16
  %12 = shl nuw i16 %conv, 8
  %arrayidx46 = getelementptr i16, ptr %add.ptr, i32 %i.012
  %13 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayidx46, align 2
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %div1
  br i1 %exitcond.not, label %for.body.if.then49_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.if.then49_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

if.then49:                                        ; preds = %for.body.if.then49_crit_edge, %if.end43.if.then49_crit_edge
  %add.ptr51 = getelementptr i8, ptr %add.ptr, i32 %mul6
  %div532 = and i32 %call, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div532)
  %cmp5413.not = icmp eq i32 %div532, 0
  br i1 %cmp5413.not, label %if.then49.if.end66_crit_edge, label %if.then49.for.body56_crit_edge

if.then49.for.body56_crit_edge:                   ; preds = %if.then49
  br label %for.body56

if.then49.if.end66_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %if.then49.for.body56_crit_edge
  %i.114 = phi i32 [ %inc61, %for.body56.for.body56_crit_edge ], [ 0, %if.then49.for.body56_crit_edge ]
  %arrayidx57 = getelementptr i8, ptr %value, i32 %i.114
  %14 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %15 to i16
  %16 = shl nuw i16 %conv58, 8
  %arrayidx59 = getelementptr i16, ptr %add.ptr51, i32 %i.114
  %17 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx59, align 2
  %inc61 = add nuw nsw i32 %i.114, 1
  %exitcond15.not = icmp eq i32 %inc61, %div532
  br i1 %exitcond15.not, label %for.body56.if.end66_crit_edge, label %for.body56.for.body56_crit_edge

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body56

for.body56.if.end66_crit_edge:                    ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.end66:                                         ; preds = %for.body56.if.end66_crit_edge, %if.then49.if.end66_crit_edge
  %call67 = tail call fastcc i32 @rndis_set_oid(ptr noundef %dev, i32 noundef 66075, ptr noundef nonnull %call9.i, i32 noundef %add7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68.not = icmp eq i32 %call67, 0
  br i1 %cmp68.not, label %if.end66.if.end91_crit_edge, label %do.body72

if.end66.if.end91_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

do.body72:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_set_config_parameter.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_set_config_parameter, %if.then84)) #13
          to label %if.end91 [label %if.then84], !srcloc !512

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #15
  %net85 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %18 = ptrtoint ptr %net85 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net85, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_set_config_parameter.__UNIQUE_ID_ddebug371, ptr noundef %19, ptr noundef nonnull @.str.161, i32 noundef %call67) #13
  br label %if.end91

if.end91:                                         ; preds = %if.then84, %do.body72, %if.end66.if.end91_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rndis_wlan_pmkid_cand_list_indication(ptr nocapture noundef readonly %usbdev, ptr noundef %indication, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len)
  %cmp = icmp ult i32 %len, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.179, i32 noundef %len) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_candidates = getelementptr inbounds %struct.ndis_80211_status_indication, ptr %indication, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %num_candidates to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %num_candidates, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %mul = mul i32 %4, 12
  %add1 = add i32 %mul, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %len)
  %cmp2 = icmp sgt i32 %add1, %len
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %net4 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %5 = ptrtoint ptr %net4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net4, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %6, ptr noundef nonnull @.str.180, i32 noundef %len, i32 noundef %add1) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %u = getelementptr inbounds %struct.ndis_80211_status_indication, ptr %indication, i32 0, i32 1
  %net7 = getelementptr inbounds %struct.usbnet, ptr %usbdev, i32 0, i32 19
  %7 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net7, align 4
  %9 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %u, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %8, ptr noundef nonnull @.str.181, i32 noundef %11, i32 noundef %4) #16
  %12 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %u, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %13)
  %cmp10.not = icmp eq i32 %13, 16777216
  br i1 %cmp10.not, label %for.cond.preheader, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end5
  %14 = ptrtoint ptr %num_candidates to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %num_candidates, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1458.not = icmp eq i32 %15, 0
  br i1 %cmp1458.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %candidate_list = getelementptr inbounds %struct.ndis_80211_status_indication, ptr %indication, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end28.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end28.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.ndis_80211_pmkid_candidate], ptr %candidate_list, i32 0, i32 %i.059
  %flags = getelementptr inbounds %struct.ndis_80211_pmkid_candidate, ptr %arrayidx, i32 0, i32 2
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %flags, align 1
  %and = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_wlan_pmkid_cand_list_indication.__UNIQUE_ID_ddebug440, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rndis_wlan_pmkid_cand_list_indication, %if.then22)) #13
          to label %do.end28 [label %if.then22], !srcloc !512

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net7, align 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %flags, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %and.lobit = lshr exact i32 %and, 24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rndis_wlan_pmkid_cand_list_indication.__UNIQUE_ID_ddebug440, ptr noundef %19, ptr noundef nonnull @.str.183, i32 noundef %i.059, i32 noundef %22, i32 noundef %and.lobit, ptr noundef %arrayidx) #13
  br label %do.end28

do.end28:                                         ; preds = %if.then22, %for.body
  %23 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net7, align 4
  tail call void @cfg80211_pmksa_candidate_notify(ptr noundef %24, i32 noundef %i.059, ptr noundef %arrayidx, i1 noundef zeroext %tobool, i32 noundef 2592) #13
  %inc = add nuw i32 %i.059, 1
  %25 = ptrtoint ptr %num_candidates to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %num_candidates, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %cmp14 = icmp ult i32 %inc, %27
  br i1 %cmp14, label %do.end28.for.body_crit_edge, label %do.end28.cleanup_crit_edge

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end28.for.body_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %do.end28.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_michael_mic_failure(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_pmksa_candidate_notify(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm4320a_early_init(ptr nocapture noundef readonly %usbdev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rndis_copy_module_params(ptr noundef %usbdev, i32 noundef 1)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @unknown_early_init(ptr nocapture noundef readonly %usbdev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rndis_copy_module_params(ptr noundef %usbdev, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !49, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !78, !80, !82, !84, !86, !88, !89, !91, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !108, !109, !110, !111, !113, !115, !116, !117, !119, !120, !121, !123, !125, !127, !128, !129, !131, !133, !134, !135, !137, !138, !140, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !164, !166, !167, !168, !169, !170, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !189, !190, !192, !193, !194, !196, !198, !200, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !227, !229, !231, !232, !233, !235, !236, !237, !239, !240, !242, !243, !245, !247, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !307, !309, !310, !312, !313, !314, !316, !317, !319, !320, !321, !322, !323, !325, !326, !328, !329, !330, !331, !332, !334, !335, !336, !338, !340, !341, !343, !344, !346, !347, !348, !350, !351, !352, !354, !356, !357, !359, !360, !361, !363, !364, !365, !367, !369, !370, !371, !373, !374, !376, !378, !379, !381, !382, !384, !385, !387, !389, !390, !391, !393, !395, !397, !399, !400, !401, !403, !404, !406, !407, !408, !410, !411, !413, !415, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !443, !444, !446, !447, !449, !450, !452, !453, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !493, !494, !496, !498, !500}
!llvm.module.flags = !{!502, !503, !504, !505, !506, !507, !508, !509}
!llvm.ident = !{!510}

!0 = !{ptr @__param_country, !1, !"__param_country", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_countrytype348, !1, !"__UNIQUE_ID_countrytype348", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_country349, !4, !"__UNIQUE_ID_country349", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 38, i32 1}
!5 = !{ptr @__param_frameburst, !6, !"__param_frameburst", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 41, i32 1}
!7 = !{ptr @__UNIQUE_ID_framebursttype350, !6, !"__UNIQUE_ID_framebursttype350", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_frameburst351, !9, !"__UNIQUE_ID_frameburst351", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 42, i32 1}
!10 = !{ptr @__param_afterburner, !11, !"__param_afterburner", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 45, i32 1}
!12 = !{ptr @__UNIQUE_ID_afterburnertype352, !11, !"__UNIQUE_ID_afterburnertype352", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_afterburner353, !14, !"__UNIQUE_ID_afterburner353", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 46, i32 1}
!15 = !{ptr @__param_power_save, !16, !"__param_power_save", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 50, i32 1}
!17 = !{ptr @__UNIQUE_ID_power_savetype354, !16, !"__UNIQUE_ID_power_savetype354", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_power_save355, !19, !"__UNIQUE_ID_power_save355", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 51, i32 1}
!20 = !{ptr @__param_power_output, !21, !"__param_power_output", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 55, i32 1}
!22 = !{ptr @__UNIQUE_ID_power_outputtype356, !21, !"__UNIQUE_ID_power_outputtype356", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_power_output357, !24, !"__UNIQUE_ID_power_output357", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 56, i32 1}
!25 = !{ptr @__param_roamtrigger, !26, !"__param_roamtrigger", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 60, i32 1}
!27 = !{ptr @__UNIQUE_ID_roamtriggertype358, !26, !"__UNIQUE_ID_roamtriggertype358", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_roamtrigger359, !29, !"__UNIQUE_ID_roamtrigger359", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 61, i32 1}
!30 = !{ptr @__param_roamdelta, !31, !"__param_roamdelta", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 66, i32 1}
!32 = !{ptr @__UNIQUE_ID_roamdeltatype360, !31, !"__UNIQUE_ID_roamdeltatype360", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_roamdelta361, !34, !"__UNIQUE_ID_roamdelta361", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 67, i32 1}
!35 = !{ptr @__param_workaround_interval, !36, !"__param_workaround_interval", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 72, i32 1}
!37 = !{ptr @__UNIQUE_ID_workaround_intervaltype362, !36, !"__UNIQUE_ID_workaround_intervaltype362", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_workaround_interval363, !39, !"__UNIQUE_ID_workaround_interval363", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 74, i32 1}
!40 = !{ptr @__initcall__kmod_rndis_wlan__446_3755_rndis_wlan_driver_init6, !41, !"__initcall__kmod_rndis_wlan__446_3755_rndis_wlan_driver_init6", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3755, i32 1}
!42 = !{ptr @__exitcall_rndis_wlan_driver_exit, !41, !"__exitcall_rndis_wlan_driver_exit", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_author447, !44, !"__UNIQUE_ID_author447", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3757, i32 1}
!45 = !{ptr @__UNIQUE_ID_author448, !46, !"__UNIQUE_ID_author448", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3758, i32 1}
!47 = !{ptr @__UNIQUE_ID_description449, !48, !"__UNIQUE_ID_description449", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3759, i32 1}
!49 = !{ptr @__UNIQUE_ID_file450, !50, !"__UNIQUE_ID_file450", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3760, i32 1}
!51 = !{ptr @__UNIQUE_ID_license451, !50, !"__UNIQUE_ID_license451", i1 false, i1 false}
!52 = !{ptr @modparam_workaround_interval, !53, !"modparam_workaround_interval", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 71, i32 12}
!54 = !{ptr @__param_str_country, !1, !"__param_str_country", i1 false, i1 false}
!55 = !{ptr @__param_string_country, !1, !"__param_string_country", i1 false, i1 false}
!56 = !{ptr @modparam_country, !57, !"modparam_country", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 36, i32 13}
!58 = !{ptr @__param_str_frameburst, !6, !"__param_str_frameburst", i1 false, i1 false}
!59 = !{ptr @modparam_frameburst, !60, !"modparam_frameburst", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 40, i32 12}
!61 = !{ptr @__param_str_afterburner, !11, !"__param_str_afterburner", i1 false, i1 false}
!62 = !{ptr @modparam_afterburner, !63, !"modparam_afterburner", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 44, i32 12}
!64 = !{ptr @__param_str_power_save, !16, !"__param_str_power_save", i1 false, i1 false}
!65 = !{ptr @modparam_power_save, !66, !"modparam_power_save", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 49, i32 12}
!67 = !{ptr @__param_str_power_output, !21, !"__param_str_power_output", i1 false, i1 false}
!68 = !{ptr @modparam_power_output, !69, !"modparam_power_output", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 54, i32 12}
!70 = !{ptr @__param_str_roamtrigger, !26, !"__param_str_roamtrigger", i1 false, i1 false}
!71 = !{ptr @modparam_roamtrigger, !72, !"modparam_roamtrigger", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 59, i32 12}
!73 = !{ptr @__param_str_roamdelta, !31, !"__param_str_roamdelta", i1 false, i1 false}
!74 = !{ptr @modparam_roamdelta, !75, !"modparam_roamdelta", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 65, i32 12}
!76 = !{ptr @__param_str_workaround_interval, !36, !"__param_str_workaround_interval", i1 false, i1 false}
!77 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rndis_wlan_driver, !79, !"rndis_wlan_driver", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3745, i32 26}
!80 = !{ptr @products, !81, !"products", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3630, i32 35}
!82 = !{ptr @.str.1, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3584, i32 17}
!84 = !{ptr @bcm4320b_info, !85, !"bcm4320b_info", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3583, i32 33}
!86 = !{ptr @rndis_wlan_bind.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3411, i32 2}
!88 = !{ptr @.str.2, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.3, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3414, i32 20}
!91 = !{ptr @rndis_wlan_bind.__key.4, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3419, i32 2}
!93 = !{ptr @.str.5, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rndis_wlan_bind.__key.6, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3420, i32 2}
!96 = !{ptr @.str.7, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rndis_wlan_bind.__key.8, !95, !"__key", i1 false, i1 false}
!98 = !{ptr @.str.9, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @rndis_wlan_bind.__key.10, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3421, i32 2}
!101 = !{ptr @.str.11, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @rndis_wlan_bind.__key.12, !100, !"__key", i1 false, i1 false}
!103 = !{ptr @.str.13, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rndis_config_ops, !105, !"rndis_config_ops", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 522, i32 34}
!106 = !{ptr @.str.14, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1190, i32 2}
!108 = !{ptr @.str.15, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.16, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @set_infra_mode.__UNIQUE_ID_ddebug377, !107, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!111 = !{ptr @.str.17, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1198, i32 28}
!113 = !{ptr @.str.18, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1486, i32 2}
!115 = !{ptr @.str.19, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @restore_key.__UNIQUE_ID_ddebug392, !114, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!117 = !{ptr @.str.20, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1332, i32 2}
!119 = !{ptr @.str.21, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @add_wep_key.__UNIQUE_ID_ddebug384, !118, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!121 = !{ptr @.str.22, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1357, i32 29}
!123 = !{ptr @.str.23, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1365, i32 28}
!125 = !{ptr @.str.24, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1155, i32 2}
!127 = !{ptr @.str.25, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @set_encr_mode.__UNIQUE_ID_ddebug376, !126, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!129 = !{ptr @.str.26, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1176, i32 28}
!131 = !{ptr @.str.27, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2387, i32 2}
!133 = !{ptr @.str.28, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @rndis_add_key.__UNIQUE_ID_ddebug427, !132, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!135 = !{ptr @.str.29, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2409, i32 3}
!137 = !{ptr @rndis_add_key.__UNIQUE_ID_ddebug428, !136, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!138 = !{ptr @.str.30, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1388, i32 3}
!140 = !{ptr @.str.31, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @add_wpa_key.__UNIQUE_ID_ddebug385, !139, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!142 = !{ptr @.str.32, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1393, i32 3}
!144 = !{ptr @add_wpa_key.__UNIQUE_ID_ddebug386, !143, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!145 = !{ptr @.str.33, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1399, i32 4}
!147 = !{ptr @add_wpa_key.__UNIQUE_ID_ddebug387, !146, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!148 = !{ptr @.str.34, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1404, i32 4}
!150 = !{ptr @add_wpa_key.__UNIQUE_ID_ddebug388, !149, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!151 = !{ptr @.str.35, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1412, i32 3}
!153 = !{ptr @add_wpa_key.__UNIQUE_ID_ddebug389, !152, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!154 = !{ptr @.str.36, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1417, i32 2}
!156 = !{ptr @add_wpa_key.__UNIQUE_ID_ddebug390, !155, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!157 = !{ptr @.str.37, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1456, i32 2}
!159 = !{ptr @add_wpa_key.__UNIQUE_ID_ddebug391, !158, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!160 = !{ptr @.str.38, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2421, i32 2}
!162 = !{ptr @.str.39, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @rndis_del_key.__UNIQUE_ID_ddebug429, !161, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!164 = !{ptr @.str.40, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1524, i32 2}
!166 = !{ptr @.str.41, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @remove_key.__UNIQUE_ID_ddebug393, !165, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!168 = !{ptr @.str.42, !165, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.43, !165, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.44, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1556, i32 9}
!172 = !{ptr @.str.45, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2433, i32 2}
!174 = !{ptr @.str.46, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @rndis_set_default_key.__UNIQUE_ID_ddebug430, !173, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!176 = !{ptr @.str.47, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1934, i32 2}
!178 = !{ptr @.str.48, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @rndis_scan.__UNIQUE_ID_ddebug402, !177, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!180 = !{ptr @.str.49, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2052, i32 2}
!182 = !{ptr @.str.50, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @rndis_check_bssid_list.__UNIQUE_ID_ddebug406, !181, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!184 = !{ptr @.str.51, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2082, i32 2}
!186 = !{ptr @rndis_check_bssid_list.__UNIQUE_ID_ddebug407, !185, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!187 = !{ptr @.str.52, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2101, i32 2}
!189 = !{ptr @rndis_check_bssid_list.__UNIQUE_ID_ddebug408, !188, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!190 = !{ptr @.str.53, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1972, i32 2}
!192 = !{ptr @.str.54, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @rndis_bss_info_update.__UNIQUE_ID_ddebug403, !191, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!194 = !{ptr @.str.55, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2152, i32 27}
!196 = !{ptr @.str.56, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2162, i32 27}
!198 = !{ptr @.str.57, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2166, i32 2}
!200 = !{ptr @.str.58, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @rndis_connect.__UNIQUE_ID_ddebug410, !199, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!202 = !{ptr @.str.59, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2176, i32 3}
!204 = !{ptr @rndis_connect.__UNIQUE_ID_ddebug411, !203, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!205 = !{ptr @.str.60, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2184, i32 3}
!207 = !{ptr @rndis_connect.__UNIQUE_ID_ddebug412, !206, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!208 = !{ptr @.str.61, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2193, i32 3}
!210 = !{ptr @rndis_connect.__UNIQUE_ID_ddebug413, !209, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!211 = !{ptr @.str.62, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2201, i32 4}
!213 = !{ptr @rndis_connect.__UNIQUE_ID_ddebug414, !212, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!214 = !{ptr @.str.63, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2211, i32 4}
!216 = !{ptr @rndis_connect.__UNIQUE_ID_ddebug415, !215, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!217 = !{ptr @.str.64, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2221, i32 4}
!219 = !{ptr @rndis_connect.__UNIQUE_ID_ddebug416, !218, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!220 = !{ptr @.str.65, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2244, i32 3}
!222 = !{ptr @rndis_connect.__UNIQUE_ID_ddebug417, !221, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!223 = !{ptr @.str.66, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1092, i32 2}
!225 = !{ptr @.str.67, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @set_auth_mode.__UNIQUE_ID_ddebug374, !224, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!227 = !{ptr @.str.68, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1121, i32 28}
!229 = !{ptr @.str.69, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1136, i32 2}
!231 = !{ptr @.str.70, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @set_priv_filter.__UNIQUE_ID_ddebug375, !230, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!233 = !{ptr @.str.71, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1266, i32 2}
!235 = !{ptr @.str.72, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @set_channel.__UNIQUE_ID_ddebug380, !234, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!237 = !{ptr @.str.73, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1280, i32 3}
!239 = !{ptr @set_channel.__UNIQUE_ID_ddebug381, !238, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!240 = !{ptr @.str.74, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1290, i32 2}
!242 = !{ptr @set_channel.__UNIQUE_ID_ddebug382, !241, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!243 = !{ptr @.str.75, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 996, i32 28}
!245 = !{ptr @clear_bssid.broadcast_mac, !246, !"broadcast_mac", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1006, i32 18}
!247 = !{ptr @.str.76, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 978, i32 28}
!249 = !{ptr @.str.77, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 983, i32 3}
!251 = !{ptr @.str.78, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @set_essid.__UNIQUE_ID_ddebug372, !250, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!253 = !{ptr @.str.79, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2259, i32 2}
!255 = !{ptr @.str.80, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @rndis_disconnect.__UNIQUE_ID_ddebug418, !254, !"__UNIQUE_ID_ddebug418", i1 false, i1 false}
!257 = !{ptr @.str.81, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2293, i32 2}
!259 = !{ptr @.str.82, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @rndis_join_ibss.__UNIQUE_ID_ddebug419, !258, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!261 = !{ptr @.str.83, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2301, i32 3}
!263 = !{ptr @rndis_join_ibss.__UNIQUE_ID_ddebug420, !262, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!264 = !{ptr @.str.84, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2308, i32 3}
!266 = !{ptr @rndis_join_ibss.__UNIQUE_ID_ddebug421, !265, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!267 = !{ptr @.str.85, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2317, i32 3}
!269 = !{ptr @rndis_join_ibss.__UNIQUE_ID_ddebug422, !268, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!270 = !{ptr @.str.86, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2325, i32 4}
!272 = !{ptr @rndis_join_ibss.__UNIQUE_ID_ddebug423, !271, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!273 = !{ptr @.str.87, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2335, i32 4}
!275 = !{ptr @rndis_join_ibss.__UNIQUE_ID_ddebug424, !274, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!276 = !{ptr @.str.88, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2356, i32 3}
!278 = !{ptr @rndis_join_ibss.__UNIQUE_ID_ddebug425, !277, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!279 = !{ptr @.str.89, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2371, i32 2}
!281 = !{ptr @.str.90, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @rndis_leave_ibss.__UNIQUE_ID_ddebug426, !280, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!283 = !{ptr @.str.91, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1889, i32 2}
!285 = !{ptr @.str.92, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @rndis_set_tx_power.__UNIQUE_ID_ddebug400, !284, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!287 = !{ptr @.str.93, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1919, i32 2}
!289 = !{ptr @.str.94, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @rndis_get_tx_power.__UNIQUE_ID_ddebug401, !288, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!291 = !{ptr @.str.95, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2510, i32 2}
!293 = !{ptr @.str.96, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @rndis_set_pmksa.__UNIQUE_ID_ddebug431, !292, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!295 = !{ptr @.str.97, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1701, i32 3}
!297 = !{ptr @.str.98, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @get_device_pmkids.__UNIQUE_ID_ddebug396, !296, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!299 = !{ptr @.str.99, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1805, i32 3}
!301 = !{ptr @.str.100, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @update_pmkid.__UNIQUE_ID_ddebug399, !300, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!303 = !{ptr @__func__.set_device_pmkids, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1725, i32 37}
!305 = !{ptr @set_device_pmkids.__UNIQUE_ID_ddebug397, !306, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1730, i32 3}
!307 = !{ptr @.str.101, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2538, i32 2}
!309 = !{ptr @rndis_del_pmksa.__UNIQUE_ID_ddebug432, !308, !"__UNIQUE_ID_ddebug432", i1 false, i1 false}
!310 = !{ptr @.str.102, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1758, i32 3}
!312 = !{ptr @.str.103, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @remove_pmkid.__UNIQUE_ID_ddebug398, !311, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!314 = !{ptr @.str.104, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2564, i32 2}
!316 = !{ptr @rndis_flush_pmksa.__UNIQUE_ID_ddebug433, !315, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!317 = !{ptr @.str.105, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2587, i32 2}
!319 = !{ptr @.str.106, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @rndis_set_power_mgmt.__UNIQUE_ID_ddebug434, !318, !"__UNIQUE_ID_ddebug434", i1 false, i1 false}
!321 = !{ptr @.str.107, !318, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.108, !318, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.109, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2605, i32 2}
!325 = !{ptr @rndis_set_power_mgmt.__UNIQUE_ID_ddebug435, !324, !"__UNIQUE_ID_ddebug435", i1 false, i1 false}
!326 = !{ptr @.str.110, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2785, i32 2}
!328 = !{ptr @.str.111, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @rndis_wlan_do_link_up_work.__UNIQUE_ID_ddebug439, !327, !"__UNIQUE_ID_ddebug439", i1 false, i1 false}
!330 = !{ptr @.str.112, !327, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.113, !327, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.114, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2646, i32 2}
!334 = !{ptr @.str.115, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @rndis_wlan_craft_connected_bss.__UNIQUE_ID_ddebug436, !333, !"__UNIQUE_ID_ddebug436", i1 false, i1 false}
!336 = !{ptr @.str.116, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2662, i32 28}
!338 = !{ptr @.str.117, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2672, i32 2}
!340 = !{ptr @rndis_wlan_craft_connected_bss.__UNIQUE_ID_ddebug437, !339, !"__UNIQUE_ID_ddebug437", i1 false, i1 false}
!341 = !{ptr @.str.118, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2688, i32 2}
!343 = !{ptr @rndis_wlan_craft_connected_bss.__UNIQUE_ID_ddebug438, !342, !"__UNIQUE_ID_ddebug438", i1 false, i1 false}
!344 = !{ptr @.str.119, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1308, i32 2}
!346 = !{ptr @.str.120, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @get_current_channel.__UNIQUE_ID_ddebug383, !345, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!348 = !{ptr @.str.121, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1627, i32 3}
!350 = !{ptr @.str.122, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @set_multicast_list.__UNIQUE_ID_ddebug394, !349, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!352 = !{ptr @.str.123, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1635, i32 28}
!354 = !{ptr @.str.124, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1639, i32 2}
!356 = !{ptr @set_multicast_list.__UNIQUE_ID_ddebug395, !355, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!357 = !{ptr @.str.125, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3217, i32 2}
!359 = !{ptr @.str.126, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @rndis_device_poller.__UNIQUE_ID_ddebug443, !358, !"__UNIQUE_ID_ddebug443", i1 false, i1 false}
!361 = !{ptr @.str.127, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2117, i32 2}
!363 = !{ptr @.str.128, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @rndis_get_scan_results.__UNIQUE_ID_ddebug409, !362, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!365 = !{ptr @rndis_wlan_netdev_ops, !366, !"rndis_wlan_netdev_ops", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3374, i32 36}
!367 = !{ptr @.str.129, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 811, i32 3}
!369 = !{ptr @.str.130, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @rndis_set_oid.__UNIQUE_ID_ddebug367, !368, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!371 = !{ptr @.str.131, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 819, i32 4}
!373 = !{ptr @rndis_set_oid.__UNIQUE_ID_ddebug368, !372, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!374 = !{ptr @.str.132, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 661, i32 9}
!376 = !{ptr @.str.133, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 723, i32 3}
!378 = !{ptr @rndis_query_oid.__UNIQUE_ID_ddebug364, !377, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!379 = !{ptr @.str.134, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 733, i32 4}
!381 = !{ptr @rndis_query_oid.__UNIQUE_ID_ddebug365, !380, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!382 = !{ptr @.str.135, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 759, i32 4}
!384 = !{ptr @rndis_query_oid.__UNIQUE_ID_ddebug366, !383, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!385 = !{ptr @rndis_wiphy_privid, !386, !"rndis_wiphy_privid", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 544, i32 14}
!387 = !{ptr @.str.136, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3138, i32 3}
!389 = !{ptr @.str.137, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @rndis_wlan_get_caps.__UNIQUE_ID_ddebug442, !388, !"__UNIQUE_ID_ddebug442", i1 false, i1 false}
!391 = !{ptr @rndis_channels, !392, !"rndis_channels", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 357, i32 39}
!393 = !{ptr @rndis_rates, !394, !"rndis_rates", i1 false, i1 false}
!394 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 374, i32 36}
!395 = !{ptr @rndis_cipher_suites, !396, !"rndis_cipher_suites", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 389, i32 18}
!397 = !{ptr @.str.138, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1231, i32 2}
!399 = !{ptr @.str.139, !398, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @set_frag_threshold.__UNIQUE_ID_ddebug379, !398, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!401 = !{ptr @.str.140, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1216, i32 2}
!403 = !{ptr @set_rts_threshold.__UNIQUE_ID_ddebug378, !402, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!404 = !{ptr @.str.141, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 1058, i32 4}
!406 = !{ptr @.str.142, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @disassociate.__UNIQUE_ID_ddebug373, !405, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!408 = !{ptr @.str.143, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3533, i32 2}
!410 = !{ptr @rndis_wlan_reset.__UNIQUE_ID_ddebug444, !409, !"__UNIQUE_ID_ddebug444", i1 false, i1 false}
!411 = !{ptr @.str.144, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3537, i32 28}
!413 = !{ptr @.str.145, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3555, i32 2}
!415 = !{ptr @rndis_wlan_stop.__UNIQUE_ID_ddebug445, !414, !"__UNIQUE_ID_ddebug445", i1 false, i1 false}
!416 = !{ptr @.str.146, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3356, i32 41}
!418 = !{ptr @.str.147, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3357, i32 41}
!420 = !{ptr @.str.148, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3358, i32 31}
!422 = !{ptr @.str.149, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3358, i32 37}
!424 = !{ptr @.str.150, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3359, i32 41}
!426 = !{ptr @.str.151, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3361, i32 15}
!428 = !{ptr @.str.152, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3362, i32 41}
!430 = !{ptr @.str.153, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3364, i32 41}
!432 = !{ptr @.str.154, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3366, i32 41}
!434 = !{ptr @.str.155, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3368, i32 41}
!436 = !{ptr @.str.156, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3289, i32 35}
!438 = !{ptr @.str.157, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3290, i32 31}
!440 = !{ptr @.str.158, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 890, i32 3}
!442 = !{ptr @.str.159, !441, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @rndis_set_config_parameter.__UNIQUE_ID_ddebug369, !441, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!444 = distinct !{null, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 893, i32 3}
!446 = distinct !{null, !445, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!447 = !{ptr @.str.161, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 930, i32 3}
!449 = !{ptr @rndis_set_config_parameter.__UNIQUE_ID_ddebug371, !448, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!450 = !{ptr @.str.162, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3065, i32 4}
!452 = !{ptr @.str.163, !451, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @rndis_wlan_indication.__UNIQUE_ID_ddebug441, !451, !"__UNIQUE_ID_ddebug441", i1 false, i1 false}
!454 = !{ptr @.str.164, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3071, i32 28}
!456 = !{ptr @.str.165, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3079, i32 28}
!458 = !{ptr @.str.166, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3091, i32 28}
!460 = !{ptr @.str.167, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3014, i32 28}
!462 = !{ptr @.str.168, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3020, i32 28}
!464 = !{ptr @.str.169, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3029, i32 28}
!466 = !{ptr @.str.170, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3034, i32 28}
!468 = !{ptr @.str.171, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3047, i32 28}
!470 = !{ptr @.str.172, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2898, i32 28}
!472 = !{ptr @.str.173, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2910, i32 10}
!474 = !{ptr @.str.174, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2916, i32 11}
!476 = !{ptr @.str.175, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2918, i32 11}
!478 = !{ptr @.str.176, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2921, i32 11}
!480 = !{ptr @.str.177, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2925, i32 11}
!482 = !{ptr @.str.178, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2928, i32 28}
!484 = !{ptr @.str.179, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2965, i32 28}
!486 = !{ptr @.str.180, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2976, i32 28}
!488 = !{ptr @.str.181, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2983, i32 27}
!490 = !{ptr @.str.182, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 2995, i32 3}
!492 = !{ptr @.str.183, !491, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @rndis_wlan_pmkid_cand_list_indication.__UNIQUE_ID_ddebug440, !491, !"__UNIQUE_ID_ddebug440", i1 false, i1 false}
!494 = !{ptr @.str.184, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3599, i32 17}
!496 = !{ptr @bcm4320a_info, !497, !"bcm4320a_info", i1 false, i1 false}
!497 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3598, i32 33}
!498 = !{ptr @.str.185, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3614, i32 17}
!500 = !{ptr @rndis_wlan_info, !501, !"rndis_wlan_info", i1 false, i1 false}
!501 = !{!"../drivers/net/wireless/rndis_wlan.c", i32 3613, i32 33}
!502 = !{i32 1, !"wchar_size", i32 2}
!503 = !{i32 1, !"min_enum_size", i32 4}
!504 = !{i32 8, !"branch-target-enforcement", i32 0}
!505 = !{i32 8, !"sign-return-address", i32 0}
!506 = !{i32 8, !"sign-return-address-all", i32 0}
!507 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!508 = !{i32 7, !"uwtable", i32 1}
!509 = !{i32 7, !"frame-pointer", i32 2}
!510 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!511 = !{i8 0, i8 2}
!512 = !{i64 2149053293, i64 2149053298, i64 2149053311, i64 2149053355, i64 2149053389, i64 2149053410}
!513 = !{!"auto-init"}
!514 = !{!"branch_weights", i32 1, i32 2000}
!515 = !{i64 2157329785, i64 2157330273, i64 2157329822, i64 2157329878, i64 2157329912, i64 2157329936, i64 2157329977, i64 2157329998, i64 2157330026, i64 2157330060}
!516 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
