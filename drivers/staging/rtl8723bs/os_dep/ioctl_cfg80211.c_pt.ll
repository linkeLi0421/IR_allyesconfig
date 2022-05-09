; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_txrx_stypes = type { i16, i16 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.spinlock, %struct.registry_priv, %struct.eeprom_priv, ptr, i32, ptr, i32, %struct.hal_ops, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, %struct.rtw_wdev_priv, i32, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, i8, i32, i32, [6 x i8], ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.timer_list, %struct.atomic_t, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect_t, %struct.timer_list, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i8, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_conf, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_conf = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rt_link_detect_t = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlme_ext_priv = type { ptr, i8, %struct.atomic_t, i16, i16, i64, i64, i8, i8, i8, i8, i8, [14 x %struct.rt_channel_info], %struct.p2p_channels, [13 x i8], [13 x i8], [16 x i8], %struct.ss_res, %struct.mlme_ext_info, %struct.timer_list, %struct.timer_list, %struct.timer_list, i16, i32, i8, i8, i32, i64, i8, [9 x i32], [9 x i32], i32, i8, i8, i8, i8, i8, i16, i8 }
%struct.rt_channel_info = type { i8, i32 }
%struct.p2p_channels = type { [10 x %struct.p2p_reg_class], i32 }
%struct.p2p_reg_class = type { i8, [20 x i8], i32 }
%struct.ss_res = type { i32, i32, i32, i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.rtw_ieee80211_channel = type { i16, i32 }
%struct.mlme_ext_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ADDBA_request, %struct.WMM_para_element, %struct.HT_caps_element, %struct.HT_info_element, %struct.wlan_bssid_ex, [32 x %struct.FW_Sta_Info] }
%struct.ADDBA_request = type <{ i8, i16, i16, i16 }>
%struct.WMM_para_element = type { i8, i8, [4 x %struct.AC_param] }
%struct.AC_param = type { i8, i8, i16 }
%struct.HT_caps_element = type { %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i8, ptr, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr, %struct._io_ops }
%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, ptr, i8, [4 x i8], ptr, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, [2 x %struct.xmit_buf], i16, i32, %struct.mutex, %struct.submit_ctx, i8, %struct.spinlock }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, %struct.__queue, i8, i8, i8, i8, i8, i16, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.102, i32 }
%union.anon.102 = type { ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.signal_stat = type { i8, i8, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i8, i32, i32, [5 x %union.Keytype], [5 x %union.Keytype], [5 x %union.Keytype], %union.pn48, %union.pn48, i32, [6 x %union.Keytype], %union.pn48, %union.pn48, i32, i32, i32, i32, i32, i32, [512 x i8], i32, %struct.arc4_ctx, %struct.arc4_ctx, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.ndis_802_11_wep, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.rt_pmkid_list], i8, i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.ndis_802_11_wep = type { i32, i32, i32, [16 x i8] }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.registry_priv = type <{ i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }>
%struct.eeprom_priv = type { i8, i8, i8, i8, [6 x i8], i16, i16, [512 x i8], i8, i8, i8, i8, i32, [17 x i8], [50 x i8] }
%struct.hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rereg_nd_name_data = type { ptr, [16 x i8], i8 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.rtw_wdev_priv = type { ptr, ptr, ptr, %struct.spinlock, ptr, [17 x i8], i8, i8, %struct.rtw_wdev_invit_info, %struct.rtw_wdev_nego_info, i8, i8, i8 }
%struct.rtw_wdev_invit_info = type { i8, [6 x i8], i8, i8, i8, i8, i8, i8 }
%struct.rtw_wdev_nego_info = type { i8, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.125, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.125 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.126 }
%union.anon.126 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.cfg80211_roam_info = type { ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.127 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dvobj_priv = type { ptr, i32, %struct.debug_priv, %struct.spinlock, [32 x i32], %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i32, ptr, %struct.cam_ctl_t, [32 x %struct.cam_entry_cache], [2 x i32], [4 x i32], [8 x i8], i8, %struct.atomic_t, %struct.atomic_t, %struct.pwrctrl_priv, %struct.rtw_traffic_statistics, %struct.sdio_data }
%struct.debug_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cam_ctl_t = type { %struct.spinlock, i64 }
%struct.cam_entry_cache = type { i16, [6 x i8], [16 x i8] }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.work_struct, i8, %struct.work_struct, %struct.timer_list, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, ptr, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i32] }
%struct.rtw_traffic_statistics = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.sdio_data = type { i8, i8, i8, i32, ptr, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.ieee_param = type { i32, [6 x i8], %union.anon.169 }
%union.anon.169 = type { %struct.anon.174 }
%struct.anon.174 = type { i16, i16, i32, [16 x i8], %struct.ieee80211_ht_cap }
%struct.anon.173 = type { [16 x i8], i8, i32, i8, [8 x i8], i16, [0 x i8] }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.cfg80211_ap_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, i32, i32, ptr, i32, i32, %struct.cfg80211_crypto_settings, i8, i32, i32, i32, i8, i8, ptr, i8, %struct.cfg80211_bitrate_mask, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.cfg80211_fils_discovery, %struct.cfg80211_unsol_bcast_probe_resp, %struct.cfg80211_mbssid_config }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.167] }
%struct.anon.167 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.cfg80211_fils_discovery = type { i32, i32, i32, ptr }
%struct.cfg80211_unsol_bcast_probe_resp = type { i32, i32, ptr }
%struct.cfg80211_mbssid_config = type { ptr, i8, i8 }
%struct.cfg80211_pmksa = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.cfg80211_mgmt_tx_params = type { ptr, i8, i32, ptr, i32, i8, i8, i32, ptr }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8, ptr, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %union.Keytype, %union.Keytype, i8 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.ieee80211_radiotap_header = type { i8, i8, i16, i32, [0 x i32] }

@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c\00", [46 x i8] zeroinitializer }, align 32
@rtw_cfg80211_ibss_indicate_connect.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8723bs\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rtw_cfg80211_ibss_indicate_connect\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(%s) BSS not found !!\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw_cfg80211_indicate_connect.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.3, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtw_cfg80211_indicate_connect\00", [34 x i8] zeroinitializer }, align 32
@rtw_cfg80211_ops = internal global { %struct.cfg80211_ops, [108 x i8] } { %struct.cfg80211_ops { ptr null, ptr null, ptr null, ptr @cfg80211_rtw_add_virtual_intf, ptr @cfg80211_rtw_del_virtual_intf, ptr @cfg80211_rtw_change_iface, ptr @cfg80211_rtw_add_key, ptr @cfg80211_rtw_get_key, ptr @cfg80211_rtw_del_key, ptr @cfg80211_rtw_set_default_key, ptr null, ptr null, ptr @cfg80211_rtw_start_ap, ptr @cfg80211_rtw_change_beacon, ptr @cfg80211_rtw_stop_ap, ptr @cfg80211_rtw_add_station, ptr @cfg80211_rtw_del_station, ptr @cfg80211_rtw_change_station, ptr @cfg80211_rtw_get_station, ptr @cfg80211_rtw_dump_station, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cfg80211_rtw_change_bss, ptr null, ptr null, ptr null, ptr @cfg80211_rtw_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cfg80211_rtw_connect, ptr null, ptr @cfg80211_rtw_disconnect, ptr @cfg80211_rtw_join_ibss, ptr @cfg80211_rtw_leave_ibss, ptr null, ptr @cfg80211_rtw_set_wiphy_params, ptr @cfg80211_rtw_set_txpower, ptr @cfg80211_rtw_get_txpower, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cfg80211_rtw_set_pmksa, ptr @cfg80211_rtw_del_pmksa, ptr @cfg80211_rtw_flush_pmksa, ptr null, ptr null, ptr @cfg80211_rtw_mgmt_tx, ptr null, ptr @cfg80211_rtw_set_power_mgmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cfg80211_rtw_get_channel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [108 x i8] zeroinitializer }, align 32
@rtw_wdev_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&pwdev_priv->scan_req_lock\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rtw_cfg80211_monitor_if_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr null, ptr null, ptr @rtw_cfg80211_monitor_if_xmit_entry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@__func__.cfg80211_rtw_change_iface = private unnamed_addr constant [26 x i8] c"cfg80211_rtw_change_iface\00", align 1
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WEP\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TKIP\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CCMP\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BIP\00", [28 x i8] zeroinitializer }, align 32
@P2P_OUI = external dso_local global [0 x i8], align 1
@WFD_OUI = external dso_local global [0 x i8], align 1
@__func__.cfg80211_rtw_scan = private unnamed_addr constant [18 x i8] c"cfg80211_rtw_scan\00", align 1
@cfg80211_rtw_scan.lastscantime = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__func__.cfg80211_rtw_connect = private unnamed_addr constant [21 x i8] c"cfg80211_rtw_connect\00", align 1
@__func__.cfg80211_rtw_disconnect = private unnamed_addr constant [24 x i8] c"cfg80211_rtw_disconnect\00", align 1
@__func__.cfg80211_rtw_join_ibss = private unnamed_addr constant [23 x i8] c"cfg80211_rtw_join_ibss\00", align 1
@__func__.cfg80211_rtw_mgmt_tx = private unnamed_addr constant [21 x i8] c"cfg80211_rtw_mgmt_tx\00", align 1
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CFG80211_PWRMGMT\00", [47 x i8] zeroinitializer }, align 32
@rtw_cfg80211_default_mgmt_stypes = internal constant { [13 x %struct.ieee80211_txrx_stypes], [44 x i8] } { [13 x %struct.ieee80211_txrx_stypes] [%struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 -1, i16 8192 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 15381 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 15381 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 -1, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 15381 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer], [44 x i8] zeroinitializer }, align 32
@rtw_cipher_suites = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1027073, i32 1027077, i32 1027074, i32 1027076, i32 1027078], [44 x i8] zeroinitializer }, align 32
@wowlan_stub = internal constant { %struct.wiphy_wowlan_support, [36 x i8] } { %struct.wiphy_wowlan_support { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtw_2ghz_channels = internal constant { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@rtw_rates = internal constant { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 1, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 16, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 32, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 64, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 128, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 256, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 512, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 1024, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 2048, i16 0 }], [48 x i8] zeroinitializer }, align 32
@switch.table.cfg80211_rtw_change_iface = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 4], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.13 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1027078]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 8]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.20 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.21 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.22 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 395, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 407, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 450, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"rtw_cfg80211_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 2859, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 2942, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"rtw_cfg80211_monitor_if_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 2271, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 962, i32 14 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 966, i32 14 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 969, i32 14 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 972, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 975, i32 14 }
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"lastscantime\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1372, i32 24 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1989, i32 23 }
@___asan_gen_.71 = private unnamed_addr constant [33 x i8] c"rtw_cfg80211_default_mgmt_stypes\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 152, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"rtw_cipher_suites\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 21, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"wowlan_stub\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 50, i32 57 }
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"rtw_2ghz_channels\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 78, i32 33 }
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"rtw_rates\00", align 1
@___asan_gen_.84 = private constant [53 x i8] c"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 58, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant [39 x i8] c"switch.table.cfg80211_rtw_change_iface\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rtw_cfg80211_ops, ptr @rtw_wdev_alloc.__key, ptr @.str.5, ptr @rtw_cfg80211_monitor_if_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @cfg80211_rtw_scan.lastscantime, ptr @.str.11, ptr @rtw_cfg80211_default_mgmt_stypes, ptr @rtw_cipher_suites, ptr @wowlan_stub, ptr @rtw_2ghz_channels, ptr @rtw_rates, ptr @switch.table.cfg80211_rtw_change_iface], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_cfg80211_ops to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wdev_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_cfg80211_monitor_if_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg80211_rtw_scan.lastscantime to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_cfg80211_default_mgmt_stypes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_cipher_suites to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wowlan_stub to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_2ghz_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cfg80211_rtw_change_iface to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_cfg80211_inform_bss(ptr noundef %padapter, ptr noundef %pnetwork) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca %struct.cfg80211_inform_bss, align 8
  %wapi_len = alloca i16, align 2
  %sr = alloca i8, align 1
  %wpsielen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rtw_wdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 47
  %0 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtw_wdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %network = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6
  %ie_length = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 11
  %4 = ptrtoint ptr %ie_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ie_length, align 4
  %6 = add i32 %5, -977
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1001, i32 %6)
  %cmp = icmp ult i32 %6, -1001
  br i1 %cmp, label %entry.cleanup151_crit_edge, label %if.end

entry.cleanup151_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup151

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wapi_len) #15
  %7 = ptrtoint ptr %wapi_len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %wapi_len, align 2
  %ies = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 12
  %call = call i32 @rtw_get_wapi_ie(ptr noundef %ies, i32 noundef %5, ptr noundef null, ptr noundef nonnull %wapi_len) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp sgt i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end.cleanup.cont_crit_edge

if.end.cleanup.cont_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.cont

if.then6:                                         ; preds = %if.end
  %8 = ptrtoint ptr %wapi_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %wapi_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp7.not = icmp eq i16 %9, 0
  br i1 %cmp7.not, label %if.then6.cleanup.cont_crit_edge, label %cleanup

if.then6.cleanup.cont_crit_edge:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.cont

cleanup:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wapi_len) #15
  br label %cleanup151

cleanup.cont:                                     ; preds = %if.then6.cleanup.cont_crit_edge, %if.end.cleanup.cont_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wapi_len) #15
  %scan_request = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 2
  %10 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scan_request, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %cleanup.cont.if.end65_crit_edge, label %if.then12

cleanup.cont.if.end65_crit_edge:                  ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

if.then12:                                        ; preds = %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sr) #15
  %12 = ptrtoint ptr %sr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %sr, align 1
  %ssid = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wpsielen) #15
  %15 = ptrtoint ptr %wpsielen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wpsielen, align 4
  %add.ptr = getelementptr %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 12, i32 12
  %16 = ptrtoint ptr %ie_length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ie_length, align 4
  %sub = add i32 %17, -12
  %call22 = call ptr @rtw_get_wps_ie(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef null, ptr noundef nonnull %wpsielen) #15
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then12.if.end28_crit_edge, label %land.lhs.true

if.then12.if.end28_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then12
  %18 = ptrtoint ptr %wpsielen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wpsielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp24.not = icmp eq i32 %19, 0
  br i1 %cmp24.not, label %land.lhs.true.if.end28_crit_edge, label %if.then26

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call27 = call ptr @rtw_get_wps_attr_content(ptr noundef nonnull %call22, i32 noundef %19, i16 noundef zeroext 4161, ptr noundef nonnull %sr, ptr noundef null) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %land.lhs.true.if.end28_crit_edge, %if.then12.if.end28_crit_edge
  %psr.0 = phi ptr [ %call27, %if.then26 ], [ null, %land.lhs.true.if.end28_crit_edge ], [ null, %if.then12.if.end28_crit_edge ]
  %20 = ptrtoint ptr %sr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp30.not = icmp eq i8 %21, 0
  br i1 %cmp30.not, label %if.end28.if.end64_crit_edge, label %if.then32

if.end28.if.end64_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then32:                                        ; preds = %if.end28
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp33 = icmp eq i32 %23, 1
  br i1 %cmp33, label %land.lhs.true35, label %if.then32.if.end64_crit_edge

if.then32.if.end64_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

land.lhs.true35:                                  ; preds = %if.then32
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %11, i32 0, i32 2
  %24 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp36 = icmp eq i32 %25, 1
  br i1 %cmp36, label %if.then38, label %land.lhs.true35.if.end64_crit_edge

land.lhs.true35.if.end64_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then38:                                        ; preds = %land.lhs.true35
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %14, i32 0, i32 1
  %26 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ssid_len, align 1
  %conv39 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp40.not = icmp eq i8 %27, 0
  br i1 %cmp40.not, label %if.then38.if.end64_crit_edge, label %land.lhs.true42

if.then38.if.end64_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

land.lhs.true42:                                  ; preds = %if.then38
  %28 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ssid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv39)
  %cmp46.not = icmp eq i32 %29, %conv39
  br i1 %cmp46.not, label %lor.lhs.false, label %if.then58

lor.lhs.false:                                    ; preds = %land.lhs.true42
  %ssid48 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 3, i32 1
  %bcmp = call i32 @bcmp(ptr %ssid48, ptr %14, i32 %conv39) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool57.not = icmp eq i32 %bcmp, 0
  %tobool59.not = icmp eq ptr %psr.0, null
  %or.cond = select i1 %tobool57.not, i1 true, i1 %tobool59.not
  br i1 %or.cond, label %lor.lhs.false.if.end64_crit_edge, label %lor.lhs.false.if.then60_crit_edge

lor.lhs.false.if.then60_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60

lor.lhs.false.if.end64_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then58:                                        ; preds = %land.lhs.true42
  %tobool59.not.old = icmp eq ptr %psr.0, null
  br i1 %tobool59.not.old, label %if.then58.if.end64_crit_edge, label %if.then58.if.then60_crit_edge

if.then58.if.then60_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60

if.then58.if.end64_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then60:                                        ; preds = %if.then58.if.then60_crit_edge, %lor.lhs.false.if.then60_crit_edge
  %30 = ptrtoint ptr %psr.0 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %psr.0, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.then58.if.end64_crit_edge, %lor.lhs.false.if.end64_crit_edge, %if.then38.if.end64_crit_edge, %land.lhs.true35.if.end64_crit_edge, %if.then32.if.end64_crit_edge, %if.end28.if.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wpsielen) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sr) #15
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %cleanup.cont.if.end65_crit_edge
  %ds_config = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 7, i32 3
  %31 = ptrtoint ptr %ds_config to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ds_config, align 4
  %conv68 = and i32 %32, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %conv68)
  %cmp1.i = icmp eq i32 %conv68, 14
  br i1 %cmp1.i, label %if.end65.rtw_ieee80211_channel_to_frequency.exit_crit_edge, label %if.else.i

if.end65.rtw_ieee80211_channel_to_frequency.exit_crit_edge: ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_ieee80211_channel_to_frequency.exit

if.else.i:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %conv68)
  %cmp3.i = icmp ult i32 %conv68, 14
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge

if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_ieee80211_channel_to_frequency.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %33 = mul nuw nsw i32 %conv68, 5000
  %phi.bo = add nuw nsw i32 %33, 2407000
  br label %rtw_ieee80211_channel_to_frequency.exit

rtw_ieee80211_channel_to_frequency.exit:          ; preds = %if.then4.i, %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge, %if.end65.rtw_ieee80211_channel_to_frequency.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.then4.i ], [ 2484000, %if.end65.rtw_ieee80211_channel_to_frequency.exit_crit_edge ], [ 0, %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge ]
  %call.i = call ptr @ieee80211_get_channel_khz(ptr noundef %3, i32 noundef %retval.0.i) #15
  %call.i217 = call i64 @ktime_get_with_offset(i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i217)
  %cmp8.i.i = icmp slt i64 %call.i217, 0
  %34 = call i64 @llvm.abs.i64(i64 %call.i217, i1 false) #15
  %35 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %34, i32 0) #19, !srcloc !62
  %asmresult.i.i.i = extractvalue { i64, i32 } %35, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %35, 1
  %36 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %34, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #19, !srcloc !63
  %asmresult10.i.i.i = extractvalue { i64, i32 } %36, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %rtw_ieee80211_channel_to_frequency.exit.if.else_crit_edge, label %land.lhs.true76

rtw_ieee80211_channel_to_frequency.exit.if.else_crit_edge: ; preds = %rtw_ieee80211_channel_to_frequency.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true76:                                  ; preds = %rtw_ieee80211_channel_to_frequency.exit
  %network77 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6
  %call79 = call i32 @is_same_network(ptr noundef %network77, ptr noundef %network, i8 noundef zeroext 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %land.lhs.true76.if.else_crit_edge, label %if.then81

land.lhs.true76.if.else_crit_edge:                ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then81:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #17
  %signal_strength = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 27
  br label %if.end89

if.else:                                          ; preds = %land.lhs.true76.if.else_crit_edge, %rtw_ieee80211_channel_to_frequency.exit.if.else_crit_edge
  %phy_info = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 10
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.then81
  %notify_signal.0.in.in.in.in.in.in = phi ptr [ %signal_strength, %if.then81 ], [ %phy_info, %if.else ]
  %39 = ptrtoint ptr %notify_signal.0.in.in.in.in.in.in to i32
  call void @__asan_load1_noabort(i32 %39)
  %notify_signal.0.in.in.in.in.in = load i8, ptr %notify_signal.0.in.in.in.in.in.in, align 2
  %notify_signal.0.in.in.in.in = zext i8 %notify_signal.0.in.in.in.in.in to i32
  %notify_signal.0.in.in.in = add nuw nsw i32 %notify_signal.0.in.in.in.in, 1
  %notify_signal.0.in.in = lshr i32 %notify_signal.0.in.in.in, 1
  %40 = mul nuw nsw i32 %notify_signal.0.in.in, 100
  %notify_signal.0 = add nsw i32 %40, -9500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 2848, i32 noundef 1000) #20
  %tobool91.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool91.not, label %if.end89.cleanup151_crit_edge, label %if.end93

if.end89.cleanup151_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup151

if.end93:                                         ; preds = %if.end89
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %call7.i.i, align 8
  %43 = ptrtoint ptr %call7.i.i to i32
  %add94 = add i32 %43, 22
  %44 = inttoptr i32 %add94 to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %44, align 2
  %47 = and i16 %46, 3840
  store i16 %47, ptr %44, align 2
  %reserved = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 2
  %48 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %reserved, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp101 = icmp eq i8 %49, 1
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call7.i.i, i32 0, i32 2
  br i1 %cmp101, label %if.then103, label %if.else114

if.then103:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #17
  %50 = call ptr @memset(ptr %addr1, i32 255, i32 6)
  br label %if.end127

if.else114:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #17
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %51 = call ptr @memcpy(ptr %addr1, ptr %mac_addr.i, i32 6)
  br label %if.end127

if.end127:                                        ; preds = %if.else114, %if.then103
  %.sink225 = phi i16 [ 20480, %if.else114 ], [ -32768, %if.then103 ]
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %call7.i.i, align 8
  %54 = and i16 %53, 1023
  %55 = or i16 %54, %.sink225
  store i16 %55, ptr %call7.i.i, align 8
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call7.i.i, i32 0, i32 3
  %mac_address = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 1
  %56 = call ptr @memcpy(ptr %addr2, ptr %mac_address, i32 6)
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call7.i.i, i32 0, i32 4
  %57 = call ptr @memcpy(ptr %addr3, ptr %mac_address, i32 6)
  %add.ptr135 = getelementptr i8, ptr %call7.i.i, i32 24
  %58 = ptrtoint ptr %ie_length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ie_length, align 4
  %60 = call ptr @memcpy(ptr %add.ptr135, ptr %ies, i32 %59)
  %add143 = add i32 %59, 24
  %61 = call i64 @llvm.bswap.i64(i64 %cond213.i.i)
  %62 = ptrtoint ptr %add.ptr135 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %add.ptr135, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i) #15
  %63 = getelementptr inbounds i8, ptr %data.i, i32 8
  %64 = call ptr @memset(ptr %63, i32 0, i32 40)
  %65 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %data.i, align 8
  %scan_width.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i, i32 0, i32 1
  %66 = ptrtoint ptr %scan_width.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %scan_width.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %notify_signal.0, ptr %63, align 8
  %call.i222 = call ptr @cfg80211_inform_bss_frame_data(ptr noundef %3, ptr noundef nonnull %data.i, ptr noundef nonnull %call7.i.i, i32 noundef %add143, i32 noundef 2592) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #15
  %tobool145.not = icmp eq ptr %call.i222, null
  br i1 %tobool145.not, label %if.end127.cleanup151_crit_edge, label %if.end150, !prof !64

if.end127.cleanup151_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup151

if.end150:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #17
  call void @cfg80211_put_bss(ptr noundef %3, ptr noundef nonnull %call.i222) #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup151

cleanup151:                                       ; preds = %if.end150, %if.end127.cleanup151_crit_edge, %if.end89.cleanup151_crit_edge, %cleanup, %entry.cleanup151_crit_edge
  %bss.0 = phi ptr [ null, %entry.cleanup151_crit_edge ], [ null, %cleanup ], [ null, %if.end127.cleanup151_crit_edge ], [ %call.i222, %if.end150 ], [ null, %if.end89.cleanup151_crit_edge ]
  ret ptr %bss.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_wapi_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wps_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wps_attr_content(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_same_network(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_cfg80211_check_bss(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %tobool.not = icmp eq ptr %network, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rtw_wdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 47
  %0 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtw_wdev, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ds_config = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 7, i32 3
  %2 = ptrtoint ptr %ds_config to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ds_config, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %3)
  %cmp1.i = icmp eq i32 %3, 14
  br i1 %cmp1.i, label %if.end.rtw_ieee80211_channel_to_frequency.exit_crit_edge, label %if.else.i

if.end.rtw_ieee80211_channel_to_frequency.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_ieee80211_channel_to_frequency.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %3)
  %cmp3.i = icmp slt i32 %3, 14
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge

if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_ieee80211_channel_to_frequency.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %4 = mul i32 %3, 5000
  %phi.bo = add i32 %4, 2407000
  br label %rtw_ieee80211_channel_to_frequency.exit

rtw_ieee80211_channel_to_frequency.exit:          ; preds = %if.then4.i, %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge, %if.end.rtw_ieee80211_channel_to_frequency.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.then4.i ], [ 2484000, %if.end.rtw_ieee80211_channel_to_frequency.exit_crit_edge ], [ 0, %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %6, i32 noundef %retval.0.i) #15
  %7 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtw_wdev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %mac_address = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  %ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3
  %ssid6 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3, i32 1
  %11 = ptrtoint ptr %ssid to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %ssid, align 1
  %call9 = tail call ptr @cfg80211_get_bss(ptr noundef %10, ptr noundef %call.i, ptr noundef %mac_address, ptr noundef %ssid6, i32 noundef %12, i32 noundef 1, i32 noundef 1) #15
  %13 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtw_wdev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void @cfg80211_put_bss(ptr noundef %16, ptr noundef %call9) #15
  %cmp = icmp ne ptr %call9, null
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %rtw_ieee80211_channel_to_frequency.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %rtw_ieee80211_channel_to_frequency.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_cfg80211_ibss_indicate_connect(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_network1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20
  %rtw_wdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 47
  %0 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtw_wdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6
  %ds_config = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 7, i32 3
  %4 = ptrtoint ptr %ds_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ds_config, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup100_crit_edge

entry.cleanup100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup100

if.end:                                           ; preds = %entry
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %ds_config.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 7, i32 3
  %8 = ptrtoint ptr %ds_config.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %ds_config.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %9)
  %cmp1.i.i = icmp eq i32 %9, 14
  br i1 %cmp1.i.i, label %if.end.i.rtw_cfg80211_check_bss.exit_crit_edge, label %if.else.i.i

if.end.i.rtw_cfg80211_check_bss.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_check_bss.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %9)
  %cmp3.i.i = icmp slt i32 %9, 14
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.else.i.i.rtw_cfg80211_check_bss.exit_crit_edge

if.else.i.i.rtw_cfg80211_check_bss.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_check_bss.exit

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = mul i32 %9, 5000
  %phi.bo.i = add i32 %10, 2407000
  br label %rtw_cfg80211_check_bss.exit

rtw_cfg80211_check_bss.exit:                      ; preds = %if.then4.i.i, %if.else.i.i.rtw_cfg80211_check_bss.exit_crit_edge, %if.end.i.rtw_cfg80211_check_bss.exit_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo.i, %if.then4.i.i ], [ 2484000, %if.end.i.rtw_cfg80211_check_bss.exit_crit_edge ], [ 0, %if.else.i.i.rtw_cfg80211_check_bss.exit_crit_edge ]
  %call.i.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %3, i32 noundef %retval.0.i.i) #15
  %11 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtw_wdev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %mac_address.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  %ssid.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3
  %ssid6.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3, i32 1
  %15 = ptrtoint ptr %ssid.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %ssid.i, align 1
  %call9.i = tail call ptr @cfg80211_get_bss(ptr noundef %14, ptr noundef %call.i.i, ptr noundef %mac_address.i, ptr noundef %ssid6.i, i32 noundef %16, i32 noundef 1, i32 noundef 1) #15
  %17 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rtw_wdev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  tail call void @cfg80211_put_bss(ptr noundef %20, ptr noundef %call9.i) #15
  %cmp.i.not = icmp eq ptr %call9.i, null
  br i1 %cmp.i.not, label %rtw_cfg80211_check_bss.exit.if.then3_crit_edge, label %rtw_cfg80211_check_bss.exit.if.end94_crit_edge

rtw_cfg80211_check_bss.exit.if.end94_crit_edge:   ; preds = %rtw_cfg80211_check_bss.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

rtw_cfg80211_check_bss.exit.if.then3_crit_edge:   ; preds = %rtw_cfg80211_check_bss.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3

if.then3:                                         ; preds = %rtw_cfg80211_check_bss.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %cur_network_scanned = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 21
  %21 = ptrtoint ptr %cur_network_scanned to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur_network_scanned, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %network4 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %25 = call ptr @memcpy(ptr %network, ptr %network4, i32 872)
  %call9 = tail call ptr @rtw_cfg80211_inform_bss(ptr noundef %padapter, ptr noundef %cur_network1)
  br label %if.end69

if.else:                                          ; preds = %if.then3
  %tobool10.not = icmp eq ptr %22, null
  br i1 %tobool10.not, label %do.end, label %if.end29

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 395, i32 noundef 9, ptr noundef null) #15
  br label %cleanup100

if.end29:                                         ; preds = %if.else
  %ssid = getelementptr inbounds %struct.wlan_network, ptr %22, i32 0, i32 6, i32 3
  %ssid31 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(36) %ssid, ptr noundef dereferenceable(36) %ssid31, i32 36) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool33.not = icmp eq i32 %bcmp, 0
  br i1 %tobool33.not, label %land.lhs.true, label %if.end29.do.end54_crit_edge

if.end29.do.end54_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end54

land.lhs.true:                                    ; preds = %if.end29
  %mac_address = getelementptr inbounds %struct.wlan_network, ptr %22, i32 0, i32 6, i32 1
  %mac_address35 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  %bcmp130 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address, ptr noundef dereferenceable(6) %mac_address35, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp130)
  %tobool38.not = icmp eq i32 %bcmp130, 0
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true.do.end54_crit_edge

land.lhs.true.do.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end54

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call40 = tail call ptr @rtw_cfg80211_inform_bss(ptr noundef %padapter, ptr noundef nonnull %22)
  br label %if.end69

do.end54:                                         ; preds = %land.lhs.true.do.end54_crit_edge, %if.end29.do.end54_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 403, i32 noundef 9, ptr noundef null) #15
  br label %if.end69

if.end69:                                         ; preds = %do.end54, %if.then39, %if.then7
  %26 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtw_wdev, align 4
  %tobool1.not.i134 = icmp eq ptr %27, null
  br i1 %tobool1.not.i134, label %if.end69.do.body74_crit_edge, label %if.end.i137

if.end69.do.body74_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body74

if.end.i137:                                      ; preds = %if.end69
  %ds_config.i135 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 7, i32 3
  %28 = ptrtoint ptr %ds_config.i135 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %ds_config.i135, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %29)
  %cmp1.i.i136 = icmp eq i32 %29, 14
  br i1 %cmp1.i.i136, label %if.end.i137.rtw_cfg80211_check_bss.exit152_crit_edge, label %if.else.i.i139

if.end.i137.rtw_cfg80211_check_bss.exit152_crit_edge: ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_check_bss.exit152

if.else.i.i139:                                   ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %29)
  %cmp3.i.i138 = icmp slt i32 %29, 14
  br i1 %cmp3.i.i138, label %if.then4.i.i141, label %if.else.i.i139.rtw_cfg80211_check_bss.exit152_crit_edge

if.else.i.i139.rtw_cfg80211_check_bss.exit152_crit_edge: ; preds = %if.else.i.i139
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_check_bss.exit152

if.then4.i.i141:                                  ; preds = %if.else.i.i139
  call void @__sanitizer_cov_trace_pc() #17
  %30 = mul i32 %29, 5000
  %phi.bo.i140 = add i32 %30, 2407000
  br label %rtw_cfg80211_check_bss.exit152

rtw_cfg80211_check_bss.exit152:                   ; preds = %if.then4.i.i141, %if.else.i.i139.rtw_cfg80211_check_bss.exit152_crit_edge, %if.end.i137.rtw_cfg80211_check_bss.exit152_crit_edge
  %retval.0.i.i142 = phi i32 [ %phi.bo.i140, %if.then4.i.i141 ], [ 2484000, %if.end.i137.rtw_cfg80211_check_bss.exit152_crit_edge ], [ 0, %if.else.i.i139.rtw_cfg80211_check_bss.exit152_crit_edge ]
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %27, align 4
  %call.i.i143 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %32, i32 noundef %retval.0.i.i142) #15
  %33 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rtw_wdev, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %mac_address.i144 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  %ssid.i145 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3
  %ssid6.i146 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3, i32 1
  %37 = ptrtoint ptr %ssid.i145 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %ssid.i145, align 1
  %call9.i147 = tail call ptr @cfg80211_get_bss(ptr noundef %36, ptr noundef %call.i.i143, ptr noundef %mac_address.i144, ptr noundef %ssid6.i146, i32 noundef %38, i32 noundef 1, i32 noundef 1) #15
  %39 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rtw_wdev, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  tail call void @cfg80211_put_bss(ptr noundef %42, ptr noundef %call9.i147) #15
  %cmp.i148.not = icmp eq ptr %call9.i147, null
  br i1 %cmp.i148.not, label %rtw_cfg80211_check_bss.exit152.do.body74_crit_edge, label %rtw_cfg80211_check_bss.exit152.if.end94_crit_edge

rtw_cfg80211_check_bss.exit152.if.end94_crit_edge: ; preds = %rtw_cfg80211_check_bss.exit152
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

rtw_cfg80211_check_bss.exit152.do.body74_crit_edge: ; preds = %rtw_cfg80211_check_bss.exit152
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body74

do.body74:                                        ; preds = %rtw_cfg80211_check_bss.exit152.do.body74_crit_edge, %if.end69.do.body74_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_cfg80211_ibss_indicate_connect.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_cfg80211_ibss_indicate_connect, %if.then84)) #15
          to label %if.end94 [label %if.then84], !srcloc !65

if.then84:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #17
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %43 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_cfg80211_ibss_indicate_connect.__UNIQUE_ID_ddebug345, ptr noundef %44, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef %44) #15
  br label %if.end94

if.end94:                                         ; preds = %if.then84, %do.body74, %rtw_cfg80211_check_bss.exit152.if.end94_crit_edge, %rtw_cfg80211_check_bss.exit.if.end94_crit_edge
  %mul.i = mul i32 %5, 1000
  %call.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %3, i32 noundef %mul.i) #15
  %pnetdev96 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %45 = ptrtoint ptr %pnetdev96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pnetdev96, align 8
  %mac_address98 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 1
  tail call void @cfg80211_ibss_joined(ptr noundef %46, ptr noundef %mac_address98, ptr noundef %call.i, i32 noundef 2592) #15
  br label %cleanup100

cleanup100:                                       ; preds = %if.end94, %do.end, %entry.cleanup100_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ibss_joined(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_cfg80211_indicate_connect(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %params.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  %roam_info = alloca %struct.cfg80211_roam_info, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rtw_wdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 47
  %0 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtw_wdev, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup128_crit_edge [
    i32 2, label %entry.if.end_crit_edge
    i32 8, label %entry.if.end_crit_edge170
  ]

entry.if.end_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

entry.cleanup128_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup128

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge170
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end6, label %if.end.cleanup128_crit_edge

if.end.cleanup128_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup128

if.end6:                                          ; preds = %if.end
  %cur_network_scanned = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 21
  %7 = ptrtoint ptr %cur_network_scanned to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_network_scanned, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 436, i32 noundef 9, ptr noundef null) #15
  br label %check_bss

if.end25:                                         ; preds = %if.end6
  %mac_address = getelementptr inbounds %struct.wlan_network, ptr %8, i32 0, i32 6, i32 1
  %mac_address27 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address, ptr noundef dereferenceable(6) %mac_address27, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool30.not = icmp eq i32 %bcmp, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %if.end25.do.end50_crit_edge

if.end25.do.end50_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end50

land.lhs.true31:                                  ; preds = %if.end25
  %ssid = getelementptr inbounds %struct.wlan_network, ptr %8, i32 0, i32 6, i32 3
  %ssid33 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3
  %bcmp163 = tail call i32 @bcmp(ptr noundef dereferenceable(36) %ssid, ptr noundef dereferenceable(36) %ssid33, i32 36) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp163)
  %tobool35.not = icmp eq i32 %bcmp163, 0
  br i1 %tobool35.not, label %if.then36, label %land.lhs.true31.do.end50_crit_edge

land.lhs.true31.do.end50_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end50

if.then36:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  %call37 = tail call ptr @rtw_cfg80211_inform_bss(ptr noundef %padapter, ptr noundef nonnull %8)
  br label %check_bss

do.end50:                                         ; preds = %land.lhs.true31.do.end50_crit_edge, %if.end25.do.end50_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 445, i32 noundef 9, ptr noundef null) #15
  br label %check_bss

check_bss:                                        ; preds = %do.end50, %if.then36, %do.end
  %9 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtw_wdev, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %check_bss.do.body70_crit_edge, label %if.end.i

check_bss.do.body70_crit_edge:                    ; preds = %check_bss
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body70

if.end.i:                                         ; preds = %check_bss
  %ds_config.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 7, i32 3
  %11 = ptrtoint ptr %ds_config.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %ds_config.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %12)
  %cmp1.i.i = icmp eq i32 %12, 14
  br i1 %cmp1.i.i, label %if.end.i.rtw_cfg80211_check_bss.exit_crit_edge, label %if.else.i.i

if.end.i.rtw_cfg80211_check_bss.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_check_bss.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %12)
  %cmp3.i.i = icmp slt i32 %12, 14
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.else.i.i.rtw_cfg80211_check_bss.exit_crit_edge

if.else.i.i.rtw_cfg80211_check_bss.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_check_bss.exit

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %13 = mul i32 %12, 5000
  %phi.bo.i = add i32 %13, 2407000
  br label %rtw_cfg80211_check_bss.exit

rtw_cfg80211_check_bss.exit:                      ; preds = %if.then4.i.i, %if.else.i.i.rtw_cfg80211_check_bss.exit_crit_edge, %if.end.i.rtw_cfg80211_check_bss.exit_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo.i, %if.then4.i.i ], [ 2484000, %if.end.i.rtw_cfg80211_check_bss.exit_crit_edge ], [ 0, %if.else.i.i.rtw_cfg80211_check_bss.exit_crit_edge ]
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  %call.i.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %15, i32 noundef %retval.0.i.i) #15
  %16 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rtw_wdev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %mac_address.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  %ssid.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3
  %ssid6.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3, i32 1
  %20 = ptrtoint ptr %ssid.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %ssid.i, align 1
  %call9.i = tail call ptr @cfg80211_get_bss(ptr noundef %19, ptr noundef %call.i.i, ptr noundef %mac_address.i, ptr noundef %ssid6.i, i32 noundef %21, i32 noundef 1, i32 noundef 1) #15
  %22 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rtw_wdev, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  tail call void @cfg80211_put_bss(ptr noundef %25, ptr noundef %call9.i) #15
  %cmp.i.not = icmp eq ptr %call9.i, null
  br i1 %cmp.i.not, label %rtw_cfg80211_check_bss.exit.do.body70_crit_edge, label %rtw_cfg80211_check_bss.exit.if.end88_crit_edge

rtw_cfg80211_check_bss.exit.if.end88_crit_edge:   ; preds = %rtw_cfg80211_check_bss.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

rtw_cfg80211_check_bss.exit.do.body70_crit_edge:  ; preds = %rtw_cfg80211_check_bss.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body70

do.body70:                                        ; preds = %rtw_cfg80211_check_bss.exit.do.body70_crit_edge, %check_bss.do.body70_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_cfg80211_indicate_connect.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_cfg80211_indicate_connect, %if.then80)) #15
          to label %if.end88 [label %if.then80], !srcloc !65

if.then80:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #17
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %26 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_cfg80211_indicate_connect.__UNIQUE_ID_ddebug346, ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %27) #15
  br label %if.end88

if.end88:                                         ; preds = %if.then80, %do.body70, %rtw_cfg80211_check_bss.exit.if.end88_crit_edge
  %call89 = tail call zeroext i8 @rtw_to_roam(ptr noundef %padapter) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call89)
  %cmp90.not = icmp eq i8 %call89, 0
  br i1 %cmp90.not, label %if.else110, label %if.then92

if.then92:                                        ; preds = %if.end88
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %ds_config = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 7, i32 3
  %30 = ptrtoint ptr %ds_config to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ds_config, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %roam_info) #15
  %32 = getelementptr inbounds i8, ptr %roam_info, i32 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 48)
  %conv96 = and i32 %31, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %conv96)
  %cmp1.i = icmp eq i32 %conv96, 14
  br i1 %cmp1.i, label %if.then92.rtw_ieee80211_channel_to_frequency.exit_crit_edge, label %if.else.i

if.then92.rtw_ieee80211_channel_to_frequency.exit_crit_edge: ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_ieee80211_channel_to_frequency.exit

if.else.i:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %conv96)
  %cmp3.i = icmp ult i32 %conv96, 14
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge

if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_ieee80211_channel_to_frequency.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %34 = mul nuw nsw i32 %conv96, 5000
  %phi.bo = add nuw nsw i32 %34, 2407000
  br label %rtw_ieee80211_channel_to_frequency.exit

rtw_ieee80211_channel_to_frequency.exit:          ; preds = %if.then4.i, %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge, %if.then92.rtw_ieee80211_channel_to_frequency.exit_crit_edge
  %retval.0.i165 = phi i32 [ %phi.bo, %if.then4.i ], [ 2484000, %if.then92.rtw_ieee80211_channel_to_frequency.exit_crit_edge ], [ 0, %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge ]
  %call.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %29, i32 noundef %retval.0.i165) #15
  %35 = ptrtoint ptr %roam_info to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %roam_info, align 4
  %mac_address101 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %bssid = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 2
  %36 = ptrtoint ptr %bssid to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %mac_address101, ptr %bssid, align 4
  %assoc_req = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 49
  %37 = ptrtoint ptr %assoc_req to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %assoc_req, align 4
  %add.ptr103 = getelementptr i8, ptr %38, i32 26
  %req_ie = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 3
  %39 = ptrtoint ptr %req_ie to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr103, ptr %req_ie, align 4
  %assoc_req_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 50
  %40 = ptrtoint ptr %assoc_req_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %assoc_req_len, align 4
  %sub104 = add i32 %41, -26
  %req_ie_len = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 4
  %42 = ptrtoint ptr %req_ie_len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub104, ptr %req_ie_len, align 4
  %assoc_rsp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 51
  %43 = ptrtoint ptr %assoc_rsp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %assoc_rsp, align 4
  %add.ptr106 = getelementptr i8, ptr %44, i32 30
  %resp_ie = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 5
  %45 = ptrtoint ptr %resp_ie to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr106, ptr %resp_ie, align 4
  %assoc_rsp_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 52
  %46 = ptrtoint ptr %assoc_rsp_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %assoc_rsp_len, align 4
  %sub108 = add i32 %47, -30
  %resp_ie_len = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 6
  %48 = ptrtoint ptr %resp_ie_len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub108, ptr %resp_ie_len, align 4
  %pnetdev109 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %49 = ptrtoint ptr %pnetdev109 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pnetdev109, align 8
  call void @cfg80211_roamed(ptr noundef %50, ptr noundef nonnull %roam_info, i32 noundef 2592) #15
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %roam_info) #15
  br label %cleanup128

if.else110:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  %pnetdev111 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %51 = ptrtoint ptr %pnetdev111 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pnetdev111, align 8
  %mac_address113 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %assoc_req115 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 49
  %53 = ptrtoint ptr %assoc_req115 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %assoc_req115, align 4
  %add.ptr117 = getelementptr i8, ptr %54, i32 26
  %assoc_req_len118 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 50
  %55 = ptrtoint ptr %assoc_req_len118 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %assoc_req_len118, align 4
  %sub120 = add i32 %56, -26
  %assoc_rsp121 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 51
  %57 = ptrtoint ptr %assoc_rsp121 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %assoc_rsp121, align 4
  %add.ptr123 = getelementptr i8, ptr %58, i32 30
  %assoc_rsp_len124 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 52
  %59 = ptrtoint ptr %assoc_rsp_len124 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %assoc_rsp_len124, align 4
  %sub126 = add i32 %60, -30
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i) #15
  %61 = getelementptr inbounds i8, ptr %params.i.i, i32 28
  %62 = call ptr @memset(ptr %61, i32 0, i32 24)
  %63 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %params.i.i, align 4
  %bssid2.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %bssid2.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %mac_address113, ptr %bssid2.i.i, align 4
  %bss3.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %bss3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %bss3.i.i, align 4
  %req_ie4.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %req_ie4.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr117, ptr %req_ie4.i.i, align 4
  %req_ie_len5.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %req_ie_len5.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub120, ptr %req_ie_len5.i.i, align 4
  %resp_ie6.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 5
  %68 = ptrtoint ptr %resp_ie6.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr123, ptr %resp_ie6.i.i, align 4
  %resp_ie_len7.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 6
  %69 = ptrtoint ptr %resp_ie_len7.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub126, ptr %resp_ie_len7.i.i, align 4
  %timeout_reason8.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 8
  %70 = ptrtoint ptr %timeout_reason8.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %timeout_reason8.i.i, align 4
  call void @cfg80211_connect_done(ptr noundef %52, ptr noundef nonnull %params.i.i, i32 noundef 2592) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i) #15
  br label %cleanup128

cleanup128:                                       ; preds = %if.else110, %rtw_ieee80211_channel_to_frequency.exit, %if.end.cleanup128_crit_edge, %entry.cleanup128_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_to_roam(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_roamed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_cfg80211_indicate_disconnect(ptr nocapture noundef readonly %padapter) local_unnamed_addr #0 align 64 {
entry:
  %params.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rtw_wdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 47
  %0 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtw_wdev, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2, label %entry.if.end_crit_edge
    i32 8, label %entry.if.end_crit_edge26
  ]

entry.if.end_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge26
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %not_indic_disco = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 12
  %7 = ptrtoint ptr %not_indic_disco to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %not_indic_disco, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %and.i23 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool10.not = icmp eq i32 %and.i23, 0
  %pnetdev12 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %9 = ptrtoint ptr %pnetdev12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pnetdev12, align 8
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @cfg80211_disconnected(ptr noundef %10, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i32 noundef 2592) #15
  br label %cleanup

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i) #15
  %11 = getelementptr inbounds i8, ptr %params.i.i, i32 28
  %12 = call ptr @memset(ptr %11, i32 0, i32 24)
  %13 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %params.i.i, align 4
  %bssid2.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 1
  %timeout_reason8.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %timeout_reason8.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %timeout_reason8.i.i, align 4
  %15 = call ptr @memset(ptr %bssid2.i.i, i32 0, i32 24)
  call void @cfg80211_connect_done(ptr noundef %10, ptr noundef nonnull %params.i.i, i32 noundef 2592) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_cfg80211_indicate_scan_done(ptr noundef %adapter, i1 noundef zeroext %aborted) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %aborted to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #15
  %0 = getelementptr inbounds i8, ptr %info, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %aborted1 = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info, i32 0, i32 2
  %2 = call ptr @memset(ptr %info, i32 0, i32 14)
  %3 = ptrtoint ptr %aborted1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %aborted1, align 2
  %scan_req_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %scan_req_lock) #15
  %scan_request = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 2
  %4 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scan_request, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then:                                          ; preds = %entry
  %wdev_data = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48
  %wiphy = getelementptr inbounds %struct.cfg80211_scan_request, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %8 = ptrtoint ptr %wdev_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wdev_data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %cmp = icmp eq ptr %7, %11
  br i1 %cmp, label %if.then6, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  call void @cfg80211_scan_done(ptr noundef nonnull %5, ptr noundef nonnull %info) #15
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %scan_request, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %scan_req_lock) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_cfg80211_unlink_bss(ptr nocapture noundef readonly %padapter, ptr noundef %pnetwork) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rtw_wdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 47
  %0 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtw_wdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mac_address = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 1
  %ssid = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 3
  %ssid2 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 3, i32 1
  %4 = ptrtoint ptr %ssid to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ssid, align 1
  %call = tail call ptr @cfg80211_get_bss(ptr noundef %3, ptr noundef null, ptr noundef %mac_address, ptr noundef %ssid2, i32 noundef %5, i32 noundef 0, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @cfg80211_unlink_bss(ptr noundef %3, ptr noundef nonnull %call) #15
  %6 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtw_wdev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @cfg80211_put_bss(ptr noundef %9, ptr noundef nonnull %call) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unlink_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_cfg80211_surveydone_event_callback(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %0 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.021 = load ptr, ptr %scanned_queue, align 4
  %cmp.i.not22 = icmp eq ptr %plist.021, %scanned_queue
  br i1 %cmp.i.not22, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channel_set = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %plist.023 = phi ptr [ %plist.021, %for.body.lr.ph ], [ %plist.0, %for.inc.for.body_crit_edge ]
  %ds_config = getelementptr inbounds %struct.wlan_network, ptr %plist.023, i32 0, i32 6, i32 7, i32 3
  %1 = ptrtoint ptr %ds_config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ds_config, align 4
  %call3 = tail call i32 @rtw_ch_set_search_ch(ptr noundef %channel_set, i32 noundef %2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp sgt i32 %call3, -1
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ssid = getelementptr inbounds %struct.wlan_network, ptr %plist.023, i32 0, i32 6, i32 3
  %call5 = tail call zeroext i8 @rtw_validate_ssid(ptr noundef %ssid) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call5)
  %cmp6 = icmp eq i8 %call5, 1
  br i1 %cmp6, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call ptr @rtw_cfg80211_inform_bss(ptr noundef %padapter, ptr noundef %plist.023)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %3 = ptrtoint ptr %plist.023 to i32
  call void @__asan_load4_noabort(i32 %3)
  %plist.0 = load ptr, ptr %plist.023, align 4
  %cmp.i.not = icmp eq ptr %plist.0, %scanned_queue
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_ch_set_search_ch(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_validate_ssid(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtw_cfg80211_pwr_mgmt(ptr nocapture noundef readonly %adapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %power_mgmt = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 12
  %0 = ptrtoint ptr %power_mgmt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mgmt, align 2, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_cfg80211_indicate_sta_assoc(ptr nocapture noundef readonly %padapter, ptr noundef %pmgmt_frame, i32 noundef %frame_len) local_unnamed_addr #0 align 64 {
entry:
  %sinfo = alloca %struct.station_info, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %0 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev, align 8
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %sinfo) #15
  %2 = getelementptr inbounds i8, ptr %sinfo, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 200)
  %4 = ptrtoint ptr %pmgmt_frame to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pmgmt_frame, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %5)
  %cmp = icmp ult i16 %5, 1024
  %..neg9 = select i1 %cmp, i32 -4, i32 -10
  %. = select i1 %cmp, i32 4, i32 10
  %6 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %sinfo, align 8
  %add.ptr = getelementptr i8, ptr %pmgmt_frame, i32 24
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %.
  %assoc_req_ies = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 24
  %7 = ptrtoint ptr %assoc_req_ies to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr3, ptr %assoc_req_ies, align 8
  %sub = add i32 %frame_len, -24
  %sub5 = add i32 %sub, %..neg9
  %assoc_req_ies_len = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 25
  %8 = ptrtoint ptr %assoc_req_ies_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub5, ptr %assoc_req_ies_len, align 4
  %9 = ptrtoint ptr %pmgmt_frame to i32
  %add = add i32 %9, 10
  %10 = inttoptr i32 %add to ptr
  call void @cfg80211_new_sta(ptr noundef %1, ptr noundef %10, ptr noundef nonnull %sinfo, i32 noundef 2592) #15
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %sinfo) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_new_sta(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_cfg80211_indicate_sta_disassoc(ptr nocapture noundef readonly %padapter, ptr noundef %da, i16 noundef zeroext %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %0 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev, align 8
  tail call void @cfg80211_del_sta_sinfo(ptr noundef %1, ptr noundef %da, ptr noundef null, i32 noundef 2592) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_cfg80211_rx_action(ptr noundef %adapter, ptr noundef %frame, i32 noundef %frame_len, ptr nocapture noundef readnone %msg) local_unnamed_addr #0 align 64 {
entry:
  %category = alloca i8, align 1
  %action = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %category) #15
  %0 = ptrtoint ptr %category to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %category, align 1, !annotation !67
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %action) #15
  %1 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %action, align 1, !annotation !67
  %call = tail call zeroext i8 @rtw_get_oper_ch(ptr noundef %adapter) #15
  %conv = zext i8 %call to i32
  %call1 = call i32 @rtw_action_frame_parse(ptr noundef %frame, i32 noundef %frame_len, ptr noundef nonnull %category, ptr noundef nonnull %action) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %call)
  %cmp1.i = icmp eq i8 %call, 14
  br i1 %cmp1.i, label %entry.rtw_ieee80211_channel_to_frequency.exit_crit_edge, label %if.else.i

entry.rtw_ieee80211_channel_to_frequency.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_ieee80211_channel_to_frequency.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %call)
  %cmp3.i = icmp ult i8 %call, 14
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge

if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_ieee80211_channel_to_frequency.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %2 = mul nuw nsw i32 %conv, 5000
  %phi.bo = add nuw nsw i32 %2, 2407000
  br label %rtw_ieee80211_channel_to_frequency.exit

rtw_ieee80211_channel_to_frequency.exit:          ; preds = %if.then4.i, %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge, %entry.rtw_ieee80211_channel_to_frequency.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.then4.i ], [ 2484000, %entry.rtw_ieee80211_channel_to_frequency.exit_crit_edge ], [ 0, %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge ]
  %rtw_wdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 47
  %3 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtw_wdev, align 4
  %call.i = call zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef %4, i32 noundef %retval.0.i, i32 noundef 0, ptr noundef %frame, i32 noundef %frame_len, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %action) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %category) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_get_oper_ch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_action_frame_parse(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_cfg80211_init_wiphy(ptr nocapture noundef readonly %padapter) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rtw_wdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 47
  %0 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtw_wdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bands2 = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %bands2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bands2, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ht_cap = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %ht_supported.i, align 2
  %7 = ptrtoint ptr %ht_cap to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 6242, ptr %ht_cap, align 2
  %ampdu_factor.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %ampdu_factor.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %ampdu_factor.i, align 1
  %ampdu_density.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %ampdu_density.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 7, ptr %ampdu_density.i, align 2
  %mcs.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5, i32 4
  %tx_params.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5, i32 4, i32 2
  %10 = ptrtoint ptr %tx_params.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %tx_params.i, align 1
  %11 = ptrtoint ptr %mcs.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %mcs.i, align 1
  %arrayidx4.i = getelementptr %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx4.i, align 1
  %arrayidx7.i = getelementptr %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5, i32 4, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %arrayidx7.i, align 1
  %rx_highest.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5, i32 4, i32 1
  %14 = ptrtoint ptr %rx_highest.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 -27136, ptr %rx_highest.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %perm_addr = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 1
  %mac_addr = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %15 = call ptr @memcpy(ptr %perm_addr, ptr %mac_addr, i32 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_wdev_alloc(ptr noundef %padapter, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pnetdev1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %0 = ptrtoint ptr %pnetdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev1, align 8
  %call.i = tail call ptr @wiphy_new_nm(ptr noundef nonnull @rtw_cfg80211_ops, i32 noundef 4, ptr noundef null) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %wiphy_priv.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

wiphy_priv.exit:                                  ; preds = %entry
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent.i, align 8
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 86
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %padapter, ptr %priv.i, align 4
  %signal_type.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 16
  %4 = ptrtoint ptr %signal_type.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %signal_type.i, align 8
  %max_scan_ssids.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 18
  %5 = ptrtoint ptr %max_scan_ssids.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 9, ptr %max_scan_ssids.i, align 32
  %max_scan_ie_len.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 22
  %6 = ptrtoint ptr %max_scan_ie_len.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2304, ptr %max_scan_ie_len.i, align 4
  %max_num_pmkids.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 43
  %7 = ptrtoint ptr %max_num_pmkids.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %max_num_pmkids.i, align 2
  %max_remain_on_channel_duration.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 42
  %8 = ptrtoint ptr %max_remain_on_channel_duration.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 5000, ptr %max_remain_on_channel_duration.i, align 8
  %interface_modes.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %interface_modes.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 78, ptr %interface_modes.i, align 4
  %mgmt_stypes.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %mgmt_stypes.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @rtw_cfg80211_default_mgmt_stypes, ptr %mgmt_stypes.i, align 4
  %software_iftypes.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %software_iftypes.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %software_iftypes.i, align 8
  %13 = or i16 %12, 64
  store i16 %13, ptr %software_iftypes.i, align 8
  %cipher_suites.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 28
  %14 = ptrtoint ptr %cipher_suites.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rtw_cipher_suites, ptr %cipher_suites.i, align 8
  %n_cipher_suites.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 27
  %15 = ptrtoint ptr %n_cipher_suites.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %n_cipher_suites.i, align 4
  %call.i.i = tail call ptr @_rtw_zmalloc(i32 noundef 1020) #15
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %wiphy_priv.exit.rtw_cfg80211_preinit_wiphy.exit_crit_edge, label %if.end4.i.i

wiphy_priv.exit.rtw_cfg80211_preinit_wiphy.exit_crit_edge: ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_preinit_wiphy.exit

if.end4.i.i:                                      ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 92
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i.i, ptr %call.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %call.i.i, i32 876
  %bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %bitrates.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr7.i.i, ptr %bitrates.i.i, align 4
  %band8.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %band8.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %band8.i.i, align 4
  %n_channels9.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %n_channels9.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 14, ptr %n_channels9.i.i, align 4
  %n_bitrates10.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %n_bitrates10.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 12, ptr %n_bitrates10.i.i, align 4
  %21 = call ptr @memcpy(ptr %add.ptr.i.i, ptr @rtw_2ghz_channels, i32 784)
  %22 = call ptr @memcpy(ptr %add.ptr7.i.i, ptr @rtw_rates, i32 144)
  br label %rtw_cfg80211_preinit_wiphy.exit

rtw_cfg80211_preinit_wiphy.exit:                  ; preds = %if.end4.i.i, %wiphy_priv.exit.rtw_cfg80211_preinit_wiphy.exit_crit_edge
  %bands.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 53
  %23 = ptrtoint ptr %bands.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i, ptr %bands.i, align 16
  %flags.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 11
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 32
  %or4.i = or i32 %25, 3276800
  store i32 %or4.i, ptr %flags.i, align 32
  %max_sched_scan_reqs.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 19
  %26 = ptrtoint ptr %max_sched_scan_reqs.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %max_sched_scan_reqs.i, align 1
  %wowlan.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 40
  %27 = ptrtoint ptr %wowlan.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @wowlan_stub, ptr %wowlan.i, align 32
  %power_mgnt.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 17
  %28 = ptrtoint ptr %power_mgnt.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %power_mgnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.not.i = icmp eq i8 %29, 0
  %and.i = and i32 %or4.i, -17
  %or8.i = or i32 %25, 3276816
  %storemerge.i = select i1 %cmp.not.i, i32 %and.i, i32 %or8.i
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %storemerge.i, ptr %flags.i, align 32
  tail call void @rtw_regd_init(ptr noundef nonnull %call.i, ptr noundef nonnull @rtw_reg_notifier) #15
  %call3 = tail call i32 @wiphy_register(ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %rtw_cfg80211_preinit_wiphy.exit.free_wiphy_crit_edge, label %if.end5

rtw_cfg80211_preinit_wiphy.exit.free_wiphy_crit_edge: ; preds = %rtw_cfg80211_preinit_wiphy.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_wiphy

if.end5:                                          ; preds = %rtw_cfg80211_preinit_wiphy.exit
  %call6 = tail call ptr @_rtw_zmalloc(i32 noundef 964) #15
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wiphy_unregister(ptr noundef nonnull %call.i) #15
  br label %free_wiphy

if.end9:                                          ; preds = %if.end5
  %31 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %call6, align 4
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %call6, i32 0, i32 3
  %32 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %1, ptr %netdev, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %call6, i32 0, i32 1
  %33 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %iftype, align 4
  %rtw_wdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 47
  %34 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call6, ptr %rtw_wdev, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %35 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call6, ptr %ieee80211_ptr, align 16
  %wdev_data = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48
  %36 = ptrtoint ptr %wdev_data to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call6, ptr %wdev_data, align 4
  %pmon_ndev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 4
  %37 = ptrtoint ptr %pmon_ndev to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %pmon_ndev, align 4
  %ifname_mon = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 5
  %38 = ptrtoint ptr %ifname_mon to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %ifname_mon, align 4
  %padapter12 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 1
  %39 = ptrtoint ptr %padapter12 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %padapter, ptr %padapter12, align 4
  %scan_request = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 2
  %40 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %scan_request, align 4
  %scan_req_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %scan_req_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @rtw_wdev_alloc.__key, i16 noundef signext 3) #15
  %p2p_enabled = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 6
  %41 = ptrtoint ptr %p2p_enabled to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %p2p_enabled, align 1
  %provdisc_req_issued = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 7
  %42 = ptrtoint ptr %provdisc_req_issued to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %provdisc_req_issued, align 2
  %invit_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 8
  %43 = ptrtoint ptr %invit_info to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %invit_info, align 1
  %peer_mac = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 8, i32 1
  %44 = call ptr @memset(ptr %peer_mac, i32 0, i32 6)
  %active = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 8, i32 2
  %45 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %active, align 1
  %token = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 8, i32 3
  %46 = ptrtoint ptr %token to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %token, align 1
  %flags = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 8, i32 4
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %flags, align 1
  %status = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 8, i32 5
  %48 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %status, align 1
  %req_op_ch = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 8, i32 6
  %49 = ptrtoint ptr %req_op_ch to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %req_op_ch, align 1
  %rsp_op_ch = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 8, i32 7
  %50 = ptrtoint ptr %rsp_op_ch to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %rsp_op_ch, align 1
  %nego_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 9
  %51 = ptrtoint ptr %nego_info to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %nego_info, align 4
  %peer_mac27 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 9, i32 1
  %52 = call ptr @memset(ptr %peer_mac27, i32 0, i32 6)
  %active30 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 9, i32 2
  %53 = ptrtoint ptr %active30 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %active30, align 1
  %token32 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 9, i32 3
  %54 = ptrtoint ptr %token32 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %token32, align 4
  %status34 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 9, i32 4
  %55 = ptrtoint ptr %status34 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %status34, align 1
  %req_intent = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 9, i32 5
  %56 = ptrtoint ptr %req_intent to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %req_intent, align 2
  %req_op_ch37 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 9, i32 6
  %57 = ptrtoint ptr %req_op_ch37 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %req_op_ch37, align 1
  %req_listen_ch = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 9, i32 7
  %58 = ptrtoint ptr %req_listen_ch to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %req_listen_ch, align 4
  %rsp_intent = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 9, i32 8
  %59 = ptrtoint ptr %rsp_intent to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -1, ptr %rsp_intent, align 1
  %rsp_op_ch41 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 9, i32 9
  %60 = ptrtoint ptr %rsp_op_ch41 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %rsp_op_ch41, align 2
  %conf_op_ch = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 9, i32 10
  %61 = ptrtoint ptr %conf_op_ch to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %conf_op_ch, align 1
  %bandroid_scan = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 10
  %62 = ptrtoint ptr %bandroid_scan to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %bandroid_scan, align 4
  %63 = ptrtoint ptr %power_mgnt.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %power_mgnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp45.not = icmp eq i8 %64, 0
  %power_mgmt48 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48, i32 12
  br i1 %cmp45.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %65 = ptrtoint ptr %power_mgmt48 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %power_mgmt48, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %66 = ptrtoint ptr %power_mgmt48 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %power_mgmt48, align 2
  br label %cleanup

free_wiphy:                                       ; preds = %if.then8, %rtw_cfg80211_preinit_wiphy.exit.free_wiphy_crit_edge
  %ret.0 = phi i32 [ %call3, %rtw_cfg80211_preinit_wiphy.exit.free_wiphy_crit_edge ], [ -12, %if.then8 ]
  tail call void @wiphy_free(ptr noundef nonnull %call.i) #15
  br label %cleanup

cleanup:                                          ; preds = %free_wiphy, %if.else, %if.then47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.else ], [ %call3, %if.then47 ], [ %ret.0, %free_wiphy ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_regd_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_reg_notifier(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_wdev_free(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wdev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %bands = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %bands to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bands, align 16
  tail call void @kfree(ptr noundef %3) #15
  %4 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wdev, align 4
  tail call void @wiphy_free(ptr noundef %5) #15
  tail call void @kfree(ptr noundef nonnull %wdev) #15
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_wdev_unregister(ptr noundef readonly %wdev) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #15
  %4 = getelementptr inbounds i8, ptr %info.i, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -65025, ptr %4, align 8
  %6 = call ptr @memset(ptr %info.i, i32 0, i32 14)
  %scan_req_lock.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 48, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %scan_req_lock.i) #15
  %scan_request.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 48, i32 2
  %7 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scan_request.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %if.end3.rtw_cfg80211_indicate_scan_done.exit_crit_edge, label %if.then.i

if.end3.rtw_cfg80211_indicate_scan_done.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_indicate_scan_done.exit

if.then.i:                                        ; preds = %if.end3
  %wdev_data.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 48
  %wiphy.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy.i, align 8
  %11 = ptrtoint ptr %wdev_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wdev_data.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %cmp.i = icmp eq ptr %10, %14
  br i1 %cmp.i, label %if.then6.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @cfg80211_scan_done(ptr noundef nonnull %8, ptr noundef nonnull %info.i) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then.i.if.end.i_crit_edge
  %15 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %scan_request.i, align 4
  br label %rtw_cfg80211_indicate_scan_done.exit

rtw_cfg80211_indicate_scan_done.exit:             ; preds = %if.end.i, %if.end3.rtw_cfg80211_indicate_scan_done.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %scan_req_lock.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #15
  %pmon_ndev = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 48, i32 4
  %16 = ptrtoint ptr %pmon_ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pmon_ndev, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %rtw_cfg80211_indicate_scan_done.exit.if.end7_crit_edge, label %if.then5

rtw_cfg80211_indicate_scan_done.exit.if.end7_crit_edge: ; preds = %rtw_cfg80211_indicate_scan_done.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then5:                                         ; preds = %rtw_cfg80211_indicate_scan_done.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @unregister_netdev(ptr noundef nonnull %17) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %rtw_cfg80211_indicate_scan_done.exit.if.end7_crit_edge
  %18 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wdev, align 4
  call void @wiphy_unregister(ptr noundef %19) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_frame_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_connect_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_del_sta_sinfo(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cfg80211_rtw_add_virtual_intf(ptr noundef readonly %wiphy, ptr noundef readonly %name, i8 noundef zeroext %name_assign_type, i32 noundef %type, ptr nocapture noundef readnone %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !64

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #15, !srcloc !68
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cond6 = icmp eq i32 %type, 6
  br i1 %cond6, label %sw.bb1, label %wiphy_priv.exit.cond.false_crit_edge

wiphy_priv.exit.cond.false_crit_edge:             ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false

sw.bb1:                                           ; preds = %wiphy_priv.exit
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %tobool.not.i7 = icmp eq ptr %name, null
  br i1 %tobool.not.i7, label %sw.bb1.cond.false_crit_edge, label %if.end.i

sw.bb1.cond.false_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false

if.end.i:                                         ; preds = %sw.bb1
  %pmon_ndev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 4
  %2 = ptrtoint ptr %pmon_ndev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmon_ndev.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.cond.false_crit_edge

if.end.i.cond.false_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false

if.end3.i:                                        ; preds = %if.end.i
  %call.i = tail call ptr @alloc_etherdev_mqs(i32 noundef 8, i32 noundef 1, i32 noundef 1) #15
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.end3.i.cond.false_crit_edge, label %if.end6.i

if.end3.i.cond.false_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false

if.end6.i:                                        ; preds = %if.end3.i
  %type.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 32
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 803, ptr %type.i, align 16
  %call8.i = tail call ptr @strncpy(ptr noundef nonnull %call.i, ptr noundef nonnull %name, i32 noundef 16) #15
  %arrayidx.i = getelementptr [16 x i8], ptr %call.i, i32 0, i32 15
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  %needs_free_netdev.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 124
  %6 = ptrtoint ptr %needs_free_netdev.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %needs_free_netdev.i, align 8
  %priv_destructor.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 125
  %7 = ptrtoint ptr %priv_destructor.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rtw_ndev_destructor, ptr %priv_destructor.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rtw_cfg80211_monitor_if_ops, ptr %netdev_ops.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 2304
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %add.ptr.i.i, align 4
  %sizeof_priv.i = getelementptr i8, ptr %call.i, i32 2308
  %10 = ptrtoint ptr %sizeof_priv.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 17960, ptr %sizeof_priv.i, align 4
  %call11.i = tail call ptr @_rtw_zmalloc(i32 noundef 964) #15
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end6.i.if.end25.i_crit_edge, label %if.end14.i

if.end6.i.if.end25.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

if.end14.i:                                       ; preds = %if.end6.i
  %rtw_wdev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 47
  %11 = ptrtoint ptr %rtw_wdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtw_wdev.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %call11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call11.i, align 4
  %netdev.i = getelementptr inbounds %struct.wireless_dev, ptr %call11.i, i32 0, i32 3
  %16 = ptrtoint ptr %netdev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %netdev.i, align 4
  %iftype.i = getelementptr inbounds %struct.wireless_dev, ptr %call11.i, i32 0, i32 1
  %17 = ptrtoint ptr %iftype.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %iftype.i, align 4
  %ieee80211_ptr.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 82
  %18 = ptrtoint ptr %ieee80211_ptr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call11.i, ptr %ieee80211_ptr.i, align 16
  %call16.i = tail call i32 @cfg80211_register_netdevice(ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %cond.true, label %if.then24.i

if.then24.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call11.i) #15
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %if.end6.i.if.end25.i_crit_edge
  %ret.068.i = phi i32 [ %call16.i, %if.then24.i ], [ -12, %if.end6.i.if.end25.i_crit_edge ]
  tail call void @free_netdev(ptr noundef nonnull %call.i) #15
  br label %cond.false

cond.true:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %pmon_ndev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %pmon_ndev.i, align 4
  %ifname_mon.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 5
  %20 = call ptr @memcpy(ptr %ifname_mon.i, ptr %name, i32 17)
  %21 = ptrtoint ptr %ieee80211_ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ieee80211_ptr.i, align 16
  br label %cond.end

cond.false:                                       ; preds = %if.end25.i, %if.end3.i.cond.false_crit_edge, %if.end.i.cond.false_crit_edge, %sw.bb1.cond.false_crit_edge, %wiphy_priv.exit.cond.false_crit_edge
  %ret.0.ph = phi i32 [ -22, %sw.bb1.cond.false_crit_edge ], [ -16, %if.end.i.cond.false_crit_edge ], [ -12, %if.end3.i.cond.false_crit_edge ], [ %ret.068.i, %if.end25.i ], [ -19, %wiphy_priv.exit.cond.false_crit_edge ]
  %23 = inttoptr i32 %ret.0.ph to ptr
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %22, %cond.true ], [ %23, %cond.false ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_del_virtual_intf(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %wdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %ieee80211_ptr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %4 = ptrtoint ptr %ieee80211_ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee80211_ptr.i, align 16
  tail call void @cfg80211_unregister_wdev(ptr noundef %5) #15
  %pmon_ndev = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 48, i32 4
  %6 = ptrtoint ptr %pmon_ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmon_ndev, align 4
  %cmp = icmp eq ptr %1, %7
  br i1 %cmp, label %if.then1, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %pmon_ndev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pmon_ndev, align 4
  %ifname_mon = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 48, i32 5
  %9 = ptrtoint ptr %ifname_mon to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ifname_mon, align 4
  br label %exit

exit:                                             ; preds = %if.then1, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.end.exit_crit_edge ], [ -22, %entry.exit_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_change_iface(ptr nocapture noundef readnone %wiphy, ptr noundef %ndev, i32 noundef %type, ptr nocapture noundef readnone %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %rtw_wdev1 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %rtw_wdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtw_wdev1, align 4
  %dvobj = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvobj, align 4
  %processing_dev_remove = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %processing_dev_remove to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %processing_dev_remove, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @netdev_open(ptr noundef %ndev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @_rtw_pwr_wakeup(ptr noundef %1, i32 noundef 2000, ptr noundef nonnull @__func__.cfg80211_rtw_change_iface) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end5.exit_crit_edge, label %if.end9

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end9:                                          ; preds = %if.end5
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %type)
  %cmp10.not = icmp eq i32 %9, %type
  br i1 %cmp10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %action_public_rxseq = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 37
  %10 = ptrtoint ptr %action_public_rxseq to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %action_public_rxseq, align 2
  %action_public_dialog_token = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 36
  %11 = ptrtoint ptr %action_public_dialog_token to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %action_public_dialog_token, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 3
  br i1 %12, label %switch.lookup, label %if.end12.exit_crit_edge

if.end12.exit_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

switch.lookup:                                    ; preds = %if.end12
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.cfg80211_rtw_change_iface, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %14 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %type, ptr %iftype, align 4
  %call16 = tail call zeroext i8 @rtw_set_802_11_infrastructure_mode(ptr noundef %1, i32 noundef %switch.load) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call16)
  %cmp17 = icmp eq i8 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %9, ptr %iftype, align 4
  br label %exit

if.end21:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  %call22 = tail call zeroext i8 @rtw_setopmode_cmd(ptr noundef %1, i32 noundef %switch.load, i1 noundef zeroext true) #15
  br label %exit

exit:                                             ; preds = %if.end21, %if.then19, %if.end12.exit_crit_edge, %if.end5.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ -1, %if.then19 ], [ 0, %if.end21 ], [ -1, %entry.exit_crit_edge ], [ -1, %if.end.exit_crit_edge ], [ -1, %if.end5.exit_crit_edge ], [ -95, %if.end12.exit_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_add_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef readonly %mac_addr, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %key_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_len, align 4
  %add = add i32 %3, 64
  %call1 = tail call ptr @_rtw_malloc(i32 noundef %add) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = call ptr @memset(ptr %call1, i32 0, i32 %add)
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %call1, align 4
  %sta_addr = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 1
  %6 = call ptr @memset(ptr %sta_addr, i32 255, i32 6)
  %cipher = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 5
  %7 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cipher, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %8, label %if.end.addkey_end_crit_edge [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 1027073, label %if.end.sw.bb2_crit_edge
    i32 1027077, label %if.end.sw.bb2_crit_edge125
    i32 1027074, label %sw.bb3
    i32 1027076, label %sw.bb4
    i32 1027078, label %sw.bb5
  ]

if.end.sw.bb2_crit_edge125:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb2

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.addkey_end_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %addkey_end

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge125
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %if.end.sw.epilog_crit_edge
  %alg_name.0 = phi ptr [ @.str.10, %sw.bb5 ], [ @.str.9, %sw.bb4 ], [ @.str.8, %sw.bb3 ], [ @.str.7, %sw.bb2 ], [ @.str.6, %if.end.sw.epilog_crit_edge ]
  %u = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2
  %call7 = tail call ptr @strncpy(ptr noundef %u, ptr noundef nonnull %alg_name.0, i32 noundef 16)
  %tobool8.not = icmp eq ptr %mac_addr, null
  br i1 %tobool8.not, label %sw.epilog.if.end14_crit_edge, label %lor.lhs.false

sw.epilog.if.end14_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

lor.lhs.false:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mac_addr, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac_addr, i32 2
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %13, %11
  %add.ptr3.i = getelementptr i8, ptr %mac_addr, i32 4
  %14 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %15
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp ne i16 %and510.i, -1
  %spec.select = zext i1 %cmp.i to i8
  br label %if.end14

if.end14:                                         ; preds = %lor.lhs.false, %sw.epilog.if.end14_crit_edge
  %.sink = phi i8 [ 0, %sw.epilog.if.end14_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %set_tx13 = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %set_tx13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %set_tx13, align 4
  %idx = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 4
  %17 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %key_index, ptr %idx, align 4
  %seq_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 3
  %18 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %seq_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool16.not = icmp eq i32 %19, 0
  br i1 %tobool16.not, label %if.end14.if.end24_crit_edge, label %land.lhs.true

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end14
  %seq = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 1
  %20 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %seq, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %land.lhs.true.if.end24_crit_edge, label %if.then18

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %seq20 = getelementptr inbounds %struct.anon.173, ptr %u, i32 0, i32 4
  %22 = call ptr @memcpy(ptr %seq20, ptr %21, i32 %19)
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %land.lhs.true.if.end24_crit_edge, %if.end14.if.end24_crit_edge
  %23 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool26.not = icmp eq i32 %24, 0
  br i1 %tobool26.not, label %if.end24.if.end38_crit_edge, label %land.lhs.true27

if.end24.if.end38_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

land.lhs.true27:                                  ; preds = %if.end24
  %25 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %params, align 4
  %tobool28.not = icmp eq ptr %26, null
  br i1 %tobool28.not, label %land.lhs.true27.if.end38_crit_edge, label %if.then29

land.lhs.true27.if.end38_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  %conv = trunc i32 %24 to i16
  %key_len32 = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 7
  %27 = ptrtoint ptr %key_len32 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv, ptr %key_len32, align 2
  %key34 = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %28 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %params, align 4
  %30 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %key_len, align 4
  %32 = call ptr @memcpy(ptr %key34, ptr %29, i32 %31)
  br label %if.end38

if.end38:                                         ; preds = %if.then29, %land.lhs.true27.if.end38_crit_edge, %if.end24.if.end38_crit_edge
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.else43, label %if.then41

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %call42 = tail call fastcc i32 @rtw_cfg80211_set_encryption(ptr noundef %ndev, ptr noundef nonnull %call1, i32 noundef %add)
  br label %addkey_end

if.else43:                                        ; preds = %if.end38
  %and.i113 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool.not.i114.not = icmp eq i32 %and.i113, 0
  br i1 %tobool.not.i114.not, label %if.else54, label %if.then47

if.then47:                                        ; preds = %if.else43
  br i1 %tobool8.not, label %if.then47.if.end52_crit_edge, label %if.then49

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then49:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #17
  %35 = call ptr @memcpy(ptr %sta_addr, ptr %mac_addr, i32 6)
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.then47.if.end52_crit_edge
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i.i, align 4
  %securitypriv.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12
  %stapriv.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %idx, align 4
  %idxprom.i = zext i8 %39 to i32
  %arrayidx.i = getelementptr %struct.adapter, ptr %37, i32 0, i32 12, i32 8, i32 %idxprom.i
  %arrayidx6.i = getelementptr %struct.adapter, ptr %37, i32 0, i32 12, i32 9, i32 %idxprom.i
  %arrayidx12.i = getelementptr %struct.adapter, ptr %37, i32 0, i32 12, i32 10, i32 %idxprom.i
  %err.i = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 3, i32 12
  %40 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %err.i, align 4
  %arrayidx16.i = getelementptr %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 3, i32 7
  %41 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx16.i, align 1
  %key_len.i = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 7
  %42 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %key_len.i, align 2
  %conv.i = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %3, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end52.addkey_end_crit_edge

if.end52.addkey_end_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %addkey_end

if.end.i:                                         ; preds = %if.end52
  %44 = ptrtoint ptr %sta_addr to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sta_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %cmp21.i = icmp eq i8 %45, -1
  br i1 %cmp21.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx24.i = getelementptr %struct.ieee_param, ptr %call1, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp26.i = icmp eq i8 %47, -1
  br i1 %cmp26.i, label %land.lhs.true28.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true28.i:                                ; preds = %land.lhs.true.i
  %arrayidx30.i = getelementptr %struct.ieee_param, ptr %call1, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx30.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %cmp32.i = icmp eq i8 %49, -1
  br i1 %cmp32.i, label %land.lhs.true34.i, label %land.lhs.true28.i.if.else.i_crit_edge

land.lhs.true28.i.if.else.i_crit_edge:            ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true34.i:                                ; preds = %land.lhs.true28.i
  %arrayidx36.i = getelementptr %struct.ieee_param, ptr %call1, i32 0, i32 1, i32 3
  %50 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %51)
  %cmp38.i = icmp eq i8 %51, -1
  br i1 %cmp38.i, label %land.lhs.true40.i, label %land.lhs.true34.i.if.else.i_crit_edge

land.lhs.true34.i.if.else.i_crit_edge:            ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true40.i:                                ; preds = %land.lhs.true34.i
  %arrayidx42.i = getelementptr %struct.ieee_param, ptr %call1, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %cmp44.i = icmp eq i8 %53, -1
  br i1 %cmp44.i, label %land.lhs.true46.i, label %land.lhs.true40.i.if.else.i_crit_edge

land.lhs.true40.i.if.else.i_crit_edge:            ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true46.i:                                ; preds = %land.lhs.true40.i
  %arrayidx48.i = getelementptr %struct.ieee_param, ptr %call1, i32 0, i32 1, i32 5
  %54 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx48.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %cmp50.i = icmp eq i8 %55, -1
  br i1 %cmp50.i, label %if.then52.i, label %land.lhs.true46.i.if.else.i_crit_edge

land.lhs.true46.i.if.else.i_crit_edge:            ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then52.i:                                      ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp56.i = icmp ugt i8 %39, 3
  br i1 %cmp56.i, label %if.then52.i.addkey_end_crit_edge, label %if.then52.i.if.end65.i_crit_edge

if.then52.i.if.end65.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65.i

if.then52.i.addkey_end_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %addkey_end

if.else.i:                                        ; preds = %land.lhs.true46.i.if.else.i_crit_edge, %land.lhs.true40.i.if.else.i_crit_edge, %land.lhs.true34.i.if.else.i_crit_edge, %land.lhs.true28.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %call62.i = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv.i, ptr noundef %sta_addr) #15
  %tobool.not.i116 = icmp eq ptr %call62.i, null
  br i1 %tobool.not.i116, label %if.else.i.addkey_end_crit_edge, label %if.else.i.if.end65.i_crit_edge

if.else.i.if.end65.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65.i

if.else.i.addkey_end_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %addkey_end

if.end65.i:                                       ; preds = %if.else.i.if.end65.i_crit_edge, %if.then52.i.if.end65.i_crit_edge
  %psta.0.i = phi ptr [ null, %if.then52.i.if.end65.i_crit_edge ], [ %call62.i, %if.else.i.if.end65.i_crit_edge ]
  %call69.i = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(5) @.str.6) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %cmp70.i = icmp eq i32 %call69.i, 0
  %tobool73.not.i = icmp eq ptr %psta.0.i, null
  %or.cond.i = select i1 %cmp70.i, i1 %tobool73.not.i, i1 false
  br i1 %or.cond.i, label %if.end65.i.addkey_end_crit_edge, label %if.end75.i

if.end65.i.addkey_end_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %addkey_end

if.end75.i:                                       ; preds = %if.end65.i
  %call79.i = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(4) @.str.7) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %cmp80.i = icmp eq i32 %call79.i, 0
  %or.cond592.i = select i1 %cmp80.i, i1 %tobool73.not.i, i1 false
  br i1 %or.cond592.i, label %if.then84.i, label %if.end124.i

if.then84.i:                                      ; preds = %if.end75.i
  %56 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %idx, align 4
  %conv87.i = zext i8 %57 to i32
  %58 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %key_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %57)
  %cmp91.i = icmp ugt i8 %57, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp93.i = icmp eq i16 %59, 0
  %or.cond593.i = select i1 %cmp91.i, i1 true, i1 %cmp93.i
  br i1 %or.cond593.i, label %if.then84.i.addkey_end_crit_edge, label %if.then99.i

if.then84.i.addkey_end_crit_edge:                 ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %addkey_end

if.then99.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %59)
  %cmp100.i = icmp ult i16 %59, 6
  %cond.i = select i1 %cmp100.i, i32 5, i32 13
  %bWepDefaultKeyIdxSet.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 50
  %60 = ptrtoint ptr %bWepDefaultKeyIdxSet.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bWepDefaultKeyIdxSet.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp104.i = icmp eq i8 %61, 0
  br i1 %cmp104.i, label %if.then106.i, label %if.then99.i.if.end113.i_crit_edge

if.then99.i.if.end113.i_crit_edge:                ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113.i

if.then106.i:                                     ; preds = %if.then99.i
  %62 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %securitypriv.i, align 8
  %ndisencryptstatus.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 36
  %63 = ptrtoint ptr %ndisencryptstatus.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %ndisencryptstatus.i, align 4
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 1
  %64 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %dot11PrivacyAlgrthm.i, align 4
  %dot118021XGrpPrivacy.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 6
  %65 = ptrtoint ptr %dot118021XGrpPrivacy.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %dot118021XGrpPrivacy.i, align 8
  br i1 %cmp100.i, label %if.then106.i.if.end112.i_crit_edge, label %if.then109.i

if.then106.i.if.end112.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112.i

if.then109.i:                                     ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #17
  %66 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 5, ptr %dot11PrivacyAlgrthm.i, align 4
  %67 = ptrtoint ptr %dot118021XGrpPrivacy.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 5, ptr %dot118021XGrpPrivacy.i, align 8
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then109.i, %if.then106.i.if.end112.i_crit_edge
  %dot11PrivacyKeyIndex.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 2
  %68 = ptrtoint ptr %dot11PrivacyKeyIndex.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv87.i, ptr %dot11PrivacyKeyIndex.i, align 8
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.end112.i, %if.then99.i.if.end113.i_crit_edge
  %arrayidx114.i = getelementptr %struct.adapter, ptr %37, i32 0, i32 12, i32 3, i32 %conv87.i
  %key.i = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %69 = call ptr @memcpy(ptr %arrayidx114.i, ptr %key.i, i32 %cond.i)
  %arrayidx118.i = getelementptr %struct.adapter, ptr %37, i32 0, i32 12, i32 4, i32 %conv87.i
  %70 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %cond.i, ptr %arrayidx118.i, align 4
  %conv122.i = trunc i32 %cond.i to i8
  %call123.i = tail call i32 @rtw_ap_set_wep_key(ptr noundef %37, ptr noundef %key.i, i8 noundef zeroext %conv122.i, i32 noundef %conv87.i, i8 noundef zeroext 1) #15
  br label %addkey_end

if.end124.i:                                      ; preds = %if.end75.i
  br i1 %tobool73.not.i, label %land.lhs.true126.i, label %if.end242.i

land.lhs.true126.i:                               ; preds = %if.end124.i
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fw_state.i.i, align 4
  %73 = and i32 %72, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool128.not.i = icmp eq i32 %73, 0
  br i1 %tobool128.not.i, label %land.lhs.true126.i.addkey_end_crit_edge, label %if.then129.i

land.lhs.true126.i.addkey_end_crit_edge:          ; preds = %land.lhs.true126.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %addkey_end

if.then129.i:                                     ; preds = %land.lhs.true126.i
  %set_tx.i = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 3, i32 8
  %74 = ptrtoint ptr %set_tx.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %set_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp132.i = icmp eq i8 %75, 0
  br i1 %cmp132.i, label %if.then134.i, label %if.then129.i.addkey_end_crit_edge

if.then129.i.addkey_end_crit_edge:                ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %addkey_end

if.then134.i:                                     ; preds = %if.then129.i
  br i1 %cmp80.i, label %if.then141.i, label %if.else163.i

if.then141.i:                                     ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #17
  %key143.i = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %76 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %key_len.i, align 2
  %78 = tail call i16 @llvm.umin.i16(i16 %77, i16 16) #15
  %spec.select.i = zext i16 %78 to i32
  %79 = call ptr @memcpy(ptr %arrayidx.i, ptr %key143.i, i32 %spec.select.i)
  %dot118021XGrpPrivacy154.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 6
  %80 = ptrtoint ptr %dot118021XGrpPrivacy154.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %dot118021XGrpPrivacy154.i, align 8
  %81 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %key_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %82)
  %cmp158.i = icmp eq i16 %82, 13
  %spec.store.select600.i = select i1 %cmp158.i, i32 5, i32 1
  %83 = ptrtoint ptr %dot118021XGrpPrivacy154.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %spec.store.select600.i, ptr %dot118021XGrpPrivacy154.i, align 8
  br label %if.end221.i

if.else163.i:                                     ; preds = %if.then134.i
  %call167.i = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(5) @.str.8) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167.i)
  %cmp168.i = icmp eq i32 %call167.i, 0
  br i1 %cmp168.i, label %if.then170.i, label %if.else193.i

if.then170.i:                                     ; preds = %if.else163.i
  call void @__sanitizer_cov_trace_pc() #17
  %dot118021XGrpPrivacy171.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 6
  %84 = ptrtoint ptr %dot118021XGrpPrivacy171.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %dot118021XGrpPrivacy171.i, align 8
  %key173.i = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %85 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %key_len.i, align 2
  %87 = tail call i16 @llvm.umin.i16(i16 %86, i16 16) #15
  %spec.select594.i = zext i16 %87 to i32
  %88 = call ptr @memcpy(ptr %arrayidx.i, ptr %key173.i, i32 %spec.select594.i)
  %arrayidx189.i = getelementptr %struct.ieee_param, ptr %call1, i32 1
  %89 = ptrtoint ptr %arrayidx189.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 8)
  %90 = load i64, ptr %arrayidx189.i, align 4
  %91 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 8)
  store i64 %90, ptr %arrayidx6.i, align 1
  %arrayidx192.i = getelementptr %struct.ieee_param, ptr %call1, i32 1, i32 1, i32 4
  %92 = ptrtoint ptr %arrayidx192.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 8)
  %93 = load i64, ptr %arrayidx192.i, align 4
  %94 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 8)
  store i64 %93, ptr %arrayidx12.i, align 1
  %busetkipkey.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 29
  %95 = ptrtoint ptr %busetkipkey.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %busetkipkey.i, align 2
  br label %if.end221.i

if.else193.i:                                     ; preds = %if.else163.i
  %call197.i = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(5) @.str.9) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197.i)
  %cmp198.i = icmp eq i32 %call197.i, 0
  %dot118021XGrpPrivacy201.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 6
  br i1 %cmp198.i, label %if.then200.i, label %if.else217.i

if.then200.i:                                     ; preds = %if.else193.i
  call void @__sanitizer_cov_trace_pc() #17
  %96 = ptrtoint ptr %dot118021XGrpPrivacy201.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 4, ptr %dot118021XGrpPrivacy201.i, align 8
  %key203.i = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %97 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %key_len.i, align 2
  %99 = tail call i16 @llvm.umin.i16(i16 %98, i16 16) #15
  %spec.select595.i = zext i16 %99 to i32
  %100 = call ptr @memcpy(ptr %arrayidx.i, ptr %key203.i, i32 %spec.select595.i)
  br label %if.end221.i

if.else217.i:                                     ; preds = %if.else193.i
  call void @__sanitizer_cov_trace_pc() #17
  %101 = ptrtoint ptr %dot118021XGrpPrivacy201.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %dot118021XGrpPrivacy201.i, align 8
  br label %if.end221.i

if.end221.i:                                      ; preds = %if.else217.i, %if.then200.i, %if.then170.i, %if.then141.i
  %102 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %idx, align 4
  %conv224.i = zext i8 %103 to i32
  %dot118021XGrpKeyid.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 7
  %104 = ptrtoint ptr %dot118021XGrpKeyid.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv224.i, ptr %dot118021XGrpKeyid.i, align 4
  %binstallGrpkey.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 27
  %105 = ptrtoint ptr %binstallGrpkey.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %binstallGrpkey.i, align 4
  %dot118021XGrpPrivacy225.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 6
  %106 = ptrtoint ptr %dot118021XGrpPrivacy225.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dot118021XGrpPrivacy225.i, align 8
  %dot11PrivacyAlgrthm226.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 1
  %108 = ptrtoint ptr %dot11PrivacyAlgrthm226.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %dot11PrivacyAlgrthm226.i, align 4
  %key228.i = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %conv231.i = trunc i32 %107 to i8
  %109 = load i8, ptr %idx, align 4
  %conv234.i = zext i8 %109 to i32
  %call235.i = tail call i32 @rtw_ap_set_group_key(ptr noundef %37, ptr noundef %key228.i, i8 noundef zeroext %conv231.i, i32 noundef %conv234.i) #15
  %call236.i = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %37) #15
  %tobool237.not.i = icmp eq ptr %call236.i, null
  br i1 %tobool237.not.i, label %if.end221.i.addkey_end_crit_edge, label %if.then238.i

if.end221.i.addkey_end_crit_edge:                 ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %addkey_end

if.then238.i:                                     ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #17
  %ieee8021x_blocked.i = getelementptr inbounds %struct.sta_info, ptr %call236.i, i32 0, i32 13
  %110 = ptrtoint ptr %ieee8021x_blocked.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %ieee8021x_blocked.i, align 8
  %111 = ptrtoint ptr %dot118021XGrpPrivacy225.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dot118021XGrpPrivacy225.i, align 8
  %dot118021XPrivacy.i = getelementptr inbounds %struct.sta_info, ptr %call236.i, i32 0, i32 14
  %113 = ptrtoint ptr %dot118021XPrivacy.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %dot118021XPrivacy.i, align 4
  br label %addkey_end

if.end242.i:                                      ; preds = %if.end124.i
  %114 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %securitypriv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp244.not.i = icmp eq i32 %115, 2
  br i1 %cmp244.not.i, label %if.then248.i, label %if.end242.i.addkey_end_crit_edge

if.end242.i.addkey_end_crit_edge:                 ; preds = %if.end242.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %addkey_end

if.then248.i:                                     ; preds = %if.end242.i
  %fw_state.i602.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 4, i32 1
  %116 = ptrtoint ptr %fw_state.i602.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %fw_state.i602.i, align 4
  %118 = and i32 %117, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool250.not.i = icmp eq i32 %118, 0
  br i1 %tobool250.not.i, label %if.then248.i.addkey_end_crit_edge, label %if.then251.i

if.then248.i.addkey_end_crit_edge:                ; preds = %if.then248.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %addkey_end

if.then251.i:                                     ; preds = %if.then248.i
  %set_tx253.i = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 3, i32 8
  %119 = ptrtoint ptr %set_tx253.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %set_tx253.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %120)
  %cmp255.i = icmp eq i8 %120, 1
  br i1 %cmp255.i, label %if.then257.i, label %if.else324.i

if.then257.i:                                     ; preds = %if.then251.i
  %dot118021x_UncstKey.i = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 17
  %key260.i = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %121 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %key_len.i, align 2
  %123 = tail call i16 @llvm.umin.i16(i16 %122, i16 16) #15
  %spec.select596.i = zext i16 %123 to i32
  %124 = call ptr @memcpy(ptr %dot118021x_UncstKey.i, ptr %key260.i, i32 %spec.select596.i)
  %call277.i = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(4) @.str.7) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277.i)
  %cmp278.i = icmp eq i32 %call277.i, 0
  br i1 %cmp278.i, label %if.then280.i, label %if.else290.i

if.then280.i:                                     ; preds = %if.then257.i
  call void @__sanitizer_cov_trace_pc() #17
  %dot118021XPrivacy281.i = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 14
  %125 = ptrtoint ptr %dot118021XPrivacy281.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %dot118021XPrivacy281.i, align 4
  %126 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %key_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %127)
  %cmp285.i = icmp eq i16 %127, 13
  %spec.store.select.i = select i1 %cmp285.i, i32 5, i32 1
  %128 = ptrtoint ptr %dot118021XPrivacy281.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %spec.store.select.i, ptr %dot118021XPrivacy281.i, align 4
  br label %if.end321.i

if.else290.i:                                     ; preds = %if.then257.i
  %call294.i = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(5) @.str.8) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294.i)
  %cmp295.i = icmp eq i32 %call294.i, 0
  br i1 %cmp295.i, label %if.then297.i, label %if.else308.i

if.then297.i:                                     ; preds = %if.else290.i
  call void @__sanitizer_cov_trace_pc() #17
  %dot118021XPrivacy298.i = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 14
  %129 = ptrtoint ptr %dot118021XPrivacy298.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 2, ptr %dot118021XPrivacy298.i, align 4
  %dot11tkiptxmickey.i = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 15
  %arrayidx302.i = getelementptr %struct.ieee_param, ptr %call1, i32 1
  %130 = ptrtoint ptr %arrayidx302.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 8)
  %131 = load i64, ptr %arrayidx302.i, align 4
  %132 = ptrtoint ptr %dot11tkiptxmickey.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %dot11tkiptxmickey.i, align 8
  %dot11tkiprxmickey.i = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 16
  %arrayidx306.i = getelementptr %struct.ieee_param, ptr %call1, i32 1, i32 1, i32 4
  %133 = ptrtoint ptr %arrayidx306.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 8)
  %134 = load i64, ptr %arrayidx306.i, align 4
  %135 = ptrtoint ptr %dot11tkiprxmickey.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %dot11tkiprxmickey.i, align 8
  %busetkipkey307.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 29
  %136 = ptrtoint ptr %busetkipkey307.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %busetkipkey307.i, align 2
  br label %if.end321.i

if.else308.i:                                     ; preds = %if.else290.i
  %call312.i = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(5) @.str.9) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312.i)
  %cmp313.i = icmp eq i32 %call312.i, 0
  %dot118021XPrivacy316.i = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 14
  br i1 %cmp313.i, label %if.then315.i, label %if.else317.i

if.then315.i:                                     ; preds = %if.else308.i
  call void @__sanitizer_cov_trace_pc() #17
  %137 = ptrtoint ptr %dot118021XPrivacy316.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 4, ptr %dot118021XPrivacy316.i, align 4
  br label %if.end321.i

if.else317.i:                                     ; preds = %if.else308.i
  call void @__sanitizer_cov_trace_pc() #17
  %138 = ptrtoint ptr %dot118021XPrivacy316.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %dot118021XPrivacy316.i, align 4
  br label %if.end321.i

if.end321.i:                                      ; preds = %if.else317.i, %if.then315.i, %if.then297.i, %if.then280.i
  %call322.i = tail call zeroext i8 @rtw_ap_set_pairwise_key(ptr noundef %37, ptr noundef nonnull %psta.0.i) #15
  %ieee8021x_blocked323.i = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 13
  %139 = ptrtoint ptr %ieee8021x_blocked323.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %ieee8021x_blocked323.i, align 8
  %bpairwise_key_installed.i = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 53
  %140 = ptrtoint ptr %bpairwise_key_installed.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %bpairwise_key_installed.i, align 4
  br label %addkey_end

if.else324.i:                                     ; preds = %if.then251.i
  br i1 %cmp80.i, label %if.then331.i, label %if.else356.i

if.then331.i:                                     ; preds = %if.else324.i
  call void @__sanitizer_cov_trace_pc() #17
  %key333.i = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %141 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %key_len.i, align 2
  %143 = tail call i16 @llvm.umin.i16(i16 %142, i16 16) #15
  %spec.select597.i = zext i16 %143 to i32
  %144 = call ptr @memcpy(ptr %arrayidx.i, ptr %key333.i, i32 %spec.select597.i)
  %dot118021XGrpPrivacy347.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 6
  %145 = ptrtoint ptr %dot118021XGrpPrivacy347.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %dot118021XGrpPrivacy347.i, align 8
  %146 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %key_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %147)
  %cmp351.i = icmp eq i16 %147, 13
  %spec.store.select601.i = select i1 %cmp351.i, i32 5, i32 1
  %148 = ptrtoint ptr %dot118021XGrpPrivacy347.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %spec.store.select601.i, ptr %dot118021XGrpPrivacy347.i, align 8
  br label %if.end415.i

if.else356.i:                                     ; preds = %if.else324.i
  %call360.i = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(5) @.str.8) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call360.i)
  %cmp361.i = icmp eq i32 %call360.i, 0
  br i1 %cmp361.i, label %if.then363.i, label %if.else387.i

if.then363.i:                                     ; preds = %if.else356.i
  call void @__sanitizer_cov_trace_pc() #17
  %dot118021XGrpPrivacy364.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 6
  %149 = ptrtoint ptr %dot118021XGrpPrivacy364.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 2, ptr %dot118021XGrpPrivacy364.i, align 8
  %key366.i = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %150 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %key_len.i, align 2
  %152 = tail call i16 @llvm.umin.i16(i16 %151, i16 16) #15
  %spec.select598.i = zext i16 %152 to i32
  %153 = call ptr @memcpy(ptr %arrayidx.i, ptr %key366.i, i32 %spec.select598.i)
  %arrayidx382.i = getelementptr %struct.ieee_param, ptr %call1, i32 1
  %154 = ptrtoint ptr %arrayidx382.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 8)
  %155 = load i64, ptr %arrayidx382.i, align 4
  %156 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %156, i32 8)
  store i64 %155, ptr %arrayidx6.i, align 1
  %arrayidx385.i = getelementptr %struct.ieee_param, ptr %call1, i32 1, i32 1, i32 4
  %157 = ptrtoint ptr %arrayidx385.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 8)
  %158 = load i64, ptr %arrayidx385.i, align 4
  %159 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_storeN_noabort(i32 %159, i32 8)
  store i64 %158, ptr %arrayidx12.i, align 1
  %busetkipkey386.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 29
  %160 = ptrtoint ptr %busetkipkey386.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %busetkipkey386.i, align 2
  br label %if.end415.i

if.else387.i:                                     ; preds = %if.else356.i
  %call391.i = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(5) @.str.9) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call391.i)
  %cmp392.i = icmp eq i32 %call391.i, 0
  %dot118021XGrpPrivacy395.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 6
  br i1 %cmp392.i, label %if.then394.i, label %if.else411.i

if.then394.i:                                     ; preds = %if.else387.i
  call void @__sanitizer_cov_trace_pc() #17
  %161 = ptrtoint ptr %dot118021XGrpPrivacy395.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 4, ptr %dot118021XGrpPrivacy395.i, align 8
  %key397.i = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %162 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %key_len.i, align 2
  %164 = tail call i16 @llvm.umin.i16(i16 %163, i16 16) #15
  %spec.select599.i = zext i16 %164 to i32
  %165 = call ptr @memcpy(ptr %arrayidx.i, ptr %key397.i, i32 %spec.select599.i)
  br label %if.end415.i

if.else411.i:                                     ; preds = %if.else387.i
  call void @__sanitizer_cov_trace_pc() #17
  %166 = ptrtoint ptr %dot118021XGrpPrivacy395.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %dot118021XGrpPrivacy395.i, align 8
  br label %if.end415.i

if.end415.i:                                      ; preds = %if.else411.i, %if.then394.i, %if.then363.i, %if.then331.i
  %167 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %idx, align 4
  %conv418.i = zext i8 %168 to i32
  %dot118021XGrpKeyid419.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 7
  %169 = ptrtoint ptr %dot118021XGrpKeyid419.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %conv418.i, ptr %dot118021XGrpKeyid419.i, align 4
  %binstallGrpkey420.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 27
  %170 = ptrtoint ptr %binstallGrpkey420.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 1, ptr %binstallGrpkey420.i, align 4
  %dot118021XGrpPrivacy421.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 6
  %171 = ptrtoint ptr %dot118021XGrpPrivacy421.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %dot118021XGrpPrivacy421.i, align 8
  %dot11PrivacyAlgrthm422.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 12, i32 1
  %173 = ptrtoint ptr %dot11PrivacyAlgrthm422.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %dot11PrivacyAlgrthm422.i, align 4
  %key424.i = getelementptr inbounds %struct.ieee_param, ptr %call1, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %conv427.i = trunc i32 %172 to i8
  %174 = load i8, ptr %idx, align 4
  %conv430.i = zext i8 %174 to i32
  %call431.i = tail call i32 @rtw_ap_set_group_key(ptr noundef %37, ptr noundef %key424.i, i8 noundef zeroext %conv427.i, i32 noundef %conv430.i) #15
  %call432.i = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %37) #15
  %tobool433.not.i = icmp eq ptr %call432.i, null
  br i1 %tobool433.not.i, label %if.end415.i.addkey_end_crit_edge, label %if.then434.i

if.end415.i.addkey_end_crit_edge:                 ; preds = %if.end415.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %addkey_end

if.then434.i:                                     ; preds = %if.end415.i
  call void @__sanitizer_cov_trace_pc() #17
  %ieee8021x_blocked435.i = getelementptr inbounds %struct.sta_info, ptr %call432.i, i32 0, i32 13
  %175 = ptrtoint ptr %ieee8021x_blocked435.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %ieee8021x_blocked435.i, align 8
  %176 = ptrtoint ptr %dot118021XGrpPrivacy421.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %dot118021XGrpPrivacy421.i, align 8
  %dot118021XPrivacy437.i = getelementptr inbounds %struct.sta_info, ptr %call432.i, i32 0, i32 14
  %178 = ptrtoint ptr %dot118021XPrivacy437.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %dot118021XPrivacy437.i, align 4
  br label %addkey_end

if.else54:                                        ; preds = %if.else43
  %179 = and i32 %34, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %if.else54.addkey_end_crit_edge, label %if.then62

if.else54.addkey_end_crit_edge:                   ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #17
  br label %addkey_end

if.then62:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #17
  %call63 = tail call fastcc i32 @rtw_cfg80211_set_encryption(ptr noundef %ndev, ptr noundef nonnull %call1, i32 noundef %add)
  br label %addkey_end

addkey_end:                                       ; preds = %if.then62, %if.else54.addkey_end_crit_edge, %if.then434.i, %if.end415.i.addkey_end_crit_edge, %if.end321.i, %if.then248.i.addkey_end_crit_edge, %if.end242.i.addkey_end_crit_edge, %if.then238.i, %if.end221.i.addkey_end_crit_edge, %if.then129.i.addkey_end_crit_edge, %land.lhs.true126.i.addkey_end_crit_edge, %if.end113.i, %if.then84.i.addkey_end_crit_edge, %if.end65.i.addkey_end_crit_edge, %if.else.i.addkey_end_crit_edge, %if.then52.i.addkey_end_crit_edge, %if.end52.addkey_end_crit_edge, %if.then41, %if.end.addkey_end_crit_edge
  %ret.0 = phi i32 [ %call42, %if.then41 ], [ %call63, %if.then62 ], [ -524, %if.end.addkey_end_crit_edge ], [ 0, %if.end321.i ], [ 0, %if.then434.i ], [ 0, %if.end415.i.addkey_end_crit_edge ], [ 0, %if.then248.i.addkey_end_crit_edge ], [ 0, %if.end242.i.addkey_end_crit_edge ], [ 0, %if.then238.i ], [ 0, %if.end221.i.addkey_end_crit_edge ], [ 0, %if.then129.i.addkey_end_crit_edge ], [ 0, %if.end113.i ], [ 0, %if.else.i.addkey_end_crit_edge ], [ -22, %if.end52.addkey_end_crit_edge ], [ -22, %if.then52.i.addkey_end_crit_edge ], [ 0, %if.end65.i.addkey_end_crit_edge ], [ -22, %if.then84.i.addkey_end_crit_edge ], [ 0, %land.lhs.true126.i.addkey_end_crit_edge ], [ 0, %if.else54.addkey_end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %addkey_end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %addkey_end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cfg80211_rtw_get_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readnone %ndev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr nocapture noundef readnone %mac_addr, ptr nocapture noundef readnone %cookie, ptr nocapture noundef readnone %callback) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cfg80211_rtw_del_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr nocapture noundef readnone %mac_addr) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %conv = zext i8 %key_index to i32
  %dot11PrivacyKeyIndex = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 2
  %2 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dot11PrivacyKeyIndex, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp eq i32 %3, %conv
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %bWepDefaultKeyIdxSet = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 50
  %4 = ptrtoint ptr %bWepDefaultKeyIdxSet to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bWepDefaultKeyIdxSet, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cfg80211_rtw_set_default_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev, i8 noundef zeroext %key_index, i1 noundef zeroext %unicast, i1 noundef zeroext %multicast) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %conv = zext i8 %key_index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %key_index)
  %cmp = icmp ult i8 %key_index, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %3, label %land.lhs.true.if.end15_crit_edge [
    i32 1, label %land.lhs.true.if.then_crit_edge
    i32 5, label %land.lhs.true.if.then_crit_edge27
  ]

land.lhs.true.if.then_crit_edge27:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge27
  %ndisencryptstatus = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 36
  %5 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ndisencryptstatus, align 4
  %dot11PrivacyKeyIndex = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 2
  %6 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %dot11PrivacyKeyIndex, align 8
  %7 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %dot11PrivacyAlgrthm, align 4
  %dot118021XGrpPrivacy = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 6
  %8 = ptrtoint ptr %dot118021XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %dot118021XGrpPrivacy, align 8
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 4, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %10)
  %cmp10 = icmp eq i32 %10, 13
  br i1 %cmp10, label %if.then12, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %dot11PrivacyAlgrthm, align 4
  %12 = ptrtoint ptr %dot118021XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %dot118021XGrpPrivacy, align 8
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  %bWepDefaultKeyIdxSet = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 50
  %13 = ptrtoint ptr %bWepDefaultKeyIdxSet to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %bWepDefaultKeyIdxSet, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.end, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_start_ap(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %settings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %beacon = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %settings, i32 0, i32 1
  %2 = ptrtoint ptr %beacon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %beacon, align 4
  %head_len = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %settings, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %head_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head_len, align 4
  %tail = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %settings, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail, align 4
  %tail_len = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %settings, i32 0, i32 1, i32 11
  %8 = ptrtoint ptr %tail_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail_len, align 4
  %call4 = tail call fastcc i32 @rtw_add_beacon(ptr noundef %1, ptr noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9)
  %hidden_ssid = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %settings, i32 0, i32 6
  %10 = ptrtoint ptr %hidden_ssid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hidden_ssid, align 4
  %conv = trunc i32 %11 to i8
  %hidden_ssid_mode = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 18, i32 33
  %12 = ptrtoint ptr %hidden_ssid_mode to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %hidden_ssid_mode, align 1
  %ssid = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %settings, i32 0, i32 4
  %13 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ssid, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ssid_len = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %settings, i32 0, i32 5
  %15 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not = icmp eq i32 %16, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %ssid9 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 20, i32 6, i32 3
  %ssid10 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 20, i32 6, i32 3, i32 1
  %17 = call ptr @memcpy(ptr %ssid10, ptr %14, i32 %16)
  %18 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ssid_len, align 4
  %20 = ptrtoint ptr %ssid9 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %ssid9, align 1
  %ssid15 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 18, i32 39, i32 3
  %ssid16 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 18, i32 39, i32 3, i32 1
  %21 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ssid, align 4
  %23 = load i32, ptr %ssid_len, align 4
  %24 = call ptr @memcpy(ptr %ssid16, ptr %22, i32 %23)
  %25 = load i32, ptr %ssid_len, align 4
  %26 = ptrtoint ptr %ssid15 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %ssid15, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_change_beacon(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %head_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 10
  %4 = ptrtoint ptr %head_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head_len, align 4
  %tail = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail, align 4
  %tail_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 11
  %8 = ptrtoint ptr %tail_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail_len, align 4
  %call1 = tail call fastcc i32 @rtw_add_beacon(ptr noundef %1, ptr noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9)
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cfg80211_rtw_stop_ap(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readnone %ndev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cfg80211_rtw_add_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readnone %ndev, ptr nocapture noundef readnone %mac, ptr nocapture noundef readnone %params) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_del_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %5, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @flush_all_cam_entry(ptr noundef %1) #15
  tail call void @rtw_sta_flush(ptr noundef %1) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp5 = icmp eq i8 %7, -1
  br i1 %cmp5, label %land.lhs.true, label %if.end4.if.end32_crit_edge

if.end4.if.end32_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end4
  %arrayidx7 = getelementptr i8, ptr %3, i32 1
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp9 = icmp eq i8 %9, -1
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true11:                                  ; preds = %land.lhs.true
  %arrayidx12 = getelementptr i8, ptr %3, i32 2
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp14 = icmp eq i8 %11, -1
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true11.if.end32_crit_edge

land.lhs.true11.if.end32_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true16:                                  ; preds = %land.lhs.true11
  %arrayidx17 = getelementptr i8, ptr %3, i32 3
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp19 = icmp eq i8 %13, -1
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true16.if.end32_crit_edge

land.lhs.true16.if.end32_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true21:                                  ; preds = %land.lhs.true16
  %arrayidx22 = getelementptr i8, ptr %3, i32 4
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp24 = icmp eq i8 %15, -1
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true21.if.end32_crit_edge

land.lhs.true21.if.end32_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true26:                                  ; preds = %land.lhs.true21
  %arrayidx27 = getelementptr i8, ptr %3, i32 5
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp29 = icmp eq i8 %17, -1
  br i1 %cmp29, label %land.lhs.true26.cleanup_crit_edge, label %land.lhs.true26.if.end32_crit_edge

land.lhs.true26.if.end32_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true26.if.end32_crit_edge, %land.lhs.true21.if.end32_crit_edge, %land.lhs.true16.if.end32_crit_edge, %land.lhs.true11.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %if.end4.if.end32_crit_edge
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #15
  %asoc_list = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 9
  %18 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asoc_list, align 4
  %cmp.i.not86 = icmp eq ptr %19, %asoc_list
  br i1 %cmp.i.not86, label %if.end32.for.end_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  br label %for.body

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end32.for.body_crit_edge
  %plist.087 = phi ptr [ %tmp.088, %for.inc.for.body_crit_edge ], [ %19, %if.end32.for.body_crit_edge ]
  %20 = ptrtoint ptr %plist.087 to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp.088 = load ptr, ptr %plist.087, align 4
  %hwaddr = getelementptr i8, ptr %plist.087, i32 -2216
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %3, ptr noundef dereferenceable(6) %hwaddr, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool38.not = icmp eq i32 %bcmp, 0
  br i1 %tobool38.not, label %if.then39, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then39:                                        ; preds = %for.body
  %dot8021xalg = getelementptr i8, ptr %plist.087, i32 164
  %21 = ptrtoint ptr %dot8021xalg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dot8021xalg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp40.not = icmp eq i32 %22, 1
  br i1 %cmp40.not, label %lor.lhs.false, label %if.then39.if.then44_crit_edge

if.then39.if.then44_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then44

lor.lhs.false:                                    ; preds = %if.then39
  %bpairwise_key_installed = getelementptr i8, ptr %plist.087, i32 188
  %23 = ptrtoint ptr %bpairwise_key_installed to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bpairwise_key_installed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool43.not = icmp eq i8 %24, 0
  br i1 %tobool43.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then44_crit_edge

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then44

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then44:                                        ; preds = %lor.lhs.false.if.then44_crit_edge, %if.then39.if.then44_crit_edge
  %add.ptr.le = getelementptr i8, ptr %plist.087, i32 -2840
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.087) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then44.list_del_init.exit_crit_edge

if.then44.list_del_init.exit_crit_edge:           ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %plist.087, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %plist.087 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %plist.087, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then44.list_del_init.exit_crit_edge
  %31 = ptrtoint ptr %plist.087 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %plist.087, ptr %plist.087, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %plist.087, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %plist.087, ptr %prev.i3.i, align 4
  %asoc_list_cnt = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 13
  %33 = ptrtoint ptr %asoc_list_cnt to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %asoc_list_cnt, align 4
  %dec = add i8 %34, -1
  store i8 %dec, ptr %asoc_list_cnt, align 4
  %call46 = tail call zeroext i8 @ap_free_sta(ptr noundef %1, ptr noundef %add.ptr.le, i1 noundef zeroext true, i16 noundef zeroext 3) #15
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %tmp.088, %asoc_list
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del_init.exit, %if.end32.for.end_crit_edge
  %updated.0 = phi i8 [ %call46, %list_del_init.exit ], [ 0, %if.end32.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #15
  tail call void @associated_clients_update(ptr noundef %1, i8 noundef zeroext %updated.0) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true26.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 0, %if.then3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cfg80211_rtw_change_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readnone %ndev, ptr nocapture noundef readnone %mac, ptr nocapture noundef readnone %params) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_get_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev, ptr noundef %mac, ptr nocapture noundef %sinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %sinfo, align 8
  %tobool.not = icmp eq ptr %mac, null
  br i1 %tobool.not, label %entry.cleanup43_crit_edge, label %if.end

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

if.end:                                           ; preds = %entry
  %stapriv = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %call1 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef nonnull %mac) #15
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup43_crit_edge, label %if.end4

if.end.cleanup43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

if.end4:                                          ; preds = %if.end
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %5 = and i32 %4, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %.not = icmp eq i32 %5, 9
  br i1 %.not, label %if.then9, label %if.end4.cleanup43_crit_edge

if.end4.cleanup43_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

if.then9:                                         ; preds = %if.end4
  %mac_address = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 20, i32 6, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %mac, ptr noundef dereferenceable(6) %mac_address, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool12.not = icmp eq i32 %bcmp, 0
  br i1 %tobool12.not, label %cleanup.thread, label %if.then9.cleanup43_crit_edge

if.then9.cleanup43_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

cleanup.thread:                                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sinfo, align 8
  %or = or i64 %7, 128
  store i64 %or, ptr %sinfo, align 8
  %signal_strength = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 27
  %8 = ptrtoint ptr %signal_strength to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %signal_strength, align 2
  %conv = zext i8 %9 to i16
  %add.i = add nuw nsw i16 %conv, 1
  %shr.i = lshr i16 %add.i, 1
  %10 = trunc i16 %shr.i to i8
  %conv17 = add i8 %10, -95
  %signal = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %11 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv17, ptr %signal, align 1
  %or19 = or i64 %7, 384
  store i64 %or19, ptr %sinfo, align 8
  %call20 = tail call zeroext i16 @rtw_get_cur_max_rate(ptr noundef %1) #15
  %legacy = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 2
  %12 = ptrtoint ptr %legacy to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %call20, ptr %legacy, align 2
  %13 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sinfo, align 8
  %or22 = or i64 %14, 512
  store i64 %or22, ptr %sinfo, align 8
  %rx_data_pkts = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 7
  %15 = ptrtoint ptr %rx_data_pkts to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rx_data_pkts, align 8
  %conv23 = trunc i64 %16 to i32
  %rx_packets = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 16
  %17 = ptrtoint ptr %rx_packets to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv23, ptr %rx_packets, align 4
  %or25 = or i64 %14, 1536
  store i64 %or25, ptr %sinfo, align 8
  %tx_pkts = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 18
  %18 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_pkts, align 8
  %conv27 = trunc i64 %19 to i32
  %tx_packets = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 17
  %20 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv27, ptr %tx_packets, align 8
  %or29 = or i64 %14, 5632
  store i64 %or29, ptr %sinfo, align 8
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup.thread, %if.then9.cleanup43_crit_edge, %if.end4.cleanup43_crit_edge, %if.end.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %ret.2 = phi i32 [ -2, %entry.cleanup43_crit_edge ], [ -2, %if.end.cleanup43_crit_edge ], [ -2, %if.then9.cleanup43_crit_edge ], [ 0, %cleanup.thread ], [ 0, %if.end4.cleanup43_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_dump_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev, i32 noundef %idx, ptr nocapture noundef writeonly %mac, ptr nocapture noundef writeonly %sinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #15
  %asoc_list.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 9
  %2 = ptrtoint ptr %asoc_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %plist.07.i = load ptr, ptr %asoc_list.i, align 4
  %cmp.not8.i = icmp eq ptr %asoc_list.i, %plist.07.i
  br i1 %cmp.not8.i, label %rtw_sta_info_get_by_idx.exit.thread, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

rtw_sta_info_get_by_idx.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #15
  br label %exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %plist.011.i = phi ptr [ %plist.0.i, %while.body.i.while.body.i_crit_edge ], [ %plist.07.i, %entry.while.body.i_crit_edge ]
  %i.010.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %psta.09.i = phi ptr [ %spec.select.i, %while.body.i.while.body.i_crit_edge ], [ null, %entry.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.010.i, i32 %idx)
  %cmp1.i = icmp eq i32 %i.010.i, %idx
  %add.ptr.i = getelementptr i8, ptr %plist.011.i, i32 -2840
  %spec.select.i = select i1 %cmp1.i, ptr %add.ptr.i, ptr %psta.09.i
  %inc.i = add i32 %i.010.i, 1
  %3 = ptrtoint ptr %plist.011.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %plist.0.i = load ptr, ptr %plist.011.i, align 4
  %cmp.not.i = icmp eq ptr %asoc_list.i, %plist.0.i
  br i1 %cmp.not.i, label %rtw_sta_info_get_by_idx.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

rtw_sta_info_get_by_idx.exit:                     ; preds = %while.body.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #15
  %cmp = icmp eq ptr %spec.select.i, null
  br i1 %cmp, label %rtw_sta_info_get_by_idx.exit.exit_crit_edge, label %if.end

rtw_sta_info_get_by_idx.exit.exit_crit_edge:      ; preds = %rtw_sta_info_get_by_idx.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end:                                           ; preds = %rtw_sta_info_get_by_idx.exit
  call void @__sanitizer_cov_trace_pc() #17
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %spec.select.i, i32 0, i32 12
  %4 = call ptr @memcpy(ptr %mac, ptr %hwaddr, i32 6)
  %5 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 128, ptr %sinfo, align 8
  %rssi = getelementptr inbounds %struct.sta_info, ptr %spec.select.i, i32 0, i32 23
  %6 = ptrtoint ptr %rssi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rssi, align 4
  %conv = trunc i32 %7 to i8
  %signal = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %signal, align 1
  br label %exit

exit:                                             ; preds = %if.end, %rtw_sta_info_get_by_idx.exit.exit_crit_edge, %rtw_sta_info_get_by_idx.exit.thread
  %ret.0 = phi i32 [ 0, %if.end ], [ -2, %rtw_sta_info_get_by_idx.exit.exit_crit_edge ], [ -2, %rtw_sta_info_get_by_idx.exit.thread ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cfg80211_rtw_change_bss(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readnone %ndev, ptr nocapture noundef readnone %params) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_scan(ptr nocapture noundef readnone %wiphy, ptr noundef %request) #0 align 64 {
entry:
  %info.i = alloca %struct.cfg80211_scan_info, align 8
  %wps_ielen.i = alloca i32, align 4
  %ch = alloca [51 x %struct.rtw_ieee80211_channel], align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wdev = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 10
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 8
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  call void @llvm.lifetime.start.p0(i64 408, ptr nonnull %ch) #15
  %4 = call ptr @memset(ptr %ch, i32 255, i32 408)
  %5 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %request, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup138_crit_edge, label %if.end

entry.cleanup138_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup138

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 4
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 4
  %scan_req_lock = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 48, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %scan_req_lock) #15
  %scan_request = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 48, i32 2
  %9 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %request, ptr %scan_request, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %scan_req_lock) #15
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  %and.i229 = and i32 %11, 2432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i229)
  %tobool.not.i230.not = icmp eq i32 %and.i229, 0
  %or.cond256 = or i1 %tobool.not.i.not, %tobool.not.i230.not
  br i1 %or.cond256, label %if.end9, label %if.end.check_need_indicate_scan_done.thread_crit_edge

if.end.check_need_indicate_scan_done.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_need_indicate_scan_done.thread

if.end9:                                          ; preds = %if.end
  tail call void @rtw_ps_deny(ptr noundef %8, i32 noundef 1) #15
  %call10 = tail call i32 @_rtw_pwr_wakeup(ptr noundef %8, i32 noundef 2000, ptr noundef nonnull @__func__.cfg80211_rtw_scan) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.end9.check_need_indicate_scan_done.thread_crit_edge, label %if.end13

if.end9.check_need_indicate_scan_done.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_need_indicate_scan_done.thread

if.end13:                                         ; preds = %if.end9
  %ie = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 4
  %12 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ie, align 8
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.end13.if.end20_crit_edge, label %land.lhs.true

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 5
  %14 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15.not = icmp eq i32 %15, 0
  br i1 %cmp15.not, label %land.lhs.true.if.end20_crit_edge, label %if.then16

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then16:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_ielen.i) #15
  %16 = ptrtoint ptr %wps_ielen.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %wps_ielen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp sgt i32 %15, 0
  br i1 %cmp.i, label %if.then.i, label %if.then16.rtw_cfg80211_set_probe_req_wpsp2pie.exit_crit_edge

if.then16.rtw_cfg80211_set_probe_req_wpsp2pie.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_set_probe_req_wpsp2pie.exit

if.then.i:                                        ; preds = %if.then16
  %call.i = call ptr @rtw_get_wps_ie(ptr noundef nonnull %13, i32 noundef %15, ptr noundef null, ptr noundef nonnull %wps_ielen.i) #15
  %tobool.not.i232 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i232, label %if.then.i.rtw_cfg80211_set_probe_req_wpsp2pie.exit_crit_edge, label %if.then1.i

if.then.i.rtw_cfg80211_set_probe_req_wpsp2pie.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_set_probe_req_wpsp2pie.exit

if.then1.i:                                       ; preds = %if.then.i
  %wps_probe_req_ie.i = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 4, i32 39
  %17 = ptrtoint ptr %wps_probe_req_ie.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wps_probe_req_ie.i, align 4
  %tobool2.not.i = icmp eq ptr %18, null
  br i1 %tobool2.not.i, label %if.then1.i.if.end.i_crit_edge, label %if.then3.i

if.then1.i.if.end.i_crit_edge:                    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  %wps_probe_req_ie_len.i = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 4, i32 40
  %19 = ptrtoint ptr %wps_probe_req_ie_len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %wps_probe_req_ie_len.i, align 4
  call void @kfree(ptr noundef nonnull %18) #15
  %20 = ptrtoint ptr %wps_probe_req_ie.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %wps_probe_req_ie.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then1.i.if.end.i_crit_edge
  %21 = ptrtoint ptr %wps_ielen.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wps_ielen.i, align 4
  %call6.i = call ptr @_rtw_malloc(i32 noundef %22) #15
  %23 = ptrtoint ptr %wps_probe_req_ie.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call6.i, ptr %wps_probe_req_ie.i, align 4
  %tobool9.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool9.not.i, label %if.end.i.rtw_cfg80211_set_probe_req_wpsp2pie.exit_crit_edge, label %if.end11.i

if.end.i.rtw_cfg80211_set_probe_req_wpsp2pie.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_set_probe_req_wpsp2pie.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %wps_ielen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wps_ielen.i, align 4
  %26 = call ptr @memcpy(ptr %call6.i, ptr %call.i, i32 %25)
  %27 = load i32, ptr %wps_ielen.i, align 4
  %wps_probe_req_ie_len13.i = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 4, i32 40
  %28 = ptrtoint ptr %wps_probe_req_ie_len13.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %wps_probe_req_ie_len13.i, align 4
  br label %rtw_cfg80211_set_probe_req_wpsp2pie.exit

rtw_cfg80211_set_probe_req_wpsp2pie.exit:         ; preds = %if.end11.i, %if.end.i.rtw_cfg80211_set_probe_req_wpsp2pie.exit_crit_edge, %if.then.i.rtw_cfg80211_set_probe_req_wpsp2pie.exit_crit_edge, %if.then16.rtw_cfg80211_set_probe_req_wpsp2pie.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen.i) #15
  br label %if.end20

if.end20:                                         ; preds = %rtw_cfg80211_set_probe_req_wpsp2pie.exit, %land.lhs.true.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %29 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fw_state.i, align 4
  %and.i234 = and i32 %30, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234)
  %tobool.not.i235.not = icmp eq i32 %and.i234, 0
  br i1 %tobool.not.i235.not, label %if.else, label %if.end20.check_need_indicate_scan_done.thread_crit_edge

if.end20.check_need_indicate_scan_done.thread_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_need_indicate_scan_done.thread

if.else:                                          ; preds = %if.end20
  %and.i238 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i238)
  %tobool.not.i239.not = icmp eq i32 %and.i238, 0
  br i1 %tobool.not.i239.not, label %if.end28, label %if.else.check_need_indicate_scan_done.thread252_crit_edge

if.else.check_need_indicate_scan_done.thread252_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_need_indicate_scan_done.thread252

if.end28:                                         ; preds = %if.else
  %bBusyTraffic = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 4, i32 34, i32 3
  %31 = ptrtoint ptr %bBusyTraffic to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bBusyTraffic, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool29.not = icmp eq i8 %32, 0
  br i1 %tobool29.not, label %if.end28.if.end38_crit_edge, label %if.then32

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then32:                                        ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %34 = load i32, ptr @cfg80211_rtw_scan.lastscantime, align 4
  %sub = sub i32 %33, %34
  %call33 = call i32 @jiffies_to_msecs(i32 noundef %sub) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  store i32 %35, ptr @cfg80211_rtw_scan.lastscantime, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %call33)
  %cmp34 = icmp ugt i32 %call33, 12000
  br i1 %cmp34, label %if.then32.check_need_indicate_scan_done.thread_crit_edge, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then32.check_need_indicate_scan_done.thread_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_need_indicate_scan_done.thread

if.end38:                                         ; preds = %if.then32.if.end38_crit_edge, %if.end28.if.end38_crit_edge
  %call39 = call zeroext i1 @rtw_is_scan_deny(ptr noundef %8) #15
  br i1 %call39, label %if.end38.check_need_indicate_scan_done.thread_crit_edge, label %if.end41

if.end38.check_need_indicate_scan_done.thread_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_need_indicate_scan_done.thread

if.end41:                                         ; preds = %if.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 324) #20
  %tobool43.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool43.not, label %if.end41.check_need_indicate_scan_done.thread252_crit_edge, label %for.cond.preheader

if.end41.check_need_indicate_scan_done.thread252_crit_edge: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_need_indicate_scan_done.thread252

for.cond.preheader:                               ; preds = %if.end41
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 1
  %37 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp46257 = icmp sgt i32 %38, 0
  br i1 %cmp46257, label %for.body.preheader, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %39 = add nsw i32 %38, -1
  %umin = call i32 @llvm.umin.i32(i32 %39, i32 8)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0258 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.ndis_802_11_ssid, ptr %call7.i.i, i32 %i.0258
  %ssid50 = getelementptr %struct.ndis_802_11_ssid, ptr %call7.i.i, i32 %i.0258, i32 1
  %arrayidx51 = getelementptr %struct.cfg80211_ssid, ptr %6, i32 %i.0258
  %ssid_len = getelementptr %struct.cfg80211_ssid, ptr %6, i32 %i.0258, i32 1
  %40 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ssid_len, align 1
  %conv55 = zext i8 %41 to i32
  %42 = call ptr @memcpy(ptr %ssid50, ptr %arrayidx51, i32 %conv55)
  %43 = load i8, ptr %ssid_len, align 1
  %conv58 = zext i8 %43 to i32
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv58, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0258, 1
  %exitcond.not = icmp eq i32 %i.0258, %umin
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %45 = call ptr @memset(ptr %ch, i32 0, i32 408)
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 2
  %46 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp62259.not = icmp eq i32 %47, 0
  br i1 %cmp62259.not, label %for.end.for.end78_crit_edge, label %for.body68.preheader

for.end.for.end78_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end78

for.body68.preheader:                             ; preds = %for.end
  %48 = add i32 %47, -1
  %umin266 = call i32 @llvm.umin.i32(i32 %48, i32 50)
  br label %for.body68

for.body68:                                       ; preds = %for.body68.for.body68_crit_edge, %for.body68.preheader
  %i.1260 = phi i32 [ %inc77, %for.body68.for.body68_crit_edge ], [ 0, %for.body68.preheader ]
  %arrayidx69 = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 22, i32 %i.1260
  %49 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx69, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hw_value, align 2
  %arrayidx70 = getelementptr [51 x %struct.rtw_ieee80211_channel], ptr %ch, i32 0, i32 %i.1260
  %53 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %arrayidx70, align 8
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %50, i32 0, i32 4
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %flags75 = getelementptr [51 x %struct.rtw_ieee80211_channel], ptr %ch, i32 0, i32 %i.1260, i32 1
  %56 = ptrtoint ptr %flags75 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %flags75, align 4
  %inc77 = add nuw nsw i32 %i.1260, 1
  %exitcond267.not = icmp eq i32 %i.1260, %umin266
  br i1 %exitcond267.not, label %for.body68.for.end78_crit_edge, label %for.body68.for.body68_crit_edge

for.body68.for.body68_crit_edge:                  ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body68

for.body68.for.end78_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end78

for.end78:                                        ; preds = %for.body68.for.end78_crit_edge, %for.end.for.end78_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #15
  %57 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp80 = icmp eq i32 %58, 1
  br i1 %cmp80, label %for.body87.preheader, label %if.else96

for.body87.preheader:                             ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx88 = getelementptr inbounds [51 x %struct.rtw_ieee80211_channel], ptr %ch, i32 0, i32 1
  %59 = ptrtoint ptr %ch to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %ch, align 8
  %61 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx88, align 8
  %arrayidx88.1 = getelementptr inbounds [51 x %struct.rtw_ieee80211_channel], ptr %ch, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %60, ptr %arrayidx88.1, align 8
  %arrayidx88.2 = getelementptr inbounds [51 x %struct.rtw_ieee80211_channel], ptr %ch, i32 0, i32 3
  %63 = ptrtoint ptr %arrayidx88.2 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %60, ptr %arrayidx88.2, align 8
  %arrayidx88.3 = getelementptr inbounds [51 x %struct.rtw_ieee80211_channel], ptr %ch, i32 0, i32 4
  %64 = ptrtoint ptr %arrayidx88.3 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %60, ptr %arrayidx88.3, align 8
  %arrayidx88.4 = getelementptr inbounds [51 x %struct.rtw_ieee80211_channel], ptr %ch, i32 0, i32 5
  %65 = ptrtoint ptr %arrayidx88.4 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %60, ptr %arrayidx88.4, align 8
  %call95 = call zeroext i8 @rtw_sitesurvey_cmd(ptr noundef %8, ptr noundef nonnull %call7.i.i, i32 noundef 9, ptr noundef nonnull %ch, i32 noundef 6) #15
  br label %check_need_indicate_scan_done

if.else96:                                        ; preds = %for.end78
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %58)
  %cmp98 = icmp ult i32 %58, 5
  br i1 %cmp98, label %for.cond103.preheader, label %if.else125

for.cond103.preheader:                            ; preds = %if.else96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp104263.not = icmp eq i32 %58, 0
  br i1 %cmp104263.not, label %for.cond103.preheader.for.end119_crit_edge, label %for.cond103.preheader.for.cond107.preheader_crit_edge

for.cond103.preheader.for.cond107.preheader_crit_edge: ; preds = %for.cond103.preheader
  br label %for.cond107.preheader

for.cond103.preheader.for.end119_crit_edge:       ; preds = %for.cond103.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end119

for.cond107.preheader:                            ; preds = %for.cond107.preheader.for.cond107.preheader_crit_edge, %for.cond103.preheader.for.cond107.preheader_crit_edge
  %j.0264.in = phi i32 [ %j.0264, %for.cond107.preheader.for.cond107.preheader_crit_edge ], [ %58, %for.cond103.preheader.for.cond107.preheader_crit_edge ]
  %j.0264 = add nsw i32 %j.0264.in, -1
  %mul = mul i32 %j.0264, 3
  %arrayidx114 = getelementptr [51 x %struct.rtw_ieee80211_channel], ptr %ch, i32 0, i32 %j.0264
  %arrayidx113 = getelementptr [51 x %struct.rtw_ieee80211_channel], ptr %ch, i32 0, i32 %mul
  %66 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx114, align 8
  %68 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx113, align 8
  %add.1 = add i32 %mul, 1
  %arrayidx113.1 = getelementptr [51 x %struct.rtw_ieee80211_channel], ptr %ch, i32 0, i32 %add.1
  %69 = load i64, ptr %arrayidx114, align 8
  %70 = ptrtoint ptr %arrayidx113.1 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %arrayidx113.1, align 8
  %add.2 = add i32 %mul, 2
  %arrayidx113.2 = getelementptr [51 x %struct.rtw_ieee80211_channel], ptr %ch, i32 0, i32 %add.2
  %71 = ptrtoint ptr %arrayidx113.2 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %69, ptr %arrayidx113.2, align 8
  %cmp104 = icmp sgt i32 %j.0264.in, 1
  br i1 %cmp104, label %for.cond107.preheader.for.cond107.preheader_crit_edge, label %for.cond107.preheader.for.end119_crit_edge

for.cond107.preheader.for.end119_crit_edge:       ; preds = %for.cond107.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end119

for.cond107.preheader.for.cond107.preheader_crit_edge: ; preds = %for.cond107.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond107.preheader

for.end119:                                       ; preds = %for.cond107.preheader.for.end119_crit_edge, %for.cond103.preheader.for.end119_crit_edge
  %mul123 = mul i32 %58, 3
  %call124 = call zeroext i8 @rtw_sitesurvey_cmd(ptr noundef %8, ptr noundef nonnull %call7.i.i, i32 noundef 9, ptr noundef nonnull %ch, i32 noundef %mul123) #15
  br label %check_need_indicate_scan_done

if.else125:                                       ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #17
  %call126 = call zeroext i8 @rtw_sitesurvey_cmd(ptr noundef %8, ptr noundef nonnull %call7.i.i, i32 noundef 9, ptr noundef null, i32 noundef 0) #15
  br label %check_need_indicate_scan_done

check_need_indicate_scan_done.thread:             ; preds = %if.end38.check_need_indicate_scan_done.thread_crit_edge, %if.then32.check_need_indicate_scan_done.thread_crit_edge, %if.end20.check_need_indicate_scan_done.thread_crit_edge, %if.end9.check_need_indicate_scan_done.thread_crit_edge, %if.end.check_need_indicate_scan_done.thread_crit_edge
  call void @kfree(ptr noundef null) #15
  %scanned_queue.i = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 4, i32 15
  %lock.i = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 4, i32 15, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  %72 = ptrtoint ptr %scanned_queue.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %plist.021.i = load ptr, ptr %scanned_queue.i, align 4
  %cmp.i.not22.i = icmp eq ptr %plist.021.i, %scanned_queue.i
  br i1 %cmp.i.not22.i, label %check_need_indicate_scan_done.thread.rtw_cfg80211_surveydone_event_callback.exit_crit_edge, label %for.body.lr.ph.i

check_need_indicate_scan_done.thread.rtw_cfg80211_surveydone_event_callback.exit_crit_edge: ; preds = %check_need_indicate_scan_done.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_surveydone_event_callback.exit

check_need_indicate_scan_done.thread252:          ; preds = %if.end41.check_need_indicate_scan_done.thread252_crit_edge, %if.else.check_need_indicate_scan_done.thread252_crit_edge
  %ret.0.ph = phi i32 [ -12, %if.end41.check_need_indicate_scan_done.thread252_crit_edge ], [ -16, %if.else.check_need_indicate_scan_done.thread252_crit_edge ]
  call void @kfree(ptr noundef null) #15
  br label %if.end137

check_need_indicate_scan_done:                    ; preds = %if.else125, %for.end119, %for.body87.preheader
  %_status.0 = phi i8 [ %call95, %for.body87.preheader ], [ %call124, %for.end119 ], [ %call126, %if.else125 ]
  call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %_status.0)
  %cmp131 = icmp eq i8 %_status.0, 0
  %spec.select = sext i1 %cmp131 to i32
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %if.end137

for.body.lr.ph.i:                                 ; preds = %check_need_indicate_scan_done.thread
  %channel_set.i = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 5, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %plist.023.i = phi ptr [ %plist.021.i, %for.body.lr.ph.i ], [ %plist.0.i, %for.inc.i.for.body.i_crit_edge ]
  %ds_config.i = getelementptr inbounds %struct.wlan_network, ptr %plist.023.i, i32 0, i32 6, i32 7, i32 3
  %73 = ptrtoint ptr %ds_config.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ds_config.i, align 4
  %call3.i = call i32 @rtw_ch_set_search_ch(ptr noundef %channel_set.i, i32 noundef %74) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp.i241 = icmp sgt i32 %call3.i, -1
  br i1 %cmp.i241, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ssid.i = getelementptr inbounds %struct.wlan_network, ptr %plist.023.i, i32 0, i32 6, i32 3
  %call5.i = call zeroext i8 @rtw_validate_ssid(ptr noundef %ssid.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call5.i)
  %cmp6.i = icmp eq i8 %call5.i, 1
  br i1 %cmp6.i, label %if.then.i242, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i242:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i = call ptr @rtw_cfg80211_inform_bss(ptr noundef %8, ptr noundef %plist.023.i) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i242, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %75 = ptrtoint ptr %plist.023.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %plist.0.i = load ptr, ptr %plist.023.i, align 4
  %cmp.i.not.i = icmp eq ptr %plist.0.i, %scanned_queue.i
  br i1 %cmp.i.not.i, label %for.inc.i.rtw_cfg80211_surveydone_event_callback.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.rtw_cfg80211_surveydone_event_callback.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_surveydone_event_callback.exit

rtw_cfg80211_surveydone_event_callback.exit:      ; preds = %for.inc.i.rtw_cfg80211_surveydone_event_callback.exit_crit_edge, %check_need_indicate_scan_done.thread.rtw_cfg80211_surveydone_event_callback.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #15
  %76 = getelementptr inbounds i8, ptr %info.i, i32 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 -1, ptr %76, align 8
  %78 = call ptr @memset(ptr %info.i, i32 0, i32 15)
  call void @_raw_spin_lock_bh(ptr noundef %scan_req_lock) #15
  %79 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %scan_request, align 4
  %tobool3.not.i = icmp eq ptr %80, null
  br i1 %tobool3.not.i, label %rtw_cfg80211_surveydone_event_callback.exit.rtw_cfg80211_indicate_scan_done.exit_crit_edge, label %if.then.i244

rtw_cfg80211_surveydone_event_callback.exit.rtw_cfg80211_indicate_scan_done.exit_crit_edge: ; preds = %rtw_cfg80211_surveydone_event_callback.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_indicate_scan_done.exit

if.then.i244:                                     ; preds = %rtw_cfg80211_surveydone_event_callback.exit
  %wdev_data.i = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 48
  %wiphy.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %80, i32 0, i32 14
  %81 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wiphy.i, align 8
  %83 = ptrtoint ptr %wdev_data.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %wdev_data.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %cmp.i243 = icmp eq ptr %82, %86
  br i1 %cmp.i243, label %if.then6.i, label %if.then.i244.if.end.i245_crit_edge

if.then.i244.if.end.i245_crit_edge:               ; preds = %if.then.i244
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i245

if.then6.i:                                       ; preds = %if.then.i244
  call void @__sanitizer_cov_trace_pc() #17
  call void @cfg80211_scan_done(ptr noundef nonnull %80, ptr noundef nonnull %info.i) #15
  br label %if.end.i245

if.end.i245:                                      ; preds = %if.then6.i, %if.then.i244.if.end.i245_crit_edge
  %87 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %scan_request, align 4
  br label %rtw_cfg80211_indicate_scan_done.exit

rtw_cfg80211_indicate_scan_done.exit:             ; preds = %if.end.i245, %rtw_cfg80211_surveydone_event_callback.exit.rtw_cfg80211_indicate_scan_done.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %scan_req_lock) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #15
  br label %if.end137

if.end137:                                        ; preds = %rtw_cfg80211_indicate_scan_done.exit, %check_need_indicate_scan_done, %check_need_indicate_scan_done.thread252
  %ret.0249 = phi i32 [ 0, %rtw_cfg80211_indicate_scan_done.exit ], [ %spec.select, %check_need_indicate_scan_done ], [ %ret.0.ph, %check_need_indicate_scan_done.thread252 ]
  call void @rtw_ps_deny_cancel(ptr noundef %8, i32 noundef 1) #15
  br label %cleanup138

cleanup138:                                       ; preds = %if.end137, %entry.cleanup138_crit_edge
  %retval.0 = phi i32 [ %ret.0249, %if.end137 ], [ -22, %entry.cleanup138_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 408, ptr nonnull %ch) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_connect(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %sme) #0 align 64 {
entry:
  %ndis_ssid = alloca %struct.ndis_802_11_ssid, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ndis_ssid) #15
  %0 = call ptr @memset(ptr %ndis_ssid, i32 255, i32 36)
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 4
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 12
  %not_indic_disco = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 4, i32 12
  %3 = ptrtoint ptr %not_indic_disco to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %not_indic_disco, align 8
  %block = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 48, i32 11
  %4 = ptrtoint ptr %block to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %block, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end:                                           ; preds = %entry
  tail call void @rtw_ps_deny(ptr noundef %2, i32 noundef 2) #15
  %call3 = tail call i32 @_rtw_pwr_wakeup(ptr noundef %2, i32 noundef 2000, ptr noundef nonnull @__func__.cfg80211_rtw_connect) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.end.exit_crit_edge, label %if.end7

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end7:                                          ; preds = %if.end
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_state.i, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.exit_crit_edge

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end11:                                         ; preds = %if.end7
  %ssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 4
  %9 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ssid, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.end11.exit_crit_edge, label %lor.lhs.false

if.end11.exit_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

lor.lhs.false:                                    ; preds = %if.end11
  %ssid_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 5
  %11 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %lor.lhs.false.exit_crit_edge, label %if.end15

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp17 = icmp ugt i32 %12, 32
  br i1 %cmp17, label %if.end15.exit_crit_edge, label %if.end20

if.end15.exit_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end20:                                         ; preds = %if.end15
  %13 = getelementptr inbounds i8, ptr %ndis_ssid, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 32)
  %15 = ptrtoint ptr %ndis_ssid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %ndis_ssid, align 4
  %ssid22 = getelementptr inbounds %struct.ndis_802_11_ssid, ptr %ndis_ssid, i32 0, i32 1
  %16 = call ptr @memcpy(ptr %ssid22, ptr %10, i32 %12)
  %17 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fw_state.i, align 4
  %and.i222 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i222)
  %tobool.not.i223.not = icmp eq i32 %and.i222, 0
  br i1 %tobool.not.i223.not, label %if.end29, label %if.end20.exit_crit_edge

if.end20.exit_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end29:                                         ; preds = %if.end20
  %and.i226 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i226)
  %tobool.not.i227.not = icmp eq i32 %and.i226, 0
  br i1 %tobool.not.i227.not, label %if.end29.if.end34_crit_edge, label %if.then33

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @rtw_scan_abort(ptr noundef %2) #15
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29.if.end34_crit_edge
  %ndisencryptstatus = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 12, i32 36
  %19 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %ndisencryptstatus, align 4
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dot11PrivacyAlgrthm, align 4
  %dot118021XGrpPrivacy = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 12, i32 6
  %21 = ptrtoint ptr %dot118021XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %dot118021XGrpPrivacy, align 8
  %22 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %securitypriv, align 8
  %ndisauthtype = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 12, i32 35
  %23 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ndisauthtype, align 8
  %crypto = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11
  %24 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crypto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i229 = icmp eq i32 %25, 0
  br i1 %tobool.not.i229, label %if.end34.return.sink.split.i_crit_edge, label %if.end.i

if.end34.return.sink.split.i_crit_edge:           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split.i

if.end.i:                                         ; preds = %if.end34
  %and.i230 = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i230)
  %tobool1.not.i = icmp eq i32 %and.i230, 0
  br i1 %tobool1.not.i, label %if.end.i.rtw_cfg80211_set_wpa_version.exit_crit_edge, label %if.end.i.return.sink.split.i_crit_edge

if.end.i.return.sink.split.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split.i

if.end.i.rtw_cfg80211_set_wpa_version.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_cfg80211_set_wpa_version.exit

return.sink.split.i:                              ; preds = %if.end.i.return.sink.split.i_crit_edge, %if.end34.return.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.end34.return.sink.split.i_crit_edge ], [ 4, %if.end.i.return.sink.split.i_crit_edge ]
  %26 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink.i, ptr %ndisauthtype, align 8
  br label %rtw_cfg80211_set_wpa_version.exit

rtw_cfg80211_set_wpa_version.exit:                ; preds = %return.sink.split.i, %if.end.i.rtw_cfg80211_set_wpa_version.exit_crit_edge
  %auth_type = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 6
  %27 = ptrtoint ptr %auth_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %auth_type, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %28, label %sw.default.i [
    i32 8, label %sw.bb.i
    i32 0, label %sw.bb1.i
    i32 1, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %rtw_cfg80211_set_wpa_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %securitypriv, align 8
  br label %rtw_cfg80211_set_auth_type.exit

sw.bb1.i:                                         ; preds = %rtw_cfg80211_set_wpa_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ndisauthtype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp.i = icmp ugt i32 %32, 3
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 0
  %33 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.store.select.i, ptr %securitypriv, align 8
  br label %rtw_cfg80211_set_auth_type.exit

sw.bb4.i:                                         ; preds = %rtw_cfg80211_set_wpa_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %securitypriv, align 8
  %35 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %ndisencryptstatus, align 4
  br label %rtw_cfg80211_set_auth_type.exit

sw.default.i:                                     ; preds = %rtw_cfg80211_set_wpa_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %securitypriv, align 8
  br label %rtw_cfg80211_set_auth_type.exit

rtw_cfg80211_set_auth_type.exit:                  ; preds = %sw.default.i, %sw.bb4.i, %sw.bb1.i, %sw.bb.i
  %ie = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 7
  %37 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ie, align 4
  %ie_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 8
  %39 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ie_len, align 4
  %call45 = tail call fastcc i32 @rtw_cfg80211_set_wpa_ie(ptr noundef %2, ptr noundef %38, i32 noundef %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %rtw_cfg80211_set_auth_type.exit.exit_crit_edge, label %if.end49

rtw_cfg80211_set_auth_type.exit.exit_crit_edge:   ; preds = %rtw_cfg80211_set_auth_type.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end49:                                         ; preds = %rtw_cfg80211_set_auth_type.exit
  %n_ciphers_pairwise = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 2
  %41 = ptrtoint ptr %n_ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_ciphers_pairwise, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool51.not = icmp eq i32 %42, 0
  br i1 %tobool51.not, label %if.end49.if.end59_crit_edge, label %if.then52

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then52:                                        ; preds = %if.end49
  %ciphers_pairwise = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 3
  %43 = ptrtoint ptr %ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ciphers_pairwise, align 4
  %call54 = tail call fastcc i32 @rtw_cfg80211_set_cipher(ptr noundef %securitypriv, i32 noundef %44, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then52.exit_crit_edge, label %if.then52.if.end59_crit_edge

if.then52.if.end59_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then52.exit_crit_edge:                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end59:                                         ; preds = %if.then52.if.end59_crit_edge, %if.end49.if.end59_crit_edge
  %ret.0 = phi i32 [ 0, %if.then52.if.end59_crit_edge ], [ %call45, %if.end49.if.end59_crit_edge ]
  %45 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %securitypriv, align 8
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %46, label %if.end59.if.end112_crit_edge [
    i32 1, label %if.end59.land.lhs.true_crit_edge
    i32 3, label %if.end59.land.lhs.true_crit_edge234
  ]

if.end59.land.lhs.true_crit_edge234:              ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.end59.land.lhs.true_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.end59.if.end112_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112

land.lhs.true:                                    ; preds = %if.end59.land.lhs.true_crit_edge, %if.end59.land.lhs.true_crit_edge234
  %key = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 12
  %48 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %key, align 4
  %tobool67.not = icmp eq ptr %49, null
  br i1 %tobool67.not, label %land.lhs.true.if.end112_crit_edge, label %if.then68

land.lhs.true.if.end112_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112

if.then68:                                        ; preds = %land.lhs.true
  %key_idx = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 14
  %50 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %key_idx, align 1
  %conv69 = zext i8 %51 to i32
  %key_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 13
  %52 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %51)
  %cmp73 = icmp ugt i8 %51, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp77.not = icmp eq i8 %53, 0
  %or.cond = select i1 %cmp73, i1 true, i1 %cmp77.not
  br i1 %or.cond, label %if.then68.exit_crit_edge, label %if.then79

if.then68.exit_crit_edge:                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.then79:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %53)
  %cmp80 = icmp ult i8 %53, 6
  %cond = select i1 %cmp80, i32 5, i32 13
  %add = add nuw nsw i32 %cond, 12
  %call82 = tail call ptr @_rtw_malloc(i32 noundef %add) #15
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %if.then79.exit_crit_edge, label %if.end85

if.then79.exit_crit_edge:                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end85:                                         ; preds = %if.then79
  %54 = call ptr @memset(ptr %call82, i32 0, i32 %add)
  %key_length = getelementptr inbounds %struct.ndis_802_11_wep, ptr %call82, i32 0, i32 2
  %55 = ptrtoint ptr %key_length to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond, ptr %key_length, align 4
  %56 = ptrtoint ptr %call82 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add, ptr %call82, align 4
  br i1 %cmp80, label %if.end85.if.end94_crit_edge, label %if.then88

if.end85.if.end94_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #17
  %57 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 5, ptr %dot11PrivacyAlgrthm, align 4
  %58 = ptrtoint ptr %dot118021XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 5, ptr %dot118021XGrpPrivacy, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then88, %if.end85.if.end94_crit_edge
  %key_index = getelementptr inbounds %struct.ndis_802_11_wep, ptr %call82, i32 0, i32 1
  %or = or i32 %conv69, -2147483648
  %59 = ptrtoint ptr %key_index to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or, ptr %key_index, align 4
  %key_material = getelementptr inbounds %struct.ndis_802_11_wep, ptr %call82, i32 0, i32 3
  %60 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %key, align 4
  %62 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %key_length, align 4
  %64 = call ptr @memcpy(ptr %key_material, ptr %61, i32 %63)
  %call99 = tail call zeroext i8 @rtw_set_802_11_add_wep(ptr noundef %2, ptr noundef nonnull %call82) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call99)
  %cmp101 = icmp eq i8 %call99, 0
  %spec.select = select i1 %cmp101, i32 -95, i32 %ret.0
  tail call void @kfree(ptr noundef nonnull %call82) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp105 = icmp slt i32 %spec.select, 0
  br i1 %cmp105, label %if.end94.exit_crit_edge, label %if.end94.if.end112_crit_edge

if.end94.if.end112_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112

if.end94.exit_crit_edge:                          ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end112:                                        ; preds = %if.end94.if.end112_crit_edge, %land.lhs.true.if.end112_crit_edge, %if.end59.if.end112_crit_edge
  %cipher_group = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 1
  %65 = ptrtoint ptr %cipher_group to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cipher_group, align 4
  %call114 = tail call fastcc i32 @rtw_cfg80211_set_cipher(ptr noundef %securitypriv, i32 noundef %66, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %if.end112.cleanup140_crit_edge, label %if.end118

if.end112.cleanup140_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup140

if.end118:                                        ; preds = %if.end112
  %n_akm_suites = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 4
  %67 = ptrtoint ptr %n_akm_suites to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n_akm_suites, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool120.not = icmp eq i32 %68, 0
  br i1 %tobool120.not, label %if.end118.if.end129_crit_edge, label %if.then121

if.end118.if.end129_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end129

if.then121:                                       ; preds = %if.end118
  %akm_suites = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 5
  %69 = ptrtoint ptr %akm_suites to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %akm_suites, align 4
  %key_mgt.off.i = add i32 %70, -1027073
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %key_mgt.off.i)
  %switch.i = icmp ult i32 %key_mgt.off.i, 2
  br i1 %switch.i, label %if.end4.sink.split.i, label %if.then121.if.end129_crit_edge

if.then121.if.end129_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end129

if.end4.sink.split.i:                             ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %securitypriv, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.end4.sink.split.i, %if.then121.if.end129_crit_edge, %if.end118.if.end129_crit_edge
  %ret.3 = phi i32 [ %call114, %if.end118.if.end129_crit_edge ], [ 0, %if.then121.if.end129_crit_edge ], [ 0, %if.end4.sink.split.i ]
  %72 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ndisauthtype, align 8
  %call131 = tail call zeroext i8 @rtw_set_802_11_authentication_mode(ptr noundef %2, i32 noundef %73) #15
  %bssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 2
  %74 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bssid, align 4
  %call132 = call zeroext i8 @rtw_set_802_11_connect(ptr noundef %2, ptr noundef %75, ptr noundef nonnull %ndis_ssid) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call132)
  %cmp134 = icmp eq i8 %call132, 0
  %spec.select219 = select i1 %cmp134, i32 -1, i32 %ret.3
  br label %exit

exit:                                             ; preds = %if.end129, %if.end94.exit_crit_edge, %if.then79.exit_crit_edge, %if.then68.exit_crit_edge, %if.then52.exit_crit_edge, %rtw_cfg80211_set_auth_type.exit.exit_crit_edge, %if.end20.exit_crit_edge, %if.end15.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %if.end11.exit_crit_edge, %if.end7.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.4 = phi i32 [ %call45, %rtw_cfg80211_set_auth_type.exit.exit_crit_edge ], [ %call54, %if.then52.exit_crit_edge ], [ -16, %entry.exit_crit_edge ], [ -1, %if.end.exit_crit_edge ], [ -1, %if.end7.exit_crit_edge ], [ -22, %lor.lhs.false.exit_crit_edge ], [ -22, %if.end11.exit_crit_edge ], [ -7, %if.end15.exit_crit_edge ], [ -16, %if.end20.exit_crit_edge ], [ %spec.select219, %if.end129 ], [ -12, %if.then79.exit_crit_edge ], [ -22, %if.then68.exit_crit_edge ], [ %spec.select, %if.end94.exit_crit_edge ]
  call void @rtw_ps_deny_cancel(ptr noundef %2, i32 noundef 2) #15
  %76 = ptrtoint ptr %not_indic_disco to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %not_indic_disco, align 8
  br label %cleanup140

cleanup140:                                       ; preds = %exit, %if.end112.cleanup140_crit_edge
  %retval.0 = phi i32 [ %ret.4, %exit ], [ %call114, %if.end112.cleanup140_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ndis_ssid) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_disconnect(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev, i16 noundef zeroext %reason_code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @rtw_set_to_roam(ptr noundef %1, i8 noundef zeroext 0) #15
  tail call void @rtw_scan_abort(ptr noundef %1) #15
  tail call void @LeaveAllPowerSaveMode(ptr noundef %1) #15
  %call1 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %1, i32 noundef 500, i1 noundef zeroext false) #15
  tail call void @rtw_indicate_disconnect(ptr noundef %1) #15
  tail call void @rtw_free_assoc_resources(ptr noundef %1, i32 noundef 1) #15
  %call2 = tail call i32 @_rtw_pwr_wakeup(ptr noundef %1, i32 noundef 2000, ptr noundef nonnull @__func__.cfg80211_rtw_disconnect) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_join_ibss(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %ndis_ssid = alloca %struct.ndis_802_11_ssid, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ndis_ssid) #15
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12
  %call1 = tail call i32 @_rtw_pwr_wakeup(ptr noundef %1, i32 noundef 2000, ptr noundef nonnull @__func__.cfg80211_rtw_join_ibss) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end:                                           ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end4, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %params, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.end4.exit_crit_edge, label %lor.lhs.false

if.end4.exit_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

lor.lhs.false:                                    ; preds = %if.end4
  %ssid_len = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 4
  %7 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %lor.lhs.false.exit_crit_edge, label %if.end8

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %8)
  %cmp10 = icmp ugt i8 %8, 32
  br i1 %cmp10, label %if.end8.exit_crit_edge, label %if.end13

if.end8.exit_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %9 = getelementptr inbounds i8, ptr %ndis_ssid, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 32)
  %conv15 = zext i8 %8 to i32
  %11 = ptrtoint ptr %ndis_ssid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv15, ptr %ndis_ssid, align 4
  %ssid16 = getelementptr inbounds %struct.ndis_802_11_ssid, ptr %ndis_ssid, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %ssid16, ptr %6, i32 %conv15)
  %ndisencryptstatus = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 36
  %13 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %ndisencryptstatus, align 4
  %dot118021XGrpPrivacy = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 6
  %14 = ptrtoint ptr %dot118021XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dot118021XGrpPrivacy, align 8
  %ndisauthtype = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 35
  %15 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ndisauthtype, align 8
  %16 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %securitypriv, align 8
  %call22 = tail call zeroext i8 @rtw_set_802_11_authentication_mode(ptr noundef %1, i32 noundef 0) #15
  %call23 = call zeroext i8 @rtw_set_802_11_ssid(ptr noundef %1, ptr noundef nonnull %ndis_ssid) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call23)
  %cmp25 = icmp eq i8 %call23, 0
  %spec.select = sext i1 %cmp25 to i32
  br label %exit

exit:                                             ; preds = %if.end13, %if.end8.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %if.end4.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ -1, %entry.exit_crit_edge ], [ -1, %if.end.exit_crit_edge ], [ -22, %lor.lhs.false.exit_crit_edge ], [ -22, %if.end4.exit_crit_edge ], [ -7, %if.end8.exit_crit_edge ], [ %spec.select, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ndis_ssid) #15
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_leave_ibss(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %rtw_wdev1 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %rtw_wdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtw_wdev1, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  tail call void @rtw_set_to_roam(ptr noundef %1, i8 noundef zeroext 0) #15
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.leave_ibss_crit_edge, label %if.then

entry.leave_ibss_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %leave_ibss

if.then:                                          ; preds = %entry
  tail call void @rtw_scan_abort(ptr noundef %1) #15
  tail call void @LeaveAllPowerSaveMode(ptr noundef %1) #15
  %8 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %iftype, align 4
  %call4 = tail call zeroext i8 @rtw_set_802_11_infrastructure_mode(ptr noundef %1, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4)
  %cmp = icmp eq i8 %call4, 0
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %iftype, align 4
  br label %leave_ibss

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call zeroext i8 @rtw_setopmode_cmd(ptr noundef %1, i32 noundef 1, i1 noundef zeroext true) #15
  br label %leave_ibss

leave_ibss:                                       ; preds = %if.end, %if.then6, %entry.leave_ibss_crit_edge
  %ret.0 = phi i32 [ -1, %if.then6 ], [ 0, %if.end ], [ 0, %entry.leave_ibss_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cfg80211_rtw_set_wiphy_params(ptr nocapture noundef readnone %wiphy, i32 noundef %changed) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cfg80211_rtw_set_txpower(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readnone %wdev, i32 noundef %type, i32 noundef %mbm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cfg80211_rtw_get_txpower(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readnone %wdev, ptr nocapture noundef writeonly %dbm) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dbm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12, ptr %dbm, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_set_pmksa(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %pmksa) #10 align 64 {
entry:
  %strZeroMacAddress = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %strZeroMacAddress) #15
  %2 = call ptr @memset(ptr %strZeroMacAddress, i32 0, i32 6)
  %3 = ptrtoint ptr %pmksa to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pmksa, align 4
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %4, ptr noundef nonnull dereferenceable(6) %strZeroMacAddress, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %Bssid = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 0, i32 1
  %bcmp74 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74)
  %tobool6.not = icmp eq i32 %bcmp74, 0
  br i1 %tobool6.not, label %for.body.preheader.if.then7_crit_edge, label %for.inc

for.body.preheader.if.then7_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

if.then7:                                         ; preds = %for.inc.14.if.then7_crit_edge, %for.inc.13.if.then7_crit_edge, %for.inc.12.if.then7_crit_edge, %for.inc.11.if.then7_crit_edge, %for.inc.10.if.then7_crit_edge, %for.inc.9.if.then7_crit_edge, %for.inc.8.if.then7_crit_edge, %for.inc.7.if.then7_crit_edge, %for.inc.6.if.then7_crit_edge, %for.inc.5.if.then7_crit_edge, %for.inc.4.if.then7_crit_edge, %for.inc.3.if.then7_crit_edge, %for.inc.2.if.then7_crit_edge, %for.inc.1.if.then7_crit_edge, %for.inc.if.then7_crit_edge, %for.body.preheader.if.then7_crit_edge
  %conv78.lcssa = phi i32 [ 0, %for.body.preheader.if.then7_crit_edge ], [ 1, %for.inc.if.then7_crit_edge ], [ 2, %for.inc.1.if.then7_crit_edge ], [ 3, %for.inc.2.if.then7_crit_edge ], [ 4, %for.inc.3.if.then7_crit_edge ], [ 5, %for.inc.4.if.then7_crit_edge ], [ 6, %for.inc.5.if.then7_crit_edge ], [ 7, %for.inc.6.if.then7_crit_edge ], [ 8, %for.inc.7.if.then7_crit_edge ], [ 9, %for.inc.8.if.then7_crit_edge ], [ 10, %for.inc.9.if.then7_crit_edge ], [ 11, %for.inc.10.if.then7_crit_edge ], [ 12, %for.inc.11.if.then7_crit_edge ], [ 13, %for.inc.12.if.then7_crit_edge ], [ 14, %for.inc.13.if.then7_crit_edge ], [ 15, %for.inc.14.if.then7_crit_edge ]
  %5 = trunc i32 %conv78.lcssa to i8
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 %conv78.lcssa
  %PMKID = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 %conv78.lcssa, i32 2
  %pmkid = getelementptr inbounds %struct.cfg80211_pmksa, ptr %pmksa, i32 0, i32 1
  %6 = ptrtoint ptr %pmkid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmkid, align 4
  %8 = call ptr @memcpy(ptr %PMKID, ptr %7, i32 16)
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx, align 8
  %add = add nuw nsw i8 %5, 1
  %PMKIDIndex = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 49
  %10 = ptrtoint ptr %PMKIDIndex to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %add, ptr %PMKIDIndex, align 8
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %Bssid.1 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 1, i32 1
  %bcmp74.1 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.1, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.1)
  %tobool6.not.1 = icmp eq i32 %bcmp74.1, 0
  br i1 %tobool6.not.1, label %for.inc.if.then7_crit_edge, label %for.inc.1

for.inc.if.then7_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.1:                                        ; preds = %for.inc
  %Bssid.2 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 2, i32 1
  %bcmp74.2 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.2, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.2)
  %tobool6.not.2 = icmp eq i32 %bcmp74.2, 0
  br i1 %tobool6.not.2, label %for.inc.1.if.then7_crit_edge, label %for.inc.2

for.inc.1.if.then7_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.2:                                        ; preds = %for.inc.1
  %Bssid.3 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 3, i32 1
  %bcmp74.3 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.3, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.3)
  %tobool6.not.3 = icmp eq i32 %bcmp74.3, 0
  br i1 %tobool6.not.3, label %for.inc.2.if.then7_crit_edge, label %for.inc.3

for.inc.2.if.then7_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.3:                                        ; preds = %for.inc.2
  %Bssid.4 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 4, i32 1
  %bcmp74.4 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.4, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.4)
  %tobool6.not.4 = icmp eq i32 %bcmp74.4, 0
  br i1 %tobool6.not.4, label %for.inc.3.if.then7_crit_edge, label %for.inc.4

for.inc.3.if.then7_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.4:                                        ; preds = %for.inc.3
  %Bssid.5 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 5, i32 1
  %bcmp74.5 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.5, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.5)
  %tobool6.not.5 = icmp eq i32 %bcmp74.5, 0
  br i1 %tobool6.not.5, label %for.inc.4.if.then7_crit_edge, label %for.inc.5

for.inc.4.if.then7_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.5:                                        ; preds = %for.inc.4
  %Bssid.6 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 6, i32 1
  %bcmp74.6 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.6, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.6)
  %tobool6.not.6 = icmp eq i32 %bcmp74.6, 0
  br i1 %tobool6.not.6, label %for.inc.5.if.then7_crit_edge, label %for.inc.6

for.inc.5.if.then7_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.6:                                        ; preds = %for.inc.5
  %Bssid.7 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 7, i32 1
  %bcmp74.7 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.7, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.7)
  %tobool6.not.7 = icmp eq i32 %bcmp74.7, 0
  br i1 %tobool6.not.7, label %for.inc.6.if.then7_crit_edge, label %for.inc.7

for.inc.6.if.then7_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.7:                                        ; preds = %for.inc.6
  %Bssid.8 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 8, i32 1
  %bcmp74.8 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.8, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.8)
  %tobool6.not.8 = icmp eq i32 %bcmp74.8, 0
  br i1 %tobool6.not.8, label %for.inc.7.if.then7_crit_edge, label %for.inc.8

for.inc.7.if.then7_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.8:                                        ; preds = %for.inc.7
  %Bssid.9 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 9, i32 1
  %bcmp74.9 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.9, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.9)
  %tobool6.not.9 = icmp eq i32 %bcmp74.9, 0
  br i1 %tobool6.not.9, label %for.inc.8.if.then7_crit_edge, label %for.inc.9

for.inc.8.if.then7_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.9:                                        ; preds = %for.inc.8
  %Bssid.10 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 10, i32 1
  %bcmp74.10 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.10, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.10)
  %tobool6.not.10 = icmp eq i32 %bcmp74.10, 0
  br i1 %tobool6.not.10, label %for.inc.9.if.then7_crit_edge, label %for.inc.10

for.inc.9.if.then7_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.10:                                       ; preds = %for.inc.9
  %Bssid.11 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 11, i32 1
  %bcmp74.11 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.11, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.11)
  %tobool6.not.11 = icmp eq i32 %bcmp74.11, 0
  br i1 %tobool6.not.11, label %for.inc.10.if.then7_crit_edge, label %for.inc.11

for.inc.10.if.then7_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.11:                                       ; preds = %for.inc.10
  %Bssid.12 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 12, i32 1
  %bcmp74.12 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.12, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.12)
  %tobool6.not.12 = icmp eq i32 %bcmp74.12, 0
  br i1 %tobool6.not.12, label %for.inc.11.if.then7_crit_edge, label %for.inc.12

for.inc.11.if.then7_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.12:                                       ; preds = %for.inc.11
  %Bssid.13 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 13, i32 1
  %bcmp74.13 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.13, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.13)
  %tobool6.not.13 = icmp eq i32 %bcmp74.13, 0
  br i1 %tobool6.not.13, label %for.inc.12.if.then7_crit_edge, label %for.inc.13

for.inc.12.if.then7_crit_edge:                    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.13:                                       ; preds = %for.inc.12
  %Bssid.14 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 14, i32 1
  %bcmp74.14 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.14, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.14)
  %tobool6.not.14 = icmp eq i32 %bcmp74.14, 0
  br i1 %tobool6.not.14, label %for.inc.13.if.then7_crit_edge, label %for.inc.14

for.inc.13.if.then7_crit_edge:                    ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.14:                                       ; preds = %for.inc.13
  %Bssid.15 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 15, i32 1
  %bcmp74.15 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.15, ptr noundef dereferenceable(6) %4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.15)
  %tobool6.not.15 = icmp eq i32 %bcmp74.15, 0
  br i1 %tobool6.not.15, label %for.inc.14.if.then7_crit_edge, label %for.inc.15

for.inc.14.if.then7_crit_edge:                    ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

for.inc.15:                                       ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #17
  %PMKIDIndex21 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 49
  %11 = ptrtoint ptr %PMKIDIndex21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %PMKIDIndex21, align 8
  %idxprom22 = zext i8 %12 to i32
  %Bssid24 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 %idxprom22, i32 1
  %13 = call ptr @memcpy(ptr %Bssid24, ptr %4, i32 6)
  %PMKID31 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 %idxprom22, i32 2
  %pmkid33 = getelementptr inbounds %struct.cfg80211_pmksa, ptr %pmksa, i32 0, i32 1
  %14 = ptrtoint ptr %pmkid33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pmkid33, align 4
  %16 = call ptr @memcpy(ptr %PMKID31, ptr %15, i32 16)
  %arrayidx37 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 %idxprom22
  %17 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx37, align 8
  %18 = load i8, ptr %PMKIDIndex21, align 8
  %inc40 = add i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %inc40)
  %cmp43 = icmp eq i8 %inc40, 16
  %spec.store.select = select i1 %cmp43, i8 0, i8 %inc40
  %19 = ptrtoint ptr %PMKIDIndex21 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.store.select, ptr %PMKIDIndex21, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.15, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %for.inc.15 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %strZeroMacAddress) #15
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_del_pmksa(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %pmksa) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = ptrtoint ptr %pmksa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmksa, align 4
  %Bssid = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %for.cond

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond:                                         ; preds = %entry
  %Bssid.1 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 1, i32 1
  %bcmp.1 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.1, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool.not.1, label %for.cond.if.then_crit_edge, label %for.cond.1

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.1:                                       ; preds = %for.cond
  %Bssid.2 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 2, i32 1
  %bcmp.2 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.2, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %tobool.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %tobool.not.2, label %for.cond.1.if.then_crit_edge, label %for.cond.2

for.cond.1.if.then_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.2:                                       ; preds = %for.cond.1
  %Bssid.3 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 3, i32 1
  %bcmp.3 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.3, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3)
  %tobool.not.3 = icmp eq i32 %bcmp.3, 0
  br i1 %tobool.not.3, label %for.cond.2.if.then_crit_edge, label %for.cond.3

for.cond.2.if.then_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.3:                                       ; preds = %for.cond.2
  %Bssid.4 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 4, i32 1
  %bcmp.4 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.4, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.4)
  %tobool.not.4 = icmp eq i32 %bcmp.4, 0
  br i1 %tobool.not.4, label %for.cond.3.if.then_crit_edge, label %for.cond.4

for.cond.3.if.then_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.4:                                       ; preds = %for.cond.3
  %Bssid.5 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 5, i32 1
  %bcmp.5 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.5, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.5)
  %tobool.not.5 = icmp eq i32 %bcmp.5, 0
  br i1 %tobool.not.5, label %for.cond.4.if.then_crit_edge, label %for.cond.5

for.cond.4.if.then_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.5:                                       ; preds = %for.cond.4
  %Bssid.6 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 6, i32 1
  %bcmp.6 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.6, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.6)
  %tobool.not.6 = icmp eq i32 %bcmp.6, 0
  br i1 %tobool.not.6, label %for.cond.5.if.then_crit_edge, label %for.cond.6

for.cond.5.if.then_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.6:                                       ; preds = %for.cond.5
  %Bssid.7 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 7, i32 1
  %bcmp.7 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.7, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.7)
  %tobool.not.7 = icmp eq i32 %bcmp.7, 0
  br i1 %tobool.not.7, label %for.cond.6.if.then_crit_edge, label %for.cond.7

for.cond.6.if.then_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.7:                                       ; preds = %for.cond.6
  %Bssid.8 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 8, i32 1
  %bcmp.8 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.8, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.8)
  %tobool.not.8 = icmp eq i32 %bcmp.8, 0
  br i1 %tobool.not.8, label %for.cond.7.if.then_crit_edge, label %for.cond.8

for.cond.7.if.then_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.8:                                       ; preds = %for.cond.7
  %Bssid.9 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 9, i32 1
  %bcmp.9 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.9, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.9)
  %tobool.not.9 = icmp eq i32 %bcmp.9, 0
  br i1 %tobool.not.9, label %for.cond.8.if.then_crit_edge, label %for.cond.9

for.cond.8.if.then_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.9:                                       ; preds = %for.cond.8
  %Bssid.10 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 10, i32 1
  %bcmp.10 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.10, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.10)
  %tobool.not.10 = icmp eq i32 %bcmp.10, 0
  br i1 %tobool.not.10, label %for.cond.9.if.then_crit_edge, label %for.cond.10

for.cond.9.if.then_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.10:                                      ; preds = %for.cond.9
  %Bssid.11 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 11, i32 1
  %bcmp.11 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.11, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.11)
  %tobool.not.11 = icmp eq i32 %bcmp.11, 0
  br i1 %tobool.not.11, label %for.cond.10.if.then_crit_edge, label %for.cond.11

for.cond.10.if.then_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.11:                                      ; preds = %for.cond.10
  %Bssid.12 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 12, i32 1
  %bcmp.12 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.12, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.12)
  %tobool.not.12 = icmp eq i32 %bcmp.12, 0
  br i1 %tobool.not.12, label %for.cond.11.if.then_crit_edge, label %for.cond.12

for.cond.11.if.then_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.12:                                      ; preds = %for.cond.11
  %Bssid.13 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 13, i32 1
  %bcmp.13 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.13, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.13)
  %tobool.not.13 = icmp eq i32 %bcmp.13, 0
  br i1 %tobool.not.13, label %for.cond.12.if.then_crit_edge, label %for.cond.13

for.cond.12.if.then_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.13:                                      ; preds = %for.cond.12
  %Bssid.14 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 14, i32 1
  %bcmp.14 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.14, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.14)
  %tobool.not.14 = icmp eq i32 %bcmp.14, 0
  br i1 %tobool.not.14, label %for.cond.13.if.then_crit_edge, label %for.cond.14

for.cond.13.if.then_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.14:                                      ; preds = %for.cond.13
  %Bssid.15 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 15, i32 1
  %bcmp.15 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.15, ptr noundef dereferenceable(6) %3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.15)
  %tobool.not.15 = icmp eq i32 %bcmp.15, 0
  br i1 %tobool.not.15, label %for.cond.14.if.then_crit_edge, label %for.cond.14.for.end_crit_edge

for.cond.14.for.end_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond.14.if.then_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %for.cond.14.if.then_crit_edge, %for.cond.13.if.then_crit_edge, %for.cond.12.if.then_crit_edge, %for.cond.11.if.then_crit_edge, %for.cond.10.if.then_crit_edge, %for.cond.9.if.then_crit_edge, %for.cond.8.if.then_crit_edge, %for.cond.7.if.then_crit_edge, %for.cond.6.if.then_crit_edge, %for.cond.5.if.then_crit_edge, %for.cond.4.if.then_crit_edge, %for.cond.3.if.then_crit_edge, %for.cond.2.if.then_crit_edge, %for.cond.1.if.then_crit_edge, %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %conv.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.cond.if.then_crit_edge ], [ 2, %for.cond.1.if.then_crit_edge ], [ 3, %for.cond.2.if.then_crit_edge ], [ 4, %for.cond.3.if.then_crit_edge ], [ 5, %for.cond.4.if.then_crit_edge ], [ 6, %for.cond.5.if.then_crit_edge ], [ 7, %for.cond.6.if.then_crit_edge ], [ 8, %for.cond.7.if.then_crit_edge ], [ 9, %for.cond.8.if.then_crit_edge ], [ 10, %for.cond.9.if.then_crit_edge ], [ 11, %for.cond.10.if.then_crit_edge ], [ 12, %for.cond.11.if.then_crit_edge ], [ 13, %for.cond.12.if.then_crit_edge ], [ 14, %for.cond.13.if.then_crit_edge ], [ 15, %for.cond.14.if.then_crit_edge ]
  %Bssid.lcssa = phi ptr [ %Bssid, %entry.if.then_crit_edge ], [ %Bssid.1, %for.cond.if.then_crit_edge ], [ %Bssid.2, %for.cond.1.if.then_crit_edge ], [ %Bssid.3, %for.cond.2.if.then_crit_edge ], [ %Bssid.4, %for.cond.3.if.then_crit_edge ], [ %Bssid.5, %for.cond.4.if.then_crit_edge ], [ %Bssid.6, %for.cond.5.if.then_crit_edge ], [ %Bssid.7, %for.cond.6.if.then_crit_edge ], [ %Bssid.8, %for.cond.7.if.then_crit_edge ], [ %Bssid.9, %for.cond.8.if.then_crit_edge ], [ %Bssid.10, %for.cond.9.if.then_crit_edge ], [ %Bssid.11, %for.cond.10.if.then_crit_edge ], [ %Bssid.12, %for.cond.11.if.then_crit_edge ], [ %Bssid.13, %for.cond.12.if.then_crit_edge ], [ %Bssid.14, %for.cond.13.if.then_crit_edge ], [ %Bssid.15, %for.cond.14.if.then_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 %conv.lcssa
  %4 = call ptr @memset(ptr %Bssid.lcssa, i32 0, i32 6)
  %PMKID = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 48, i32 %conv.lcssa, i32 2
  %5 = call ptr @memset(ptr %PMKID, i32 0, i32 16)
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 8
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.14.for.end_crit_edge
  %. = phi i32 [ 0, %if.then ], [ -22, %for.cond.14.for.end_crit_edge ]
  ret i32 %.
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cfg80211_rtw_flush_pmksa(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %PMKIDList = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 48
  %2 = call ptr @memset(ptr %PMKIDList, i32 0, i32 1025)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_mgmt_tx(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %wdev, ptr nocapture noundef readonly %params, ptr nocapture noundef writeonly %cookie) #0 align 64 {
entry:
  %category = alloca i8, align 1
  %action = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %buf2 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 3
  %4 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf2, align 4
  %len3 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 4
  %6 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len3, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %9, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #15
  %conv = trunc i32 %call.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %category) #15
  %10 = ptrtoint ptr %category to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %category, align 1, !annotation !67
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %action) #15
  %11 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %action, align 1, !annotation !67
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 4
  %14 = ptrtoint ptr %5 to i32
  %conv5 = zext i32 %14 to i64
  %15 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv5, ptr %cookie, align 8
  %rtw_wdev = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 47
  %16 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rtw_wdev, align 4
  tail call void @cfg80211_mgmt_tx_status(ptr noundef %17, i64 noundef %conv5, ptr noundef %5, i32 noundef %7, i1 noundef zeroext true, i32 noundef 3264) #15
  %call7 = call i32 @rtw_action_frame_parse(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %category, ptr noundef nonnull %action) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.end.exit_crit_edge, label %if.end10

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end10:                                         ; preds = %if.end
  call void @rtw_ps_deny(ptr noundef %13, i32 noundef 6) #15
  %call11 = call i32 @_rtw_pwr_wakeup(ptr noundef %13, i32 noundef 2000, ptr noundef nonnull @__func__.cfg80211_rtw_mgmt_tx) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.end10.cancel_ps_deny_crit_edge, label %do.body.preheader

if.end10.cancel_ps_deny_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cancel_ps_deny

do.body.preheader:                                ; preds = %if.end10
  %xmitpriv.i = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 9
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 4, i32 1
  %cur_channel.i = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 5, i32 7
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 5, i32 3
  br label %do.body

do.body:                                          ; preds = %_cfg80211_rtw_mgmt_tx.exit.do.body_crit_edge, %do.body.preheader
  %dump_cnt.0 = phi i32 [ %inc, %_cfg80211_rtw_mgmt_tx.exit.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %inc = add nuw nsw i32 %dump_cnt.0, 1
  call void @rtw_set_scan_deny(ptr noundef %13, i32 noundef 1000) #15
  call void @rtw_scan_abort(ptr noundef %13) #15
  %call.i51 = call zeroext i8 @rtw_get_oper_ch(ptr noundef %13) #15
  call void @__sanitizer_cov_trace_cmp1(i8 %call.i51, i8 %conv)
  %cmp.not.i = icmp eq i8 %call.i51, %conv
  br i1 %cmp.not.i, label %do.body.if.end5.i_crit_edge, label %if.then.i

do.body.if.end5.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

if.then.i:                                        ; preds = %do.body
  %18 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %cur_channel.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %cur_channel.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  call void @set_channel_bwmode(ptr noundef %13, i8 noundef zeroext %conv, i8 noundef zeroext 0, i16 noundef zeroext 0) #15
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %do.body.if.end5.i_crit_edge
  %call6.i = call ptr @alloc_mgtxmitframe(ptr noundef %xmitpriv.i) #15
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i._cfg80211_rtw_mgmt_tx.exit_crit_edge, label %if.end9.i

if.end5.i._cfg80211_rtw_mgmt_tx.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %_cfg80211_rtw_mgmt_tx.exit

if.end9.i:                                        ; preds = %if.end5.i
  %attrib.i = getelementptr inbounds %struct.xmit_frame, ptr %call6.i, i32 0, i32 1
  call void @update_mgntframe_attrib(ptr noundef %13, ptr noundef %attrib.i) #15
  %retry_ctrl.i = getelementptr inbounds %struct.xmit_frame, ptr %call6.i, i32 0, i32 1, i32 41
  %21 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %retry_ctrl.i, align 1
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %call6.i, i32 0, i32 5
  %22 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf_addr.i, align 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 104)
  %25 = load ptr, ptr %buf_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 40
  %26 = call ptr @memcpy(ptr %add.ptr.i, ptr %5, i32 %7)
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call6.i, i32 0, i32 1, i32 8
  %27 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %7, ptr %pktlen.i, align 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  %add.i = add i32 %28, 22
  %29 = inttoptr i32 %add.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %31) #15
  %33 = lshr i16 %32, 4
  %34 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %mgnt_seq.i, align 4
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %call6.i, i32 0, i32 1, i32 5
  %35 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %33, ptr %seqnum.i, align 2
  %36 = load i16, ptr %mgnt_seq.i, align 4
  %inc.i = add i16 %36, 1
  store i16 %inc.i, ptr %mgnt_seq.i, align 4
  %37 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pktlen.i, align 4
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %call6.i, i32 0, i32 1, i32 9
  %39 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %last_txcmdsz.i, align 4
  %call16.i = call i32 @dump_mgntframe_and_wait_ack(ptr noundef %13, ptr noundef nonnull %call6.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 1
  br i1 %cmp17.not.i, label %_cfg80211_rtw_mgmt_tx.exit.thread, label %if.end9.i._cfg80211_rtw_mgmt_tx.exit_crit_edge

if.end9.i._cfg80211_rtw_mgmt_tx.exit_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %_cfg80211_rtw_mgmt_tx.exit

_cfg80211_rtw_mgmt_tx.exit.thread:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @msleep(i32 noundef 50) #15
  br label %cancel_ps_deny

_cfg80211_rtw_mgmt_tx.exit:                       ; preds = %if.end9.i._cfg80211_rtw_mgmt_tx.exit_crit_edge, %if.end5.i._cfg80211_rtw_mgmt_tx.exit_crit_edge
  %exitcond = icmp eq i32 %inc, 8
  br i1 %exitcond, label %_cfg80211_rtw_mgmt_tx.exit.cancel_ps_deny_crit_edge, label %_cfg80211_rtw_mgmt_tx.exit.do.body_crit_edge

_cfg80211_rtw_mgmt_tx.exit.do.body_crit_edge:     ; preds = %_cfg80211_rtw_mgmt_tx.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

_cfg80211_rtw_mgmt_tx.exit.cancel_ps_deny_crit_edge: ; preds = %_cfg80211_rtw_mgmt_tx.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cancel_ps_deny

cancel_ps_deny:                                   ; preds = %_cfg80211_rtw_mgmt_tx.exit.cancel_ps_deny_crit_edge, %_cfg80211_rtw_mgmt_tx.exit.thread, %if.end10.cancel_ps_deny_crit_edge
  %ret.0 = phi i32 [ -14, %if.end10.cancel_ps_deny_crit_edge ], [ 0, %_cfg80211_rtw_mgmt_tx.exit.thread ], [ 0, %_cfg80211_rtw_mgmt_tx.exit.cancel_ps_deny_crit_edge ]
  call void @rtw_ps_deny_cancel(ptr noundef %13, i32 noundef 6) #15
  br label %exit

exit:                                             ; preds = %cancel_ps_deny, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.1 = phi i32 [ 0, %if.end.exit_crit_edge ], [ %ret.0, %cancel_ps_deny ], [ -22, %entry.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %action) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %category) #15
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_set_power_mgmt(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %ndev, i1 noundef zeroext %enabled, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enabled to i8
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %power_mgmt = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 12
  %2 = ptrtoint ptr %power_mgmt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %power_mgmt, align 2
  br i1 %enabled, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @LPS_Leave(ptr noundef %1, ptr noundef nonnull @.str.11) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg80211_rtw_get_channel(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %wdev, ptr noundef %chandef) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !64

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #15, !srcloc !68
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %rtw_wdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtw_wdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %wiphy_priv.exit.cleanup_crit_edge, label %if.end

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %call2 = tail call zeroext i8 @rtw_get_oper_ch(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2)
  %tobool3.not = icmp eq i8 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %conv = zext i8 %call2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %call2)
  %cmp1.i = icmp eq i8 %call2, 14
  br i1 %cmp1.i, label %if.end5.rtw_ieee80211_channel_to_frequency.exit_crit_edge, label %if.else.i

if.end5.rtw_ieee80211_channel_to_frequency.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_ieee80211_channel_to_frequency.exit

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %call2)
  %cmp3.i = icmp ult i8 %call2, 14
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge

if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_ieee80211_channel_to_frequency.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %4 = mul nuw nsw i32 %conv, 5000
  %phi.bo = add nuw nsw i32 %4, 2407000
  br label %rtw_ieee80211_channel_to_frequency.exit

rtw_ieee80211_channel_to_frequency.exit:          ; preds = %if.then4.i, %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge, %if.end5.rtw_ieee80211_channel_to_frequency.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.then4.i ], [ 2484000, %if.end5.rtw_ieee80211_channel_to_frequency.exit_crit_edge ], [ 0, %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge ]
  %5 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtw_wdev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %8, i32 noundef %retval.0.i) #15
  %ht_enable = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 37
  %9 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ht_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  br i1 %tobool10.not, label %rtw_ieee80211_channel_to_frequency.exit.cleanup.sink.split_crit_edge, label %if.then11

rtw_ieee80211_channel_to_frequency.exit.cleanup.sink.split_crit_edge: ; preds = %rtw_ieee80211_channel_to_frequency.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then11:                                        ; preds = %rtw_ieee80211_channel_to_frequency.exit
  %cur_bwmode.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 8
  %11 = ptrtoint ptr %cur_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cur_bwmode.i, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %12, label %if.then11.rtw_get_chan_type.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb2.i
  ]

if.then11.rtw_get_chan_type.exit_crit_edge:       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_chan_type.exit

sw.bb.i:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  %wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 7
  %14 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wireless_mode.i, align 2
  %16 = lshr i8 %15, 3
  %.lobit.i = and i8 %16, 1
  br label %rtw_get_chan_type.exit

sw.bb2.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  %cur_ch_offset.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 9
  %17 = ptrtoint ptr %cur_ch_offset.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cur_ch_offset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp.i = icmp eq i8 %18, 2
  %.9.i = select i1 %cmp.i, i8 3, i8 2
  br label %rtw_get_chan_type.exit

rtw_get_chan_type.exit:                           ; preds = %sw.bb2.i, %sw.bb.i, %if.then11.rtw_get_chan_type.exit_crit_edge
  %retval.0.i28 = phi i8 [ %.lobit.i, %sw.bb.i ], [ %.9.i, %sw.bb2.i ], [ 1, %if.then11.rtw_get_chan_type.exit_crit_edge ]
  %conv13 = zext i8 %retval.0.i28 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rtw_get_chan_type.exit, %rtw_ieee80211_channel_to_frequency.exit.cleanup.sink.split_crit_edge
  %conv13.sink = phi i32 [ %conv13, %rtw_get_chan_type.exit ], [ 0, %rtw_ieee80211_channel_to_frequency.exit.cleanup.sink.split_crit_edge ]
  tail call void @cfg80211_chandef_create(ptr noundef %chandef, ptr noundef %call.i, i32 noundef %conv13.sink) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %wiphy_priv.exit.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ndev_destructor(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_cfg80211_monitor_if_xmit_entry(ptr noundef %skb, ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  %category = alloca i8, align 1
  %action = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp ult i32 %3, 8
  br i1 %cmp, label %if.end.fail_crit_edge, label %if.end4, !prof !64

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end13, label %if.end4.fail_crit_edge, !prof !69

if.end4.fail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end13:                                         ; preds = %if.end4
  %it_len.i = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %it_len.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %it_len.i, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #15
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp17 = icmp uge i32 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 3584, i16 %9)
  %cmp27.not = icmp eq i16 %9, 3584
  %or.cond = and i1 %cmp27.not, %cmp17
  br i1 %or.cond, label %if.end30, label %if.end13.fail_crit_edge, !prof !70

if.end13.fail_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end30:                                         ; preds = %if.end13
  %call31 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 14) #15
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv34 = zext i16 %15 to i32
  %and = and i32 %conv34, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp35 = icmp eq i32 %and, 8
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %and39 = lshr i32 %conv34, 6
  %16 = and i32 %and39, 2
  %and44 = and i32 %conv34, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and44)
  %cmp45 = icmp eq i32 %and44, 768
  %dot11_hdr_len.0 = select i1 %cmp45, i32 30, i32 24
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %addr1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %dst_mac_addr.sroa.0.0.copyload = load i8, ptr %addr1, align 2
  %dst_mac_addr.sroa.5.0.arraydecay49.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %dst_mac_addr.sroa.5.0.arraydecay49.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %dst_mac_addr.sroa.5.0.copyload = load i8, ptr %dst_mac_addr.sroa.5.0.arraydecay49.sroa_idx, align 1
  %dst_mac_addr.sroa.6.0.arraydecay49.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %dst_mac_addr.sroa.6.0.arraydecay49.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %dst_mac_addr.sroa.6.0.copyload = load i8, ptr %dst_mac_addr.sroa.6.0.arraydecay49.sroa_idx, align 2
  %dst_mac_addr.sroa.7.0.arraydecay49.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %dst_mac_addr.sroa.7.0.arraydecay49.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %dst_mac_addr.sroa.7.0.copyload = load i8, ptr %dst_mac_addr.sroa.7.0.arraydecay49.sroa_idx, align 1
  %dst_mac_addr.sroa.8.0.arraydecay49.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %dst_mac_addr.sroa.8.0.arraydecay49.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %dst_mac_addr.sroa.8.0.copyload = load i8, ptr %dst_mac_addr.sroa.8.0.arraydecay49.sroa_idx, align 2
  %dst_mac_addr.sroa.9.0.arraydecay49.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %dst_mac_addr.sroa.9.0.arraydecay49.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %dst_mac_addr.sroa.9.0.copyload = load i8, ptr %dst_mac_addr.sroa.9.0.arraydecay49.sroa_idx, align 1
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 3
  %23 = ptrtoint ptr %addr2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %src_mac_addr.sroa.0.0.copyload = load i8, ptr %addr2, align 2
  %src_mac_addr.sroa.5.0.arraydecay51.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %src_mac_addr.sroa.5.0.arraydecay51.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %src_mac_addr.sroa.5.0.copyload = load i8, ptr %src_mac_addr.sroa.5.0.arraydecay51.sroa_idx, align 1
  %src_mac_addr.sroa.6.0.arraydecay51.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %src_mac_addr.sroa.6.0.arraydecay51.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %src_mac_addr.sroa.6.0.copyload = load i8, ptr %src_mac_addr.sroa.6.0.arraydecay51.sroa_idx, align 2
  %src_mac_addr.sroa.7.0.arraydecay51.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %src_mac_addr.sroa.7.0.arraydecay51.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %26)
  %src_mac_addr.sroa.7.0.copyload = load i8, ptr %src_mac_addr.sroa.7.0.arraydecay51.sroa_idx, align 1
  %src_mac_addr.sroa.8.0.arraydecay51.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 3, i32 4
  %27 = ptrtoint ptr %src_mac_addr.sroa.8.0.arraydecay51.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %src_mac_addr.sroa.8.0.copyload = load i8, ptr %src_mac_addr.sroa.8.0.arraydecay51.sroa_idx, align 2
  %src_mac_addr.sroa.9.0.arraydecay51.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 3, i32 5
  %28 = ptrtoint ptr %src_mac_addr.sroa.9.0.arraydecay51.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %28)
  %src_mac_addr.sroa.9.0.copyload = load i8, ptr %src_mac_addr.sroa.9.0.arraydecay51.sroa_idx, align 1
  %add52 = add nuw nsw i32 %16, -6
  %sub = add nsw i32 %add52, %dot11_hdr_len.0
  %call54 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef %sub) #15
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %dst_mac_addr.sroa.0.0.copyload, ptr %30, align 1
  %dst_mac_addr.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %30, i32 1
  %32 = ptrtoint ptr %dst_mac_addr.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %dst_mac_addr.sroa.5.0.copyload, ptr %dst_mac_addr.sroa.5.0..sroa_idx, align 1
  %dst_mac_addr.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %30, i32 2
  %33 = ptrtoint ptr %dst_mac_addr.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %dst_mac_addr.sroa.6.0.copyload, ptr %dst_mac_addr.sroa.6.0..sroa_idx, align 1
  %dst_mac_addr.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %30, i32 3
  %34 = ptrtoint ptr %dst_mac_addr.sroa.7.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %dst_mac_addr.sroa.7.0.copyload, ptr %dst_mac_addr.sroa.7.0..sroa_idx, align 1
  %dst_mac_addr.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %30, i32 4
  %35 = ptrtoint ptr %dst_mac_addr.sroa.8.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %dst_mac_addr.sroa.8.0.copyload, ptr %dst_mac_addr.sroa.8.0..sroa_idx, align 1
  %dst_mac_addr.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %30, i32 5
  %36 = ptrtoint ptr %dst_mac_addr.sroa.9.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %dst_mac_addr.sroa.9.0.copyload, ptr %dst_mac_addr.sroa.9.0..sroa_idx, align 1
  %add.ptr = getelementptr i8, ptr %30, i32 6
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %src_mac_addr.sroa.0.0.copyload, ptr %add.ptr, align 1
  %src_mac_addr.sroa.5.0.add.ptr.sroa_idx = getelementptr i8, ptr %30, i32 7
  %38 = ptrtoint ptr %src_mac_addr.sroa.5.0.add.ptr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %src_mac_addr.sroa.5.0.copyload, ptr %src_mac_addr.sroa.5.0.add.ptr.sroa_idx, align 1
  %src_mac_addr.sroa.6.0.add.ptr.sroa_idx = getelementptr i8, ptr %30, i32 8
  %39 = ptrtoint ptr %src_mac_addr.sroa.6.0.add.ptr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %src_mac_addr.sroa.6.0.copyload, ptr %src_mac_addr.sroa.6.0.add.ptr.sroa_idx, align 1
  %src_mac_addr.sroa.7.0.add.ptr.sroa_idx = getelementptr i8, ptr %30, i32 9
  %40 = ptrtoint ptr %src_mac_addr.sroa.7.0.add.ptr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %src_mac_addr.sroa.7.0.copyload, ptr %src_mac_addr.sroa.7.0.add.ptr.sroa_idx, align 1
  %src_mac_addr.sroa.8.0.add.ptr.sroa_idx = getelementptr i8, ptr %30, i32 10
  %41 = ptrtoint ptr %src_mac_addr.sroa.8.0.add.ptr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %src_mac_addr.sroa.8.0.copyload, ptr %src_mac_addr.sroa.8.0.add.ptr.sroa_idx, align 1
  %src_mac_addr.sroa.9.0.add.ptr.sroa_idx = getelementptr i8, ptr %30, i32 11
  %42 = ptrtoint ptr %src_mac_addr.sroa.9.0.add.ptr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %src_mac_addr.sroa.9.0.copyload, ptr %src_mac_addr.sroa.9.0.add.ptr.sroa_idx, align 1
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 41
  %43 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pnetdev, align 8
  %call58 = tail call i32 @_rtw_xmit_entry(ptr noundef nonnull %skb, ptr noundef %44) #15
  br label %cleanup95

if.else:                                          ; preds = %if.end30
  %and60 = and i32 %conv34, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %and60)
  %cmp61 = icmp eq i32 %and60, 208
  br i1 %cmp61, label %if.then63, label %if.else.fail_crit_edge

if.else.fail_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.then63:                                        ; preds = %if.else
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %category) #15
  %47 = ptrtoint ptr %category to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %category, align 1, !annotation !67
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %action) #15
  %48 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %action, align 1, !annotation !67
  %call67 = call i32 @rtw_action_frame_parse(ptr noundef %12, i32 noundef %46, ptr noundef nonnull %category, ptr noundef nonnull %action) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then63.cleanup_crit_edge, label %if.end71

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end71:                                         ; preds = %if.then63
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9
  %call72 = call ptr @alloc_mgtxmitframe(ptr noundef %xmitpriv) #15
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %if.end71.cleanup_crit_edge, label %if.end75

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %attrib = getelementptr inbounds %struct.xmit_frame, ptr %call72, i32 0, i32 1
  call void @update_mgntframe_attrib(ptr noundef %1, ptr noundef %attrib) #15
  %retry_ctrl = getelementptr inbounds %struct.xmit_frame, ptr %call72, i32 0, i32 1, i32 41
  %49 = ptrtoint ptr %retry_ctrl to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %retry_ctrl, align 1
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %call72, i32 0, i32 5
  %50 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf_addr, align 4
  %52 = call ptr @memset(ptr %51, i32 0, i32 104)
  %53 = load ptr, ptr %buf_addr, align 4
  %add.ptr77 = getelementptr i8, ptr %53, i32 40
  %54 = call ptr @memcpy(ptr %add.ptr77, ptr %12, i32 %46)
  %pktlen = getelementptr inbounds %struct.xmit_frame, ptr %call72, i32 0, i32 1, i32 8
  %55 = ptrtoint ptr %pktlen to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %46, ptr %pktlen, align 4
  %56 = ptrtoint ptr %add.ptr77 to i32
  %add78 = add i32 %56, 22
  %57 = inttoptr i32 %add78 to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %57, align 2
  %60 = call i16 @llvm.bswap.i16(i16 %59)
  %61 = lshr i16 %60, 4
  %mgnt_seq = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 3
  %62 = ptrtoint ptr %mgnt_seq to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %mgnt_seq, align 4
  %seqnum = getelementptr inbounds %struct.xmit_frame, ptr %call72, i32 0, i32 1, i32 5
  %63 = ptrtoint ptr %seqnum to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %61, ptr %seqnum, align 2
  %64 = load i16, ptr %mgnt_seq, align 4
  %inc = add i16 %64, 1
  store i16 %inc, ptr %mgnt_seq, align 4
  %65 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pktlen, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call72, i32 0, i32 1, i32 9
  %67 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %last_txcmdsz, align 4
  call void @dump_mgntframe(ptr noundef %1, ptr noundef nonnull %call72) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.end71.cleanup_crit_edge, %if.then63.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %action) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %category) #15
  br label %fail

fail:                                             ; preds = %cleanup, %if.else.fail_crit_edge, %if.end13.fail_crit_edge, %if.end4.fail_crit_edge, %if.end.fail_crit_edge, %entry.fail_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  br label %cleanup95

cleanup95:                                        ; preds = %fail, %if.then37
  %retval.0 = phi i32 [ 0, %fail ], [ %call58, %if.then37 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_xmit_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_mgtxmitframe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_mgntframe_attrib(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_mgntframe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_pwr_wakeup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_set_802_11_infrastructure_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_setopmode_cmd(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw_cfg80211_set_encryption(ptr nocapture noundef readonly %dev, ptr nocapture noundef %param, i32 noundef %param_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12
  %u = getelementptr inbounds %struct.ieee_param, ptr %param, i32 0, i32 2
  %err = getelementptr inbounds %struct.ieee_param, ptr %param, i32 0, i32 2, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %arrayidx = getelementptr %struct.ieee_param, ptr %param, i32 0, i32 2, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  %key = getelementptr inbounds %struct.ieee_param, ptr %param, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %key_len = getelementptr inbounds %struct.ieee_param, ptr %param, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 7
  %4 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %key_len, align 2
  %conv = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %param_len)
  %cmp = icmp ugt i32 %add, %param_len
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end:                                           ; preds = %entry
  %sta_addr = getelementptr inbounds %struct.ieee_param, ptr %param, i32 0, i32 1
  %6 = ptrtoint ptr %sta_addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sta_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp7 = icmp eq i8 %7, -1
  br i1 %cmp7, label %land.lhs.true, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

land.lhs.true:                                    ; preds = %if.end
  %arrayidx10 = getelementptr %struct.ieee_param, ptr %param, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp12 = icmp eq i8 %9, -1
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true.exit_crit_edge

land.lhs.true.exit_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

land.lhs.true14:                                  ; preds = %land.lhs.true
  %arrayidx16 = getelementptr %struct.ieee_param, ptr %param, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp18 = icmp eq i8 %11, -1
  br i1 %cmp18, label %land.lhs.true20, label %land.lhs.true14.exit_crit_edge

land.lhs.true14.exit_crit_edge:                   ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

land.lhs.true20:                                  ; preds = %land.lhs.true14
  %arrayidx22 = getelementptr %struct.ieee_param, ptr %param, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp24 = icmp eq i8 %13, -1
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true20.exit_crit_edge

land.lhs.true20.exit_crit_edge:                   ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

land.lhs.true26:                                  ; preds = %land.lhs.true20
  %arrayidx28 = getelementptr %struct.ieee_param, ptr %param, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp30 = icmp eq i8 %15, -1
  br i1 %cmp30, label %land.lhs.true32, label %land.lhs.true26.exit_crit_edge

land.lhs.true26.exit_crit_edge:                   ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

land.lhs.true32:                                  ; preds = %land.lhs.true26
  %arrayidx34 = getelementptr %struct.ieee_param, ptr %param, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp36 = icmp eq i8 %17, -1
  br i1 %cmp36, label %if.then38, label %land.lhs.true32.exit_crit_edge

land.lhs.true32.exit_crit_edge:                   ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.then38:                                        ; preds = %land.lhs.true32
  %idx = getelementptr inbounds %struct.ieee_param, ptr %param, i32 0, i32 2, i32 0, i32 4
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %idx, align 4
  %conv40 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp41 = icmp ugt i8 %19, 3
  br i1 %cmp41, label %if.then38.exit_crit_edge, label %if.end50

if.then38.exit_crit_edge:                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end50:                                         ; preds = %if.then38
  %call54 = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(4) @.str.7) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %lor.lhs.false66, label %if.end91

lor.lhs.false66:                                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp67 = icmp eq i16 %5, 0
  br i1 %cmp67, label %lor.lhs.false66.exit_crit_edge, label %if.end70

lor.lhs.false66.exit_crit_edge:                   ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end70:                                         ; preds = %lor.lhs.false66
  %bWepDefaultKeyIdxSet = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 50
  %20 = ptrtoint ptr %bWepDefaultKeyIdxSet to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bWepDefaultKeyIdxSet, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp72 = icmp eq i8 %21, 0
  br i1 %cmp72, label %if.then74, label %if.end70.if.end83_crit_edge

if.end70.if.end83_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end83

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %5)
  %cmp75 = icmp ult i16 %5, 6
  %cond = select i1 %cmp75, i32 5, i32 13
  %ndisencryptstatus = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 36
  %22 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %ndisencryptstatus, align 4
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 1
  %23 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %dot11PrivacyAlgrthm, align 4
  %dot118021XGrpPrivacy = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 6
  %24 = ptrtoint ptr %dot118021XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %dot118021XGrpPrivacy, align 8
  br i1 %cmp75, label %if.then74.if.end82_crit_edge, label %if.then79

if.then74.if.end82_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82

if.then79:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 5, ptr %dot11PrivacyAlgrthm, align 4
  %26 = ptrtoint ptr %dot118021XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %dot118021XGrpPrivacy, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.then74.if.end82_crit_edge
  %dot11PrivacyKeyIndex = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 2
  %27 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv40, ptr %dot11PrivacyKeyIndex, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end70.if.end83_crit_edge
  %wep_key_len.0 = phi i32 [ %cond, %if.end82 ], [ %conv, %if.end70.if.end83_crit_edge ]
  %arrayidx84 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 3, i32 %conv40
  %28 = call ptr @memcpy(ptr %arrayidx84, ptr %key, i32 %wep_key_len.0)
  %arrayidx89 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 4, i32 %conv40
  %29 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %wep_key_len.0, ptr %arrayidx89, align 4
  %call90 = tail call i32 @rtw_set_key(ptr noundef %1, ptr noundef %securitypriv, i32 noundef %conv40, i8 noundef zeroext 0, i1 noundef zeroext true) #15
  br label %exit

if.end91:                                         ; preds = %if.end50
  %30 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %securitypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp93 = icmp eq i32 %31, 2
  br i1 %cmp93, label %if.then95, label %if.end91.exit_crit_edge

if.end91.exit_crit_edge:                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.then95:                                        ; preds = %if.end91
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %33, 65544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.then95.exit_crit_edge, label %if.then99

if.then95.exit_crit_edge:                         ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.then99:                                        ; preds = %if.then95
  %stapriv = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %mac_address.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 20, i32 6, i32 1
  %call101 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %mac_address.i) #15
  %tobool.not = icmp eq ptr %call101, null
  br i1 %tobool.not, label %if.then99.if.end260_crit_edge, label %if.then102

if.then99.if.end260_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end260

if.then102:                                       ; preds = %if.then99
  %call106 = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(5) @.str.6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107.not = icmp eq i32 %call106, 0
  br i1 %cmp107.not, label %if.then102.if.end110_crit_edge, label %if.then109

if.then102.if.end110_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end110

if.then109:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #17
  %ieee8021x_blocked = getelementptr inbounds %struct.sta_info, ptr %call101, i32 0, i32 13
  %34 = ptrtoint ptr %ieee8021x_blocked to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %ieee8021x_blocked, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.then102.if.end110_crit_edge
  %ndisencryptstatus112 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 36
  %35 = ptrtoint ptr %ndisencryptstatus112 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ndisencryptstatus112, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %36, label %if.end110.if.end123_crit_edge [
    i32 4, label %if.end110.if.then120_crit_edge
    i32 6, label %if.end110.if.then120_crit_edge396
  ]

if.end110.if.then120_crit_edge396:                ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then120

if.end110.if.then120_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then120

if.end110.if.end123_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end123

if.then120:                                       ; preds = %if.end110.if.then120_crit_edge, %if.end110.if.then120_crit_edge396
  %dot11PrivacyAlgrthm122 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 1
  %38 = ptrtoint ptr %dot11PrivacyAlgrthm122 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dot11PrivacyAlgrthm122, align 4
  %dot118021XPrivacy = getelementptr inbounds %struct.sta_info, ptr %call101, i32 0, i32 14
  %40 = ptrtoint ptr %dot118021XPrivacy to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dot118021XPrivacy, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %if.end110.if.end123_crit_edge
  %set_tx = getelementptr inbounds %struct.ieee_param, ptr %param, i32 0, i32 2, i32 0, i32 3, i32 8
  %41 = ptrtoint ptr %set_tx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %set_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp126 = icmp eq i8 %42, 1
  br i1 %cmp126, label %if.then128, label %if.else160

if.then128:                                       ; preds = %if.end123
  %dot118021x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %call101, i32 0, i32 17
  %43 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %key_len, align 2
  %45 = tail call i16 @llvm.umin.i16(i16 %44, i16 16)
  %spec.select = zext i16 %45 to i32
  %46 = call ptr @memcpy(ptr %dot118021x_UncstKey, ptr %key, i32 %spec.select)
  %call145 = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(5) @.str.8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp eq i32 %call145, 0
  br i1 %cmp146, label %if.then148, label %if.then128.if.end158_crit_edge

if.then128.if.end158_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end158

if.then148:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #17
  %dot11tkiptxmickey = getelementptr inbounds %struct.sta_info, ptr %call101, i32 0, i32 15
  %arrayidx152 = getelementptr %struct.ieee_param, ptr %param, i32 1
  %47 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %arrayidx152, align 4
  %49 = ptrtoint ptr %dot11tkiptxmickey to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %dot11tkiptxmickey, align 8
  %dot11tkiprxmickey = getelementptr inbounds %struct.sta_info, ptr %call101, i32 0, i32 16
  %arrayidx156 = getelementptr %struct.ieee_param, ptr %param, i32 1, i32 1, i32 4
  %50 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %arrayidx156, align 4
  %52 = ptrtoint ptr %dot11tkiprxmickey to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %dot11tkiprxmickey, align 8
  %busetkipkey = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 29
  %53 = ptrtoint ptr %busetkipkey to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %busetkipkey, align 2
  br label %if.end158

if.end158:                                        ; preds = %if.then148, %if.then128.if.end158_crit_edge
  %call159 = tail call zeroext i8 @rtw_setstakey_cmd(ptr noundef %1, ptr noundef nonnull %call101, i8 noundef zeroext 1, i1 noundef zeroext true) #15
  br label %if.end260

if.else160:                                       ; preds = %if.end123
  %call164 = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(5) @.str.8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp eq i32 %call164, 0
  br i1 %cmp165, label %if.else160.if.then174_crit_edge, label %lor.lhs.false167

if.else160.if.then174_crit_edge:                  ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then174

lor.lhs.false167:                                 ; preds = %if.else160
  %call171 = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(5) @.str.9) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %cmp172 = icmp eq i32 %call171, 0
  br i1 %cmp172, label %lor.lhs.false167.if.then174_crit_edge, label %if.else223

lor.lhs.false167.if.then174_crit_edge:            ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then174

if.then174:                                       ; preds = %lor.lhs.false167.if.then174_crit_edge, %if.else160.if.then174_crit_edge
  %54 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %idx, align 4
  %idxprom = zext i8 %55 to i32
  %arrayidx178 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 8, i32 %idxprom
  %56 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %key_len, align 2
  %58 = tail call i16 @llvm.umin.i16(i16 %57, i16 16)
  %spec.select390 = zext i16 %58 to i32
  %59 = call ptr @memcpy(ptr %arrayidx178, ptr %key, i32 %spec.select390)
  %60 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %idx, align 4
  %idxprom198 = zext i8 %61 to i32
  %arrayidx199 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 9, i32 %idxprom198
  %arrayidx203 = getelementptr %struct.ieee_param, ptr %param, i32 1
  %62 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 8)
  %63 = load i64, ptr %arrayidx203, align 4
  %64 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %arrayidx199, align 8
  %65 = load i8, ptr %idx, align 4
  %idxprom207 = zext i8 %65 to i32
  %arrayidx208 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 10, i32 %idxprom207
  %arrayidx212 = getelementptr %struct.ieee_param, ptr %param, i32 1, i32 1, i32 4
  %66 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %67 = load i64, ptr %arrayidx212, align 4
  %68 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx208, align 8
  %binstallGrpkey = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 27
  %69 = ptrtoint ptr %binstallGrpkey to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %binstallGrpkey, align 4
  %70 = load i8, ptr %idx, align 4
  %conv216 = zext i8 %70 to i32
  %dot118021XGrpKeyid = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 7
  %71 = ptrtoint ptr %dot118021XGrpKeyid to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv216, ptr %dot118021XGrpKeyid, align 4
  %72 = load i8, ptr %idx, align 4
  %conv221 = zext i8 %72 to i32
  %call222 = tail call i32 @rtw_set_key(ptr noundef %1, ptr noundef %securitypriv, i32 noundef %conv221, i8 noundef zeroext 1, i1 noundef zeroext true) #15
  br label %if.end260

if.else223:                                       ; preds = %lor.lhs.false167
  %call227 = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(4) @.str.10) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %cmp228 = icmp eq i32 %call227, 0
  br i1 %cmp228, label %if.then230, label %if.else223.if.end260_crit_edge

if.else223.if.end260_crit_edge:                   ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end260

if.then230:                                       ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %idx, align 4
  %idxprom234 = zext i8 %74 to i32
  %arrayidx235 = getelementptr %struct.adapter, ptr %1, i32 0, i32 12, i32 14, i32 %idxprom234
  %75 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %key_len, align 2
  %77 = tail call i16 @llvm.umin.i16(i16 %76, i16 16)
  %spec.select391 = zext i16 %77 to i32
  %78 = call ptr @memcpy(ptr %arrayidx235, ptr %key, i32 %spec.select391)
  %79 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %idx, align 4
  %conv254 = zext i8 %80 to i32
  %dot11wBIPKeyid = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 13
  %81 = ptrtoint ptr %dot11wBIPKeyid to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv254, ptr %dot11wBIPKeyid, align 8
  %binstallBIPkey = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 28
  %82 = ptrtoint ptr %binstallBIPkey to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %binstallBIPkey, align 1
  br label %if.end260

if.end260:                                        ; preds = %if.then230, %if.else223.if.end260_crit_edge, %if.then174, %if.end158, %if.then99.if.end260_crit_edge
  %call261 = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %1) #15
  %tobool262.not = icmp eq ptr %call261, null
  br i1 %tobool262.not, label %if.end260.exit_crit_edge, label %if.else264

if.end260.exit_crit_edge:                         ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.else264:                                       ; preds = %if.end260
  %call268 = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(5) @.str.6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268)
  %cmp269.not = icmp eq i32 %call268, 0
  br i1 %cmp269.not, label %if.else264.if.end273_crit_edge, label %if.then271

if.else264.if.end273_crit_edge:                   ; preds = %if.else264
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end273

if.then271:                                       ; preds = %if.else264
  call void @__sanitizer_cov_trace_pc() #17
  %ieee8021x_blocked272 = getelementptr inbounds %struct.sta_info, ptr %call261, i32 0, i32 13
  %83 = ptrtoint ptr %ieee8021x_blocked272 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %ieee8021x_blocked272, align 8
  br label %if.end273

if.end273:                                        ; preds = %if.then271, %if.else264.if.end273_crit_edge
  %ndisencryptstatus275 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 36
  %84 = ptrtoint ptr %ndisencryptstatus275 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ndisencryptstatus275, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %85, label %if.end273.exit_crit_edge [
    i32 4, label %if.end273.if.then283_crit_edge
    i32 6, label %if.end273.if.then283_crit_edge397
  ]

if.end273.if.then283_crit_edge397:                ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then283

if.end273.if.then283_crit_edge:                   ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then283

if.end273.exit_crit_edge:                         ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.then283:                                       ; preds = %if.end273.if.then283_crit_edge, %if.end273.if.then283_crit_edge397
  %dot11PrivacyAlgrthm285 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 1
  %87 = ptrtoint ptr %dot11PrivacyAlgrthm285 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dot11PrivacyAlgrthm285, align 4
  %dot118021XPrivacy286 = getelementptr inbounds %struct.sta_info, ptr %call261, i32 0, i32 14
  %89 = ptrtoint ptr %dot118021XPrivacy286 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %dot118021XPrivacy286, align 4
  br label %exit

exit:                                             ; preds = %if.then283, %if.end273.exit_crit_edge, %if.end260.exit_crit_edge, %if.then95.exit_crit_edge, %if.end91.exit_crit_edge, %if.end83, %lor.lhs.false66.exit_crit_edge, %if.then38.exit_crit_edge, %land.lhs.true32.exit_crit_edge, %land.lhs.true26.exit_crit_edge, %land.lhs.true20.exit_crit_edge, %land.lhs.true14.exit_crit_edge, %land.lhs.true.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ 0, %if.end83 ], [ 0, %if.end91.exit_crit_edge ], [ -22, %entry.exit_crit_edge ], [ -22, %if.then38.exit_crit_edge ], [ -22, %land.lhs.true32.exit_crit_edge ], [ -22, %land.lhs.true26.exit_crit_edge ], [ -22, %land.lhs.true20.exit_crit_edge ], [ -22, %land.lhs.true14.exit_crit_edge ], [ -22, %land.lhs.true.exit_crit_edge ], [ -22, %if.end.exit_crit_edge ], [ -22, %lor.lhs.false66.exit_crit_edge ], [ 0, %if.end273.exit_crit_edge ], [ 0, %if.end260.exit_crit_edge ], [ 0, %if.then283 ], [ 0, %if.then95.exit_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_set_key(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_setstakey_cmd(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_ap_set_wep_key(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_ap_set_group_key(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_ap_set_pairwise_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw_add_beacon(ptr noundef %adapter, ptr nocapture noundef readonly %head, i32 noundef %head_len, ptr nocapture noundef readonly %tail, i32 noundef %tail_len) unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  %wps_ielen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_ielen) #15
  %0 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %wps_ielen, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_state.i, align 4
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %head_len)
  %cmp1 = icmp ult i32 %head_len, 24
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %entry
  %add = add i32 %tail_len, %head_len
  %call4 = tail call ptr @_rtw_zmalloc(i32 noundef %add) #15
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %head, i32 24
  %sub = add i32 %head_len, -24
  %4 = call ptr @memcpy(ptr %call4, ptr %add.ptr, i32 %sub)
  %add.ptr7 = getelementptr i8, ptr %call4, i32 %head_len
  %add.ptr8 = getelementptr i8, ptr %add.ptr7, i32 -24
  %5 = call ptr @memcpy(ptr %add.ptr8, ptr %tail, i32 %tail_len)
  %sub10 = add i32 %add, -24
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub10, ptr %len, align 4
  %add.ptr11 = getelementptr i8, ptr %call4, i32 12
  %sub12 = add i32 %add, -36
  %call13 = call ptr @rtw_get_wps_ie(ptr noundef %add.ptr11, i32 noundef %sub12, ptr noundef null, ptr noundef nonnull %wps_ielen) #15
  %call14 = call i32 @rtw_ies_remove_ie(ptr noundef nonnull %call4, ptr noundef nonnull %len, i32 noundef 12, i8 noundef zeroext -35, ptr noundef nonnull @P2P_OUI, i8 noundef zeroext 4) #15
  %call15 = call i32 @rtw_ies_remove_ie(ptr noundef nonnull %call4, ptr noundef nonnull %len, i32 noundef 12, i8 noundef zeroext -35, ptr noundef nonnull @WFD_OUI, i8 noundef zeroext 4) #15
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %call16 = call i32 @rtw_check_beacon_data(ptr noundef %adapter, ptr noundef nonnull %call4, i32 noundef %8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp17 = icmp eq i32 %call16, 1
  %. = select i1 %cmp17, i32 0, i32 -22
  call void @kfree(ptr noundef nonnull %call4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_ies_remove_ie(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_check_beacon_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_all_cam_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sta_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ap_free_sta(ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @associated_clients_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_get_cur_max_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ps_deny(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_is_scan_deny(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_sitesurvey_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ps_deny_cancel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_scan_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw_cfg80211_set_wpa_ie(ptr noundef %padapter, ptr noundef readonly %pie, i32 noundef %ielen) unnamed_addr #0 align 64 {
entry:
  %group_cipher = alloca i32, align 4
  %pairwise_cipher = alloca i32, align 4
  %wpa_ielen = alloca i32, align 4
  %wpa2_ielen = alloca i32, align 4
  %null_addr = alloca [6 x i8], align 1
  %wps_ielen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_cipher) #15
  %0 = ptrtoint ptr %group_cipher to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %group_cipher, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pairwise_cipher) #15
  %1 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pairwise_cipher, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wpa_ielen) #15
  %2 = ptrtoint ptr %wpa_ielen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wpa_ielen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wpa2_ielen) #15
  %3 = ptrtoint ptr %wpa2_ielen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wpa2_ielen, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %null_addr) #15
  %4 = call ptr @memset(ptr %null_addr, i32 0, i32 6)
  %tobool.not = icmp eq ptr %pie, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ielen)
  %tobool1.not = icmp eq i32 %ielen, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %6, -257
  store i32 %and.i, ptr %fw_state.i, align 4
  br label %exit.thread

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %ielen)
  %cmp = icmp ugt i32 %ielen, 1024
  br i1 %cmp, label %if.end.if.then125_crit_edge, label %if.end3

if.end.if.then125_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then125

if.end3:                                          ; preds = %if.end
  %call = tail call ptr @_rtw_zmalloc(i32 noundef %ielen) #15
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end3.if.then125_crit_edge, label %if.end6

if.end3.if.then125_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then125

if.end6:                                          ; preds = %if.end3
  %7 = call ptr @memcpy(ptr %call, ptr %pie, i32 %ielen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ielen)
  %cmp7 = icmp ult i32 %ielen, 4
  br i1 %cmp7, label %if.end6.if.then125_crit_edge, label %if.end9

if.end6.if.then125_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then125

if.end9:                                          ; preds = %if.end6
  %call10 = call ptr @rtw_get_wpa_ie(ptr noundef nonnull %call, ptr noundef nonnull %wpa_ielen, i32 noundef %ielen) #15
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.if.end21_crit_edge, label %land.lhs.true

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end9
  %8 = ptrtoint ptr %wpa_ielen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wpa_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp12 = icmp sgt i32 %9, 0
  br i1 %cmp12, label %if.then13, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then13:                                        ; preds = %land.lhs.true
  %add = add nuw i32 %9, 2
  %call14 = call i32 @rtw_parse_wpa_ie(ptr noundef nonnull %call10, i32 noundef %add, ptr noundef nonnull %group_cipher, ptr noundef nonnull %pairwise_cipher, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 1
  br i1 %cmp15, label %if.then16, label %if.then13.if.end21_crit_edge

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %10 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %securitypriv, align 8
  %ndisauthtype = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 35
  %11 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %ndisauthtype, align 8
  %supplicant_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 43
  %12 = ptrtoint ptr %wpa_ielen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wpa_ielen, align 4
  %add19 = add i32 %13, 2
  %14 = call ptr @memcpy(ptr %supplicant_ie, ptr %call10, i32 %add19)
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.then13.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end9.if.end21_crit_edge
  %call22 = call ptr @rtw_get_wpa2_ie(ptr noundef nonnull %call, ptr noundef nonnull %wpa2_ielen, i32 noundef %ielen) #15
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.if.end41_crit_edge, label %land.lhs.true24

if.end21.if.end41_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

land.lhs.true24:                                  ; preds = %if.end21
  %15 = ptrtoint ptr %wpa2_ielen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wpa2_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp25 = icmp sgt i32 %16, 0
  br i1 %cmp25, label %if.then26, label %land.lhs.true24.if.end41_crit_edge

land.lhs.true24.if.end41_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then26:                                        ; preds = %land.lhs.true24
  %add27 = add nuw i32 %16, 2
  %call28 = call i32 @rtw_parse_wpa2_ie(ptr noundef nonnull %call22, i32 noundef %add27, ptr noundef nonnull %group_cipher, ptr noundef nonnull %pairwise_cipher, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 1
  br i1 %cmp29, label %if.then30, label %if.then26.if.end41_crit_edge

if.then26.if.end41_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  %securitypriv31 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %17 = ptrtoint ptr %securitypriv31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %securitypriv31, align 8
  %ndisauthtype34 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 35
  %18 = ptrtoint ptr %ndisauthtype34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 7, ptr %ndisauthtype34, align 8
  %supplicant_ie36 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 43
  %19 = ptrtoint ptr %wpa2_ielen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wpa2_ielen, align 4
  %add39 = add i32 %20, 2
  %21 = call ptr @memcpy(ptr %supplicant_ie36, ptr %call22, i32 %add39)
  br label %if.end41

if.end41:                                         ; preds = %if.then30, %if.then26.if.end41_crit_edge, %land.lhs.true24.if.end41_crit_edge, %if.end21.if.end41_crit_edge
  %22 = ptrtoint ptr %group_cipher to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %group_cipher, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp42 = icmp eq i32 %23, 0
  br i1 %cmp42, label %if.then43, label %if.end41.if.end44_crit_edge

if.end41.if.end44_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %group_cipher to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %group_cipher, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end41.if.end44_crit_edge
  %25 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pairwise_cipher, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp45 = icmp eq i32 %26, 0
  br i1 %cmp45, label %if.then46, label %if.end44.if.end47_crit_edge

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %pairwise_cipher, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end44.if.end47_crit_edge
  %28 = ptrtoint ptr %group_cipher to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %group_cipher, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %29, label %if.end47.sw.epilog_crit_edge [
    i32 1, label %if.end47.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb50
    i32 8, label %sw.bb55
    i32 16, label %sw.bb60
    i32 4, label %sw.bb65
  ]

if.end47.sw.epilog.sink.split_crit_edge:          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

if.end47.sw.epilog_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

sw.bb55:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

sw.bb60:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

sw.bb65:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb65, %sw.bb60, %sw.bb55, %sw.bb50, %if.end47.sw.epilog.sink.split_crit_edge
  %.sink195 = phi i32 [ 5, %sw.bb65 ], [ 4, %sw.bb60 ], [ 2, %sw.bb55 ], [ 1, %sw.bb50 ], [ 0, %if.end47.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 0, %sw.bb65 ], [ 6, %sw.bb60 ], [ 4, %sw.bb55 ], [ 0, %sw.bb50 ], [ %29, %if.end47.sw.epilog.sink.split_crit_edge ]
  %dot118021XGrpPrivacy67 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 6
  %31 = ptrtoint ptr %dot118021XGrpPrivacy67 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink195, ptr %dot118021XGrpPrivacy67, align 8
  %ndisencryptstatus69 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 36
  %32 = ptrtoint ptr %ndisencryptstatus69 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %ndisencryptstatus69, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end47.sw.epilog_crit_edge
  %33 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pairwise_cipher, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %34, label %sw.epilog.sw.epilog94_crit_edge [
    i32 1, label %sw.epilog.sw.epilog94.sink.split_crit_edge
    i32 2, label %sw.bb74
    i32 8, label %sw.bb79
    i32 16, label %sw.bb84
    i32 4, label %sw.bb89
  ]

sw.epilog.sw.epilog94.sink.split_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog94.sink.split

sw.epilog.sw.epilog94_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog94

sw.bb74:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog94.sink.split

sw.bb79:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog94.sink.split

sw.bb84:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog94.sink.split

sw.bb89:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog94.sink.split

sw.epilog94.sink.split:                           ; preds = %sw.bb89, %sw.bb84, %sw.bb79, %sw.bb74, %sw.epilog.sw.epilog94.sink.split_crit_edge
  %.sink197 = phi i32 [ 5, %sw.bb89 ], [ 4, %sw.bb84 ], [ 2, %sw.bb79 ], [ 1, %sw.bb74 ], [ 0, %sw.epilog.sw.epilog94.sink.split_crit_edge ]
  %.sink196 = phi i32 [ 0, %sw.bb89 ], [ 6, %sw.bb84 ], [ 4, %sw.bb79 ], [ 0, %sw.bb74 ], [ %34, %sw.epilog.sw.epilog94.sink.split_crit_edge ]
  %dot11PrivacyAlgrthm91 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %36 = ptrtoint ptr %dot11PrivacyAlgrthm91 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink197, ptr %dot11PrivacyAlgrthm91, align 4
  %ndisencryptstatus93 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 36
  %37 = ptrtoint ptr %ndisencryptstatus93 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink196, ptr %ndisencryptstatus93, align 4
  br label %sw.epilog94

sw.epilog94:                                      ; preds = %sw.epilog94.sink.split, %sw.epilog.sw.epilog94_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_ielen) #15
  %38 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %wps_ielen, align 4, !annotation !67
  %call95 = call ptr @rtw_get_wps_ie(ptr noundef nonnull %call, i32 noundef %ielen, ptr noundef null, ptr noundef nonnull %wps_ielen) #15
  %tobool96.not = icmp eq ptr %call95, null
  br i1 %tobool96.not, label %sw.epilog94.if.else_crit_edge, label %land.lhs.true97

sw.epilog94.if.else_crit_edge:                    ; preds = %sw.epilog94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true97:                                  ; preds = %sw.epilog94
  %39 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wps_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp98.not = icmp eq i32 %40, 0
  br i1 %cmp98.not, label %land.lhs.true97.if.else_crit_edge, label %if.then99

land.lhs.true97.if.else_crit_edge:                ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then99:                                        ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #17
  %41 = call i32 @llvm.umin.i32(i32 %40, i32 512)
  %wps_ie_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 24
  %42 = ptrtoint ptr %wps_ie_len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %wps_ie_len, align 8
  %wps_ie103 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 23
  %43 = call ptr @memcpy(ptr %wps_ie103, ptr %call95, i32 %41)
  %fw_state.i186 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %fw_state.i186 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fw_state.i186, align 4
  %or.i = or i32 %45, 256
  store i32 %or.i, ptr %fw_state.i186, align 4
  br label %if.end109

if.else:                                          ; preds = %land.lhs.true97.if.else_crit_edge, %sw.epilog94.if.else_crit_edge
  %fw_state.i187 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %fw_state.i187 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fw_state.i187, align 4
  %and.i188 = and i32 %47, -257
  store i32 %and.i188, ptr %fw_state.i187, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.else, %if.then99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen) #15
  %dot11PrivacyAlgrthm111 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %48 = ptrtoint ptr %dot11PrivacyAlgrthm111 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dot11PrivacyAlgrthm111, align 4
  %.off = add i32 %49, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then121, label %if.end109.exit.thread_crit_edge

if.end109.exit.thread_crit_edge:                  ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit.thread

if.then121:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #17
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 15, ptr noundef nonnull %null_addr) #15
  br label %exit.thread

exit.thread:                                      ; preds = %if.then121, %if.end109.exit.thread_crit_edge, %if.then
  %buf.0.ph = phi ptr [ %call, %if.end109.exit.thread_crit_edge ], [ null, %if.then ], [ %call, %if.then121 ]
  call void @kfree(ptr noundef %buf.0.ph) #15
  br label %if.end127

if.then125:                                       ; preds = %if.end6.if.then125_crit_edge, %if.end3.if.then125_crit_edge, %if.end.if.then125_crit_edge
  %buf.0 = phi ptr [ null, %if.end.if.then125_crit_edge ], [ null, %if.end3.if.then125_crit_edge ], [ %call, %if.end6.if.then125_crit_edge ]
  %ret.0 = phi i32 [ -22, %if.end.if.then125_crit_edge ], [ -12, %if.end3.if.then125_crit_edge ], [ -1, %if.end6.if.then125_crit_edge ]
  tail call void @kfree(ptr noundef %buf.0) #15
  %fw_state.i189 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %fw_state.i189 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fw_state.i189, align 4
  %and.i190 = and i32 %51, -257
  store i32 %and.i190, ptr %fw_state.i189, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %exit.thread
  %ret.0194 = phi i32 [ 0, %exit.thread ], [ %ret.0, %if.then125 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %null_addr) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wpa2_ielen) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wpa_ielen) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pairwise_cipher) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_cipher) #15
  ret i32 %ret.0194
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc i32 @rtw_cfg80211_set_cipher(ptr nocapture noundef writeonly %psecuritypriv, i32 noundef %cipher, i1 noundef zeroext %ucast) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.security_priv, ptr %psecuritypriv, i32 0, i32 1
  %dot118021XGrpPrivacy = getelementptr inbounds %struct.security_priv, ptr %psecuritypriv, i32 0, i32 6
  %cond = select i1 %ucast, ptr %dot11PrivacyAlgrthm, ptr %dot118021XGrpPrivacy
  %0 = zext i32 %cipher to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %cipher, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %entry.sw.epilog_crit_edge
    i32 1027073, label %sw.bb3
    i32 1027077, label %sw.bb4
    i32 1027074, label %sw.bb5
    i32 1027076, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cond, align 4
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 4, %sw.bb6 ], [ 2, %sw.bb5 ], [ 5, %sw.bb4 ], [ 1, %sw.bb3 ], [ 0, %entry.sw.epilog_crit_edge ]
  %ndisencryptstatus.0 = phi i32 [ 6, %sw.bb6 ], [ 4, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ %cipher, %entry.sw.epilog_crit_edge ]
  %2 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %cond, align 4
  br i1 %ucast, label %sw.epilog.cleanup.sink.split_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog.cleanup.sink.split_crit_edge, %if.then
  %ndisencryptstatus.0.sink = phi i32 [ 1, %if.then ], [ %ndisencryptstatus.0, %sw.epilog.cleanup.sink.split_crit_edge ]
  %ndisencryptstatus9 = getelementptr inbounds %struct.security_priv, ptr %psecuritypriv, i32 0, i32 36
  %3 = ptrtoint ptr %ndisencryptstatus9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ndisencryptstatus.0.sink, ptr %ndisencryptstatus9, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_set_802_11_add_wep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_set_802_11_authentication_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_set_802_11_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wpa_ie(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_parse_wpa_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wpa2_ie(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_parse_wpa2_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_set_to_roam(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @LeaveAllPowerSaveMode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_disassoc_cmd(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_assoc_resources(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_set_802_11_ssid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mgmt_tx_status(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_set_scan_deny(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_channel_bwmode(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dump_mgntframe_and_wait_ack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @LPS_Leave(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 395, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 407, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtw_cfg80211_ibss_indicate_connect.__UNIQUE_ID_ddebug345, !3, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 450, i32 3}
!9 = !{ptr @rtw_cfg80211_indicate_connect.__UNIQUE_ID_ddebug346, !8, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!10 = !{ptr @rtw_wdev_alloc.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 2942, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rtw_cfg80211_ops, !14, !"rtw_cfg80211_ops", i1 false, i1 false}
!14 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 2859, i32 28}
!15 = !{ptr @rtw_cfg80211_monitor_if_ops, !16, !"rtw_cfg80211_monitor_if_ops", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 2271, i32 36}
!17 = !{ptr @__func__.cfg80211_rtw_change_iface, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 1171, i32 15}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 962, i32 14}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 966, i32 14}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 969, i32 14}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 972, i32 14}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 975, i32 14}
!29 = !{ptr @__func__.cfg80211_rtw_scan, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 1354, i32 15}
!31 = !{ptr @cfg80211_rtw_scan.lastscantime, !32, !"lastscantime", i1 false, i1 false}
!32 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 1372, i32 24}
!33 = !{ptr @__func__.cfg80211_rtw_connect, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 1800, i32 15}
!35 = !{ptr @__func__.cfg80211_rtw_disconnect, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 1952, i32 2}
!37 = !{ptr @__func__.cfg80211_rtw_join_ibss, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 1708, i32 15}
!39 = !{ptr @__func__.cfg80211_rtw_mgmt_tx, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 2729, i32 15}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 1989, i32 23}
!43 = !{ptr @rtw_cfg80211_default_mgmt_stypes, !44, !"rtw_cfg80211_default_mgmt_stypes", i1 false, i1 false}
!44 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 152, i32 1}
!45 = !{ptr @rtw_cipher_suites, !46, !"rtw_cipher_suites", i1 false, i1 false}
!46 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 21, i32 18}
!47 = !{ptr @rtw_2ghz_channels, !48, !"rtw_2ghz_channels", i1 false, i1 false}
!48 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 78, i32 33}
!49 = !{ptr @rtw_rates, !50, !"rtw_rates", i1 false, i1 false}
!50 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 58, i32 30}
!51 = !{ptr @wowlan_stub, !52, !"wowlan_stub", i1 false, i1 false}
!52 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c", i32 50, i32 57}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 1351449, i64 1351476, i64 1351498, i64 1351526}
!63 = !{i64 1351857, i64 1351884, i64 1351917, i64 1351938, i64 1351965, i64 1351991}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i64 2148927890, i64 2148927895, i64 2148927908, i64 2148927952, i64 2148927986, i64 2148928007}
!66 = !{i8 0, i8 2}
!67 = !{!"auto-init"}
!68 = !{i64 2157204121, i64 2157204609, i64 2157204158, i64 2157204214, i64 2157204248, i64 2157204272, i64 2157204313, i64 2157204334, i64 2157204362, i64 2157204396}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{!"branch_weights", i32 2000, i32 2002}
